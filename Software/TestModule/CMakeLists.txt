cmake_minimum_required(VERSION 3.5)
project(TestModule)

# Include the DataTransport header files
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../Scrappy_Core/include ${CMAKE_CURRENT_SOURCE_DIR}/../Scrappy_Core/msg_headers)

# Create the executable
add_executable(TestPub src/TestPub.cpp)
add_executable(TestReceive src/TestReceive.cpp)

target_link_libraries(TestPub rt pthread)
target_link_libraries(TestReceive rt pthread)

