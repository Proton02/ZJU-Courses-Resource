#include "Fraction.h"
// 化简分数
void Fraction::simplify() {       
    int gcd = __gcd(num, deno);
    num /= gcd;
    deno /= gcd;
    if (deno < 0) {     // 保证分母为正
        num *= -1;
        deno *= -1;
    }
}
// 判断分母是否为0
void Fraction::Judgezero(int deno) {     
    if (deno == 0)
        cout << "Error: Denominator cannot be zero!" << endl;
}

// 默认构造
Fraction::Fraction() : num(0), deno(1) {} 

// 带参数构造
Fraction::Fraction(int num, int deno) : num(num), deno(deno) {    
    Judgezero(deno);
    simplify();
}

// 拷贝构造
Fraction::Fraction(const Fraction& arg) : num(arg.num), deno(arg.deno) {}

// 算数运算
Fraction Fraction::operator+(const Fraction& arg) const {
    return Fraction(num * arg.deno + arg.num * deno, deno * arg.deno);
}
Fraction Fraction::operator-(const Fraction& arg) const {
    return Fraction(num * arg.deno - arg.num * deno, deno * arg.deno);
}
Fraction Fraction::operator*(const Fraction& arg) const {
    return Fraction(num * arg.num, deno * arg.deno);
}
Fraction Fraction::operator/(const Fraction& arg) const {
    if (arg.num == 0)
        cout << "Error: Division by zero!" << endl;
    return Fraction(num * arg.deno, deno * arg.num);
}

// 关系运算
bool Fraction::operator<(const Fraction& arg) const {
    return num * arg.deno < arg.num * deno;
}
bool Fraction::operator<=(const Fraction& arg) const {
    return num * arg.deno <= arg.num * deno;
}
bool Fraction::operator>(const Fraction& arg) const {
    return num * arg.deno > arg.num * deno;
}
bool Fraction::operator>=(const Fraction& arg) const {
    return num * arg.deno >= arg.num * deno;
}
bool Fraction::operator==(const Fraction& arg) const {
    return num * arg.deno == arg.num * deno;
}
bool Fraction::operator!=(const Fraction& arg) const {
    return num * arg.deno != arg.num * deno;
}
// 转成小数形式
double Fraction::Double() const {
    return (double)num / deno;
}
// 转成字符串
string Fraction::String() const {
    return to_string(num) + "/" + to_string(deno);
}
// 输出流，支持 cout << frac 形式和链式操作
ostream& operator<<(ostream& output, const Fraction& arg) {
    output << arg.num << "/" << arg.deno;
    return output;
}
// 输入流，支持 cin >> frac 形式和链式操作
istream& operator>>(istream& input, Fraction& arg) {
    char slash;
    input >> arg.num >> slash >> arg.deno;
    arg.Judgezero(arg.deno);
    arg.simplify();
    return input;
}
// 小数转分数，由于无法直接根据小数创建出对象，因此采用静态函数
Fraction Fraction::decimal_to_double(string dec) {
    int len = dec.length();     // 整个长度
    int dot = dec.find('.');    // 小数点位置
    int num = stoi(dec.substr(0, dot) + dec.substr(dot + 1));   // 把小数点去掉
    int deno = pow(10, len - (dot + 1));    // 分母大小
    return Fraction(num, deno);
}