#include <iostream>
#include <cmath>
#include "statemachine.hpp"
#include "helper.hpp"

std::array<StateMachine::Transition, 13> StateMachine::trans = {{
    {States::FirstInt,    Event::Digit, States::CircleInt,   calcInt},
    {States::FirstInt,    Event::Dot,   States::FirstFloat,  dummy},
    {States::FirstInt,    Event::Zero,  States::ChangeBase,  dummy},
    {States::ChangeBase,  Event::Base,  States::CircleInt,   changeBase},
    {States::CircleInt,   Event::Digit, States::CircleInt,   calcInt},
    {States::CircleInt,   Event::Dot,   States::CircleFloat, dummy},
    {States::CircleInt,   Event::Exp,   States::FirstExp,    dummy},
    {States::FirstFloat,  Event::Digit, States::CircleFloat, calcFloat},
    {States::CircleFloat, Event::Digit, States::CircleFloat, calcFloat},
    {States::CircleFloat, Event::Exp,   States::FirstExp,    dummy},
    {States::FirstExp,    Event::Sign,  States::CircleExp,   calcSign},
    {States::FirstExp,    Event::Digit, States::CircleExp,   calcExp},
    {States::CircleExp,   Event::Digit, States::CircleExp,   calcExp},
}};
double StateMachine::fucking_work(std::string str) {
    return fucking_work(str.begin(), str.end());
};
double StateMachine::fucking_work(iter str_start, iter str_end) {
    initialising(str_start, str_end);
    auto trans_start = trans.begin();
    auto trans_end   = trans.end();
    for(; it != end; it++) {
        Event curr_event = Classifier();
        if(curr_event == Event::End) {
            break;
        }
        auto  tran = trans_start;
        for(; tran != trans_end; tran++) {
            if (curr_state == tran->curr_state && curr_event == tran->event) {
                std::mem_fun(tran->callback)(this);
                curr_state = tran->new_state;
                break;
            }
        }
        if(tran == trans_end || curr_event == Event::Unknown) {
            // после или должно быть после event check, но так красивее ;)
            throw std::invalid_argument("IT'S TOTALLY FUCK'D UP");
        }
    }
    return sum_int * pow(base, sign * sum_exp - sum_float);
}
StateMachine::Event StateMachine::Classifier() {
    if(Helper::isZero(*it) && isState(States::FirstInt))
        return Event::Zero;
    if(is_Digit(*it))
        return Event::Digit;
    if(Helper::isBase(*it))
        return Event::Base;
    if(Helper::isDot(*it))
        return Event::Dot;
    if(Helper::isSign(*it) && isState(States::FirstExp))
        return Event::Sign;
    if(Helper::isExp(*it))
        return Event::Exp;
    if(Helper::isOperOrDelim(*it))
        return Event::End;
    return Event::Unknown;
}
void StateMachine::changeBase() {
    if(*it == 'x' || *it == 'X') {
        base = 16;
        is_Digit = Helper::isDigitHex;
        to_Digit = Helper::charToHex;
    }
    else if(*it == 'o' || *it == 'O') {
        base = 8;
        is_Digit = Helper::isDigit8;
        to_Digit = Helper::charTo8;
    }
    else if(*it == 'b' || *it == 'b') {
        base = 2;
        is_Digit = Helper::isDigit2;
        to_Digit = Helper::charTo2;
    }
}
void StateMachine::calcInt() {
    sum_int = sum_int * base + to_Digit(*it);
}
void StateMachine::calcFloat() {
    calcInt();
    sum_float++;
}
void StateMachine::calcSign() {
    sign = *it == '+' ? 1 : -1;
}
void StateMachine::calcExp() {
    sum_exp = sum_exp * base + to_Digit(*it);
}
bool StateMachine::isState(States state) {
    return curr_state == state;
}
void StateMachine::initialising(iter str_start, iter str_end) {
    sum_int = sum_float = sum_exp = 0;
    curr_state = States::FirstInt;
    it  = str_start;
    end = str_end;
    sign = 1;
    base = 10;
    to_Digit = Helper::charTo10;
    is_Digit = Helper::isDigit10;
}