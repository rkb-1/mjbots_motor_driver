# set the project name
project(moteus)

#For threading
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)
find_library(pi3hat REQUIRED)

set(SOURCE_DIR_MOTEUS ${PROJECT_SOURCE_DIR}/src)
set(INCLUDE_DIR_MOTEUS ${PROJECT_SOURCE_DIR}/include)
include_directories(${PROJECT_SOURCE_DIR})
include_directories(${SOURCE_DIR_MOTEUS})
include_directories(${INCLUDE_DIR_MOTEUS})

add_executable(moteus_control_example ${SOURCE_DIR_MOTEUS}/moteus_control_example.cc ${INCLUDE_DIR_MOTEUS}/realtime.h
		${INCLUDE_DIR_MOTEUS}/moteus_protocol.h ${INCLUDE_DIR_MOTEUS}/pi3hat_moteus_interface.h)

target_link_libraries(moteus_control_example bcm_host Threads::Threads pi3hat)

#set_target_properties(${PROJECT_NAME} PROPERTIES PUBLIC_HEADER "include/moteus_protocol.h; include/pi3hat_moteus_interface.h")

#INSTALL(TARGETS ${PROJECT_NAME}
#        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
#	PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
#	INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
#        ARCHIVE DESTINATION lib
#       )

