cmake_minimum_required(VERSION 3.16)
project(ftxui_example)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(${CMAKE_SOURCE_DIR}/FTXUI/include)
link_directories(${CMAKE_SOURCE_DIR}/FTXUI/build)

add_executable(ftxui_example examples/main.cpp)

target_link_libraries(ftxui_example ftxui-component ftxui-dom ftxui-screen pthread)
