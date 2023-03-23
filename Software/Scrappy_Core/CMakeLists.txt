cmake_minimum_required(VERSION 3.5)
project(Scrappy_Core)

find_package(Boost REQUIRED COMPONENTS system filesystem)


include_directories(${Boost_INCLUDE_DIRS} ${CMAKE_SOURCE_DIR}/include)
add_executable(DataTransport src/DataTransport.cpp)
add_executable(Test src/TestReceive.cpp)
add_executable(JsonMsgGenerator src/JsonMsgGenerator.cpp)
target_include_directories(DataTransport PRIVATE ${CMAKE_SOURCE_DIR}/include)
target_include_directories(JsonMsgGenerator PRIVATE ${CMAKE_SOURCE_DIR}/include)
target_link_libraries(DataTransport rt)
target_link_libraries(Test rt)
target_link_libraries(JsonMsgGenerator Boost::system Boost::filesystem)
