#pragma once
#include <array>
#include <string>

class StateMachine {
public:
    typedef std::string::iterator iter;
    enum class States {
        FirstInt,
        ChangeBase,
        CircleInt,
        FirstFloat,
        CircleFloat,
        FirstExp,
        CircleExp,
    };
    enum class Event {
        Digit,
        Base,
        Zero,
        Dot,
        Exp,
        Sign,
        End,
        Unknown,
    };
    struct Transition {
        States curr_state;
        Event  event;
        States new_state;
        void (StateMachine::*callback)();
    };
    static std::array<Transition, 13> trans;
    double fucking_work(iter str_start, iter str_end);
    double fucking_work(std::string str);
    iter getIt() { return it; }
private:
    void initialising(iter str_start, iter str_end);
    void changeBase();
    void calcInt();
    void calcFloat();
    void calcSign();
    void calcExp();
    void dummy() {}
    bool isState(States state);
    Event Classifier();
    States curr_state;
    int sum_float;
    int sum_int;
    int sum_exp;
    int sign;
    iter it;
    iter end;

    int base;
    int (*to_Digit)(char);
    bool (*is_Digit)(char);
};