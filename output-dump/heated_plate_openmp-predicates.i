struct _IO_FILE ;
struct _IO_jump_t ;
struct _IO_FILE ;
struct _IO_FILE_plus ;
extern int printf(__const char *__restrict __format, ...);
extern double fabs(double __x);
extern int omp_get_max_threads(void );
extern int omp_get_num_procs(void );
extern double omp_get_wtime(void );
int main(int argc, char *argv[]);
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char *argv[]) {
    /*OUT: {
    Reverse<--,>}*/
    double diff;
    /*OUT: {
    Reverse<--,>}*/
    double epsilon = 0.001;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int iterations;
    /*OUT: {
    Reverse<--,>}*/
    int iterations_print;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    double mean;
    /*OUT: {
    Reverse<--,>}*/
    double my_diff;
    /*OUT: {
    Reverse<--,>}*/
    double u[500][500];
    /*OUT: {
    Reverse<--,>}*/
    double w[500][500];
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
    printf("HEATED_PLATE_OPENMP\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  C/OpenMP version\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  A program to solve for the steady state temperature distribution\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  over a rectangular plate.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Spatial grid of %d by %d points.\n", 500, 500);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  The iteration will be repeated until the change is <= %e\n", epsilon);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre29;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre29 = omp_get_num_procs();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Number of processors available = %d\n", _imopVarPre29);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre31;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre31 = omp_get_max_threads();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Number of threads =              %d\n", _imopVarPre31);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    mean = 0.0;
#pragma omp parallel shared(w) private(i, j)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<364,>}*/
        /*OUT: {
        Reverse<364,>}*/
        /*OUT: {
        Reverse<364,>}*/
        for (i = 1; i < 500 - 1; i++) {
            /*OUT: {
            Reverse<364,>}*/
            w[i][0] = 100.0;
        }
        /*OUT: {
        Reverse<364,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<105,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<105,>}*/
        /*OUT: {
        Reverse<105,>}*/
        /*OUT: {
        Reverse<105,>}*/
        for (i = 1; i < 500 - 1; i++) {
            /*OUT: {
            Reverse<105,>}*/
            w[i][500 - 1] = 100.0;
        }
        /*OUT: {
        Reverse<105,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<115,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<115,>}*/
        /*OUT: {
        Reverse<115,>}*/
        /*OUT: {
        Reverse<115,>}*/
        for (j = 0; j < 500; j++) {
            /*OUT: {
            Reverse<115,>}*/
            w[500 - 1][j] = 100.0;
        }
        /*OUT: {
        Reverse<115,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<125,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<125,>}*/
        /*OUT: {
        Reverse<125,>}*/
        /*OUT: {
        Reverse<125,>}*/
        for (j = 0; j < 500; j++) {
            /*OUT: {
            Reverse<125,>}*/
            w[0][j] = 0.0;
        }
        /*OUT: {
        Reverse<125,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<135,>}*/
#pragma omp barrier
#pragma omp for reduction(+:mean) nowait
        /*OUT: {
        Reverse<135,>}*/
        /*OUT: {
        Reverse<135,>}*/
        /*OUT: {
        Reverse<135,>}*/
        for (i = 1; i < 500 - 1; i++) {
            /*OUT: {
            Reverse<135,>}*/
            mean = mean + w[i][0] + w[i][500 - 1];
        }
        /*OUT: {
        Reverse<135,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<147,>}*/
#pragma omp barrier
#pragma omp for reduction(+:mean) nowait
        /*OUT: {
        Reverse<147,>}*/
        /*OUT: {
        Reverse<147,>}*/
        /*OUT: {
        Reverse<147,>}*/
        for (j = 0; j < 500; j++) {
            /*OUT: {
            Reverse<147,>}*/
            mean = mean + w[500 - 1][j] + w[0][j];
        }
        /*OUT: {
        Reverse<147,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<159,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    mean = mean / (double) (2 * 500 + 2 * 500 - 4);
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  MEAN = %f\n", mean);
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel shared(mean, w) private(i, j)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<392,>}*/
        /*OUT: {
        Reverse<392,>}*/
        /*OUT: {
        Reverse<392, 179_1;>}*/
        for (i = 1; i < 500 - 1; i++) {
            /*OUT: {
            Reverse<392,>}*/
            /*OUT: {
            Reverse<392,>}*/
            /*OUT: {
            Reverse<392, 179_0;>}*/
            for (j = 1; j < 500 - 1; j++) {
                /*OUT: {
                Reverse<392, 179_0;>}*/
                w[i][j] = mean;
            }
        }
        /*OUT: {
        Reverse<392,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<185,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    iterations = 0;
    /*OUT: {
    Reverse<--,>}*/
    iterations_print = 1;
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf(" Iteration  Change\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    wtime = omp_get_wtime();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    diff = epsilon;
    /*OUT: {
    Reverse<--,>}*/
    while (epsilon <= diff) {
#pragma omp parallel shared(u, w) private(i, j)
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<408,>}*/
            /*OUT: {
            Reverse<408,>}*/
            /*OUT: {
            Reverse<408, 220_1;>}*/
            for (i = 0; i < 500; i++) {
                /*OUT: {
                Reverse<408,>}*/
                /*OUT: {
                Reverse<408,>}*/
                /*OUT: {
                Reverse<408, 220_0;>}*/
                for (j = 0; j < 500; j++) {
                    /*OUT: {
                    Reverse<408, 220_0;>}*/
                    u[i][j] = w[i][j];
                }
            }
            /*OUT: {
            Reverse<408,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<228,>}*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: {
            Reverse<228,>}*/
            /*OUT: {
            Reverse<228,>}*/
            /*OUT: {
            Reverse<228, 235_1;>}*/
            for (i = 1; i < 500 - 1; i++) {
                /*OUT: {
                Reverse<228,>}*/
                /*OUT: {
                Reverse<228,>}*/
                /*OUT: {
                Reverse<228, 235_0;>}*/
                for (j = 1; j < 500 - 1; j++) {
                    /*OUT: {
                    Reverse<228, 235_0;>}*/
                    w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                }
            }
            /*OUT: {
            Reverse<228,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<250,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<--, 213_0;>}*/
        diff = 0.0;
#pragma omp parallel shared(diff, u, w) private(i, j, my_diff)
        {
            /*OUT: {
            Reverse<428,>}*/
            my_diff = 0.0;
#pragma omp for nowait
            /*OUT: {
            Reverse<428,>}*/
            /*OUT: {
            Reverse<428,>}*/
            /*OUT: {
            Reverse<428, 261_1;>}*/
            for (i = 1; i < 500 - 1; i++) {
                /*OUT: {
                Reverse<428,>}*/
                /*OUT: {
                Reverse<428,>}*/
                /*OUT: {
                Reverse<428, 261_0;>}*/
                for (j = 1; j < 500 - 1; j++) {
                    /*OUT: {
                    Reverse<428, 261_0;>}*/
                    double _imopVarPre34;
                    /*OUT: {
                    Reverse<428, 261_0;>}*/
                    double _imopVarPre35;
                    /*OUT: {
                    Reverse<428, 261_0;>}*/
                    _imopVarPre34 = w[i][j] - u[i][j];
                    /*OUT: {
                    Reverse<428, 261_0;>}*/
                    _imopVarPre35 = fabs(_imopVarPre34);
                    /*OUT: {
                    Reverse<428, 261_0;>}*/
                    /*OUT: {
                    Reverse<428, 261_0;>}*/
                    if (my_diff < _imopVarPre35) {
                        /*OUT: {
                        Reverse<428, 277_0; 261_0;>}*/
                        double _imopVarPre37;
                        /*OUT: {
                        Reverse<428, 277_0; 261_0;>}*/
                        double _imopVarPre38;
                        /*OUT: {
                        Reverse<428, 277_0; 261_0;>}*/
                        _imopVarPre37 = w[i][j] - u[i][j];
                        /*OUT: {
                        Reverse<428, 277_0; 261_0;>}*/
                        _imopVarPre38 = fabs(_imopVarPre37);
                        /*OUT: {
                        Reverse<428, 277_0; 261_0;>}*/
                        /*OUT: {
                        Reverse<428, 277_0; 261_0;>}*/
                        my_diff = _imopVarPre38;
                    }
                }
            }
            /*OUT: {
            Reverse<428,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<294,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<294,>}*/
            // #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
            {
                /*OUT: {
                Reverse<294,>}*/
                if (diff < my_diff) {
                    /*OUT: {
                    Reverse<294, 295_0;>}*/
                    diff = my_diff;
                }
            }
            /*OUT: {
            Reverse<294,>}*/
            // #pragma omp dummyFlush CRITICAL_END
        }
        /*OUT: {
        Reverse<--, 213_0;>}*/
        iterations++;
        /*OUT: {
        Reverse<--, 213_0;>}*/
        if (iterations == iterations_print) {
            /*OUT: {
            Reverse<--, 300_0; 213_0;>}*/
            printf("  %8d  %f\n", iterations, diff);
            /*OUT: {
            Reverse<--, 300_0; 213_0;>}*/
            /*OUT: {
            Reverse<--, 300_0; 213_0;>}*/
            iterations_print = 2 * iterations_print;
        }
    }
    /*OUT: {
    Reverse<--, 213_1;>}*/
    double _imopVarPre40;
    /*OUT: {
    Reverse<--, 213_1;>}*/
    _imopVarPre40 = omp_get_wtime();
    /*OUT: {
    Reverse<--, 213_1;>}*/
    /*OUT: {
    Reverse<--, 213_1;>}*/
    wtime = _imopVarPre40 - wtime;
    /*OUT: {
    Reverse<--, 213_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 213_1;>}*/
    /*OUT: {
    Reverse<--, 213_1;>}*/
    printf("  %8d  %f\n", iterations, diff);
    /*OUT: {
    Reverse<--, 213_1;>}*/
    /*OUT: {
    Reverse<--, 213_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 213_1;>}*/
    /*OUT: {
    Reverse<--, 213_1;>}*/
    printf("  Error tolerance achieved.\n");
    /*OUT: {
    Reverse<--, 213_1;>}*/
    /*OUT: {
    Reverse<--, 213_1;>}*/
    printf("  Wallclock time = %f\n", wtime);
    /*OUT: {
    Reverse<--, 213_1;>}*/
    /*OUT: {
    Reverse<--, 213_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 213_1;>}*/
    /*OUT: {
    Reverse<--, 213_1;>}*/
    printf("HEATED_PLATE_OPENMP:\n");
    /*OUT: {
    Reverse<--, 213_1;>}*/
    /*OUT: {
    Reverse<--, 213_1;>}*/
    printf("  Normal end of execution.\n");
    /*OUT: {
    Reverse<--, 213_1;>}*/
    /*OUT: {
    Reverse<--, 213_1;>}*/
    return 0;
}
