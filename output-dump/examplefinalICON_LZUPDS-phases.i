
/*[]*/
int g1 = 10;
/*[]*/
void foo() {
/*[]*/
    /*[]*/
    test: g1++;
}
/*[]*/
/*[]*/
void bar(int x) {
/*[]*/
    /*[]*/
    10;
    /*[]*/
    /*[]*/
    if (x < 10) {
    /*[]*/
        /*[]*/
        int _imopVarPre1;
        /*[]*/
        _imopVarPre1 = x++;
        /*[]*/
        bar(_imopVarPre1);
        /*[]*/
    }
}
/*[]*/
int main() {
/*[]*/
    /*[]*/
    int x = 10;
    /*[]*/
    int z = 11;
    /*[1]*/
#pragma omp parallel
    {
    /*[1]*/
        /*[1]*/
        // #pragma omp dummyFlush ATOMIC_START
        /*[1]*/
#pragma omp atomic update
        /*[1]*/
        z = 0;
        /*[1]*/
        // #pragma omp dummyFlush ATOMIC_END
        /*[1]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[1]*/
#pragma omp barrier
        /*[2]*/
        /*[2]*/
        if (x < 9) {
        /*[2]*/
            /*[2]*/
            // #pragma omp dummyFlush ATOMIC_START
            /*[2]*/
#pragma omp atomic update
            /*[2]*/
            z++;
            /*[2]*/
            // #pragma omp dummyFlush ATOMIC_END
            /*[2]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[2]*/
#pragma omp barrier
        } else {
        /*[2]*/
            /*[2]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[2]*/
#pragma omp barrier
            /*[3]*/
            // #pragma omp dummyFlush ATOMIC_START
            /*[3]*/
#pragma omp atomic update
            /*[3]*/
            z++;
            /*[3]*/
            // #pragma omp dummyFlush ATOMIC_END
        }
    }
    /*[]*/
    z = 11;
    /*[4]*/
#pragma omp parallel
    {
    /*[4]*/
        /*[4]*/
        // #pragma omp dummyFlush ATOMIC_START
        /*[4]*/
#pragma omp atomic update
        /*[4]*/
        z++;
        /*[4]*/
        // #pragma omp dummyFlush ATOMIC_END
        /*[4]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[4]*/
#pragma omp barrier
        /*[5]*/
        // #pragma omp dummyFlush ATOMIC_START
        /*[5]*/
#pragma omp atomic update
        /*[5]*/
        x++;
        /*[5]*/
        // #pragma omp dummyFlush ATOMIC_END
    }
    /*[]*/
    int thisVar = 14;
    /*[]*/
    test: x++;
    /*[]*/
    /*[]*/
    while (x > 8) {
    /*[]*/
        /*[]*/
        l2: x--;
        /*[]*/
        /*[]*/
        if (x == 1) {
        /*[]*/
            /*[]*/
            thisStmt: x = 3 + x++ + thisVar;
            /*[]*/
            foo();
            /*[]*/
            /*[]*/
            int z = 10;
            /*[]*/
            l1: x = 10;
            /*[]*/
            bar(z);
            /*[]*/
        }
        /*[]*/
        bar(10);
        /*[]*/
    }
    /*[]*/
    /*[]*/
    do {
    /*[]*/
        /*[]*/
        x--;
        /*[]*/
        x = x + 2;
        /*[]*/
        x = x - g1;
        /*[]*/
        thisVar++;
    } while (x > 0);
    /*[]*/
    /*[]*/
    while (thisVar++ < 5) {
    /*[]*/
        /*[]*/
        /*[]*/
        if (thisVar == 10) {
        /*[]*/
            /*[]*/
            continue;
        }
    }
}
