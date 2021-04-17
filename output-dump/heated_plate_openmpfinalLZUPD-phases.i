
/*[]*/
struct _IO_FILE ;
/*[]*/
struct _IO_jump_t ;
/*[]*/
struct _IO_FILE ;
/*[]*/
struct _IO_FILE_plus ;
/*[]*/
extern int printf(__const char *__restrict __format, ...);
/*[]*/
extern double fabs(double __x);
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
    double diff;
    /*[]*/
    double epsilon = 0.001;
    /*[]*/
    int i;
    /*[]*/
    int iterations;
    /*[]*/
    int iterations_print;
    /*[]*/
    int j;
    /*[]*/
    double mean;
    /*[]*/
    double my_diff;
    /*[]*/
    double u[500][500];
    /*[]*/
    double w[500][500];
    /*[]*/
    double wtime;
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("HEATED_PLATE_OPENMP\n");
    /*[]*/
    /*[]*/
    printf("  C/OpenMP version\n");
    /*[]*/
    /*[]*/
    printf("  A program to solve for the steady state temperature distribution\n");
    /*[]*/
    /*[]*/
    printf("  over a rectangular plate.\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  Spatial grid of %d by %d points.\n", 500, 500);
    /*[]*/
    /*[]*/
    printf("  The iteration will be repeated until the change is <= %e\n", epsilon);
    /*[]*/
    /*[]*/
    int _imopVarPre29;
    /*[]*/
    _imopVarPre29 = omp_get_num_procs();
    /*[]*/
    /*[]*/
    printf("  Number of processors available = %d\n", _imopVarPre29);
    /*[]*/
    /*[]*/
    int _imopVarPre31;
    /*[]*/
    _imopVarPre31 = omp_get_max_threads();
    /*[]*/
    /*[]*/
    printf("  Number of threads =              %d\n", _imopVarPre31);
    /*[]*/
    /*[]*/
    mean = 0.0;
    /*[1]*/
#pragma omp parallel shared(w) private(i, j)
    {
    /*[1]*/
        /*[1]*/
#pragma omp for nowait
        /*[1]*/
        /*[1]*/
        /*[1]*/
        for (i = 1; i < 500 - 1; i++) {
        /*[1]*/
            /*[1]*/
            w[i][0] = 100.0;
        }
        /*[1]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[1]*/
#pragma omp barrier
        /*[2]*/
#pragma omp for nowait
        /*[2]*/
        /*[2]*/
        /*[2]*/
        for (i = 1; i < 500 - 1; i++) {
        /*[2]*/
            /*[2]*/
            w[i][500 - 1] = 100.0;
        }
        /*[2]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[2]*/
#pragma omp barrier
        /*[3]*/
#pragma omp for nowait
        /*[3]*/
        /*[3]*/
        /*[3]*/
        for (j = 0; j < 500; j++) {
        /*[3]*/
            /*[3]*/
            w[500 - 1][j] = 100.0;
        }
        /*[3]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3]*/
#pragma omp barrier
        /*[4]*/
#pragma omp for nowait
        /*[4]*/
        /*[4]*/
        /*[4]*/
        for (j = 0; j < 500; j++) {
        /*[4]*/
            /*[4]*/
            w[0][j] = 0.0;
        }
        /*[4]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[4]*/
#pragma omp barrier
        /*[5]*/
#pragma omp for reduction(+:mean) nowait
        /*[5]*/
        /*[5]*/
        /*[5]*/
        for (i = 1; i < 500 - 1; i++) {
        /*[5]*/
            /*[5]*/
            mean = mean + w[i][0] + w[i][500 - 1];
        }
        /*[5]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[5]*/
#pragma omp barrier
        /*[6]*/
#pragma omp for reduction(+:mean) nowait
        /*[6]*/
        /*[6]*/
        /*[6]*/
        for (j = 0; j < 500; j++) {
        /*[6]*/
            /*[6]*/
            mean = mean + w[500 - 1][j] + w[0][j];
        }
    }
    /*[]*/
    mean = mean / (double) (2 * 500 + 2 * 500 - 4);
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  MEAN = %f\n", mean);
    /*[]*/
    /*[7]*/
#pragma omp parallel shared(mean, w) private(i, j)
    {
    /*[7]*/
        /*[7]*/
#pragma omp for nowait
        /*[7]*/
        /*[7]*/
        /*[7]*/
        for (i = 1; i < 500 - 1; i++) {
        /*[7]*/
            /*[7]*/
            /*[7]*/
            /*[7]*/
            /*[7]*/
            for (j = 1; j < 500 - 1; j++) {
            /*[7]*/
                /*[7]*/
                w[i][j] = mean;
            }
        }
    }
    /*[]*/
    iterations = 0;
    /*[]*/
    iterations_print = 1;
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf(" Iteration  Change\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    wtime = omp_get_wtime();
    /*[]*/
    /*[]*/
    diff = epsilon;
    /*[8]*/
#pragma omp parallel shared(u, w, diff) private(i, j, my_diff)
    {
    /*[8]*/
        /*[8, 9]*/
        /*[8]*/
        while (epsilon <= diff) {
        /*[8, 9]*/
            /*[8, 9]*/
#pragma omp for nowait
            /*[8, 9]*/
            /*[8, 9]*/
            /*[8, 9]*/
            for (i = 0; i < 500; i++) {
            /*[8, 9]*/
                /*[8, 9]*/
                /*[8, 9]*/
                /*[8, 9]*/
                /*[8, 9]*/
                for (j = 0; j < 500; j++) {
                /*[8, 9]*/
                    /*[8, 9]*/
                    u[i][j] = w[i][j];
                }
            }
            /*[8, 9]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[8, 9]*/
#pragma omp barrier
            /*[10]*/
#pragma omp for nowait
            /*[10]*/
            /*[10]*/
            /*[10]*/
            for (i = 1; i < 500 - 1; i++) {
            /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                for (j = 1; j < 500 - 1; j++) {
                /*[10]*/
                    /*[10]*/
                    w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                }
            }
            /*[10]*/
#pragma omp master
            {
            /*[10]*/
                /*[10]*/
                diff = 0.0;
            }
            /*[10]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[10]*/
#pragma omp barrier
            /*[11]*/
            my_diff = 0.0;
            /*[11]*/
#pragma omp for nowait
            /*[11]*/
            /*[11]*/
            /*[11]*/
            for (i = 1; i < 500 - 1; i++) {
            /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (j = 1; j < 500 - 1; j++) {
                /*[11]*/
                    /*[11]*/
                    double _imopVarPre34;
                    /*[11]*/
                    double _imopVarPre35;
                    /*[11]*/
                    _imopVarPre34 = w[i][j] - u[i][j];
                    /*[11]*/
                    _imopVarPre35 = fabs(_imopVarPre34);
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    if (my_diff < _imopVarPre35) {
                    /*[11]*/
                        /*[11]*/
                        double _imopVarPre37;
                        /*[11]*/
                        double _imopVarPre38;
                        /*[11]*/
                        _imopVarPre37 = w[i][j] - u[i][j];
                        /*[11]*/
                        _imopVarPre38 = fabs(_imopVarPre37);
                        /*[11]*/
                        /*[11]*/
                        my_diff = _imopVarPre38;
                    }
                }
            }
            /*[11]*/
            // #pragma omp dummyFlush CRITICAL_START
            /*[11]*/
#pragma omp critical
            {
            /*[11]*/
                /*[11]*/
                /*[11]*/
                if (diff < my_diff) {
                /*[11]*/
                    /*[11]*/
                    diff = my_diff;
                }
            }
            /*[11]*/
            // #pragma omp dummyFlush CRITICAL_END
            /*[11]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[11]*/
#pragma omp barrier
            /*[9]*/
#pragma omp master
            {
            /*[9]*/
                /*[9]*/
                iterations++;
                /*[9]*/
                /*[9]*/
                if (iterations == iterations_print) {
                /*[9]*/
                    /*[9]*/
                    printf("  %8d  %f\n", iterations, diff);
                    /*[9]*/
                    /*[9]*/
                    iterations_print = 2 * iterations_print;
                }
            }
        }
    }
    /*[]*/
    double _imopVarPre40;
    /*[]*/
    _imopVarPre40 = omp_get_wtime();
    /*[]*/
    /*[]*/
    wtime = _imopVarPre40 - wtime;
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  %8d  %f\n", iterations, diff);
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  Error tolerance achieved.\n");
    /*[]*/
    /*[]*/
    printf("  Wallclock time = %f\n", wtime);
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("HEATED_PLATE_OPENMP:\n");
    /*[]*/
    /*[]*/
    printf("  Normal end of execution.\n");
    /*[]*/
    /*[]*/
    return 0;
}
