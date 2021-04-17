
/*READ_S: []
WRITE_S: [g1]*/
int g1 = 10;
/*READ_S: [g1]
WRITE_S: [g1]*/
void foo() {
/*READ_S: [g1]
WRITE_S: [g1]*/
    /*READ_S: [g1]
    WRITE_S: [g1]*/
    test: g1++;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [bar, foo, g1]
WRITE_S: [g1]*/
void bar(int x) {
/*READ_S: [bar, foo, g1]
WRITE_S: [g1]*/
    /*READ_S: []
    WRITE_S: []*/
    10;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [bar, foo, g1]
    WRITE_S: [g1]*/
    if (x < 10) {
    /*READ_S: [bar, foo, g1]
    WRITE_S: [g1]*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre1;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre1 = x++;
        /*READ_S: [bar]
        WRITE_S: []*/
        bar(_imopVarPre1);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: [bar, x, z, foo, g1]
WRITE_S: [x, z, g1]*/
int main() {
/*READ_S: [bar, x, z, foo, g1]
WRITE_S: [x, z, g1]*/
    /*READ_S: []
    WRITE_S: []*/
    int x = 10;
    /*READ_S: []
    WRITE_S: []*/
    int z = 11;
    /*READ_S: [x, z]
    WRITE_S: [z]*/
#pragma omp parallel
    {
    /*READ_S: [x, z]
    WRITE_S: [z]*/
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush ATOMIC_START
        /*READ_S: []
        WRITE_S: [z]*/
#pragma omp atomic update
        /*READ_S: []
        WRITE_S: [z]*/
        z = 0;
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush ATOMIC_END
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [x]
        WRITE_S: []*/
        /*READ_S: [x, z]
        WRITE_S: [z]*/
        if (x < 9) {
        /*READ_S: [z]
        WRITE_S: [z]*/
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush ATOMIC_START
            /*READ_S: [z]
            WRITE_S: [z]*/
#pragma omp atomic update
            /*READ_S: [z]
            WRITE_S: [z]*/
            z++;
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush ATOMIC_END
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        } else {
        /*READ_S: [z]
        WRITE_S: [z]*/
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush ATOMIC_START
            /*READ_S: [z]
            WRITE_S: [z]*/
#pragma omp atomic update
            /*READ_S: [z]
            WRITE_S: [z]*/
            z++;
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush ATOMIC_END
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    z = 11;
    /*READ_S: [x, z]
    WRITE_S: [x, z]*/
#pragma omp parallel
    {
    /*READ_S: [x, z]
    WRITE_S: [x, z]*/
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush ATOMIC_START
        /*READ_S: [z]
        WRITE_S: [z]*/
#pragma omp atomic update
        /*READ_S: [z]
        WRITE_S: [z]*/
        z++;
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush ATOMIC_END
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush ATOMIC_START
        /*READ_S: [x]
        WRITE_S: [x]*/
#pragma omp atomic update
        /*READ_S: [x]
        WRITE_S: [x]*/
        x++;
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush ATOMIC_END
    }
    /*READ_S: []
    WRITE_S: []*/
    int thisVar = 14;
    /*READ_S: []
    WRITE_S: []*/
    test: x++;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [bar, foo, g1]
    WRITE_S: [g1]*/
    while (x > 8) {
    /*READ_S: [bar, foo, g1]
    WRITE_S: [g1]*/
        /*READ_S: []
        WRITE_S: []*/
        l2: x--;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [bar, foo, g1]
        WRITE_S: [g1]*/
        if (x == 1) {
        /*READ_S: [bar, foo, g1]
        WRITE_S: [g1]*/
            /*READ_S: []
            WRITE_S: []*/
            thisStmt: x = 3 + x++ + thisVar;
            /*READ_S: [foo]
            WRITE_S: []*/
            foo();
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            int z = 10;
            /*READ_S: []
            WRITE_S: []*/
            l1: x = 10;
            /*READ_S: [bar]
            WRITE_S: []*/
            bar(z);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [bar]
        WRITE_S: []*/
        bar(10);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [g1]
    WRITE_S: []*/
    do {
    /*READ_S: [g1]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        x--;
        /*READ_S: []
        WRITE_S: []*/
        x = x + 2;
        /*READ_S: [g1]
        WRITE_S: []*/
        x = x - g1;
    } while (x > 0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    while (thisVar++ < 5) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (thisVar == 10) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            continue;
        }
    }
}
