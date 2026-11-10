cmake_minimum_required(VERSION 3.16)

project(EXAMPLE_PROJECT)
set(CMAKE_CXX_STANDARD 20)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin/")

file(GLOB_RECURSE MY_SOURCES CONFIGURE_DEPENDS
     "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")

add_executable(EXAMPLE_PROJECT "${MY_SOURCES}")

target_include_directories(EXAMPLE_PROJECT PUBLIC
                           "${CMAKE_CURRENT_SOURCE_DIR}/include/")
