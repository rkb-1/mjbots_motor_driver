# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/mjbots_motor_driver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/mjbots_motor_driver/build

# Include any dependencies generated for this target.
include moteus/CMakeFiles/moteus-static.dir/depend.make

# Include the progress variables for this target.
include moteus/CMakeFiles/moteus-static.dir/progress.make

# Include the compile flags for this target's objects.
include moteus/CMakeFiles/moteus-static.dir/flags.make

# Object files for target moteus-static
moteus__static_OBJECTS =

# External object files for target moteus-static
moteus__static_EXTERNAL_OBJECTS = \
"/home/pi/mjbots_motor_driver/build/moteus/CMakeFiles/moteus-object.dir/src/moteus_control_example.cpp.o"

moteus/libmoteus-static.a: moteus/CMakeFiles/moteus-object.dir/src/moteus_control_example.cpp.o
moteus/libmoteus-static.a: moteus/CMakeFiles/moteus-static.dir/build.make
moteus/libmoteus-static.a: moteus/CMakeFiles/moteus-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/mjbots_motor_driver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library libmoteus-static.a"
	cd /home/pi/mjbots_motor_driver/build/moteus && $(CMAKE_COMMAND) -P CMakeFiles/moteus-static.dir/cmake_clean_target.cmake
	cd /home/pi/mjbots_motor_driver/build/moteus && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/moteus-static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
moteus/CMakeFiles/moteus-static.dir/build: moteus/libmoteus-static.a

.PHONY : moteus/CMakeFiles/moteus-static.dir/build

moteus/CMakeFiles/moteus-static.dir/clean:
	cd /home/pi/mjbots_motor_driver/build/moteus && $(CMAKE_COMMAND) -P CMakeFiles/moteus-static.dir/cmake_clean.cmake
.PHONY : moteus/CMakeFiles/moteus-static.dir/clean

moteus/CMakeFiles/moteus-static.dir/depend:
	cd /home/pi/mjbots_motor_driver/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/mjbots_motor_driver /home/pi/mjbots_motor_driver/moteus /home/pi/mjbots_motor_driver/build /home/pi/mjbots_motor_driver/build/moteus /home/pi/mjbots_motor_driver/build/moteus/CMakeFiles/moteus-static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : moteus/CMakeFiles/moteus-static.dir/depend

