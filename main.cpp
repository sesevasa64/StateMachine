#include <iostream>
#include "statemachine.hpp"
using namespace std;

int main() {
    StateMachine st;
    std::cout.precision(10);
    std::cout << st.fucking_work("123e-123"s) << std::endl;
    std::cout << st.fucking_work(".123e+3"s) << std::endl;
    std::cout << st.fucking_work("0xff"s) << std::endl;
    std::cout << st.fucking_work("0o77"s) << std::endl;
    std::cout << st.fucking_work("0b101"s) << std::endl;
    // Константа ниже не распознается в с++, но этот автомат может ее распознать :)
    std::cout << st.fucking_work("0x.8"s) << std::endl;
    return 0;
}