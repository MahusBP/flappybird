//
// Created by mhs on 7/15/17.
//

#ifndef FLAPPYBIRD_PAUSEMENU_H
#define FLAPPYBIRD_PAUSEMENU_H

#include "Settings.h"
#include <iostream>
#include "ErrorType.h"

namespace Game {
    class PauseMenu {
    public:
        PauseMenu(sf::RenderWindow* windowRef);
        virtual ~PauseMenu();
        virtual void update(float delta);
        virtual void render();
        virtual void setEvent(sf::Event &event);
        std::vector<sf::Text *> buttons_text;
        sf::RenderWindow *window;
        sf::Texture *bg_texture;
        sf::Sprite *bg_1;

    private:
        void setButtons();
    };
}

#endif //FLAPPYBIRD_PAUSEMENU_H
