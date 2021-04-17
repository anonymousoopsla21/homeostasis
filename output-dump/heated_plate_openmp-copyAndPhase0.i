
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
            /*[19; 89; ]*/
            /*[19; ]*/
            while (1) {
            /*[19; 89; ]*/
                /*[19; 89; ]*/
#pragma omp for nowait
                /*[19; 89; ]*/
                /*[19; 89; ]*/
                /*[19; 89; ]*/
                for (i = 0; i < 500; i++) {
                /*[19; 89; ]*/
                    /*[19; 89; ]*/
                    /*[19; 89; ]*/
                    /*[19; 89; ]*/
                    /*[19; 89; ]*/
                    for (j = 0; j < 500; j++) {
                    /*[19; 89; ]*/
                        /*[19; 89; ]*/
                        u[i][j] = w[i][j];
                    }
                }
                /*[19; 89; ]*/
#pragma omp for nowait
                /*[19; 89; ]*/
                /*[19; 89; ]*/
                /*[19; 89; ]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[19; 89; ]*/
                    /*[19; 89; ]*/
                    /*[19; 89; ]*/
                    /*[19; 89; ]*/
                    /*[19; 89; ]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[19; 89; ]*/
                        /*[19; 89; ]*/
                        w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                    }
                }
                /*[19; 89; ]*/
                my_diff = 0.0;
                /*[19; 89; ]*/
                ;
                /*[19; 89; ]*/
#pragma omp master
                {
                /*[19; 89; ]*/
                    /*[19; 89; ]*/
                    diff_imopVar144 = 0.0;
                }
                /*[19; 89; ]*/
                ;
                /*[19; 89; ]*/
#pragma omp master
                {
                /*[19; 89; ]*/
                    /*[19; 89; ]*/
                    diff_imopVar185 = 0.0;
                }
                /*[19; 89; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[19; 89; ]*/
#pragma omp barrier
                /*[90; 62; ]*/
#pragma omp master
                {
                /*[90; 62; ]*/
                    /*[90; 62; ]*/
                    diff = 0.0;
                }
                /*[90; 62; ]*/
#pragma omp for nowait
                /*[90; 62; ]*/
                /*[90; 62; ]*/
                /*[90; 62; ]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[90; 62; ]*/
                    /*[90; 62; ]*/
                    /*[90; 62; ]*/
                    /*[90; 62; ]*/
                    /*[90; 62; ]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[90; 62; ]*/
                        /*[90; 62; ]*/
                        double _imopVarPre34;
                        /*[90; 62; ]*/
                        double _imopVarPre35;
                        /*[90; 62; ]*/
                        _imopVarPre34 = w[i][j] - u[i][j];
                        /*[90; 62; ]*/
                        _imopVarPre35 = fabs(_imopVarPre34);
                        /*[90; 62; ]*/
                        /*[90; 62; ]*/
                        /*[90; 62; ]*/
                        if (my_diff < _imopVarPre35) {
                        /*[90; 62; ]*/
                            /*[90; 62; ]*/
                            double _imopVarPre37;
                            /*[90; 62; ]*/
                            double _imopVarPre38;
                            /*[90; 62; ]*/
                            _imopVarPre37 = w[i][j] - u[i][j];
                            /*[90; 62; ]*/
                            _imopVarPre38 = fabs(_imopVarPre37);
                            /*[90; 62; ]*/
                            /*[90; 62; ]*/
                            my_diff = _imopVarPre38;
                        }
                    }
                }
                /*[90; 62; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[90; 62; ]*/
#pragma omp barrier
                /*[63; ]*/
                // #pragma omp dummyFlush CRITICAL_START
                /*[63; ]*/
#pragma omp critical
                {
                /*[63; ]*/
                    /*[63; ]*/
                    /*[63; ]*/
                    if (diff < my_diff) {
                    /*[63; ]*/
                        /*[63; ]*/
                        diff = my_diff;
                    }
                }
                /*[63; ]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[63; ]*/
                my_diff = 0.0;
                /*[63; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[63; ]*/
#pragma omp barrier
                /*[64; ]*/
#pragma omp master
                {
                /*[64; ]*/
                    /*[64; ]*/
                    iterations++;
                    /*[64; ]*/
                    /*[64; ]*/
                    if (iterations == iterations_print) {
                    /*[64; ]*/
                        /*[64; ]*/
                        printf("  %8d  %f\n", iterations, diff);
                        /*[64; ]*/
                        /*[64; ]*/
                        iterations_print = 2 * iterations_print;
                    }
                }
                /*[64; ]*/
                whilePred_imopVar95 = epsilon <= diff;
                /*[64; ]*/
                /*[64; ]*/
                if (!whilePred_imopVar95) {
                /*[64; ]*/
                    /*[64; ]*/
                    break;
                }
                /*[64; ]*/
#pragma omp for nowait
                /*[64; ]*/
                /*[64; ]*/
                /*[64; ]*/
                for (i = 0; i < 500; i++) {
                /*[64; ]*/
                    /*[64; ]*/
                    /*[64; ]*/
                    /*[64; ]*/
                    /*[64; ]*/
                    for (j = 0; j < 500; j++) {
                    /*[64; ]*/
                        /*[64; ]*/
                        u[i][j] = w[i][j];
                    }
                }
                /*[64; ]*/
#pragma omp for nowait
                /*[64; ]*/
                /*[64; ]*/
                /*[64; ]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[64; ]*/
                    /*[64; ]*/
                    /*[64; ]*/
                    /*[64; ]*/
                    /*[64; ]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[64; ]*/
                        /*[64; ]*/
                        w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                    }
                }
                /*[64; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[64; ]*/
#pragma omp barrier
                /*[65; ]*/
#pragma omp for nowait
                /*[65; ]*/
                /*[65; ]*/
                /*[65; ]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[65; ]*/
                    /*[65; ]*/
                    /*[65; ]*/
                    /*[65; ]*/
                    /*[65; ]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[65; ]*/
                        /*[65; ]*/
                        double _imopVarPre34;
                        /*[65; ]*/
                        double _imopVarPre35;
                        /*[65; ]*/
                        _imopVarPre34 = w[i][j] - u[i][j];
                        /*[65; ]*/
                        _imopVarPre35 = fabs(_imopVarPre34);
                        /*[65; ]*/
                        /*[65; ]*/
                        /*[65; ]*/
                        if (my_diff < _imopVarPre35) {
                        /*[65; ]*/
                            /*[65; ]*/
                            double _imopVarPre37;
                            /*[65; ]*/
                            double _imopVarPre38;
                            /*[65; ]*/
                            _imopVarPre37 = w[i][j] - u[i][j];
                            /*[65; ]*/
                            _imopVarPre38 = fabs(_imopVarPre37);
                            /*[65; ]*/
                            /*[65; ]*/
                            my_diff = _imopVarPre38;
                        }
                    }
                }
                /*[65; ]*/
                // #pragma omp dummyFlush CRITICAL_START
                /*[65; ]*/
#pragma omp critical
                {
                /*[65; ]*/
                    /*[65; ]*/
                    /*[65; ]*/
                    if (diff_imopVar144 < my_diff) {
                    /*[65; ]*/
                        /*[65; ]*/
                        diff_imopVar144 = my_diff;
                    }
                }
                /*[65; ]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[65; ]*/
#pragma omp for nowait
                /*[65; ]*/
                /*[65; ]*/
                /*[65; ]*/
                for (i = 0; i < 500; i++) {
                /*[65; ]*/
                    /*[65; ]*/
                    /*[65; ]*/
                    /*[65; ]*/
                    /*[65; ]*/
                    for (j = 0; j < 500; j++) {
                    /*[65; ]*/
                        /*[65; ]*/
                        u[i][j] = w[i][j];
                    }
                }
                /*[65; ]*/
                my_diff = 0.0;
                /*[65; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[65; ]*/
#pragma omp barrier
                /*[66; ]*/
#pragma omp master
                {
                /*[66; ]*/
                    /*[66; ]*/
                    iterations++;
                    /*[66; ]*/
                    /*[66; ]*/
                    if (iterations == iterations_print) {
                    /*[66; ]*/
                        /*[66; ]*/
                        printf("  %8d  %f\n", iterations, diff_imopVar144);
                        /*[66; ]*/
                        /*[66; ]*/
                        iterations_print = 2 * iterations_print;
                    }
                }
                /*[66; ]*/
                whilePred_imopVar95 = epsilon <= diff_imopVar144;
                /*[66; ]*/
                /*[66; ]*/
                if (!whilePred_imopVar95) {
                /*[66; ]*/
                    /*[66; ]*/
#pragma omp single nowait
                    {
                    /*[66; ]*/
                        /*[66; ]*/
                        diff = diff_imopVar144;
                    }
                    /*diff:diff_imopVar144;*/
                    /*[66; ]*/
                    break;
                }
                /*[66; ]*/
#pragma omp for nowait
                /*[66; ]*/
                /*[66; ]*/
                /*[66; ]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[66; ]*/
                    /*[66; ]*/
                    /*[66; ]*/
                    /*[66; ]*/
                    /*[66; ]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[66; ]*/
                        /*[66; ]*/
                        w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                    }
                }
                /*[66; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[66; ]*/
#pragma omp barrier
                /*[87; ]*/
#pragma omp for nowait
                /*[87; ]*/
                /*[87; ]*/
                /*[87; ]*/
                for (i = 1; i < 500 - 1; i++) {
                /*[87; ]*/
                    /*[87; ]*/
                    /*[87; ]*/
                    /*[87; ]*/
                    /*[87; ]*/
                    for (j = 1; j < 500 - 1; j++) {
                    /*[87; ]*/
                        /*[87; ]*/
                        double _imopVarPre34;
                        /*[87; ]*/
                        double _imopVarPre35;
                        /*[87; ]*/
                        _imopVarPre34 = w[i][j] - u[i][j];
                        /*[87; ]*/
                        _imopVarPre35 = fabs(_imopVarPre34);
                        /*[87; ]*/
                        /*[87; ]*/
                        /*[87; ]*/
                        if (my_diff < _imopVarPre35) {
                        /*[87; ]*/
                            /*[87; ]*/
                            double _imopVarPre37;
                            /*[87; ]*/
                            double _imopVarPre38;
                            /*[87; ]*/
                            _imopVarPre37 = w[i][j] - u[i][j];
                            /*[87; ]*/
                            _imopVarPre38 = fabs(_imopVarPre37);
                            /*[87; ]*/
                            /*[87; ]*/
                            my_diff = _imopVarPre38;
                        }
                    }
                }
                /*[87; ]*/
                // #pragma omp dummyFlush CRITICAL_START
                /*[87; ]*/
#pragma omp critical
                {
                /*[87; ]*/
                    /*[87; ]*/
                    /*[87; ]*/
                    if (diff_imopVar185 < my_diff) {
                    /*[87; ]*/
                        /*[87; ]*/
                        diff_imopVar185 = my_diff;
                    }
                }
                /*[87; ]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[87; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[87; ]*/
#pragma omp barrier
                /*[88; ]*/
#pragma omp master
                {
                /*[88; ]*/
                    /*[88; ]*/
                    iterations++;
                    /*[88; ]*/
                    /*[88; ]*/
                    if (iterations == iterations_print) {
                    /*[88; ]*/
                        /*[88; ]*/
                        printf("  %8d  %f\n", iterations, diff_imopVar185);
                        /*[88; ]*/
                        /*[88; ]*/
                        iterations_print = 2 * iterations_print;
                    }
                }
                /*[88; ]*/
                whilePred_imopVar95 = epsilon <= diff_imopVar185;
                /*[88; ]*/
                /*[88; ]*/
                if (!whilePred_imopVar95) {
                /*[88; ]*/
                    /*[88; ]*/
                    /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp single nowait
                    {
                    /*[88; ]*/
                        /*[88; ]*/
                        diff = diff_imopVar185;
                    }
                    /*diff:diff_imopVar185;*/
                    /*[88; ]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*diff:diff_imopVar185;*/
                    /*[88; ]*/
#pragma omp barrier
                    /*[89; ]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[89; ]*/
                    /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
                    /*[90; ]*/
                    break;
                }
                /*[88; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[88; ]*/
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
