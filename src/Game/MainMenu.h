//
// Created by mhs on 7/13/17.
//

#ifndef FLAPPYBIRD_MAINMENU_H
#define FLAPPYBIRD_MAINMENU_H

#include <SFML/Graphics.hpp>
#include <iostream>
#include "ErrorType.h"
#include "Settings.h"

namespace Game {
    class MainMenu {
    public:
        MainMenu(sf::RenderWindow* windowRef);
        virtual ~MainMenu();
        virtual void update(float delta);
        virtual void render();
        virtual void setEvent(sf::Event &event);

        std::vector<sf::Text*> buttons_text;
        sf::RenderWindow * window;
        sf::Texture * bg_texture;
        sf::Sprite * bg_1;
        sf::Sprite * bg_2;

    private:
        void setButtons();

        sf::Mouse * mouse;
    };
}


#endif //FLAPPYBIRD_MAINMENU_H
