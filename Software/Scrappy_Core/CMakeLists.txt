cmake_minimum_required(VERSION 3.5)
project(Scrappy_Core)

find_package(Boost REQUIRED COMPONENTS system filesystem)

#building library packages
# set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../lib)
# include_directories(${Boost_INCLUDE_DIRS} ${CMAKE_SOURCE_DIR}/include)
# add_library(DataTransport SHARED src/DataTransport.cpp)
# target_include_directories(DataTransport PRIVATE ${CMAKE_SOURCE_DIR}/include)
# target_link_libraries(DataTransport rt)

#building executables
# add_executable(JsonMsgGenerator src/JsonMsgGenerator.cpp)
# target_include_directories(JsonMsgGenerator PRIVATE ${CMAKE_SOURCE_DIR}/include)
# target_link_libraries(JsonMsgGenerator Boost::system Boost::filesystem)

#building test scripts
# add_executable(Test src/TestReceive.cpp)
# target_link_libraries(Test rt)

## Building the library --------------------------------------------------------

set(INCLUDE_FILES
   include/DataTransport.h
)

# Create the library
# add_library(DataTransport SHARED ${SRC_FILES})

# Set the include directories
# target_include_directories(DataTransport PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include ${Boost_INCLUDE_DIRS})

# target_link_libraries(DataTransport rt)

# Set the output directory for the library
# set_target_properties(DataTransport PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/lib)

# Set the install targets for the library
# install(TARGETS DataTransport
        # LIBRARY DESTINATION lib
        # ARCHIVE DESTINATION lib)

# Install the header files
# install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/ DESTINATION include)

