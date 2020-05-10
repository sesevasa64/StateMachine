#pragma once
#include <string>

class Helper {
public:
    static bool isOperOrDelim(char symbol);
    static bool isDigit2(char symbol);
    static bool isDigit8(char symbol);
    static bool isDigit10(char symbol);
    static bool isDigitHex(char symbol);
    static bool isDelim(char symbol);
    static bool isOper(char symbol);
    static bool isBase(char symbol);
    static bool isSign(char symbol);
    static bool isZero(char symbol);
    static bool isExp(char symbol);
    static bool isDot(char symbol);
    static int charTo2(char symbol);
    static int charTo8(char symbol);
    static int charTo10(char symbol);
    static int charToHex(char symbol);
};