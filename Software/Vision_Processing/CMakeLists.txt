cmake_minimum_required(VERSION 3.5)
project(Vision_Processing)

set(CMAKE_CXX_STANDARD 11)

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(CameraInterface src/CameraInterface.cpp)
target_link_libraries(CameraInterface ${OpenCV_LIBS})