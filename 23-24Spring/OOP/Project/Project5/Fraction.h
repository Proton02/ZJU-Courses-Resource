#ifndef _FRACTION_H_
#define _FRACTION_H_

#include <iostream>
#include <string>
#include <algorithm>
#include <cmath>

using namespace std;

class Fraction {
private:
    int num;     // 分子
    int deno;    // 分母

    void simplify();       // 化简分数
    void Judgezero(int deno);  // 判断分母是否为0

public:
    // 默认构造
    Fraction();
    // 带参数构造
    Fraction(int num, int deno);
    // 拷贝构造
    Fraction(const Fraction& arg);
    // 算数运算
    Fraction operator+(const Fraction& arg) const;
    Fraction operator-(const Fraction& arg) const;
    Fraction operator*(const Fraction& arg) const;
    Fraction operator/(const Fraction& arg) const;
    // 关系运算
    bool operator<(const Fraction& arg) const;
    bool operator<=(const Fraction& arg) const;
    bool operator>(const Fraction& arg) const;
    bool operator>=(const Fraction& arg) const;
    bool operator==(const Fraction& arg) const;
    bool operator!=(const Fraction& arg) const;
    // 转成小数形式
    double Double() const;
    // 转成字符串
    std::string String() const;
    // 输出流
    friend std::ostream& operator<<(std::ostream& output, const Fraction& arg);
    // 输入流
    friend std::istream& operator>>(std::istream& input, Fraction& arg);
    // 小数转分数
    static Fraction decimal_to_double(std::string dec);
};

#endif
