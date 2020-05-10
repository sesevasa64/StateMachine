#include <iostream>
#include "helper.hpp"

bool Helper::isOperOrDelim(char symbol) {
    return isOper(symbol) || isDelim(symbol);
}
bool Helper::isBase(char symbol) {
    for(auto s : {'x', 'X', 'o', 'O', 'b', 'B'}) {
        if(symbol == s) {
            return true;
        }
    }
    return false;
}
bool Helper::isOper(char symbol) {
    for(const auto& oper : {'+', '-', '*', '/'}) {
        if(symbol == oper) {
            return true;
        }
    }
    return false;
}
bool Helper::isDelim(char symbol) {
    for(const auto& delim : {' ', '\t', '\n'}) {
        if(symbol == delim) {
            return true;
        }
    }
    return false;
}
bool Helper::isDigit2(char symbol) {
    return symbol == '0' || symbol == '1';
}
bool Helper::isDigit8(char symbol) {
    return '0' <= symbol && symbol <= '7';
}
bool Helper::isDigit10(char symbol) {
    return '0' <= symbol && symbol <= '9';
}
bool Helper::isDigitHex(char symbol) {
    bool b1 = 'a' <= symbol && symbol <= 'f';
    bool b2 = 'A' <= symbol && symbol <= 'F';
    return b1 || b2 || isDigit10(symbol);
}
bool Helper::isExp(char symbol) {
    return symbol == 'e' || symbol == 'E';
}
bool Helper::isSign(char symbol) {
    return symbol == '+' || symbol == '-'; 
}
bool Helper::isZero(char symbol) {
    return symbol == '0';
}
bool Helper::isDot(char symbol) {
    return symbol == '.';
}
int Helper::charTo2(char symbol) {
    int res = symbol - '0';
    if(res == 0 || res == 1) {
        return res;
    }
    throw std::invalid_argument("NAN");
}
int Helper::charTo8(char symbol) {
    int res = symbol - '0';
    if(0 <= res && res <= 7) {
        return res;
    } 
    throw std::invalid_argument("NAN");
}
int Helper::charTo10(char symbol) {
    int res = symbol - '0';
    if(0 <= res && res <= 9) {
        return res;
    } 
    throw std::invalid_argument("NAN");
}
int Helper::charToHex(char symbol) {
    int b10 = symbol - '0';
    if(0 <= b10 && b10 <= 9) {
        return b10;
    }
    int hexUp = b10 - 7;
    if(10 <= hexUp && hexUp <= 15) {
        return hexUp;
    }
    int hexDn = hexUp - 32;
    if(10 <= hexDn && hexDn <= 15) {
        return hexDn;
    }
    throw std::invalid_argument("NAN");
}