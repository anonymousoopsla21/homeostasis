
/*READ_S: []
WRITE_S: []*/
struct _IO_FILE ;
/*READ_S: []
WRITE_S: []*/
struct _IO_jump_t ;
/*READ_S: []
WRITE_S: []*/
struct _IO_FILE ;
/*READ_S: []
WRITE_S: []*/
struct _IO_FILE_plus ;
/*READ_S: []
WRITE_S: [printf]*/
extern int printf(__const char *__restrict __format, ...);
/*READ_S: []
WRITE_S: [fabs]*/
extern double fabs(double __x);
/*READ_S: []
WRITE_S: [omp_get_max_threads]*/
extern int omp_get_max_threads(void );
/*READ_S: []
WRITE_S: [omp_get_num_procs]*/
extern int omp_get_num_procs(void );
/*READ_S: []
WRITE_S: [omp_get_wtime]*/
extern double omp_get_wtime(void );
/*READ_S: []
WRITE_S: [main]*/
int main(int argc, char *argv[]);
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [i, j, omp_get_max_threads, omp_get_wtime, fabs, diff, printf, u, u.f, mean, omp_get_num_procs, w, w.f]
WRITE_S: [diff, u.f, mean, w.f]*/
int main(int argc, char *argv[]) {
/*READ_S: [i, j, omp_get_max_threads, omp_get_wtime, fabs, diff, printf, u, u.f, mean, omp_get_num_procs, w, w.f]
WRITE_S: [diff, u.f, mean, w.f]*/
    /*READ_S: []
    WRITE_S: []*/
    double diff;
    /*READ_S: []
    WRITE_S: []*/
    double epsilon = 0.001;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int iterations;
    /*READ_S: []
    WRITE_S: []*/
    int iterations_print;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    double mean;
    /*READ_S: []
    WRITE_S: []*/
    double my_diff;
    /*READ_S: []
    WRITE_S: []*/
    double u[500][500];
    /*READ_S: []
    WRITE_S: []*/
    double w[500][500];
    /*READ_S: []
    WRITE_S: []*/
    double wtime;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("HEATED_PLATE_OPENMP\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  C/OpenMP version\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  A program to solve for the steady state temperature distribution\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  over a rectangular plate.\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  Spatial grid of %d by %d points.\n", 500, 500);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  The iteration will be repeated until the change is <= %e\n", epsilon);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre29;
    /*READ_S: [omp_get_num_procs]
    WRITE_S: []*/
    _imopVarPre29 = omp_get_num_procs();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  Number of processors available = %d\n", _imopVarPre29);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre31;
    /*READ_S: [omp_get_max_threads]
    WRITE_S: []*/
    _imopVarPre31 = omp_get_max_threads();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  Number of threads =              %d\n", _imopVarPre31);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    mean = 0.0;
    /*READ_S: [i, j, mean, w, w.f]
    WRITE_S: [mean, w.f]*/
#pragma omp parallel shared(w) private(i, j)
    {
    /*READ_S: [i, j, mean, w, w.f]
    WRITE_S: [mean, w.f]*/
        /*READ_S: [i, w, w.f]
        WRITE_S: [w.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i < 500 - 1; i++) {
        /*READ_S: [w, w.f]
        WRITE_S: [w.f]*/
            /*READ_S: [w, w.f]
            WRITE_S: [w.f]*/
            w[i][0] = 100.0;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [i, w, w.f]
        WRITE_S: [w.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i < 500 - 1; i++) {
        /*READ_S: [w, w.f]
        WRITE_S: [w.f]*/
            /*READ_S: [w, w.f]
            WRITE_S: [w.f]*/
            w[i][500 - 1] = 100.0;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [j, w, w.f]
        WRITE_S: [w.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < 500; j++) {
        /*READ_S: [w, w.f]
        WRITE_S: [w.f]*/
            /*READ_S: [w, w.f]
            WRITE_S: [w.f]*/
            w[500 - 1][j] = 100.0;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [j, w, w.f]
        WRITE_S: [w.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < 500; j++) {
        /*READ_S: [w, w.f]
        WRITE_S: [w.f]*/
            /*READ_S: [w, w.f]
            WRITE_S: [w.f]*/
            w[0][j] = 0.0;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [i, mean, w, w.f]
        WRITE_S: [mean]*/
#pragma omp for reduction(+:mean) nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i < 500 - 1; i++) {
        /*READ_S: [mean, w, w.f]
        WRITE_S: [mean]*/
            /*READ_S: [mean, w, w.f]
            WRITE_S: [mean]*/
            mean = mean + w[i][0] + w[i][500 - 1];
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [j, mean, w, w.f]
        WRITE_S: [mean]*/
#pragma omp for reduction(+:mean) nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < 500; j++) {
        /*READ_S: [mean, w, w.f]
        WRITE_S: [mean]*/
            /*READ_S: [mean, w, w.f]
            WRITE_S: [mean]*/
            mean = mean + w[500 - 1][j] + w[0][j];
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    mean = mean / (double) (2 * 500 + 2 * 500 - 4);
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  MEAN = %f\n", mean);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [i, mean, w, w.f]
    WRITE_S: [w.f]*/
#pragma omp parallel shared(mean, w) private(i, j)
    {
    /*READ_S: [i, mean, w, w.f]
    WRITE_S: [w.f]*/
        /*READ_S: [i, mean, w, w.f]
        WRITE_S: [w.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i < 500 - 1; i++) {
        /*READ_S: [mean, w, w.f]
        WRITE_S: [w.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [mean, w, w.f]
            WRITE_S: [w.f]*/
            for (j = 1; j < 500 - 1; j++) {
            /*READ_S: [mean, w, w.f]
            WRITE_S: [w.f]*/
                /*READ_S: [mean, w, w.f]
                WRITE_S: [w.f]*/
                w[i][j] = mean;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    iterations = 0;
    /*READ_S: []
    WRITE_S: []*/
    iterations_print = 1;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" Iteration  Change\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [omp_get_wtime]
    WRITE_S: []*/
    wtime = omp_get_wtime();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    diff = epsilon;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [i, diff, printf, fabs, u, u.f, w, w.f]
    WRITE_S: [diff, u.f, w.f]*/
    while (epsilon <= diff) {
    /*READ_S: [i, diff, printf, fabs, u, u.f, w, w.f]
    WRITE_S: [diff, u.f, w.f]*/
        /*READ_S: [i, u, u.f, w, w.f]
        WRITE_S: [u.f, w.f]*/
#pragma omp parallel shared(u, w) private(i, j)
        {
        /*READ_S: [i, u, u.f, w, w.f]
        WRITE_S: [u.f, w.f]*/
            /*READ_S: [i, u, u.f, w, w.f]
            WRITE_S: [u.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i < 500; i++) {
            /*READ_S: [u, u.f, w, w.f]
            WRITE_S: [u.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u, u.f, w, w.f]
                WRITE_S: [u.f]*/
                for (j = 0; j < 500; j++) {
                /*READ_S: [u, u.f, w, w.f]
                WRITE_S: [u.f]*/
                    /*READ_S: [u, u.f, w, w.f]
                    WRITE_S: [u.f]*/
                    u[i][j] = w[i][j];
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [i, u, u.f, w, w.f]
            WRITE_S: [w.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i < 500 - 1; i++) {
            /*READ_S: [u, u.f, w, w.f]
            WRITE_S: [w.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u, u.f, w, w.f]
                WRITE_S: [w.f]*/
                for (j = 1; j < 500 - 1; j++) {
                /*READ_S: [u, u.f, w, w.f]
                WRITE_S: [w.f]*/
                    /*READ_S: [u, u.f, w, w.f]
                    WRITE_S: [w.f]*/
                    w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
        /*READ_S: []
        WRITE_S: []*/
        diff = 0.0;
        /*READ_S: [i, diff, fabs, u, u.f, w, w.f]
        WRITE_S: [diff]*/
#pragma omp parallel shared(diff, u, w) private(i, j, my_diff)
        {
        /*READ_S: [i, diff, fabs, u, u.f, w, w.f]
        WRITE_S: [diff]*/
            /*READ_S: []
            WRITE_S: []*/
            my_diff = 0.0;
            /*READ_S: [i, fabs, u, u.f, w, w.f]
            WRITE_S: []*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i < 500 - 1; i++) {
            /*READ_S: [fabs, u, u.f, w, w.f]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [fabs, u, u.f, w, w.f]
                WRITE_S: []*/
                for (j = 1; j < 500 - 1; j++) {
                /*READ_S: [fabs, u, u.f, w, w.f]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre34;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre35;
                    /*READ_S: [u, u.f, w, w.f]
                    WRITE_S: []*/
                    _imopVarPre34 = w[i][j] - u[i][j];
                    /*READ_S: [fabs]
                    WRITE_S: []*/
                    _imopVarPre35 = fabs(_imopVarPre34);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [fabs, u, u.f, w, w.f]
                    WRITE_S: []*/
                    if (my_diff < _imopVarPre35) {
                    /*READ_S: [fabs, u, u.f, w, w.f]
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre37;
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre38;
                        /*READ_S: [u, u.f, w, w.f]
                        WRITE_S: []*/
                        _imopVarPre37 = w[i][j] - u[i][j];
                        /*READ_S: [fabs]
                        WRITE_S: []*/
                        _imopVarPre38 = fabs(_imopVarPre37);
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        my_diff = _imopVarPre38;
                    }
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush CRITICAL_START
            /*READ_S: [diff]
            WRITE_S: [diff]*/
#pragma omp critical
            {
            /*READ_S: [diff]
            WRITE_S: [diff]*/
                /*READ_S: [diff]
                WRITE_S: []*/
                /*READ_S: [diff]
                WRITE_S: [diff]*/
                if (diff < my_diff) {
                /*READ_S: []
                WRITE_S: [diff]*/
                    /*READ_S: []
                    WRITE_S: [diff]*/
                    diff = my_diff;
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush CRITICAL_END
        }
        /*READ_S: []
        WRITE_S: []*/
        iterations++;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        if (iterations == iterations_print) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("  %8d  %f\n", iterations, diff);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            iterations_print = 2 * iterations_print;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre40;
    /*READ_S: [omp_get_wtime]
    WRITE_S: []*/
    _imopVarPre40 = omp_get_wtime();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    wtime = _imopVarPre40 - wtime;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  %8d  %f\n", iterations, diff);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  Error tolerance achieved.\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  Wallclock time = %f\n", wtime);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("HEATED_PLATE_OPENMP:\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  Normal end of execution.\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
