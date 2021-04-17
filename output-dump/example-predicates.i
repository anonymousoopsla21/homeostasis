int g1 = 10;
void foo() {
    /*OUT: {
    Reverse<--,>}*/
    test: g1++;
}
/*OUT: {
Reverse<--,>}*/
void bar(int x) {
    /*OUT: {
    Reverse<--,>}*/
    10;
    /*OUT: {
    Reverse<--,>}*/
    if (x < 10) {
        /*OUT: {
        Reverse<--, 81_0;>}*/
        int _imopVarPre1;
        /*OUT: {
        Reverse<--, 81_0;>}*/
        _imopVarPre1 = x++;
        /*OUT: {
        Reverse<--, 81_0;>}*/
        bar(_imopVarPre1);
        /*OUT: {
        Reverse<--, 81_0;>}*/
    }
}
int main() {
    /*OUT: {
    Reverse<--,>}*/
    int x = 10;
    /*OUT: {
    Reverse<--,>}*/
    int z = 11;
#pragma omp parallel
    {
        /*OUT: {
        Reverse<178,>}*/
        // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
        /*OUT: {
        Reverse<178,>}*/
        z = 0;
        /*OUT: {
        Reverse<178,>}*/
        // #pragma omp dummyFlush ATOMIC_END
        /*OUT: {
        Reverse<178,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<98,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<98,>}*/
        if (x < 9) {
            /*OUT: {
            Reverse<98, 99_0;>}*/
            // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
            /*OUT: {
            Reverse<98, 99_0;>}*/
            z++;
            /*OUT: {
            Reverse<98, 99_0;>}*/
            // #pragma omp dummyFlush ATOMIC_END
            /*OUT: {
            Reverse<98, 99_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<102,>}*/
#pragma omp barrier
        } else {
            /*OUT: {
            Reverse<98, 99_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<103,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<103,>}*/
            // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
            /*OUT: {
            Reverse<103,>}*/
            z++;
            /*OUT: {
            Reverse<103,>}*/
            // #pragma omp dummyFlush ATOMIC_END
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    z = 11;
#pragma omp parallel
    {
        /*OUT: {
        Reverse<194,>}*/
        // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
        /*OUT: {
        Reverse<194,>}*/
        z++;
        /*OUT: {
        Reverse<194,>}*/
        // #pragma omp dummyFlush ATOMIC_END
        /*OUT: {
        Reverse<194,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<110,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<110,>}*/
        // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic update
        /*OUT: {
        Reverse<110,>}*/
        x++;
        /*OUT: {
        Reverse<110,>}*/
        // #pragma omp dummyFlush ATOMIC_END
    }
    /*OUT: {
    Reverse<--,>}*/
    int thisVar = 14;
    /*OUT: {
    Reverse<--,>}*/
    test: x++;
    /*OUT: {
    Reverse<--,>}*/
    while (x > 8) {
        /*OUT: {
        Reverse<--, 116_0;>}*/
        l2: x--;
        /*OUT: {
        Reverse<--, 116_0;>}*/
        if (x == 1) {
            /*OUT: {
            Reverse<--, 119_0; 116_0;>}*/
            thisStmt: x = 3 + x++ + thisVar;
            /*OUT: {
            Reverse<--, 119_0; 116_0;>}*/
            foo();
            /*OUT: {
            Reverse<--, 119_0; 116_0;>}*/
            /*OUT: {
            Reverse<--, 119_0; 116_0;>}*/
            int z = 10;
            /*OUT: {
            Reverse<--, 119_0; 116_0;>}*/
            l1: x = 10;
            /*OUT: {
            Reverse<--, 119_0; 116_0;>}*/
            bar(z);
            /*OUT: {
            Reverse<--, 119_0; 116_0;>}*/
        }
        /*OUT: {
        Reverse<--, 116_0;>}*/
        bar(10);
        /*OUT: {
        Reverse<--, 116_0;>}*/
    }
    /*OUT: {
    Reverse<--, 116_1;>}*/
    do {
        /*OUT: {
        Reverse<--, 116_1;>}*/
        x--;
        /*OUT: {
        Reverse<--, 116_1;>}*/
        x = x + 2;
        /*OUT: {
        Reverse<--, 116_1;>}*/
        x = x - g1;
        /*OUT: {
        Reverse<--, 116_1;>}*/
        thisVar++;
    } while (x > 0);
    /*OUT: {
    Reverse<--, 148_1; 116_1;>}*/
    while (thisVar++ < 5) {
        /*OUT: {
        Reverse<--, 149_0; 148_1; 116_1;>}*/
        if (thisVar == 10) {
            /*OUT: {
            Reverse<--, 150_0; 149_0; 148_1; 116_1;>}*/
            continue;
        }
    }
}
