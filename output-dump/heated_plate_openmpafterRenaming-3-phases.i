
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
    double diff_imopVar185;
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
                /*[8, 9]*/
#pragma omp master
                {
                /*[8, 9]*/
                    /*[8, 9]*/
                    diff = 0.0;
                }
                /*[8, 9]*/
#pragma omp for nowait
                /*[8, 9]*/
                /*[8, 9]*/
                /*[8, 9]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[8, 9]*/
                    /*[8, 9]*/
                    /*[8, 9]*/
                    /*[8, 9]*/
                    /*[8, 9]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[8, 9]*/
                        /*[8, 9]*/
                        double _imopVarPre34;
                        /*[8, 9]*/
                        double _imopVarPre35;
                        /*[8, 9]*/
                        _imopVarPre34 = w[i][j] - u[i][j];
                        /*[8, 9]*/
                        _imopVarPre35 = fabs(_imopVarPre34);
                        /*[8, 9]*/
                        /*[8, 9]*/
                        /*[8, 9]*/
                        if (my_diff < _imopVarPre35) {
                        /*[8, 9]*/
                            /*[8, 9]*/
                            double _imopVarPre37;
                            /*[8, 9]*/
                            double _imopVarPre38;
                            /*[8, 9]*/
                            _imopVarPre37 = w[i][j] - u[i][j];
                            /*[8, 9]*/
                            _imopVarPre38 = fabs(_imopVarPre37);
                            /*[8, 9]*/
                            /*[8, 9]*/
                            my_diff = _imopVarPre38;
                        }
                    }
                }
                /*[8, 9]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[8, 9]*/
#pragma omp barrier
                /*[10]*/
                // #pragma omp dummyFlush CRITICAL_START
                /*[10]*/
#pragma omp critical
                {
                /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    if (diff < my_diff) {
                    /*[10]*/
                        /*[10]*/
                        diff = my_diff;
                    }
                }
                /*[10]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[10]*/
                my_diff = 0.0;
                /*[10]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[10]*/
#pragma omp barrier
                /*[11]*/
#pragma omp master
                {
                /*[11]*/
                    /*[11]*/
                    iterations++;
                    /*[11]*/
                    /*[11]*/
                    if (iterations == iterations_print) {
                    /*[11]*/
                        /*[11]*/
                        printf("  %8d  %f\n", iterations, diff);
                        /*[11]*/
                        /*[11]*/
                        iterations_print = 2 * iterations_print;
                    }
                }
                /*[11]*/
                whilePred_imopVar95 = epsilon <= diff;
                /*[11]*/
                /*[11]*/
                if (!whilePred_imopVar95) {
                /*[11]*/
                    /*[11]*/
                    break;
                }
                /*[11]*/
#pragma omp for nowait
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (i = 0; i < 500; i++) {
                /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    for (j = 0; j < 500; j++) {
                    /*[11]*/
                        /*[11]*/
                        u[i][j] = w[i][j];
                    }
                }
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
                        w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                    }
                }
                /*[11]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[11]*/
#pragma omp barrier
                /*[12]*/
#pragma omp for nowait
                /*[12]*/
                /*[12]*/
                /*[12]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[12]*/
                        /*[12]*/
                        double _imopVarPre34;
                        /*[12]*/
                        double _imopVarPre35;
                        /*[12]*/
                        _imopVarPre34 = w[i][j] - u[i][j];
                        /*[12]*/
                        _imopVarPre35 = fabs(_imopVarPre34);
                        /*[12]*/
                        /*[12]*/
                        /*[12]*/
                        if (my_diff < _imopVarPre35) {
                        /*[12]*/
                            /*[12]*/
                            double _imopVarPre37;
                            /*[12]*/
                            double _imopVarPre38;
                            /*[12]*/
                            _imopVarPre37 = w[i][j] - u[i][j];
                            /*[12]*/
                            _imopVarPre38 = fabs(_imopVarPre37);
                            /*[12]*/
                            /*[12]*/
                            my_diff = _imopVarPre38;
                        }
                    }
                }
                /*[12]*/
                // #pragma omp dummyFlush CRITICAL_START
                /*[12]*/
#pragma omp critical
                {
                /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    if (diff_imopVar144 < my_diff) {
                    /*[12]*/
                        /*[12]*/
                        diff_imopVar144 = my_diff;
                    }
                }
                /*[12]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[12]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[12]*/
#pragma omp barrier
                /*[13]*/
#pragma omp master
                {
                /*[13]*/
                    /*[13]*/
                    iterations++;
                    /*[13]*/
                    /*[13]*/
                    if (iterations == iterations_print) {
                    /*[13]*/
                        /*[13]*/
                        printf("  %8d  %f\n", iterations, diff_imopVar144);
                        /*[13]*/
                        /*[13]*/
                        iterations_print = 2 * iterations_print;
                    }
                }
                /*[13]*/
                whilePred_imopVar95 = epsilon <= diff_imopVar144;
                /*[13]*/
                /*[13]*/
                if (!whilePred_imopVar95) {
                /*[13]*/
                    /*[13]*/
#pragma omp single nowait
                    {
                    /*[13]*/
                        /*[13]*/
                        diff = diff_imopVar144;
                    }
                    /*[13]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[13]*/
#pragma omp barrier
                    /*[14]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[14]*/
#pragma omp barrier
                    /*[15]*/
                    break;
                }
                /*[13]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[13]*/
#pragma omp barrier
                /*[14]*/
                ;
                /*[14]*/
#pragma omp for nowait
                /*[14]*/
                /*[14]*/
                /*[14]*/
                for (i = 0; i < 500; i++) {
                /*[14]*/
                    /*[14]*/
                    /*[14]*/
                    /*[14]*/
                    /*[14]*/
                    for (j = 0; j < 500; j++) {
                    /*[14]*/
                        /*[14]*/
                        u[i][j] = w[i][j];
                    }
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
                        w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                    }
                }
                /*[14]*/
                my_diff = 0.0;
                /*[14]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[14]*/
#pragma omp barrier
                /*[15]*/
#pragma omp master
                {
                /*[15]*/
                    /*[15]*/
                    diff_imopVar185 = 0.0;
                }
                /*[15]*/
#pragma omp for nowait
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[15]*/
                        /*[15]*/
                        double _imopVarPre34;
                        /*[15]*/
                        double _imopVarPre35;
                        /*[15]*/
                        _imopVarPre34 = w[i][j] - u[i][j];
                        /*[15]*/
                        _imopVarPre35 = fabs(_imopVarPre34);
                        /*[15]*/
                        /*[15]*/
                        /*[15]*/
                        if (my_diff < _imopVarPre35) {
                        /*[15]*/
                            /*[15]*/
                            double _imopVarPre37;
                            /*[15]*/
                            double _imopVarPre38;
                            /*[15]*/
                            _imopVarPre37 = w[i][j] - u[i][j];
                            /*[15]*/
                            _imopVarPre38 = fabs(_imopVarPre37);
                            /*[15]*/
                            /*[15]*/
                            my_diff = _imopVarPre38;
                        }
                    }
                }
                /*[15]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[15]*/
#pragma omp barrier
                /*[16]*/
                // #pragma omp dummyFlush CRITICAL_START
                /*[16]*/
#pragma omp critical
                {
                /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    if (diff_imopVar185 < my_diff) {
                    /*[16]*/
                        /*[16]*/
                        diff_imopVar185 = my_diff;
                    }
                }
                /*[16]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[16]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[16]*/
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
                        printf("  %8d  %f\n", iterations, diff_imopVar185);
                        /*[7]*/
                        /*[7]*/
                        iterations_print = 2 * iterations_print;
                    }
                }
                /*[7]*/
                whilePred_imopVar95 = epsilon <= diff_imopVar185;
                /*[7]*/
                /*[7]*/
                if (!whilePred_imopVar95) {
                /*[7]*/
                    /*[7]*/
                    /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp single nowait
                    {
                    /*[7]*/
                        /*[7]*/
                        diff = diff_imopVar185;
                    }
                    /*[7]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[7]*/
                    /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
                    /*[8]*/
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
