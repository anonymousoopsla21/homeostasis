struct __sFILEX ;
int printf(const char *, ...);
extern int omp_get_max_threads(void );
extern int omp_get_num_procs(void );
extern double omp_get_wtime(void );
int main(int argc, char *argv[]);
void prime_number_sweep(int n_lo, int n_hi , int n_factor);
int prime_number(int n);
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char *argv[]) {
    /*OUT: {
    Reverse<--,>}*/
    int n_factor;
    /*OUT: {
    Reverse<--,>}*/
    int n_hi;
    /*OUT: {
    Reverse<--,>}*/
    int n_lo;
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("PRIME_OPENMP\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  C/OpenMP version\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre17;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre17 = omp_get_num_procs();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Number of processors available = %d\n", _imopVarPre17);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre19;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre19 = omp_get_max_threads();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Number of threads =              %d\n", _imopVarPre19);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    n_lo = 1;
    /*OUT: {
    Reverse<--,>}*/
    n_hi = 131072;
    /*OUT: {
    Reverse<--,>}*/
    n_factor = 2;
    /*OUT: {
    Reverse<--,>}*/
    prime_number_sweep(n_lo, n_hi, n_factor);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    n_lo = 5;
    /*OUT: {
    Reverse<--,>}*/
    n_hi = 500000;
    /*OUT: {
    Reverse<--,>}*/
    n_factor = 10;
    /*OUT: {
    Reverse<--,>}*/
    prime_number_sweep(n_lo, n_hi, n_factor);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("PRIME_OPENMP\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Normal end of execution.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    return 0;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void prime_number_sweep(int n_lo, int n_hi , int n_factor) {
    /*OUT: {
    Reverse<--,>}*/
    int n;
    /*OUT: {
    Reverse<--,>}*/
    int primes;
    /*OUT: {
    Reverse<--,>}*/
    double wtime;
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("TEST01\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Call PRIME_NUMBER to count the primes from 1 to N.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("         N        Pi          Time\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    n = n_lo;
    /*OUT: {
    Reverse<--,>}*/
    while (n <= n_hi) {
        /*OUT: {
        Reverse<--, 144_0;>}*/
        wtime = omp_get_wtime();
        /*OUT: {
        Reverse<--, 144_0;>}*/
        /*OUT: {
        Reverse<--, 144_0;>}*/
        primes = prime_number(n);
        /*OUT: {
        Reverse<--, 144_0;>}*/
        /*OUT: {
        Reverse<--, 144_0;>}*/
        double _imopVarPre21;
        /*OUT: {
        Reverse<--, 144_0;>}*/
        _imopVarPre21 = omp_get_wtime();
        /*OUT: {
        Reverse<--, 144_0;>}*/
        /*OUT: {
        Reverse<--, 144_0;>}*/
        wtime = _imopVarPre21 - wtime;
        /*OUT: {
        Reverse<--, 144_0;>}*/
        printf("  %8d  %8d  %14f\n", n, primes, wtime);
        /*OUT: {
        Reverse<--, 144_0;>}*/
        /*OUT: {
        Reverse<--, 144_0;>}*/
        n = n * n_factor;
    }
    /*OUT: {
    Reverse<--, 144_1;>}*/
    return;
}
/*OUT: {
Reverse<--,>}*/
int prime_number(int n) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int prime;
    /*OUT: {
    Reverse<--,>}*/
    int total = 0;
#pragma omp parallel shared(n) private(i, j, prime)
    {
#pragma omp for reduction(+:total) nowait
        /*OUT: {
        Reverse<217,>}*/
        /*OUT: {
        Reverse<217,>}*/
        /*OUT: {
        Reverse<217, 187_1;>
        Reverse<217, 189_0; 187_0;>}*/
        for (i = 2; i <= n; i++) {
            /*OUT: {
            Reverse<217,>}*/
            prime = 1;
            /*OUT: {
            Reverse<217,>}*/
            /*OUT: {
            Reverse<217,>}*/
            /*OUT: {
            Reverse<217, 189_1; 187_0;>}*/
            for (j = 2; j < i; j++) {
                /*OUT: {
                Reverse<217, 187_0;>}*/
                if (i % j == 0) {
                    /*OUT: {
                    Reverse<217, 189_0; 187_0;>}*/
                    prime = 0;
                    /*OUT: {
                    Reverse<217, 189_0; 187_0;>}*/
                    break;
                }
            }
            /*OUT: {
            Reverse<217, 187_1;>
            Reverse<217, 189_0; 187_0;>}*/
            total = total + prime;
        }
        /*OUT: {
        Reverse<217,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<195,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    return total;
}
