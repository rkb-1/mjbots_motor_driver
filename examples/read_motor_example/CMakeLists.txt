project(read_motor_status)
cmake_minimum_required(VERSION 3.6)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

#For threading
include(GNUInstallDirs)
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

link_directories(/usr/local/lib/aarch64-linux-gnu)
find_library(moteus pi3hat REQUIRED)

#set(INCLUDE_DIR_MOTEUS /usr/local/include/moteus)
#set(INCLUDE_DIR_PI3HAT /usr/local/include/pi3hat)

#target_include_directories(read_motor_status PUBLIC ${INCLUDE_DIR_MOTEUS})
#target_include_directories(read_motor_status PUBLIC ${INCLUDE_DIR_PI3HAT})

add_executable(read_motor_status read_motor_status.cpp)

target_link_libraries(read_motor_status pi3hat moteus bcm_host Threads::Threads)
