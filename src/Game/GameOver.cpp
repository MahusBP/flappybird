//
// Created by mhs on 7/15/17.
//

#include "GameOver.h"

Game::GameOver::GameOver(sf::RenderWindow *windowRef) {
    window = windowRef;
    score = 0;
    setButtons();
    score_text = new sf::Text("Your score: " + std::to_string(score), Settings::fonts->at("orange_juice"));
    score_text->setColor(sf::Color::White);
    score_text->setOrigin(score_text->getGlobalBounds().width/2, score_text->getGlobalBounds().height/2);
    score_text->setPosition(Settings::width/2, 25);
}

Game::GameOver::~GameOver() {
    for (auto iter = buttons_text.begin(); iter != buttons_text.end(); ++iter) {
        delete (*iter);
    }
    delete score_text;
}

void Game::GameOver::setButtons() {
    buttons_text.push_back(new sf::Text("menu", *Game::Settings::font));
    int offset = 0;
    for (auto iter = buttons_text.begin(); iter != buttons_text.end(); ++iter) {
        (*iter)->setColor(sf::Color::White);
        (*iter)->setCharacterSize(60);
        (*iter)->setPosition(Settings::width / 2 - (*iter)->getGlobalBounds().width / 2,
                             Settings::height / 2 - buttons_text.size()*(*iter)->getCharacterSize()/2
                             - (*iter)->getGlobalBounds().height / 2 + offset);
        offset += buttons_text[0]->getCharacterSize() + 10;
    }
}

void Game::GameOver::update(float delta) {
    score_text = new sf::Text("Your score: " + std::to_string(score), Settings::fonts->at("orange_juice"));
}

void Game::GameOver::render() {
    window->clear(sf::Color::Black);
    window->draw(*score_text);
    for (auto iter = buttons_text.begin(); iter != buttons_text.end(); ++iter) {
        window->draw(*(*iter));
    }
    window->display();
}

void Game::GameOver::setEvent(sf::Event &event) {
    /* If left mouse click event */
    if (event.type == sf::Event::MouseButtonPressed && event.mouseButton.button == sf::Mouse::Left) {
        std::cout << "Left mouse button clicked" << std::endl;
        if (buttons_text[0]->getGlobalBounds().contains(Settings::mouse->getPosition(*window).x, Settings::mouse->getPosition(*window).y)) {
            std::cout << "Menu button pressed" << std::endl;
            Settings::setState(GameState::S_MainMenu);
        }
    }
}
