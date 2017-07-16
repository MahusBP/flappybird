//
// Created by mhs on 7/13/17.
//

#ifndef FLAPPYBIRD_BIRD_H
#define FLAPPYBIRD_BIRD_H

#include "GameObject.h"

namespace Game {
    class Bird : public GameObject {
    public:
        Bird();
        virtual ~Bird();
        virtual void update(float delta);
        virtual void die();
        sf::Vector2f jump_point;
        bool is_jumping;
        float mass;
    };
}


#endif //FLAPPYBIRD_BIRD_H
