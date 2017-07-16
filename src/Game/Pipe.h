//
// Created by mhs on 7/15/17.
//

#ifndef FLAPPYBIRD_PIPE_H
#define FLAPPYBIRD_PIPE_H

#include "GameObject.h"

namespace Game {
    class Pipe : public GameObject {
    public:
        Pipe();
        virtual ~Pipe();
        virtual void update(float delta);
        virtual void setPosition(float x);
        virtual void randomize(Pipe& lastPipe, const bool isFirst = false);
        virtual void draw(sf::RenderWindow* window);
        virtual int getX();
        virtual int getWidth();
        sf::Texture *pipe_up_texture;
        sf::Texture *pipe_down_texture;
        sf::Sprite *pipe_up;
        sf::Sprite *pipe_down;
        bool isScored;

    private:
        unsigned min_hole_height;
        unsigned max_height_diff;
    };
}


#endif //FLAPPYBIRD_PIPE_H
