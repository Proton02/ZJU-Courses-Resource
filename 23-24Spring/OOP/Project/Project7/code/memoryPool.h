#ifndef MEMORYPOOL_H
#define MEMORYPOOL_H

#include <random>
using namespace std;

// Memory pool implementation
class MemoryPool {
public:
    MemoryPool(size_t blockSize, size_t blockCount) : m_blockSize(blockSize), m_blockCount(blockCount) {
        m_pool = operator new(m_blockSize * m_blockCount);
        for (size_t i = 0; i < m_blockCount; ++i) {
            m_freeBlocks.push_back(static_cast<char*>(m_pool) + i * m_blockSize);
        }
    }

    ~MemoryPool() {
        operator delete(m_pool);
    }

    void* allocate() {
        if (m_freeBlocks.empty()) {
            throw bad_alloc();
        }
        void* block = m_freeBlocks.back();
        m_freeBlocks.pop_back();
        return block;
    }

    void deallocate(void* block) {
        m_freeBlocks.push_back(static_cast<char*>(block));
    }

private:
    size_t m_blockSize;
    size_t m_blockCount;
    void* m_pool;
    vector<void*> m_freeBlocks;
};

#endif // MEMORYPOOL_H