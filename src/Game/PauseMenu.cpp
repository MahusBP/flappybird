//
// Created by mhs on 7/15/17.
//

#include "PauseMenu.h"

Game::PauseMenu::PauseMenu(sf::RenderWindow *windowRef) {
    window = windowRef;
    setButtons();
}

Game::PauseMenu::~PauseMenu() {
    for (auto iter = buttons_text.begin(); iter != buttons_text.end(); ++iter) {
        delete (*iter);
    }
}

void Game::PauseMenu::setButtons() {
    buttons_text.push_back(new sf::Text("resume", *Game::Settings::font));
    buttons_text.push_back(new sf::Text("menu", *Game::Settings::font));
    int offset = 10;
    for (auto iter = buttons_text.begin(); iter != buttons_text.end(); ++iter) {
        (*iter)->setColor(sf::Color::White);
        (*iter)->setCharacterSize(60);
        (*iter)->setPosition(Settings::width / 2 - (*iter)->getGlobalBounds().width / 2,
                             Settings::height / 2 - buttons_text.size()*(*iter)->getCharacterSize()/2
                             - (*iter)->getGlobalBounds().height / 2 + offset);
        offset += buttons_text[0]->getCharacterSize() + 10;
    }
}

void Game::PauseMenu::setEvent(sf::Event &event) {
    /* If left mouse click event */
    if (event.type == sf::Event::MouseButtonPressed && event.mouseButton.button == sf::Mouse::Left) {
        std::cout << "Left mouse button clicked" << std::endl;
        if (buttons_text[0]->getGlobalBounds().contains(Settings::mouse->getPosition(*window).x, Settings::mouse->getPosition(*window).y)) {
            std::cout << "Resume button pressed" << std::endl;
            Settings::setState(GameState::S_Game);
        }
        if (buttons_text[1]->getGlobalBounds().contains(Settings::mouse->getPosition(*window).x, Settings::mouse->getPosition(*window).y)) {
            std::cout << "Menu button pressed" << std::endl;
            Settings::setState(GameState::S_MainMenu);
        }
    }
}

void Game::PauseMenu::render() {
    window->clear(sf::Color::Black);
    for (auto iter = buttons_text.begin(); iter != buttons_text.end(); ++iter) {
        window->draw(*(*iter));
    }
    window->display();
}

void Game::PauseMenu::update(float delta) {

}
