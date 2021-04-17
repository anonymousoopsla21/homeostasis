
/*[]*/
struct __sFILEX ;
/*[]*/
int printf(const char *, ...);
/*[]*/
extern int omp_get_max_threads(void );
/*[]*/
extern int omp_get_num_procs(void );
/*[]*/
extern double omp_get_wtime(void );
/*[]*/
int main(int argc, char *argv[]);
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char *argv[]) {
/*[]*/
    /*[]*/
    int n_factor;
    /*[]*/
    int n_hi;
    /*[]*/
    int n_lo;
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("PRIME_OPENMP\n");
    /*[]*/
    /*[]*/
    printf("  C/OpenMP version\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    int _imopVarPre17;
    /*[]*/
    _imopVarPre17 = omp_get_num_procs();
    /*[]*/
    /*[]*/
    printf("  Number of processors available = %d\n", _imopVarPre17);
    /*[]*/
    /*[]*/
    int _imopVarPre19;
    /*[]*/
    _imopVarPre19 = omp_get_max_threads();
    /*[]*/
    /*[]*/
    printf("  Number of threads =              %d\n", _imopVarPre19);
    /*[]*/
    /*[]*/
    n_lo = 1;
    /*[]*/
    n_hi = 131072;
    /*[]*/
    n_factor = 2;
    /*[]*/
    int n;
    /*[]*/
    int primes;
    /*[]*/
    double wtime;
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("TEST01\n");
    /*[]*/
    /*[]*/
    printf("  Call PRIME_NUMBER to count the primes from 1 to N.\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("         N        Pi          Time\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    n = n_lo;
    /*[]*/
    /*[]*/
    while (n <= n_hi) {
    /*[]*/
        /*[]*/
        int total = 0;
        /*[1]*/
#pragma omp parallel shared(n)
        {
        /*[1]*/
            /*[1]*/
#pragma omp master
            {
            /*[1]*/
                /*[1]*/
                wtime = omp_get_wtime();
                /*[1]*/
            }
            /*[1]*/
            double _imopVarPre21;
            /*[1]*/
            int i;
            /*[1]*/
            int j;
            /*[1]*/
            int prime;
            /*[1]*/
#pragma omp for reduction(+:total) nowait
            /*[1]*/
            /*[1]*/
            /*[1]*/
            for (i = 2; i <= n; i++) {
            /*[1]*/
                /*[1]*/
                prime = 1;
                /*[1]*/
                /*[1]*/
                /*[1]*/
                /*[1]*/
                for (j = 2; j < i; j++) {
                /*[1]*/
                    /*[1]*/
                    /*[1]*/
                    if (i % j == 0) {
                    /*[1]*/
                        /*[1]*/
                        prime = 0;
                        /*[1]*/
                        break;
                    }
                }
                /*[1]*/
                total = total + prime;
            }
            /*[1]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[1]*/
#pragma omp barrier
            /*[2]*/
#pragma omp master
            {
            /*[2]*/
                /*[2]*/
                primes = total;
                /*[2]*/
                _imopVarPre21 = omp_get_wtime();
                /*[2]*/
                /*[2]*/
                wtime = _imopVarPre21 - wtime;
                /*[2]*/
                printf("  %8d  %8d  %14f\n", n, primes, wtime);
                /*[2]*/
                /*[2]*/
                n = n * n_factor;
            }
        }
    }
    /*[]*/
    n_lo = 5;
    /*[]*/
    n_hi = 500000;
    /*[]*/
    n_factor = 10;
    /*[]*/
    int n_imopVar75;
    /*[]*/
    int primes_imopVar76;
    /*[]*/
    double wtime_imopVar77;
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("TEST01\n");
    /*[]*/
    /*[]*/
    printf("  Call PRIME_NUMBER to count the primes from 1 to N.\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("         N        Pi          Time\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    n_imopVar75 = n_lo;
    /*[]*/
    /*[]*/
    while (n_imopVar75 <= n_hi) {
    /*[]*/
        /*[]*/
        int total = 0;
        /*[3]*/
#pragma omp parallel shared(n_imopVar75)
        {
        /*[3]*/
            /*[3]*/
#pragma omp master
            {
            /*[3]*/
                /*[3]*/
                wtime_imopVar77 = omp_get_wtime();
                /*[3]*/
            }
            /*[3]*/
            double _imopVarPre21;
            /*[3]*/
            int i;
            /*[3]*/
            int j;
            /*[3]*/
            int prime;
            /*[3]*/
#pragma omp for reduction(+:total) nowait
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (i = 2; i <= n_imopVar75; i++) {
            /*[3]*/
                /*[3]*/
                prime = 1;
                /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                for (j = 2; j < i; j++) {
                /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    if (i % j == 0) {
                    /*[3]*/
                        /*[3]*/
                        prime = 0;
                        /*[3]*/
                        break;
                    }
                }
                /*[3]*/
                total = total + prime;
            }
            /*[3]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[3]*/
#pragma omp barrier
            /*[4]*/
#pragma omp master
            {
            /*[4]*/
                /*[4]*/
                primes_imopVar76 = total;
                /*[4]*/
                _imopVarPre21 = omp_get_wtime();
                /*[4]*/
                /*[4]*/
                wtime_imopVar77 = _imopVarPre21 - wtime_imopVar77;
                /*[4]*/
                printf("  %8d  %8d  %14f\n", n_imopVar75, primes_imopVar76, wtime_imopVar77);
                /*[4]*/
                /*[4]*/
                n_imopVar75 = n_imopVar75 * n_factor;
            }
        }
    }
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("PRIME_OPENMP\n");
    /*[]*/
    /*[]*/
    printf("  Normal end of execution.\n");
    /*[]*/
    /*[]*/
    return 0;
}
