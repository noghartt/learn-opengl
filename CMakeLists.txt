cmake_minimum_required(VERSION 3.10)

project(opengl)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include_directories(include)

add_subdirectory(external/glfw)

include_directories(external/glad/include)

file(GLOB_RECURSE SOURCES "src/*.cpp" "external/glad/src/*.c")

add_executable(OpenGl ${SOURCES})

target_link_libraries(OpenGl PRIVATE glfw)
