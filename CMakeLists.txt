project(StateMachine)
set(CMAKE_CXX_FLAGS -std=c++17)
add_executable(StateMachine main.cpp statemachine.hpp statemachine.cpp helper.hpp helper.cpp)