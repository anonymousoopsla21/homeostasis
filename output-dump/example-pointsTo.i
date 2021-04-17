int g1 = 10;
void foo() {
    /*OUT: []*/
    test: g1++;
}
/*OUT: []*/
void bar(int x) {
    /*OUT: []*/
    10;
    /*OUT: []*/
    if (x < 10) {
        /*OUT: []*/
        int _imopVarPre1;
        /*OUT: []*/
        _imopVarPre1 = x++;
        /*OUT: []*/
        bar(_imopVarPre1);
        /*OUT: []*/
    }
}
int main() {
    /*OUT: []*/
    int x = 10;
    /*OUT: []*/
    int z = 11;
#pragma omp parallel
    {
        /*OUT: []*/
        // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
        /*OUT: []*/
        z = 0;
        /*OUT: []*/
        // #pragma omp dummyFlush ATOMIC_END
        /*OUT: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: []*/
#pragma omp barrier
        /*OUT: []*/
        if (x < 9) {
            /*OUT: []*/
            // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
            /*OUT: []*/
            z++;
            /*OUT: []*/
            // #pragma omp dummyFlush ATOMIC_END
            /*OUT: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: []*/
#pragma omp barrier
        } else {
            /*OUT: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: []*/
#pragma omp barrier
            /*OUT: []*/
            // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
            /*OUT: []*/
            z++;
            /*OUT: []*/
            // #pragma omp dummyFlush ATOMIC_END
        }
    }
    /*OUT: []*/
    z = 11;
#pragma omp parallel
    {
        /*OUT: []*/
        // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
        /*OUT: []*/
        z++;
        /*OUT: []*/
        // #pragma omp dummyFlush ATOMIC_END
        /*OUT: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: []*/
#pragma omp barrier
        /*OUT: []*/
        // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
        /*OUT: []*/
        x++;
        /*OUT: []*/
        // #pragma omp dummyFlush ATOMIC_END
    }
    /*OUT: []*/
    int thisVar = 14;
    /*OUT: []*/
    test: x++;
    /*OUT: []*/
    while (x > 8) {
        /*OUT: []*/
        l2: x--;
        /*OUT: []*/
        if (x == 1) {
            /*OUT: []*/
            thisStmt: x = 3 + x++ + thisVar;
            /*OUT: []*/
            foo();
            /*OUT: []*/
            /*OUT: []*/
            int z = 10;
            /*OUT: []*/
            l1: x = 10;
            /*OUT: []*/
            bar(z);
            /*OUT: []*/
        }
        /*OUT: []*/
        bar(10);
        /*OUT: []*/
    }
    /*OUT: []*/
    do {
        /*OUT: []*/
        x--;
        /*OUT: []*/
        x = x + 2;
        /*OUT: []*/
        x = x - g1;
        /*OUT: []*/
        thisVar++;
    } while (x > 0);
    /*OUT: []*/
    while (thisVar++ < 5) {
        /*OUT: []*/
        if (thisVar == 10) {
            /*OUT: []*/
            continue;
        }
    }
}
