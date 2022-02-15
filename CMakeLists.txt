cmake_minimum_required(VERSION 3.6)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")


# set the project name
project(mjbots_motor_driver)

include(GNUInstallDirs)
include_directories("/opt/vc/include/")
link_directories(/opt/vc/lib)

add_subdirectory(pi3hat)
add_subdirectory(moteus)
