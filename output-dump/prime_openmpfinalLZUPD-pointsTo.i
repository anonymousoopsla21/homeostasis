struct __sFILEX ;
int printf(const char *, ...);
extern int omp_get_max_threads(void );
extern int omp_get_num_procs(void );
extern double omp_get_wtime(void );
int main(int argc, char *argv[]);
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
    int n;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int primes;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double wtime;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("TEST01\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  Call PRIME_NUMBER to count the primes from 1 to N.\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("         N        Pi          Time\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    n = n_lo;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    while (n <= n_hi) {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        int total = 0;
#pragma omp parallel shared(n)
        {
#pragma omp master
            {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                wtime = omp_get_wtime();
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
            }
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            double _imopVarPre21;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            int i;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            int j;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            int prime;
#pragma omp for reduction(+:total) nowait
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            for (i = 2; i <= n; i++) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                prime = 1;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                for (j = 2; j < i; j++) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    if (i % j == 0) {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        prime = 0;
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        break;
                    }
                }
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                total = total + prime;
            }
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
#pragma omp barrier
#pragma omp master
            {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                primes = total;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                _imopVarPre21 = omp_get_wtime();
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                wtime = _imopVarPre21 - wtime;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                printf("  %8d  %8d  %14f\n", n, primes, wtime);
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                n = n * n_factor;
            }
        }
    }
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
    int n_imopVar75;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int primes_imopVar76;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double wtime_imopVar77;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("TEST01\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  Call PRIME_NUMBER to count the primes from 1 to N.\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("         N        Pi          Time\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    n_imopVar75 = n_lo;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    while (n_imopVar75 <= n_hi) {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        int total = 0;
#pragma omp parallel shared(n_imopVar75)
        {
#pragma omp master
            {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                wtime_imopVar77 = omp_get_wtime();
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
            }
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            double _imopVarPre21;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            int i;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            int j;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            int prime;
#pragma omp for reduction(+:total) nowait
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            for (i = 2; i <= n_imopVar75; i++) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                prime = 1;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                for (j = 2; j < i; j++) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    if (i % j == 0) {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        prime = 0;
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        break;
                    }
                }
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                total = total + prime;
            }
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
#pragma omp barrier
#pragma omp master
            {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                primes_imopVar76 = total;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                _imopVarPre21 = omp_get_wtime();
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                wtime_imopVar77 = _imopVarPre21 - wtime_imopVar77;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                printf("  %8d  %8d  %14f\n", n_imopVar75, primes_imopVar76, wtime_imopVar77);
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                n_imopVar75 = n_imopVar75 * n_factor;
            }
        }
    }
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
