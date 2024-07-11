#include <iostream>
#include <vector>
#include <chrono>
#include "allocator.h"
using namespace std;
using namespace chrono;

// Testing the custom allocator
using Point2D = pair<int, int>;
const int TestSize = 10000;
const int PickSize = 1000;

int main() {
    // Memory pool for allocation of small blocks
    MemoryPool pool(sizeof(int), TestSize * 50);

    random_device rd;
    mt19937 gen(rd());
    uniform_int_distribution<> dis(1, TestSize);

    // Measure time for custom allocator
    auto start_custom = high_resolution_clock::now();

    // Vector creation
    using IntVec = vector<int, MyAllocator<int>>;
    vector<IntVec, MyAllocator<IntVec>> vecints(TestSize, MyAllocator<IntVec>(pool));
    for (int i = 0; i < TestSize; i++)
        vecints[i].resize(dis(gen));

    using PointVec = vector<Point2D, MyAllocator<Point2D>>;
    vector<PointVec, MyAllocator<PointVec>> vecpts(TestSize, MyAllocator<PointVec>(pool));
    for (int i = 0; i < TestSize; i++)
        vecpts[i].resize(dis(gen));

    // Vector resize
    for (int i = 0; i < PickSize; i++) {
        int idx = dis(gen) - 1;
        int size = dis(gen);
        vecints[idx].resize(size);
        vecpts[idx].resize(size);
    }

    // Vector element assignment
    {
        int val = 10;
        int idx1 = dis(gen) - 1;
        int idx2 = vecints[idx1].size() / 2;
        vecints[idx1][idx2] = val;
        if (vecints[idx1][idx2] == val)
            cout << "correct assignment in vecints: " << idx1 << endl;
        else
            cout << "incorrect assignment in vecints: " << idx1 << endl;
    }
    {
        Point2D val(11, 15);
        int idx1 = dis(gen) - 1;
        int idx2 = vecpts[idx1].size() / 2;
        vecpts[idx1][idx2] = val;
        if (vecpts[idx1][idx2] == val)
            cout << "correct assignment in vecpts: " << idx1 << endl;
        else
            cout << "incorrect assignment in vecpts: " << idx1 << endl;
    }

    auto end_custom = high_resolution_clock::now();
    auto duration_custom = duration_cast<milliseconds>(end_custom - start_custom).count();

    cout << "Memory pool allocator time: " << duration_custom << " ms" << endl;


    // Measure time for allocator
    auto start_std = high_resolution_clock::now();

    {
        // Vector creation
        using StdIntVec = vector<int>;
        vector<StdIntVec> std_vecints(TestSize);
        for (int i = 0; i < TestSize; i++)
            std_vecints[i].resize(dis(gen));

        using StdPointVec = vector<Point2D>;
        vector<StdPointVec> std_vecpts(TestSize);
        for (int i = 0; i < TestSize; i++)
            std_vecpts[i].resize(dis(gen));

        // Vector resize
        for (int i = 0; i < PickSize; i++) {
            int idx = dis(gen) - 1;
            int size = dis(gen);
            std_vecints[idx].resize(size);
            std_vecpts[idx].resize(size);
        }

        // Vector element assignment
        {
            int val = 10;
            int idx1 = dis(gen) - 1;
            int idx2 = std_vecints[idx1].size() / 2;
            std_vecints[idx1][idx2] = val;
            if (std_vecints[idx1][idx2] == val)
                cout << "correct assignment in std_vecints: " << idx1 << endl;
            else
                cout << "incorrect assignment in std_vecints: " << idx1 << endl;
        }
        {
            Point2D val(11, 15);
            int idx1 = dis(gen) - 1;
            int idx2 = std_vecpts[idx1].size() / 2;
            std_vecpts[idx1][idx2] = val;
            if (std_vecpts[idx1][idx2] == val)
                cout << "correct assignment in std_vecpts: " << idx1 << endl;
            else
                cout << "incorrect assignment in std_vecpts: " << idx1 << endl;
        }
    }

    auto end_std = high_resolution_clock::now();
    auto duration_std = duration_cast<milliseconds>(end_std - start_std).count();

    cout << "allocator time: " << duration_std << " ms" << endl;
}