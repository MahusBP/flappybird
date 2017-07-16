//
// Created by mhs on 7/13/17.
//

#include "Bird.h"

Game::Bird::Bird() {
    /* Texture */
    texture = new sf::Texture();
    if (!texture->loadFromFile("res/img/bird_1.png",sf::Rect<int>(32, 48, 105, 80))) {
        std::cout << "Error: " + E_FILE_NOT_FOUND << std::endl;
        std::cout << "  in Bird.cpp : texture.loadFromFile(...) " << std::endl;
    }
    /* Sprite */
    sprite = new sf::Sprite(*texture);
    sprite->setScale(0.55f, 0.55f);
    /* Other */
    type = new ObjectType(T_BIRD);;
    is_jumping = false;
    mass = 1.1f;
}

Game::Bird::~Bird() {
    delete sprite;
    delete texture;
    delete type;
}

void Game::Bird::update(float delta) {

}

void Game::Bird::die() {
    Settings::setState(GameState::S_GameOver);
}
