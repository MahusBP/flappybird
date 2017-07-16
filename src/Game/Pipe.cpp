//
// Created by mhs on 7/15/17.
//

#include "Pipe.h"

Game::Pipe::Pipe() {
    texture = nullptr;
    sprite = nullptr;
    pipe_up_texture = new sf::Texture();
    pipe_up_texture->loadFromFile("res/img/pipe_up_1.png");
    pipe_up = new sf::Sprite(*pipe_up_texture);
    pipe_up->setScale(0.5, 1);
    pipe_down_texture = new sf::Texture();
    pipe_down_texture->loadFromFile("res/img/pipe_down_1.png");
    pipe_down = new sf::Sprite(*pipe_down_texture);
    pipe_down->setScale(0.5, 1);
    min_hole_height = 120;
    max_height_diff = 150;
    type = new ObjectType(ObjectType::T_PIPE);
    isScored = false;
}

Game::Pipe::~Pipe() {
    delete pipe_down_texture;
    delete pipe_up_texture;
    delete pipe_down;
    delete pipe_up;
    pipe_down_texture = nullptr;
    pipe_up_texture = nullptr;
    pipe_down = nullptr;
    pipe_up = nullptr;
}

void Game::Pipe::update(float delta) {
    setPosition(pipe_up->getPosition().x - Settings::upd_ratio * delta);
}

void Game::Pipe::setPosition(float x) {
    pipe_down->setPosition(x, pipe_down->getPosition().y);
    pipe_up->setPosition(x, pipe_up->getPosition().y);
}

void Game::Pipe::draw(sf::RenderWindow *window) {
    window->draw(*pipe_up);
    window->draw(*pipe_down);
}

void Game::Pipe::randomize(Pipe& lastPipe, const bool isFirst) {
    isScored = false;
    srand((unsigned int) time(NULL));
    if (!isFirst) {
        pipe_down->setPosition(getX(), lastPipe.pipe_down->getPosition().y + (rand() % max_height_diff) - max_height_diff/2);
        if (pipe_down->getPosition().y < 300) {
            pipe_down->setPosition(getX(), 300);
        }
        if (pipe_down->getPosition().y > Settings::height - 50) {
            pipe_down->setPosition(getX(), Settings::height - 50);
        }
    } else {
        /* random from (height/3) to (height-50) */
        pipe_down->setPosition(getX(), Settings::height/3 +(rand() % ((Settings::height - 50) - Settings::height/3 + 1)));
    }
    pipe_up->setPosition(getX(), pipe_down->getPosition().y - pipe_up->getGlobalBounds().height
                                 - min_hole_height - rand() % (min_hole_height/2));
}

int Game::Pipe::getX() {
    return (int) pipe_up->getPosition().x;
}

int Game::Pipe::getWidth() {
    return (int) pipe_up->getGlobalBounds().width;
}
