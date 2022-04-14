# set the project name
project(moteus)

#For threading
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

set(SOURCE_DIR_MOTEUS ${PROJECT_SOURCE_DIR}/src)
set(INCLUDE_DIR_MOTEUS ${PROJECT_SOURCE_DIR}/include)
set(INCLUDE_DIR_PI3HAT ${PROJECT_SOURCE_DIR}/../pi3hat/include)
include_directories(${PROJECT_SOURCE_DIR})
include_directories(${SOURCE_DIR_MOTEUS})
include_directories(${INCLUDE_DIR_MOTEUS})
include_directories(${INCLUDE_DIR_PI3HAT})

set(LIBRARY_SOURCE ${SOURCE_DIR_MOTEUS}/moteus_control_example.cpp)
add_library(${PROJECT_NAME}-object OBJECT ${LIBRARY_SOURCE})
# this is only needed for older compilers but doesn't hurt either to have it
set_target_properties(${PROJECT_NAME}-object PROPERTIES POSITION_INDEPENDENT_CODE 1)
add_library(${PROJECT_NAME} SHARED $<TARGET_OBJECTS:${PROJECT_NAME}-object>)
add_library(${PROJECT_NAME}-static STATIC $<TARGET_OBJECTS:${PROJECT_NAME}-object>)

#add_executable(moteus_control_example ${SOURCE_DIR_MOTEUS}/moteus_control_example.cpp ${INCLUDE_DIR_MOTEUS}/realtime.hpp
#		${INCLUDE_DIR_MOTEUS}/moteus_protocol.hpp ${INCLUDE_DIR_MOTEUS}/pi3hat_moteus_interface.hpp ${INCLUDE_DIR_PI3HAT}/pi3hat.hpp)

#target_link_libraries(moteus_control_example bcm_host Threads::Threads)

set_target_properties(${PROJECT_NAME} PROPERTIES PUBLIC_HEADER "include/moteus_protocol.hpp;include/pi3hat_moteus_interface.hpp;include/realtime.hpp")
INSTALL(TARGETS ${PROJECT_NAME}
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME} 
        INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR} 
        ARCHIVE DESTINATION lib
       )

