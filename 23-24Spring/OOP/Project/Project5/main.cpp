#include "Fraction.h"
#include <fstream>

void test_operations(const Fraction& f1, const Fraction& f2) {
    cout << "Testing operations with " << f1 << " and " << f2 << endl;
    cout << f1 << " + " << f2 << " = " << (f1 + f2) << endl;
    cout << f1 << " - " << f2 << " = " << (f1 - f2) << endl;
    cout << f1 << " * " << f2 << " = " << (f1 * f2) << endl;
    cout << f1 << " / " << f2 << " = " << (f1 / f2) << endl;
    cout << endl;
}

void test_comparisons(const Fraction& f1, const Fraction& f2) {
    cout << "Testing comparisons with " << f1 << " and " << f2 << endl;
    cout << f1 << " < " << f2 << " = " << (f1 < f2) << endl;
    cout << f1 << " <= " << f2 << " = " << (f1 <= f2) << endl;
    cout << f1 << " > " << f2 << " = " << (f1 > f2) << endl;
    cout << f1 << " >= " << f2 << " = " << (f1 >= f2) << endl;
    cout << f1 << " == " << f2 << " = " << (f1 == f2) << endl;
    cout << f1 << " != " << f2 << " = " << (f1 != f2) << endl;
    cout << endl;
}

void test_conversion(const Fraction& f) {
    cout << "Testing conversion for " << f << endl;
    cout << f << " as double = " << f.Double() << endl;
    cout << f << " as string = " << f.String() << endl;
    cout << endl;
}

void test_decimal_to_fraction(const string& decimal) {
    Fraction f = Fraction::decimal_to_double(decimal);
    cout << "Testing decimal to fraction conversion for " << decimal << endl;
    cout << decimal << " as fraction = " << f << endl;
    cout << endl;
}

int main() {
    ifstream input("test_data.txt");

    if (!input) {
        cerr << "Failed to open test_data.txt" << endl;
        return 1;
    }

    Fraction f1, f2;
    string decimal;

    while (input >> f1) {
        if (!(input >> f2)) {
            cerr << "Failed to read second fraction for testing." << endl;
            return 1;
        }
        test_operations(f1, f2);
        test_comparisons(f1, f2);
        test_conversion(f1);
        test_conversion(f2);
    }

    input.clear(); // 清除 EOF 标志
    input.seekg(0, ios::beg); // 重置文件指针

    while (input >> decimal) {
        if (decimal.find('/') == string::npos) { // 检查是否为小数
            test_decimal_to_fraction(decimal);
        }
    }

    input.close();
    return 0;
}
