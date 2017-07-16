//
// Created by mhs on 7/14/17.
//

#ifndef FLAPPYBIRD_SCENEMANAGER_H
#define FLAPPYBIRD_SCENEMANAGER_H

#include "MainMenu.h"
#include "Settings.h"
#include "GameState.h"
#include "GameScene.h"
#include "PauseMenu.h"
#include "GameOver.h"

namespace Game {
    class SceneManager {
    public:
        SceneManager();
        ~SceneManager();
        int update(float delta);
        void updateMainMenu();
        void updateGameScene();
        void updatePauseMenu();
        void updateGameOverMenu();
    private:
        sf::RenderWindow * window;
        MainMenu * mainMenu;
        PauseMenu * pauseMenu;
        GameScene * gameScene;
        GameOver * gameOver;
        enum returnType {
            NORMAL  =  0,
            EXIT    =  1,
            ERROR   = -1
        };
    };
}

#endif //FLAPPYBIRD_SCENEMANAGER_H
