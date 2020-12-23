
cmake_minimum_required(VERSION 3.10)

project(am)

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

include_directories(include)
include_directories(../../common/include/boost_1_72_0)

link_directories(../../common/lib)

add_executable(am src/main.cpp)

