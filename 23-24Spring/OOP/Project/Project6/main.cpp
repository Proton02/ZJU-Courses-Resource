#include <iostream>
#include <cmath>
#include "Vector.cpp"
using namespace std;

int main() {
    Vector<int> vec(10);
    
    // 检查向量是否为空
    cout << "Vector is empty: " << (vec.empty() ? "Yes" : "No") << endl;
    
    // 添加一些元素
    for (int i = 0; i < 27; ++i) {
        vec.push_back(-pow(i, 2) + 3 * i - 1);
    }
    
    // 打印向量大小
    cout << "Vector size: " << vec.size() << endl;

    // 打印元素
    cout << "Elements in the vector:" << endl;
    for (int i = 0; i < vec.size(); ++i) {
        cout << vec[i] << " ";
    }
    cout << endl;

    // 测试带边界检查的访问
    try {
        cout << "Element at index 5: " << vec.at(5) << endl;
        cout << "Element at index 0: " << vec.at(0) << endl;
        cout << "Element at index 26: " << vec.at(26) << endl;
        cout << "Element at index 40: " << vec.at(40) << endl; // 抛出异常
    } catch (const out_of_range& e) {
        cerr << e.what() << endl;
    }

    // 清空向量
    vec.clear();
    cout << "Vector size: " << vec.size() << endl;
    cout << "Vector is empty: " << (vec.empty() ? "Yes" : "No") << endl;

    return 0;
}
