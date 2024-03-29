# set the project name
project(pi3hat)
set(SOURCE_DIR_PI3HAT ${PROJECT_SOURCE_DIR}/src)
set(INCLUDE_DIR_PI3HAT ${PROJECT_SOURCE_DIR}/include)
set(lib_INCLUDE_DIR ${INCLUDE_DIR_PI3HAT} CACHE INTERNAL "")

include_directories(${PROJECT_SOURCE_DIR})
include_directories(${SOURCE_DIR_PI3HAT})
include_directories(${INCLUDE_DIR_PI3HAT})

set(LIBRARY_NAME ${PROJECT_NAME} CACHE INTERNAL "")
set(LIBRARY_SOURCE ${SOURCE_DIR_PI3HAT}/pi3hat.cpp)

add_library(${PROJECT_NAME}-object OBJECT ${LIBRARY_SOURCE})

# this is only needed for older compilers but doesn't hurt either to have it
set_target_properties(${PROJECT_NAME}-object PROPERTIES POSITION_INDEPENDENT_CODE 1)
add_library(${PROJECT_NAME} SHARED $<TARGET_OBJECTS:${PROJECT_NAME}-object>)
add_library(${PROJECT_NAME}-static STATIC $<TARGET_OBJECTS:${PROJECT_NAME}-object>)

#Example for executable file for testing. Can use help commands to see if they are installed properly
add_executable(pi3hat_tool ${INCLUDE_DIR_PI3HAT}/pi3hat.hpp ${SOURCE_DIR_PI3HAT}/pi3hat.cpp ${SOURCE_DIR_PI3HAT}/pi3hat_tool.cpp)
target_link_libraries(pi3hat_tool bcm_host)

set_target_properties(${PROJECT_NAME} PROPERTIES PUBLIC_HEADER "include/pi3hat.hpp")

INSTALL(TARGETS ${PROJECT_NAME} ${PROJECT_NAME}_tool
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
	PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
	INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
        ARCHIVE DESTINATION lib
       )

