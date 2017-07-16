//
// Created by mhs on 7/13/17.
//

#include "MainMenu.h"

Game::MainMenu::MainMenu(sf::RenderWindow* windowRef) {
    window = windowRef;
    bg_texture = new sf::Texture();
    if (!bg_texture->loadFromFile("res/img/bg_1.jpg")) { // TODO find the bird image
        std::cout << "Error: " + E_FILE_NOT_FOUND << std::endl;
        std::cout << "  in MainMenu.cpp : texture.loadFromFile(...) " << std::endl;
    }
    bg_1 = new sf::Sprite(*bg_texture);
    bg_2 = new sf::Sprite(*bg_texture);
    bg_1->scale(1, (float)Settings::height / bg_texture->getSize().y);
    bg_2->scale(1, (float)Settings::height / bg_texture->getSize().y);
    bg_2->setPosition(bg_1->getPosition().x + bg_1->getGlobalBounds().width - 5, 0);
    setButtons();
    mouse = new sf::Mouse();
}

Game::MainMenu::~MainMenu() {
    for (auto iter = buttons_text.begin(); iter != buttons_text.end(); ++iter) {
        delete (*iter);
    }
    delete bg_1;
    delete bg_2;
    delete mouse;
}

void Game::MainMenu::update(float delta) {
    for (auto iter = buttons_text.begin(); iter != buttons_text.end()-1; ++iter) {
        if ((*iter)->getGlobalBounds().contains(mouse->getPosition(*window).x, mouse->getPosition(*window).y)) {
            (*iter)->setScale(1.3f, 1.3f);
        } else {
            (*iter)->setScale(1, 1);
        }
    }
}

void Game::MainMenu::render() {
    window->clear(sf::Color::Black);
    window->draw(*bg_1);
    window->draw(*bg_2);
    window->draw(*buttons_text[0]);
    for (auto iter = buttons_text.begin(); iter != buttons_text.end(); ++iter) {
        window->draw(*(*iter));
    }
    window->display();
}

void Game::MainMenu::setButtons() {
    buttons_text.push_back(new sf::Text("start", *Game::Settings::font));
    buttons_text.push_back(new sf::Text("score", *Game::Settings::font));
    buttons_text.push_back(new sf::Text("quit", *Game::Settings::font));
    buttons_text.push_back(new sf::Text("Flappy Bird", *Game::Settings::font));
    int offset = 0;
    for (auto iter = buttons_text.begin(); iter != buttons_text.end()-1; ++iter) {
        (*iter)->setColor(sf::Color::Black);
        (*iter)->setCharacterSize(60);
        (*iter)->setOrigin((*iter)->getLocalBounds().width/2, (*iter)->getLocalBounds().height/2);
        (*iter)->setPosition(Settings::width / 2,
                             Settings::height / 2 - buttons_text.size() * (*iter)->getCharacterSize()/2 + offset + 20);
        offset += buttons_text[0]->getCharacterSize() + 0;
    }
    buttons_text[3]->setColor(sf::Color::Black);
    buttons_text[3]->setCharacterSize(80);
    buttons_text[3]->setPosition(Settings::width / 2 - buttons_text[3]->getGlobalBounds().width / 2, 25);
}

void Game::MainMenu::setEvent(sf::Event &event) {
    /* If left mouse click event */
    if (event.type == sf::Event::MouseButtonPressed && event.mouseButton.button == sf::Mouse::Left) {
        std::cout << "Left mouse button clicked" << std::endl;
        /* Start clicked */
        if (buttons_text[0]->getGlobalBounds().contains(mouse->getPosition(*window).x, mouse->getPosition(*window).y)) {
            std::cout << "Start button pressed" << std::endl;
            Settings::setState(GameState::S_Game);
        }
        /* Quit clicked */
        if (buttons_text[2]->getGlobalBounds().contains(mouse->getPosition(*window).x, mouse->getPosition(*window).y)) {
            std::cout << "Quit button pressed" << std::endl;
            Settings::setState(GameState::S_GameQuit);
        }
    }
}
