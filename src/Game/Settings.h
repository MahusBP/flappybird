//
// Created by mhs on 7/14/17.
//

#ifndef FLAPPYBIRD_SETTINGS_H
#define FLAPPYBIRD_SETTINGS_H

#include <map>
#include <SFML/Graphics.hpp>
#include <SFML/System.hpp>
#include "GameState.h"

namespace Game {
    class Settings {
    public:
        static void init();
        static void close();
        static bool setFont(std::string path);
        static void setState(GameState _state);
        static GameState getState();
        static std::map<std::string, sf::Font>* fonts;
        static std::string title;
        static sf::Font * font;
        static sf::Mouse * mouse;
        static uint upd_ratio;
        static uint width;
        static uint height;
        static float delta;
        static float gravity;

    private:
        static void setFonts();
        static GameState * state;
    };

}

#endif //FLAPPYBIRD_SETTINGS_H
