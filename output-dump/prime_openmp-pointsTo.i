struct __sFILEX ;
int printf(const char *, ...);
extern int omp_get_max_threads(void );
extern int omp_get_num_procs(void );
extern double omp_get_wtime(void );
int main(int argc, char *argv[]);
void prime_number_sweep(int n_lo, int n_hi , int n_factor);
int prime_number(int n);
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
int main(int argc, char *argv[]) {
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int n_factor;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int n_hi;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int n_lo;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("PRIME_OPENMP\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  C/OpenMP version\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre17;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre17 = omp_get_num_procs();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  Number of processors available = %d\n", _imopVarPre17);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre19;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre19 = omp_get_max_threads();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  Number of threads =              %d\n", _imopVarPre19);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    n_lo = 1;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    n_hi = 131072;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    n_factor = 2;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    prime_number_sweep(n_lo, n_hi, n_factor);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    n_lo = 5;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    n_hi = 500000;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    n_factor = 10;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    prime_number_sweep(n_lo, n_hi, n_factor);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("PRIME_OPENMP\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  Normal end of execution.\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    return 0;
}
/*OUT: []*/
/*OUT: []*/
/*OUT: []*/
void prime_number_sweep(int n_lo, int n_hi , int n_factor) {
    /*OUT: []*/
    int n;
    /*OUT: []*/
    int primes;
    /*OUT: []*/
    double wtime;
    /*OUT: []*/
    printf("\n");
    /*OUT: []*/
    /*OUT: []*/
    printf("TEST01\n");
    /*OUT: []*/
    /*OUT: []*/
    printf("  Call PRIME_NUMBER to count the primes from 1 to N.\n");
    /*OUT: []*/
    /*OUT: []*/
    printf("\n");
    /*OUT: []*/
    /*OUT: []*/
    printf("         N        Pi          Time\n");
    /*OUT: []*/
    /*OUT: []*/
    printf("\n");
    /*OUT: []*/
    /*OUT: []*/
    n = n_lo;
    /*OUT: []*/
    while (n <= n_hi) {
        /*OUT: []*/
        wtime = omp_get_wtime();
        /*OUT: []*/
        /*OUT: []*/
        primes = prime_number(n);
        /*OUT: []*/
        /*OUT: []*/
        double _imopVarPre21;
        /*OUT: []*/
        _imopVarPre21 = omp_get_wtime();
        /*OUT: []*/
        /*OUT: []*/
        wtime = _imopVarPre21 - wtime;
        /*OUT: []*/
        printf("  %8d  %8d  %14f\n", n, primes, wtime);
        /*OUT: []*/
        /*OUT: []*/
        n = n * n_factor;
    }
    /*OUT: []*/
    return;
}
/*OUT: []*/
int prime_number(int n) {
    /*OUT: []*/
    int i;
    /*OUT: []*/
    int j;
    /*OUT: []*/
    int prime;
    /*OUT: []*/
    int total = 0;
#pragma omp parallel shared(n) private(i, j, prime)
    {
#pragma omp for reduction(+:total) nowait
        /*OUT: []*/
        /*OUT: []*/
        /*OUT: []*/
        for (i = 2; i <= n; i++) {
            /*OUT: []*/
            prime = 1;
            /*OUT: []*/
            /*OUT: []*/
            /*OUT: []*/
            for (j = 2; j < i; j++) {
                /*OUT: []*/
                if (i % j == 0) {
                    /*OUT: []*/
                    prime = 0;
                    /*OUT: []*/
                    break;
                }
            }
            /*OUT: []*/
            total = total + prime;
        }
        /*OUT: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: []*/
#pragma omp barrier
    }
    /*OUT: []*/
    return total;
}
