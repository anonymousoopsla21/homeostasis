
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
    /*[1; ]*/
#pragma omp parallel shared(w) private(i, j)
    {
    /*[1; ]*/
        /*[1; ]*/
#pragma omp for nowait
        /*[1; ]*/
        /*[1; ]*/
        /*[1; ]*/
        for (i = 1; i < 500 - 1; i++) {
        /*[1; ]*/
            /*[1; ]*/
            w[i][0] = 100.0;
        }
        /*[1; ]*/
#pragma omp for nowait
        /*[1; ]*/
        /*[1; ]*/
        /*[1; ]*/
        for (i = 1; i < 500 - 1; i++) {
        /*[1; ]*/
            /*[1; ]*/
            w[i][500 - 1] = 100.0;
        }
        /*[1; ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[1; ]*/
#pragma omp barrier
        /*[27; ]*/
#pragma omp for nowait
        /*[27; ]*/
        /*[27; ]*/
        /*[27; ]*/
        for (j = 0; j < 500; j++) {
        /*[27; ]*/
            /*[27; ]*/
            w[500 - 1][j] = 100.0;
        }
        /*[27; ]*/
#pragma omp for nowait
        /*[27; ]*/
        /*[27; ]*/
        /*[27; ]*/
        for (j = 0; j < 500; j++) {
        /*[27; ]*/
            /*[27; ]*/
            w[0][j] = 0.0;
        }
        /*[27; ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[27; ]*/
#pragma omp barrier
        /*[32; ]*/
#pragma omp for reduction(+:mean) nowait
        /*[32; ]*/
        /*[32; ]*/
        /*[32; ]*/
        for (i = 1; i < 500 - 1; i++) {
        /*[32; ]*/
            /*[32; ]*/
            mean = mean + w[i][0] + w[i][500 - 1];
        }
        /*[32; ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[32; ]*/
#pragma omp barrier
        /*[33; ]*/
#pragma omp for reduction(+:mean) nowait
        /*[33; ]*/
        /*[33; ]*/
        /*[33; ]*/
        for (j = 0; j < 500; j++) {
        /*[33; ]*/
            /*[33; ]*/
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
    /*[8; ]*/
#pragma omp parallel shared(mean, w) private(i, j)
    {
    /*[8; ]*/
        /*[8; ]*/
#pragma omp for nowait
        /*[8; ]*/
        /*[8; ]*/
        /*[8; ]*/
        for (i = 1; i < 500 - 1; i++) {
        /*[8; ]*/
            /*[8; ]*/
            /*[8; ]*/
            /*[8; ]*/
            /*[8; ]*/
            for (j = 1; j < 500 - 1; j++) {
            /*[8; ]*/
                /*[8; ]*/
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
    /*[19; ]*/
#pragma omp parallel shared(u, w, diff) private(i, j, my_diff)
    {
    /*[19; ]*/
        /*diff:epsilon;*/
        /*[19; ]*/
        int whilePred_imopVar95;
        /*diff:epsilon;*/
        /*[19; ]*/
        whilePred_imopVar95 = epsilon <= diff;
        /*diff:epsilon;*/
        /*[19; ]*/
        /*[19; ]*/
        if (whilePred_imopVar95) {
        /*[19; ]*/
            /*[19; ]*/
#pragma omp for nowait
            /*diff:epsilon;*/
            /*[19; ]*/
            /*diff:epsilon;*/
            /*[19; ]*/
            /*diff:epsilon;*/
            /*[19; ]*/
            for (i = 0; i < 500; i++) {
            /*[19; ]*/
                /*diff:epsilon;*/
                /*[19; ]*/
                /*diff:epsilon;*/
                /*[19; ]*/
                /*diff:epsilon;*/
                /*[19; ]*/
                /*[19; ]*/
                for (j = 0; j < 500; j++) {
                /*[19; ]*/
                    /*diff:epsilon;*/
                    /*[19; ]*/
                    u[i][j] = w[i][j];
                }
            }
            /*[19; ]*/
#pragma omp for nowait
            /*diff:epsilon;*/
            /*[19; ]*/
            /*diff:epsilon;*/
            /*[19; ]*/
            /*diff:epsilon;*/
            /*[19; ]*/
            for (i = 1; i < 500 - 1; i++) {
            /*[19; ]*/
                /*diff:epsilon;*/
                /*[19; ]*/
                /*diff:epsilon;*/
                /*[19; ]*/
                /*diff:epsilon;*/
                /*[19; ]*/
                /*[19; ]*/
                for (j = 1; j < 500 - 1; j++) {
                /*[19; ]*/
                    /*diff:epsilon;*/
                    /*[19; ]*/
                    w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                }
            }
            /*diff:epsilon;*/
            /*[19; ]*/
            my_diff = 0.0;
            /*diff:epsilon;*/
            /*[19; ]*/
            ;
            /*[19; ]*/
#pragma omp master
            {
            /*[19; ]*/
                /*diff:epsilon;*/
                /*[19; ]*/
                diff_imopVar144 = 0.0;
            }
            /*diff:epsilon;*/
            /*[19; ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*diff:epsilon;*/
            /*[19; ]*/
#pragma omp barrier
            /*[113; 99; ]*/
            /*[99; ]*/
            while (1) {
            /*[113; 99; ]*/
                /*[113; 99; ]*/
#pragma omp master
                {
                /*[113; 99; ]*/
                    /*[113; 99; ]*/
                    diff_imopVar185 = 0.0;
                }
                /*[113; 99; ]*/
#pragma omp master
                {
                /*[113; 99; ]*/
                    /*[113; 99; ]*/
                    diff = 0.0;
                }
                /*[113; 99; ]*/
#pragma omp for nowait
                /*[113; 99; ]*/
                /*[113; 99; ]*/
                /*[113; 99; ]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[113; 99; ]*/
                    /*[113; 99; ]*/
                    /*[113; 99; ]*/
                    /*[113; 99; ]*/
                    /*[113; 99; ]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[113; 99; ]*/
                        /*[113; 99; ]*/
                        double _imopVarPre34;
                        /*[113; 99; ]*/
                        double _imopVarPre35;
                        /*[113; 99; ]*/
                        _imopVarPre34 = w[i][j] - u[i][j];
                        /*[113; 99; ]*/
                        _imopVarPre35 = fabs(_imopVarPre34);
                        /*[113; 99; ]*/
                        /*[113; 99; ]*/
                        /*[113; 99; ]*/
                        if (my_diff < _imopVarPre35) {
                        /*[113; 99; ]*/
                            /*[113; 99; ]*/
                            double _imopVarPre37;
                            /*[113; 99; ]*/
                            double _imopVarPre38;
                            /*[113; 99; ]*/
                            _imopVarPre37 = w[i][j] - u[i][j];
                            /*[113; 99; ]*/
                            _imopVarPre38 = fabs(_imopVarPre37);
                            /*[113; 99; ]*/
                            /*[113; 99; ]*/
                            my_diff = _imopVarPre38;
                        }
                    }
                }
                /*[113; 99; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[113; 99; ]*/
#pragma omp barrier
                /*[100; ]*/
                // #pragma omp dummyFlush CRITICAL_START
                /*[100; ]*/
#pragma omp critical
                {
                /*[100; ]*/
                    /*[100; ]*/
                    /*[100; ]*/
                    if (diff < my_diff) {
                    /*[100; ]*/
                        /*[100; ]*/
                        diff = my_diff;
                    }
                }
                /*[100; ]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[100; ]*/
                my_diff = 0.0;
                /*[100; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[100; ]*/
#pragma omp barrier
                /*[101; ]*/
#pragma omp master
                {
                /*[101; ]*/
                    /*[101; ]*/
                    iterations++;
                    /*[101; ]*/
                    /*[101; ]*/
                    if (iterations == iterations_print) {
                    /*[101; ]*/
                        /*[101; ]*/
                        printf("  %8d  %f\n", iterations, diff);
                        /*[101; ]*/
                        /*[101; ]*/
                        iterations_print = 2 * iterations_print;
                    }
                }
                /*[101; ]*/
                whilePred_imopVar95 = epsilon <= diff;
                /*[101; ]*/
                /*[101; ]*/
                if (!whilePred_imopVar95) {
                /*[101; ]*/
                    /*[101; ]*/
                    break;
                }
                /*[101; ]*/
#pragma omp for nowait
                /*[101; ]*/
                /*[101; ]*/
                /*[101; ]*/
                for (i = 0; i < 500; i++) {
                /*[101; ]*/
                    /*[101; ]*/
                    /*[101; ]*/
                    /*[101; ]*/
                    /*[101; ]*/
                    for (j = 0; j < 500; j++) {
                    /*[101; ]*/
                        /*[101; ]*/
                        u[i][j] = w[i][j];
                    }
                }
                /*[101; ]*/
#pragma omp for nowait
                /*[101; ]*/
                /*[101; ]*/
                /*[101; ]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[101; ]*/
                    /*[101; ]*/
                    /*[101; ]*/
                    /*[101; ]*/
                    /*[101; ]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[101; ]*/
                        /*[101; ]*/
                        w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                    }
                }
                /*[101; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[101; ]*/
#pragma omp barrier
                /*[102; ]*/
#pragma omp for nowait
                /*[102; ]*/
                /*[102; ]*/
                /*[102; ]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[102; ]*/
                    /*[102; ]*/
                    /*[102; ]*/
                    /*[102; ]*/
                    /*[102; ]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[102; ]*/
                        /*[102; ]*/
                        double _imopVarPre34;
                        /*[102; ]*/
                        double _imopVarPre35;
                        /*[102; ]*/
                        _imopVarPre34 = w[i][j] - u[i][j];
                        /*[102; ]*/
                        _imopVarPre35 = fabs(_imopVarPre34);
                        /*[102; ]*/
                        /*[102; ]*/
                        /*[102; ]*/
                        if (my_diff < _imopVarPre35) {
                        /*[102; ]*/
                            /*[102; ]*/
                            double _imopVarPre37;
                            /*[102; ]*/
                            double _imopVarPre38;
                            /*[102; ]*/
                            _imopVarPre37 = w[i][j] - u[i][j];
                            /*[102; ]*/
                            _imopVarPre38 = fabs(_imopVarPre37);
                            /*[102; ]*/
                            /*[102; ]*/
                            my_diff = _imopVarPre38;
                        }
                    }
                }
                /*[102; ]*/
                // #pragma omp dummyFlush CRITICAL_START
                /*[102; ]*/
#pragma omp critical
                {
                /*[102; ]*/
                    /*[102; ]*/
                    /*[102; ]*/
                    if (diff_imopVar144 < my_diff) {
                    /*[102; ]*/
                        /*[102; ]*/
                        diff_imopVar144 = my_diff;
                    }
                }
                /*[102; ]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[102; ]*/
#pragma omp for nowait
                /*[102; ]*/
                /*[102; ]*/
                /*[102; ]*/
                for (i = 0; i < 500; i++) {
                /*[102; ]*/
                    /*[102; ]*/
                    /*[102; ]*/
                    /*[102; ]*/
                    /*[102; ]*/
                    for (j = 0; j < 500; j++) {
                    /*[102; ]*/
                        /*[102; ]*/
                        u[i][j] = w[i][j];
                    }
                }
                /*[102; ]*/
                my_diff = 0.0;
                /*[102; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[102; ]*/
#pragma omp barrier
                /*[103; ]*/
#pragma omp master
                {
                /*[103; ]*/
                    /*[103; ]*/
                    iterations++;
                    /*[103; ]*/
                    /*[103; ]*/
                    if (iterations == iterations_print) {
                    /*[103; ]*/
                        /*[103; ]*/
                        printf("  %8d  %f\n", iterations, diff_imopVar144);
                        /*[103; ]*/
                        /*[103; ]*/
                        iterations_print = 2 * iterations_print;
                    }
                }
                /*[103; ]*/
                whilePred_imopVar95 = epsilon <= diff_imopVar144;
                /*[103; ]*/
                /*[103; ]*/
                if (!whilePred_imopVar95) {
                /*[103; ]*/
                    /*[103; ]*/
#pragma omp single nowait
                    {
                    /*[103; ]*/
                        /*[103; ]*/
                        diff = diff_imopVar144;
                    }
                    /*diff:diff_imopVar144;*/
                    /*[103; ]*/
                    break;
                }
                /*[103; ]*/
#pragma omp for nowait
                /*[103; ]*/
                /*[103; ]*/
                /*[103; ]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[103; ]*/
                    /*[103; ]*/
                    /*[103; ]*/
                    /*[103; ]*/
                    /*[103; ]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[103; ]*/
                        /*[103; ]*/
                        w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                    }
                }
                /*[103; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[103; ]*/
#pragma omp barrier
                /*[104; ]*/
#pragma omp for nowait
                /*[104; ]*/
                /*[104; ]*/
                /*[104; ]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[104; ]*/
                    /*[104; ]*/
                    /*[104; ]*/
                    /*[104; ]*/
                    /*[104; ]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[104; ]*/
                        /*[104; ]*/
                        double _imopVarPre34;
                        /*[104; ]*/
                        double _imopVarPre35;
                        /*[104; ]*/
                        _imopVarPre34 = w[i][j] - u[i][j];
                        /*[104; ]*/
                        _imopVarPre35 = fabs(_imopVarPre34);
                        /*[104; ]*/
                        /*[104; ]*/
                        /*[104; ]*/
                        if (my_diff < _imopVarPre35) {
                        /*[104; ]*/
                            /*[104; ]*/
                            double _imopVarPre37;
                            /*[104; ]*/
                            double _imopVarPre38;
                            /*[104; ]*/
                            _imopVarPre37 = w[i][j] - u[i][j];
                            /*[104; ]*/
                            _imopVarPre38 = fabs(_imopVarPre37);
                            /*[104; ]*/
                            /*[104; ]*/
                            my_diff = _imopVarPre38;
                        }
                    }
                }
                /*[104; ]*/
                // #pragma omp dummyFlush CRITICAL_START
                /*[104; ]*/
#pragma omp critical
                {
                /*[104; ]*/
                    /*[104; ]*/
                    /*[104; ]*/
                    if (diff_imopVar185 < my_diff) {
                    /*[104; ]*/
                        /*[104; ]*/
                        diff_imopVar185 = my_diff;
                    }
                }
                /*[104; ]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[104; ]*/
                my_diff = 0.0;
                /*[104; ]*/
#pragma omp master
                {
                /*[104; ]*/
                    /*[104; ]*/
                    diff_imopVar144 = 0.0;
                }
                /*[104; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[104; ]*/
#pragma omp barrier
                /*[105; ]*/
#pragma omp master
                {
                /*[105; ]*/
                    /*[105; ]*/
                    iterations++;
                    /*[105; ]*/
                    /*[105; ]*/
                    if (iterations == iterations_print) {
                    /*[105; ]*/
                        /*[105; ]*/
                        printf("  %8d  %f\n", iterations, diff_imopVar185);
                        /*[105; ]*/
                        /*[105; ]*/
                        iterations_print = 2 * iterations_print;
                    }
                }
                /*[105; ]*/
                whilePred_imopVar95 = epsilon <= diff_imopVar185;
                /*[105; ]*/
                /*[105; ]*/
                if (!whilePred_imopVar95) {
                /*[105; ]*/
                    /*[105; ]*/
                    /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp single nowait
                    {
                    /*[105; ]*/
                        /*[105; ]*/
                        diff = diff_imopVar185;
                    }
                    /*[105; ]*/
                    break;
                }
                /*[105; ]*/
#pragma omp for nowait
                /*[105; ]*/
                /*[105; ]*/
                /*[105; ]*/
                for (i = 0; i < 500; i++) {
                /*[105; ]*/
                    /*[105; ]*/
                    /*[105; ]*/
                    /*[105; ]*/
                    /*[105; ]*/
                    for (j = 0; j < 500; j++) {
                    /*[105; ]*/
                        /*[105; ]*/
                        u[i][j] = w[i][j];
                    }
                }
                /*[105; ]*/
#pragma omp for nowait
                /*[105; ]*/
                /*[105; ]*/
                /*[105; ]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[105; ]*/
                    /*[105; ]*/
                    /*[105; ]*/
                    /*[105; ]*/
                    /*[105; ]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[105; ]*/
                        /*[105; ]*/
                        w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                    }
                }
                /*[105; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[105; ]*/
#pragma omp barrier
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
