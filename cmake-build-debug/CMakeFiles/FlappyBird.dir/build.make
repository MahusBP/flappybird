# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/mhs/Programs/clion-2017.1.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/mhs/Programs/clion-2017.1.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mhs/Develop/C++/flappybird

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mhs/Develop/C++/flappybird/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/FlappyBird.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/FlappyBird.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FlappyBird.dir/flags.make

CMakeFiles/FlappyBird.dir/src/main.cpp.o: CMakeFiles/FlappyBird.dir/flags.make
CMakeFiles/FlappyBird.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mhs/Develop/C++/flappybird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FlappyBird.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlappyBird.dir/src/main.cpp.o -c /home/mhs/Develop/C++/flappybird/src/main.cpp

CMakeFiles/FlappyBird.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlappyBird.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mhs/Develop/C++/flappybird/src/main.cpp > CMakeFiles/FlappyBird.dir/src/main.cpp.i

CMakeFiles/FlappyBird.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlappyBird.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mhs/Develop/C++/flappybird/src/main.cpp -o CMakeFiles/FlappyBird.dir/src/main.cpp.s

CMakeFiles/FlappyBird.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/FlappyBird.dir/src/main.cpp.o.requires

CMakeFiles/FlappyBird.dir/src/main.cpp.o.provides: CMakeFiles/FlappyBird.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/FlappyBird.dir/build.make CMakeFiles/FlappyBird.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/FlappyBird.dir/src/main.cpp.o.provides

CMakeFiles/FlappyBird.dir/src/main.cpp.o.provides.build: CMakeFiles/FlappyBird.dir/src/main.cpp.o


CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o: CMakeFiles/FlappyBird.dir/flags.make
CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o: ../src/Game/Bird.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mhs/Develop/C++/flappybird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o -c /home/mhs/Develop/C++/flappybird/src/Game/Bird.cpp

CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mhs/Develop/C++/flappybird/src/Game/Bird.cpp > CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.i

CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mhs/Develop/C++/flappybird/src/Game/Bird.cpp -o CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.s

CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o.requires:

.PHONY : CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o.requires

CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o.provides: CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o.requires
	$(MAKE) -f CMakeFiles/FlappyBird.dir/build.make CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o.provides.build
.PHONY : CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o.provides

CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o.provides.build: CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o


CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o: CMakeFiles/FlappyBird.dir/flags.make
CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o: ../src/Game/MainMenu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mhs/Develop/C++/flappybird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o -c /home/mhs/Develop/C++/flappybird/src/Game/MainMenu.cpp

CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mhs/Develop/C++/flappybird/src/Game/MainMenu.cpp > CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.i

CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mhs/Develop/C++/flappybird/src/Game/MainMenu.cpp -o CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.s

CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o.requires:

.PHONY : CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o.requires

CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o.provides: CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o.requires
	$(MAKE) -f CMakeFiles/FlappyBird.dir/build.make CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o.provides.build
.PHONY : CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o.provides

CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o.provides.build: CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o


CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o: CMakeFiles/FlappyBird.dir/flags.make
CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o: ../src/Game/Settings.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mhs/Develop/C++/flappybird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o -c /home/mhs/Develop/C++/flappybird/src/Game/Settings.cpp

CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mhs/Develop/C++/flappybird/src/Game/Settings.cpp > CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.i

CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mhs/Develop/C++/flappybird/src/Game/Settings.cpp -o CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.s

CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o.requires:

.PHONY : CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o.requires

CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o.provides: CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o.requires
	$(MAKE) -f CMakeFiles/FlappyBird.dir/build.make CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o.provides.build
.PHONY : CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o.provides

CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o.provides.build: CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o


CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o: CMakeFiles/FlappyBird.dir/flags.make
CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o: ../src/Game/SceneManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mhs/Develop/C++/flappybird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o -c /home/mhs/Develop/C++/flappybird/src/Game/SceneManager.cpp

CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mhs/Develop/C++/flappybird/src/Game/SceneManager.cpp > CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.i

CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mhs/Develop/C++/flappybird/src/Game/SceneManager.cpp -o CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.s

CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o.requires:

.PHONY : CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o.requires

CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o.provides: CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/FlappyBird.dir/build.make CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o.provides.build
.PHONY : CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o.provides

CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o.provides.build: CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o


CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o: CMakeFiles/FlappyBird.dir/flags.make
CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o: ../src/Game/GameScene.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mhs/Develop/C++/flappybird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o -c /home/mhs/Develop/C++/flappybird/src/Game/GameScene.cpp

CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mhs/Develop/C++/flappybird/src/Game/GameScene.cpp > CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.i

CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mhs/Develop/C++/flappybird/src/Game/GameScene.cpp -o CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.s

CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o.requires:

.PHONY : CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o.requires

CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o.provides: CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o.requires
	$(MAKE) -f CMakeFiles/FlappyBird.dir/build.make CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o.provides.build
.PHONY : CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o.provides

CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o.provides.build: CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o


CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o: CMakeFiles/FlappyBird.dir/flags.make
CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o: ../src/Game/Pipe.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mhs/Develop/C++/flappybird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o -c /home/mhs/Develop/C++/flappybird/src/Game/Pipe.cpp

CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mhs/Develop/C++/flappybird/src/Game/Pipe.cpp > CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.i

CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mhs/Develop/C++/flappybird/src/Game/Pipe.cpp -o CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.s

CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o.requires:

.PHONY : CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o.requires

CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o.provides: CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o.requires
	$(MAKE) -f CMakeFiles/FlappyBird.dir/build.make CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o.provides.build
.PHONY : CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o.provides

CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o.provides.build: CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o


CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o: CMakeFiles/FlappyBird.dir/flags.make
CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o: ../src/Game/PauseMenu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mhs/Develop/C++/flappybird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o -c /home/mhs/Develop/C++/flappybird/src/Game/PauseMenu.cpp

CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mhs/Develop/C++/flappybird/src/Game/PauseMenu.cpp > CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.i

CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mhs/Develop/C++/flappybird/src/Game/PauseMenu.cpp -o CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.s

CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o.requires:

.PHONY : CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o.requires

CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o.provides: CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o.requires
	$(MAKE) -f CMakeFiles/FlappyBird.dir/build.make CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o.provides.build
.PHONY : CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o.provides

CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o.provides.build: CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o


CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o: CMakeFiles/FlappyBird.dir/flags.make
CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o: ../src/Game/GameOver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mhs/Develop/C++/flappybird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o -c /home/mhs/Develop/C++/flappybird/src/Game/GameOver.cpp

CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mhs/Develop/C++/flappybird/src/Game/GameOver.cpp > CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.i

CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mhs/Develop/C++/flappybird/src/Game/GameOver.cpp -o CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.s

CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o.requires:

.PHONY : CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o.requires

CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o.provides: CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o.requires
	$(MAKE) -f CMakeFiles/FlappyBird.dir/build.make CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o.provides.build
.PHONY : CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o.provides

CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o.provides.build: CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o


# Object files for target FlappyBird
FlappyBird_OBJECTS = \
"CMakeFiles/FlappyBird.dir/src/main.cpp.o" \
"CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o" \
"CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o" \
"CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o" \
"CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o" \
"CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o" \
"CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o" \
"CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o" \
"CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o"

# External object files for target FlappyBird
FlappyBird_EXTERNAL_OBJECTS =

FlappyBird: CMakeFiles/FlappyBird.dir/src/main.cpp.o
FlappyBird: CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o
FlappyBird: CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o
FlappyBird: CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o
FlappyBird: CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o
FlappyBird: CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o
FlappyBird: CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o
FlappyBird: CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o
FlappyBird: CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o
FlappyBird: CMakeFiles/FlappyBird.dir/build.make
FlappyBird: /usr/lib64/libsfml-system.so
FlappyBird: /usr/lib64/libsfml-window.so
FlappyBird: /usr/lib64/libsfml-graphics.so
FlappyBird: /usr/lib64/libsfml-network.so
FlappyBird: /usr/lib64/libsfml-audio.so
FlappyBird: CMakeFiles/FlappyBird.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mhs/Develop/C++/flappybird/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable FlappyBird"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FlappyBird.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FlappyBird.dir/build: FlappyBird

.PHONY : CMakeFiles/FlappyBird.dir/build

CMakeFiles/FlappyBird.dir/requires: CMakeFiles/FlappyBird.dir/src/main.cpp.o.requires
CMakeFiles/FlappyBird.dir/requires: CMakeFiles/FlappyBird.dir/src/Game/Bird.cpp.o.requires
CMakeFiles/FlappyBird.dir/requires: CMakeFiles/FlappyBird.dir/src/Game/MainMenu.cpp.o.requires
CMakeFiles/FlappyBird.dir/requires: CMakeFiles/FlappyBird.dir/src/Game/Settings.cpp.o.requires
CMakeFiles/FlappyBird.dir/requires: CMakeFiles/FlappyBird.dir/src/Game/SceneManager.cpp.o.requires
CMakeFiles/FlappyBird.dir/requires: CMakeFiles/FlappyBird.dir/src/Game/GameScene.cpp.o.requires
CMakeFiles/FlappyBird.dir/requires: CMakeFiles/FlappyBird.dir/src/Game/Pipe.cpp.o.requires
CMakeFiles/FlappyBird.dir/requires: CMakeFiles/FlappyBird.dir/src/Game/PauseMenu.cpp.o.requires
CMakeFiles/FlappyBird.dir/requires: CMakeFiles/FlappyBird.dir/src/Game/GameOver.cpp.o.requires

.PHONY : CMakeFiles/FlappyBird.dir/requires

CMakeFiles/FlappyBird.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FlappyBird.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FlappyBird.dir/clean

CMakeFiles/FlappyBird.dir/depend:
	cd /home/mhs/Develop/C++/flappybird/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mhs/Develop/C++/flappybird /home/mhs/Develop/C++/flappybird /home/mhs/Develop/C++/flappybird/cmake-build-debug /home/mhs/Develop/C++/flappybird/cmake-build-debug /home/mhs/Develop/C++/flappybird/cmake-build-debug/CMakeFiles/FlappyBird.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/FlappyBird.dir/depend

