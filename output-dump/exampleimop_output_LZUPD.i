int g1 = 10;
void foo() {
    test: g1++;
}
void bar(int x) {
    10;
    if (x < 10) {
        int _imopVarPre1;
        _imopVarPre1 = x++;
        bar(_imopVarPre1);
    }
}
int main() {
    int x = 10;
    int z = 11;
#pragma omp parallel
    {
// #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
        z = 0;
// #pragma omp dummyFlush ATOMIC_END
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        if (x < 9) {
// #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
            z++;
// #pragma omp dummyFlush ATOMIC_END
        } else {
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
// #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
            z++;
// #pragma omp dummyFlush ATOMIC_END
        }
    }
    z = 11;
#pragma omp parallel
    {
// #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
        z++;
// #pragma omp dummyFlush ATOMIC_END
// #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
        x++;
// #pragma omp dummyFlush ATOMIC_END
    }
    int thisVar = 14;
    test: x++;
    while (x > 8) {
        l2: x--;
        if (x == 1) {
            thisStmt: x = 3 + x++ + thisVar;
            foo();
            int z = 10;
            l1: x = 10;
            bar(z);
        }
        bar(10);
    }
    do {
        x--;
        x = x + 2;
        x = x - g1;
        thisVar++;
    } while (x > 0);
    while (thisVar++ < 5) {
        if (thisVar == 10) {
            continue;
        }
    }
}
