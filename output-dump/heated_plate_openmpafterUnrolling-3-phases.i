
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
    double diff_imopVar144;
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
#pragma omp for nowait
        /*[1]*/
        /*[1]*/
        /*[1]*/
        for (i = 1; i < 500 - 1; i++) {
        /*[1]*/
            /*[1]*/
            w[i][500 - 1] = 100.0;
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
        for (j = 0; j < 500; j++) {
        /*[2]*/
            /*[2]*/
            w[500 - 1][j] = 100.0;
        }
        /*[2]*/
#pragma omp for nowait
        /*[2]*/
        /*[2]*/
        /*[2]*/
        for (j = 0; j < 500; j++) {
        /*[2]*/
            /*[2]*/
            w[0][j] = 0.0;
        }
        /*[2]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[2]*/
#pragma omp barrier
        /*[3]*/
#pragma omp for reduction(+:mean) nowait
        /*[3]*/
        /*[3]*/
        /*[3]*/
        for (i = 1; i < 500 - 1; i++) {
        /*[3]*/
            /*[3]*/
            mean = mean + w[i][0] + w[i][500 - 1];
        }
        /*[3]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3]*/
#pragma omp barrier
        /*[4]*/
#pragma omp for reduction(+:mean) nowait
        /*[4]*/
        /*[4]*/
        /*[4]*/
        for (j = 0; j < 500; j++) {
        /*[4]*/
            /*[4]*/
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
    /*[5]*/
#pragma omp parallel shared(mean, w) private(i, j)
    {
    /*[5]*/
        /*[5]*/
#pragma omp for nowait
        /*[5]*/
        /*[5]*/
        /*[5]*/
        for (i = 1; i < 500 - 1; i++) {
        /*[5]*/
            /*[5]*/
            /*[5]*/
            /*[5]*/
            /*[5]*/
            for (j = 1; j < 500 - 1; j++) {
            /*[5]*/
                /*[5]*/
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
    /*[6]*/
#pragma omp parallel shared(u, w, diff) private(i, j, my_diff)
    {
    /*[6]*/
        /*[6]*/
        int whilePred_imopVar95;
        /*[6]*/
        whilePred_imopVar95 = epsilon <= diff;
        /*[6]*/
        /*[6]*/
        if (whilePred_imopVar95) {
        /*[6]*/
            /*[6, 7]*/
            /*[6]*/
            while (1) {
            /*[6, 7]*/
                /*[6, 7]*/
#pragma omp for nowait
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                for (i = 0; i < 500; i++) {
                /*[6, 7]*/
                    /*[6, 7]*/
                    /*[6, 7]*/
                    /*[6, 7]*/
                    /*[6, 7]*/
                    for (j = 0; j < 500; j++) {
                    /*[6, 7]*/
                        /*[6, 7]*/
                        u[i][j] = w[i][j];
                    }
                }
                /*[6, 7]*/
#pragma omp for nowait
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[6, 7]*/
                    /*[6, 7]*/
                    /*[6, 7]*/
                    /*[6, 7]*/
                    /*[6, 7]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[6, 7]*/
                        /*[6, 7]*/
                        w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                    }
                }
                /*[6, 7]*/
                my_diff = 0.0;
                /*[6, 7]*/
                ;
                /*[6, 7]*/
#pragma omp master
                {
                /*[6, 7]*/
                    /*[6, 7]*/
                    diff_imopVar144 = 0.0;
                }
                /*[6, 7]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[6, 7]*/
#pragma omp barrier
                /*[8]*/
#pragma omp master
                {
                /*[8]*/
                    /*[8]*/
                    diff = 0.0;
                }
                /*[8]*/
#pragma omp for nowait
                /*[8]*/
                /*[8]*/
                /*[8]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[8]*/
                    /*[8]*/
                    /*[8]*/
                    /*[8]*/
                    /*[8]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[8]*/
                        /*[8]*/
                        double _imopVarPre34;
                        /*[8]*/
                        double _imopVarPre35;
                        /*[8]*/
                        _imopVarPre34 = w[i][j] - u[i][j];
                        /*[8]*/
                        _imopVarPre35 = fabs(_imopVarPre34);
                        /*[8]*/
                        /*[8]*/
                        /*[8]*/
                        if (my_diff < _imopVarPre35) {
                        /*[8]*/
                            /*[8]*/
                            double _imopVarPre37;
                            /*[8]*/
                            double _imopVarPre38;
                            /*[8]*/
                            _imopVarPre37 = w[i][j] - u[i][j];
                            /*[8]*/
                            _imopVarPre38 = fabs(_imopVarPre37);
                            /*[8]*/
                            /*[8]*/
                            my_diff = _imopVarPre38;
                        }
                    }
                }
                /*[8]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[8]*/
#pragma omp barrier
                /*[9]*/
                // #pragma omp dummyFlush CRITICAL_START
                /*[9]*/
#pragma omp critical
                {
                /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    if (diff < my_diff) {
                    /*[9]*/
                        /*[9]*/
                        diff = my_diff;
                    }
                }
                /*[9]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[9]*/
                my_diff = 0.0;
                /*[9]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[9]*/
#pragma omp barrier
                /*[10]*/
#pragma omp master
                {
                /*[10]*/
                    /*[10]*/
                    iterations++;
                    /*[10]*/
                    /*[10]*/
                    if (iterations == iterations_print) {
                    /*[10]*/
                        /*[10]*/
                        printf("  %8d  %f\n", iterations, diff);
                        /*[10]*/
                        /*[10]*/
                        iterations_print = 2 * iterations_print;
                    }
                }
                /*[10]*/
                whilePred_imopVar95 = epsilon <= diff;
                /*[10]*/
                /*[10]*/
                if (!whilePred_imopVar95) {
                /*[10]*/
                    /*[10]*/
                    break;
                }
                /*[10]*/
#pragma omp for nowait
                /*[10]*/
                /*[10]*/
                /*[10]*/
                for (i = 0; i < 500; i++) {
                /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    for (j = 0; j < 500; j++) {
                    /*[10]*/
                        /*[10]*/
                        u[i][j] = w[i][j];
                    }
                }
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
                // #pragma omp dummyFlush BARRIER_START
                /*[10]*/
#pragma omp barrier
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
                    if (diff_imopVar144 < my_diff) {
                    /*[11]*/
                        /*[11]*/
                        diff_imopVar144 = my_diff;
                    }
                }
                /*[11]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[11]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[11]*/
#pragma omp barrier
                /*[12]*/
#pragma omp master
                {
                /*[12]*/
                    /*[12]*/
                    iterations++;
                    /*[12]*/
                    /*[12]*/
                    if (iterations == iterations_print) {
                    /*[12]*/
                        /*[12]*/
                        printf("  %8d  %f\n", iterations, diff_imopVar144);
                        /*[12]*/
                        /*[12]*/
                        iterations_print = 2 * iterations_print;
                    }
                }
                /*[12]*/
                whilePred_imopVar95 = epsilon <= diff_imopVar144;
                /*[12]*/
                /*[12]*/
                if (!whilePred_imopVar95) {
                /*[12]*/
                    /*[12]*/
#pragma omp single nowait
                    {
                    /*[12]*/
                        /*[12]*/
                        diff = diff_imopVar144;
                    }
                    /*[12]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[12]*/
#pragma omp barrier
                    /*[13]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[13]*/
#pragma omp barrier
                    /*[14]*/
                    break;
                }
                /*[12]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[12]*/
#pragma omp barrier
                /*[13]*/
                __imopLoopBorder: ;
                /*[13]*/
#pragma omp for nowait
                /*[13]*/
                /*[13]*/
                /*[13]*/
                for (i = 0; i < 500; i++) {
                /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    for (j = 0; j < 500; j++) {
                    /*[13]*/
                        /*[13]*/
                        u[i][j] = w[i][j];
                    }
                }
                /*[13]*/
#pragma omp for nowait
                /*[13]*/
                /*[13]*/
                /*[13]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[13]*/
                        /*[13]*/
                        w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                    }
                }
                /*[13]*/
                my_diff = 0.0;
                /*[13]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[13]*/
#pragma omp barrier
                /*[14]*/
#pragma omp master
                {
                /*[14]*/
                    /*[14]*/
                    diff = 0.0;
                }
                /*[14]*/
#pragma omp for nowait
                /*[14]*/
                /*[14]*/
                /*[14]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[14]*/
                    /*[14]*/
                    /*[14]*/
                    /*[14]*/
                    /*[14]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[14]*/
                        /*[14]*/
                        double _imopVarPre34;
                        /*[14]*/
                        double _imopVarPre35;
                        /*[14]*/
                        _imopVarPre34 = w[i][j] - u[i][j];
                        /*[14]*/
                        _imopVarPre35 = fabs(_imopVarPre34);
                        /*[14]*/
                        /*[14]*/
                        /*[14]*/
                        if (my_diff < _imopVarPre35) {
                        /*[14]*/
                            /*[14]*/
                            double _imopVarPre37;
                            /*[14]*/
                            double _imopVarPre38;
                            /*[14]*/
                            _imopVarPre37 = w[i][j] - u[i][j];
                            /*[14]*/
                            _imopVarPre38 = fabs(_imopVarPre37);
                            /*[14]*/
                            /*[14]*/
                            my_diff = _imopVarPre38;
                        }
                    }
                }
                /*[14]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[14]*/
#pragma omp barrier
                /*[15]*/
                // #pragma omp dummyFlush CRITICAL_START
                /*[15]*/
#pragma omp critical
                {
                /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    if (diff < my_diff) {
                    /*[15]*/
                        /*[15]*/
                        diff = my_diff;
                    }
                }
                /*[15]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[15]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[15]*/
#pragma omp barrier
                /*[7]*/
#pragma omp master
                {
                /*[7]*/
                    /*[7]*/
                    iterations++;
                    /*[7]*/
                    /*[7]*/
                    if (iterations == iterations_print) {
                    /*[7]*/
                        /*[7]*/
                        printf("  %8d  %f\n", iterations, diff);
                        /*[7]*/
                        /*[7]*/
                        iterations_print = 2 * iterations_print;
                    }
                }
                /*[7]*/
                whilePred_imopVar95 = epsilon <= diff;
                /*[7]*/
                /*[7]*/
                if (!whilePred_imopVar95) {
                /*[7]*/
                    /*[7]*/
                    break;
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
