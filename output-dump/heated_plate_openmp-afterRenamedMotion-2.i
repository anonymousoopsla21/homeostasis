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
int main(int argc, char *argv[]) {
    double diff_imopVar144;
    double diff;
    double epsilon = 0.001;
    int i;
    int iterations;
    int iterations_print;
    int j;
    double mean;
    double my_diff;
    double u[500][500];
    double w[500][500];
    double wtime;
    printf("\n");
    printf("HEATED_PLATE_OPENMP\n");
    printf("  C/OpenMP version\n");
    printf("  A program to solve for the steady state temperature distribution\n");
    printf("  over a rectangular plate.\n");
    printf("\n");
    printf("  Spatial grid of %d by %d points.\n", 500, 500);
    printf("  The iteration will be repeated until the change is <= %e\n", epsilon);
    int _imopVarPre29;
    _imopVarPre29 = omp_get_num_procs();
    printf("  Number of processors available = %d\n", _imopVarPre29);
    int _imopVarPre31;
    _imopVarPre31 = omp_get_max_threads();
    printf("  Number of threads =              %d\n", _imopVarPre31);
    mean = 0.0;
#pragma omp parallel shared(w) private(i, j)
    {
#pragma omp for nowait
        for (i = 1; i < 500 - 1; i++) {
            w[i][0] = 100.0;
        }
#pragma omp for nowait
        for (i = 1; i < 500 - 1; i++) {
            w[i][500 - 1] = 100.0;
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (j = 0; j < 500; j++) {
            w[500 - 1][j] = 100.0;
        }
#pragma omp for nowait
        for (j = 0; j < 500; j++) {
            w[0][j] = 0.0;
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:mean) nowait
        for (i = 1; i < 500 - 1; i++) {
            mean = mean + w[i][0] + w[i][500 - 1];
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:mean) nowait
        for (j = 0; j < 500; j++) {
            mean = mean + w[500 - 1][j] + w[0][j];
        }
    }
    mean = mean / (double) (2 * 500 + 2 * 500 - 4);
    printf("\n");
    printf("  MEAN = %f\n", mean);
#pragma omp parallel shared(mean, w) private(i, j)
    {
#pragma omp for nowait
        for (i = 1; i < 500 - 1; i++) {
            for (j = 1; j < 500 - 1; j++) {
                w[i][j] = mean;
            }
        }
    }
    iterations = 0;
    iterations_print = 1;
    printf("\n");
    printf(" Iteration  Change\n");
    printf("\n");
    wtime = omp_get_wtime();
    diff = epsilon;
#pragma omp parallel shared(u, w, diff) private(i, j, my_diff)
    {
        int whilePred_imopVar95;
        whilePred_imopVar95 = epsilon <= diff;
        if (whilePred_imopVar95) {
            while (1) {
#pragma omp for nowait
                for (i = 0; i < 500; i++) {
                    for (j = 0; j < 500; j++) {
                        u[i][j] = w[i][j];
                    }
                }
#pragma omp for nowait
                for (i = 1; i < 500 - 1; i++) {
                    for (j = 1; j < 500 - 1; j++) {
                        w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                    }
                }
                my_diff = 0.0;
                ;
#pragma omp master
                {
                    diff_imopVar144 = 0.0;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    diff = 0.0;
                }
#pragma omp for nowait
                for (i = 1; i < 500 - 1; i++) {
                    for (j = 1; j < 500 - 1; j++) {
                        double _imopVarPre34;
                        double _imopVarPre35;
                        _imopVarPre34 = w[i][j] - u[i][j];
                        _imopVarPre35 = fabs(_imopVarPre34);
                        if (my_diff < _imopVarPre35) {
                            double _imopVarPre37;
                            double _imopVarPre38;
                            _imopVarPre37 = w[i][j] - u[i][j];
                            _imopVarPre38 = fabs(_imopVarPre37);
                            my_diff = _imopVarPre38;
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
// #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
                {
                    if (diff < my_diff) {
                        diff = my_diff;
                    }
                }
// #pragma omp dummyFlush CRITICAL_END
                my_diff = 0.0;
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    iterations++;
                    if (iterations == iterations_print) {
                        printf("  %8d  %f\n", iterations, diff);
                        iterations_print = 2 * iterations_print;
                    }
                }
                whilePred_imopVar95 = epsilon <= diff;
                if (!whilePred_imopVar95) {
                    break;
                }
#pragma omp for nowait
                for (i = 0; i < 500; i++) {
                    for (j = 0; j < 500; j++) {
                        u[i][j] = w[i][j];
                    }
                }
#pragma omp for nowait
                for (i = 1; i < 500 - 1; i++) {
                    for (j = 1; j < 500 - 1; j++) {
                        w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                for (i = 1; i < 500 - 1; i++) {
                    for (j = 1; j < 500 - 1; j++) {
                        double _imopVarPre34;
                        double _imopVarPre35;
                        _imopVarPre34 = w[i][j] - u[i][j];
                        _imopVarPre35 = fabs(_imopVarPre34);
                        if (my_diff < _imopVarPre35) {
                            double _imopVarPre37;
                            double _imopVarPre38;
                            _imopVarPre37 = w[i][j] - u[i][j];
                            _imopVarPre38 = fabs(_imopVarPre37);
                            my_diff = _imopVarPre38;
                        }
                    }
                }
// #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
                {
                    if (diff_imopVar144 < my_diff) {
                        diff_imopVar144 = my_diff;
                    }
                }
// #pragma omp dummyFlush CRITICAL_END
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    iterations++;
                    if (iterations == iterations_print) {
                        printf("  %8d  %f\n", iterations, diff_imopVar144);
                        iterations_print = 2 * iterations_print;
                    }
                }
                whilePred_imopVar95 = epsilon <= diff_imopVar144;
                if (!whilePred_imopVar95) {
                    /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp single nowait
                    {
                        diff = diff_imopVar144;
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
// #pragma omp dummyFlush BARRIER_START
                    /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
                    break;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            }
        }
    }
    double _imopVarPre40;
    _imopVarPre40 = omp_get_wtime();
    wtime = _imopVarPre40 - wtime;
    printf("\n");
    printf("  %8d  %f\n", iterations, diff);
    printf("\n");
    printf("  Error tolerance achieved.\n");
    printf("  Wallclock time = %f\n", wtime);
    printf("\n");
    printf("HEATED_PLATE_OPENMP:\n");
    printf("  Normal end of execution.\n");
    return 0;
}
