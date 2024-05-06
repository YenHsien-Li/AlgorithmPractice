cmake_minimum_required(VERSION 3.25.2)
set(BUILD_GMOCK ON CACHE BOOL "" FORCE)

# GoogleTest requires at least C++14
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(AlgorithmPractice)

# Find Google Test
include(cmake/ExAddGTest.cmake)
add_subdirectory(UnitTest)
add_subdirectory(lib)