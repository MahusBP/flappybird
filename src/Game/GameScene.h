//
// Created by mhs on 7/15/17.
//

#ifndef FLAPPYBIRD_GAMESCENE_H
#define FLAPPYBIRD_GAMESCENE_H

#include "Bird.h"
#include "Pipe.h"
#include "Settings.h"
#include "SFML/Graphics.hpp"

namespace Game {
    class GameScene {
    public:
        GameScene(sf::RenderWindow* windowRef);
        virtual ~GameScene();
        virtual void update(float delta);
        virtual void render();
        virtual void setEvent(sf::Event &event);

        std::vector<sf::Text *> text_areas;
        std::vector<sf::Sprite *> bg;
        std::vector<Pipe *> pipes;
        sf::RenderWindow *window;
        Bird * bird;
        sf::Int32 score;
    private:
        sf::Int32 upd_ratio;
        sf::Int32 min_pipe_range;
        sf::Texture * bg_texture;
        void setTextAreas();
        void setBackground();
        void setPipes();
    };
}


#endif //FLAPPYBIRD_GAMESCENE_H
