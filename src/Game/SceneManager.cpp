//
// Created by mhs on 7/14/17.
//

#include "SceneManager.h"

Game::SceneManager::SceneManager() {
    window = new sf::RenderWindow(sf::VideoMode(Settings::width, Settings::height), Settings::title);
    window->setFramerateLimit(60);
    window->setKeyRepeatEnabled(false);
    mainMenu = new MainMenu(window);
    pauseMenu = new PauseMenu(window);
}

Game::SceneManager::~SceneManager() {
    delete mainMenu;
    delete gameScene;
    delete window;
}

int Game::SceneManager::update(float delta) {
    switch (Settings::getState()) {
        case GameState::S_MainMenu:
            if (gameScene) {
                delete gameScene;
                gameScene = nullptr;
            }
            if (gameOver) {
                delete gameOver;
                gameOver = nullptr;
            }
            updateMainMenu();
            break;
        case GameState::S_Game:
            if (!gameScene)
                gameScene = new GameScene(window);
            updateGameScene();
            break;
        case GameState::S_GameOver:
            if (!gameOver)
                gameOver = new GameOver(window);
            gameOver->score = gameScene->score;
            updateGameOverMenu();
            break;
        case GameState::S_GamePause:
            updatePauseMenu();
            break;
        case GameState::S_GameQuit:
            return EXIT;
        default:
            break;
    }
}

void Game::SceneManager::updateMainMenu() {
    sf::Event event;
    while (Settings::getState() == S_MainMenu) {
        while (mainMenu->window->pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                Settings::setState(S_GameQuit);
            mainMenu->setEvent(event);
        }
        mainMenu->update(Settings::delta);
        mainMenu->render();
    }
}

void Game::SceneManager::updateGameScene() {
    sf::Event event;
    while (Settings::getState() == S_Game) {
        while (gameScene->window->pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                Settings::setState(S_GameQuit);
            gameScene->setEvent(event);
        }
        gameScene->update(Settings::delta);
        gameScene->render();
    }
}

void Game::SceneManager::updatePauseMenu() {
    sf::Event event;
    while (Settings::getState() == S_GamePause) {
        while (pauseMenu->window->pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                Settings::setState(S_GameQuit);
            pauseMenu->setEvent(event);
        }
        pauseMenu->update(Settings::delta);
        pauseMenu->render();
    }
}
void Game::SceneManager::updateGameOverMenu() {
    sf::Event event;
    while (Settings::getState() == S_GameOver) {
        while (gameOver->window->pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                Settings::setState(S_GameQuit);
            gameOver->setEvent(event);
        }
        gameOver->update(Settings::delta);
        gameOver->render();
    }
}


