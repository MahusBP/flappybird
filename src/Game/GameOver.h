//
// Created by mhs on 7/15/17.
//

#ifndef FLAPPYBIRD_GAMEOVER_H
#define FLAPPYBIRD_GAMEOVER_H

#include <iostream>
#include "Settings.h"

namespace Game {
    class GameOver {
    public:
        GameOver(sf::RenderWindow* windowRef);
        virtual ~GameOver();
        virtual void update(float delta);
        virtual void render();
        virtual void setEvent(sf::Event &event);
        std::vector<sf::Text *> buttons_text;
        sf::RenderWindow *window;
        sf::Texture *bg_texture;
        sf::Sprite *bg_1;
        sf::Text *score_text;
        sf::Int32 score;

    private:
        void setButtons();
    };
}

#endif //FLAPPYBIRD_GAMEOVER_H
