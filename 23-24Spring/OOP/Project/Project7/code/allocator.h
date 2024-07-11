#ifndef ALLOCATOR_H
#define ALLOCATOR_H

#include "memoryPool.h"
using namespace std;

// Custom allocator implementation
template <typename T>
class MyAllocator {
public:
    using value_type = T;

    MyAllocator() : m_pool(nullptr) {}

    MyAllocator(MemoryPool& pool) : m_pool(&pool) {}

    template <typename U>
    MyAllocator(const MyAllocator<U>& other) noexcept : m_pool(other.m_pool) {}

    T* allocate(size_t n) {
        if (n > numeric_limits<size_t>::max() / sizeof(T)) {
            throw bad_alloc();
        }
        if (m_pool && n == 1) {
            return static_cast<T*>(m_pool->allocate());
        } else {
            return static_cast<T*>(::operator new(n * sizeof(T)));
        }
    }

    void deallocate(T* p, size_t n) noexcept {
        if (m_pool && n == 1) {
            m_pool->deallocate(p);
        } else {
            operator delete(p);
        }
    }

    template <typename U, typename ...Args>
    void construct(U* p, Args&&... args) {
        new(p) U(forward<Args>(args)...);
    }

    template <typename U>
    void destroy(U* p) {
        p->~U();
    }

    template <typename U>
    struct rebind {
        using other = MyAllocator<U>;
    };

    MemoryPool* m_pool;
};

template <typename T, typename U>
bool operator==(const MyAllocator<T>& lhs, const MyAllocator<U>& rhs) noexcept {
    return lhs.m_pool == rhs.m_pool;
}

template <typename T, typename U>
bool operator!=(const MyAllocator<T>& lhs, const MyAllocator<U>& rhs) noexcept {
    return !(lhs == rhs);
}

#endif // ALLOCATOR_H