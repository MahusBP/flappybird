//
// Created by mhs on 7/13/17.
//

#ifndef FLAPPYBIRD_GAMEOBJECT_H
#define FLAPPYBIRD_GAMEOBJECT_H

#include <iostream>

#include "SFML/Graphics.hpp"
#include "ObjectType.h"
#include "ErrorType.h"
#include "Settings.h"

namespace Game {
    class GameObject {
    public:
        virtual ~GameObject() {};
        virtual void update(float delta) = 0;
        sf::Texture * texture;
        sf::Sprite * sprite;
        ObjectType* type;
    };
}


#endif //FLAPPYBIRD_GAMEOBJECT_H
