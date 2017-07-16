
#include "Game/SceneManager.h"
#include "Game/Settings.h"

int main() {
    Game::Settings::init();
    Game::SceneManager * manager = new Game::SceneManager();
    while (true) {
        switch (manager->update(Game::Settings::delta)) {
            case 1:     // EXIT
                Game::Settings::close();
                delete manager;
                return 1;
            case -1:    // ERROR
                delete manager;
                Game::Settings::close();
                return -1;
            case 0:     // NORMAL
                continue;
            default:
                continue;
        }
    }
}