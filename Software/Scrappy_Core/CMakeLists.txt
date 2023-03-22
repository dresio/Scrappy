cmake_minimum_required(VERSION 3.5)
project(Scrappy_Core)

find_package(Boost REQUIRED COMPONENTS system filesystem)


include_directories(${Boost_INCLUDE_DIRS})
add_executable(DataTransport src/DataTransport.cpp)
add_executable(Test src/TestReceive.cpp)
add_executable(Generate src/GenerateMsgs.cpp)
target_link_libraries(DataTransport rt)
target_link_libraries(Test rt)
target_link_libraries(Generate Boost::system Boost::filesystem)
