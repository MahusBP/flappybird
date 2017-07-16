cmake_minimum_required(VERSION 3.7)
project(FlappyBird)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES src/main.cpp src/Game/GameObject.h src/Game/ObjectType.h
        src/Game/Bird.cpp src/Game/Bird.h src/Game/ErrorType.h src/Game/MainMenu.cpp
        src/Game/MainMenu.h
        src/Game/Settings.cpp src/Game/Settings.h src/Game/GameState.h src/Game/SceneManager.cpp
        src/Game/SceneManager.h src/Game/GameScene.cpp src/Game/GameScene.h src/Game/Pipe.cpp src/Game/Pipe.h
        src/Game/PauseMenu.cpp src/Game/PauseMenu.h src/Game/GameOver.cpp src/Game/GameOver.h)
add_executable(FlappyBird ${SOURCE_FILES})

# SFML
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake/modules")
find_package(SFML REQUIRED system window graphics network audio)
if (SFML_FOUND)
    include_directories(${SFML_INCLUDE_DIR})
    target_link_libraries(FlappyBird ${SFML_LIBRARIES})
endif()