//
// Created by mhs on 7/15/17.
//

#include "GameScene.h"

Game::GameScene::GameScene(sf::RenderWindow *windowRef) {
    window = windowRef;
    bird = new Bird();
    bird->sprite->setPosition(Settings::width/8, Settings::height / 2 - bird->sprite->getGlobalBounds().height/2);
    setBackground();
    setTextAreas();
    setPipes();
    upd_ratio = 200;
    score = 0;
}

Game::GameScene::~GameScene() {
    for (auto iter = bg.begin(); iter != bg.end(); ++iter) {
        delete (*iter);
    }
    for (auto iter = pipes.begin(); iter != pipes.end(); ++iter) {
        delete (*iter);
    }
    delete bg_texture;
    delete bird;
}

void Game::GameScene::update(float delta) {
    for (size_t i = 0; i != bg.size(); ++i) {
        /* Background animation */
        bg[i]->setPosition(bg[i]->getPosition().x - Settings::upd_ratio * delta, 0);
        if (i != 0 && bg[i]->getPosition().x + bg[i]->getGlobalBounds().width < 0) {
            bg[i]->setPosition(bg[i - 1]->getPosition().x + bg[i - 1]->getGlobalBounds().width - 5, 0);
        } else if (i == 0 && bg[i]->getPosition().x + bg[i]->getGlobalBounds().width < 0) {
            bg[i]->setPosition(bg.back()->getPosition().x + bg.back()->getGlobalBounds().width - 5, 0);
        }
    }
    for (size_t i = 0; i != pipes.size(); ++i) {
        if (bird->sprite->getPosition().x > pipes[i]->getX() + pipes[i]->getWidth()/2 && !pipes[i]->isScored) {
            score++;
            pipes[i]->isScored = true;
        }
        if (pipes[i]->pipe_down->getGlobalBounds().intersects(bird->sprite->getGlobalBounds()) ||
                pipes[i]->pipe_up->getGlobalBounds().intersects(bird->sprite->getGlobalBounds()) ||
                bird->sprite->getPosition().y + bird->sprite->getGlobalBounds().height > Settings::height - 30) {
            bird->die();
        }
        pipes[i]->update(delta);
        if (i != 0 && pipes[i]->getX() + pipes[i]->getWidth() < 0) {
            pipes[i]->setPosition(pipes[i - 1]->getX() + pipes[i-1]->getWidth() + min_pipe_range);
            pipes[i]->randomize(*pipes[i-1]);
        } else if (i == 0 && pipes[i]->getX() + pipes[i]->getWidth() < 0) {
            pipes[i]->setPosition(pipes.back()->getX() + pipes.back()->getWidth() + min_pipe_range);
            pipes[i]->randomize(*pipes.back());
        }
    }
    text_areas[0]->setString("Score: " + std::to_string(score));

    bird->sprite->setOrigin(bird->sprite->getLocalBounds().width/2,bird->sprite->getLocalBounds().height/2);
    if (bird->sprite->getPosition().y < Settings::height - 25) {
        if (bird->is_jumping) {
            bird->sprite->setPosition(bird->sprite->getPosition().x, bird->sprite->getPosition().y - 400 * delta);
            if (bird->sprite->getPosition().y <= bird->jump_point.y)
                bird->is_jumping = false;
        }
        else {
            bird->sprite->setPosition(bird->sprite->getPosition().x,
                                      bird->sprite->getPosition().y + bird->mass * Settings::gravity * delta);
            Settings::gravity += 3;
        }
    } else {
        bird->sprite->setRotation(bird->sprite->getRotation() - delta*100);
    }
}

void Game::GameScene::render() {
    window->clear(sf::Color::Black);
    for (auto iter = bg.begin(); iter != bg.end(); ++iter) {
        window->draw(*(*iter));
    }
    for (auto iter = pipes.begin(); iter != pipes.end(); ++iter) {
        (*iter)->draw(window);
    }
    for (auto iter = text_areas.begin(); iter != text_areas.end(); ++iter) {
        window->draw(*(*iter));
    }
    window->draw(*bird->sprite);
    window->display();
}

void Game::GameScene::setBackground() {
    bg_texture = new sf::Texture();
    if (!bg_texture->loadFromFile("res/img/bg_1.jpg")) {
        std::cout << "Error: " + E_FILE_NOT_FOUND << std::endl;
        std::cout << "  in GameScene.cpp : texture.loadFromFile(...) " << std::endl;
    }
    bg.push_back(new sf::Sprite(*bg_texture));
    bg.push_back(new sf::Sprite(*bg_texture));
    bg.push_back(new sf::Sprite(*bg_texture));
    bg.push_back(new sf::Sprite(*bg_texture));
    bg[0]->setScale(1, (float)Settings::height / bg_texture->getSize().y);
    for (size_t i = 1; i != bg.size(); ++i) {
        bg[i]->setScale(1, (float)Settings::height / bg_texture->getSize().y);
        bg[i]->setPosition(bg[i-1]->getPosition().x + bg[i-1]->getGlobalBounds().width - 5, 0);
    }
}

void Game::GameScene::setTextAreas() {
    text_areas.push_back(new sf::Text("", Settings::fonts->at("marlboro")));
    text_areas.push_back(new sf::Text("||", Settings::fonts->at("marlboro")));
    for (auto iter = text_areas.begin(); iter != text_areas.end(); ++iter) {
        (*iter)->setColor(sf::Color::Black);
        (*iter)->setCharacterSize(45);
    }
    text_areas[0]->setPosition(25.f, 25.f);
    text_areas[1]->setPosition(Settings::width - text_areas[1]->getGlobalBounds().width - 25, 25);
}

void Game::GameScene::setPipes() {
    min_pipe_range = 150;
    pipes.push_back(new Pipe());
    pipes[0]->setPosition(Settings::width + 100);
    pipes[0]->randomize(*pipes[0], true);
    for (size_t i = 1; i < Settings::width / (pipes[0]->pipe_up->getGlobalBounds().width + min_pipe_range); ++i) {
        pipes.push_back(new Pipe());
        pipes[i]->setPosition(pipes[i - 1]->getX() + pipes[i-1]->getWidth() + min_pipe_range);
        pipes[i]->randomize(*pipes[i-1]);
    }
}

void Game::GameScene::setEvent(sf::Event &event) {
    /* If left mouse click event */
    if (event.type == sf::Event::MouseButtonPressed && event.mouseButton.button == sf::Mouse::Left) {
        std::cout << "Left mouse button clicked" << std::endl;
        if (text_areas[1]->getGlobalBounds().contains(Settings::mouse->getPosition(*window).x,
                                                      Settings::mouse->getPosition(*window).y)) {
            std::cout << "Pause button pressed" << std::endl;
            Settings::setState(GameState::S_GamePause);
        }
    }
    if (event.type == sf::Event::KeyPressed && event.key.code == sf::Keyboard::Up) {
        bird->is_jumping = true;
        bird->jump_point.y = bird->sprite->getPosition().y - 50;
        Settings::gravity = 150;
    }
}
