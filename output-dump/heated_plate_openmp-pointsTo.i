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
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
int main(int argc, char *argv[]) {
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double diff;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double epsilon = 0.001;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int i;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int iterations;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int iterations_print;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int j;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double mean;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double my_diff;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double u[500][500];
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double w[500][500];
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
    printf("HEATED_PLATE_OPENMP\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  C/OpenMP version\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  A program to solve for the steady state temperature distribution\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  over a rectangular plate.\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  Spatial grid of %d by %d points.\n", 500, 500);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  The iteration will be repeated until the change is <= %e\n", epsilon);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre29;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre29 = omp_get_num_procs();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  Number of processors available = %d\n", _imopVarPre29);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre31;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre31 = omp_get_max_threads();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  Number of threads =              %d\n", _imopVarPre31);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    mean = 0.0;
#pragma omp parallel shared(w) private(i, j)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        for (i = 1; i < 500 - 1; i++) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            w[i][0] = 100.0;
        }
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        for (i = 1; i < 500 - 1; i++) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            w[i][500 - 1] = 100.0;
        }
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        for (j = 0; j < 500; j++) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            w[500 - 1][j] = 100.0;
        }
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        for (j = 0; j < 500; j++) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            w[0][j] = 0.0;
        }
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
#pragma omp barrier
#pragma omp for reduction(+:mean) nowait
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        for (i = 1; i < 500 - 1; i++) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            mean = mean + w[i][0] + w[i][500 - 1];
        }
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
#pragma omp barrier
#pragma omp for reduction(+:mean) nowait
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        for (j = 0; j < 500; j++) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            mean = mean + w[500 - 1][j] + w[0][j];
        }
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    mean = mean / (double) (2 * 500 + 2 * 500 - 4);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("  MEAN = %f\n", mean);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
#pragma omp parallel shared(mean, w) private(i, j)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        for (i = 1; i < 500 - 1; i++) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            for (j = 1; j < 500 - 1; j++) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                w[i][j] = mean;
            }
        }
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    iterations = 0;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    iterations_print = 1;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf(" Iteration  Change\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    wtime = omp_get_wtime();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    diff = epsilon;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    while (epsilon <= diff) {
#pragma omp parallel shared(u, w) private(i, j)
        {
#pragma omp for nowait
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            for (i = 0; i < 500; i++) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(u.f) := [w.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(u.f) := [w.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(u.f) := [w.f];
                ]*/
                for (j = 0; j < 500; j++) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(u.f) := [w.f];
                    ]*/
                    u[i][j] = w[i][j];
                }
            }
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            for (i = 1; i < 500 - 1; i++) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(u.f) := [w.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(u.f) := [w.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(u.f) := [w.f];
                ]*/
                for (j = 1; j < 500 - 1; j++) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(u.f) := [w.f];
                    ]*/
                    w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                }
            }
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
#pragma omp barrier
        }
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [w.f];
        ]*/
        diff = 0.0;
#pragma omp parallel shared(diff, u, w) private(i, j, my_diff)
        {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            my_diff = 0.0;
#pragma omp for nowait
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            for (i = 1; i < 500 - 1; i++) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(u.f) := [w.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(u.f) := [w.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(u.f) := [w.f];
                ]*/
                for (j = 1; j < 500 - 1; j++) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(u.f) := [w.f];
                    ]*/
                    double _imopVarPre34;
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(u.f) := [w.f];
                    ]*/
                    double _imopVarPre35;
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(u.f) := [w.f];
                    ]*/
                    _imopVarPre34 = w[i][j] - u[i][j];
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(u.f) := [w.f];
                    ]*/
                    _imopVarPre35 = fabs(_imopVarPre34);
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(u.f) := [w.f];
                    ]*/
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(u.f) := [w.f];
                    ]*/
                    if (my_diff < _imopVarPre35) {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(u.f) := [w.f];
                        ]*/
                        double _imopVarPre37;
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(u.f) := [w.f];
                        ]*/
                        double _imopVarPre38;
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(u.f) := [w.f];
                        ]*/
                        _imopVarPre37 = w[i][j] - u[i][j];
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(u.f) := [w.f];
                        ]*/
                        _imopVarPre38 = fabs(_imopVarPre37);
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(u.f) := [w.f];
                        ]*/
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(u.f) := [w.f];
                        ]*/
                        my_diff = _imopVarPre38;
                    }
                }
            }
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            // #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
            {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(u.f) := [w.f];
                ]*/
                if (diff < my_diff) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(u.f) := [w.f];
                    ]*/
                    diff = my_diff;
                }
            }
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            // #pragma omp dummyFlush CRITICAL_END
        }
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [w.f];
        ]*/
        iterations++;
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [w.f];
        ]*/
        if (iterations == iterations_print) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            printf("  %8d  %f\n", iterations, diff);
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [w.f];
            ]*/
            iterations_print = 2 * iterations_print;
        }
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    double _imopVarPre40;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    _imopVarPre40 = omp_get_wtime();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    wtime = _imopVarPre40 - wtime;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    printf("  %8d  %f\n", iterations, diff);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    printf("  Error tolerance achieved.\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    printf("  Wallclock time = %f\n", wtime);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    printf("HEATED_PLATE_OPENMP:\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    printf("  Normal end of execution.\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [w.f];
    ]*/
    return 0;
}
