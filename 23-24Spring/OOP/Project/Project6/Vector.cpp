#include "Vector.h"
#include <stdexcept>
using namespace std;

template <class T>
void Vector<T>::inflate(){
    if(m_nCapacity == 0){
        m_nCapacity = 1;
    }else{
        m_nCapacity *= 2;
    }
    T* newele = new T[m_nCapacity];
    for(int i = 0; i < m_nSize; i++){
        newele[i] = m_pElements[i];
    }
    delete[] m_pElements;
    m_pElements = newele;
}

template <class T>  // 构造
Vector<T>::Vector() : m_pElements(nullptr), m_nSize(0), m_nCapacity(0) {}

template <class T>  // 带size构造
Vector<T>::Vector(int size) : m_nSize(0), m_nCapacity(size){
    m_pElements = new T[m_nSize];
}

template <class T>  // 拷贝构造
Vector<T>::Vector(const Vector& r) : m_nSize(r.m_nSize), m_nCapacity(r.m_nCapacity){
    m_pElements = new T[m_nCapacity];
    for(int i = 0; i < m_nSize; i++){
        m_pElements[i] = r.m_pElements[i];
    }
}   

template <class T>  // 析构
Vector<T>::~Vector(){
    delete[] m_pElements;
}

template <class T>  // 找元素
T& Vector<T>::operator[](int index){
    return m_pElements[index];
}

template <class T>  // 带判断找元素
T& Vector<T>::at(int index){
    if(index < 0 || index >= m_nSize){
        throw std::out_of_range("Error: the index is out of range!");
    }
    return m_pElements[index];
}

template <class T>  // 返回当前元素数量
int Vector<T>::size() const{
    return m_nSize;
}

template <class T>  // 压栈
void Vector<T>::push_back(const T& x){
    if(m_nSize == m_nCapacity){
        inflate();
    }
    m_pElements[m_nSize++] = x;
}

template <class T>  // 清空元素
void Vector<T>::clear(){
    m_pElements = nullptr;
    m_nSize = m_nCapacity = 0;
}

template <class T>
bool Vector<T>::empty() const {
    return m_nSize == 0;
}


