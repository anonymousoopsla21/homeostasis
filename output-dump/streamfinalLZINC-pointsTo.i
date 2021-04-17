typedef int __int32_t;
typedef long __darwin_time_t;
typedef __int32_t __darwin_suseconds_t;
struct __sFILEX ;
int printf(const char *restrict , ...);
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
struct timezone {
    int tz_minuteswest;
    int tz_dsttime;
} ;
int gettimeofday(struct timeval *restrict , void *restrict );
static double a[2000000 + 0];
static double b[2000000 + 0];
static double c[2000000 + 0];
static double avgtime[4] = {0};
static double maxtime[4] = {0};
static double mintime[4] = {3.40282346638528859812e+38F, 3.40282346638528859812e+38F , 3.40282346638528859812e+38F , 3.40282346638528859812e+38F};
static char *label[4] = {"Copy:      ", "Scale:     " , "Add:       " , "Triad:     "};
static double bytes[4] = {2 * sizeof(double) * 2000000, 2 * sizeof(double) * 2000000 , 3 * sizeof(double) * 2000000 , 3 * sizeof(double) * 2000000};
extern double mysecond();
extern void checkSTREAMresults();
int main() {
    /*OUT: []*/
    int quantum;
    /*OUT: []*/
    int checktick();
    /*OUT: []*/
    int BytesPerWord;
    /*OUT: []*/
    register int j;
    /*OUT: []*/
    register int k;
    /*OUT: []*/
    double scalar;
    /*OUT: []*/
    double t;
    /*OUT: []*/
    double times[4][10];
    /*OUT: []*/
    printf("\n");
    /*OUT: []*/
    /*OUT: []*/
    printf("-------------------------------------------------------------\n");
    /*OUT: []*/
    /*OUT: []*/
    printf("Sequoia Benchmark Version 1.0\n");
    /*OUT: []*/
    /*OUT: []*/
    printf("-------------------------------------------------------------\n");
    /*OUT: []*/
    /*OUT: []*/
    printf("\n");
    /*OUT: []*/
    /*OUT: []*/
    BytesPerWord = sizeof(double);
    /*OUT: []*/
    printf("This system uses %d bytes per DOUBLE PRECISION word.\n", BytesPerWord);
    /*OUT: []*/
    /*OUT: []*/
    printf("-------------------------------------------------------------\n");
    /*OUT: []*/
    /*OUT: []*/
    printf("Array size = %d, Offset = %d\n", 2000000, 0);
    /*OUT: []*/
    /*OUT: []*/
    double _imopVarPre135;
    /*OUT: []*/
    _imopVarPre135 = (3.0 * BytesPerWord) * ((double) 2000000 / 1048576.0);
    /*OUT: []*/
    printf("Total memory required = %.1f MB.\n", _imopVarPre135);
    /*OUT: []*/
    /*OUT: []*/
    printf("Each test is run %d times, but only\n", 10);
    /*OUT: []*/
    /*OUT: []*/
    printf("the *best* time for each is used.\n");
    /*OUT: []*/
#pragma omp parallel
    {
        /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
        /*OUT: []*/
        /*OUT: []*/
        /*OUT: []*/
        for (j = 0; j < 2000000; j++) {
            /*OUT: []*/
            a[j] = 1.0;
            /*OUT: []*/
            b[j] = 2.0;
            /*OUT: []*/
            c[j] = 0.0;
        }
    }
    /*OUT: []*/
    printf("-------------------------------------------------------------\n");
    /*OUT: []*/
    /*OUT: []*/
    int _imopVarPre137;
    /*OUT: []*/
    _imopVarPre137 = checktick();
    /*OUT: []*/
    /*OUT: []*/
    if ((quantum = _imopVarPre137) >= 1) {
        /*OUT: []*/
        printf("Your clock granularity/precision appears to be " "%d microseconds.\n", quantum);
        /*OUT: []*/
    } else {
        /*OUT: []*/
        printf("Your clock granularity appears to be " "less than one microsecond.\n");
        /*OUT: []*/
    }
    /*OUT: []*/
    t = mysecond();
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
#pragma omp parallel
    {
        /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        for (j = 0; j < 2000000; j++) {
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            a[j] = 2.0E0 * a[j];
        }
    }
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    double _imopVarPre141;
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    _imopVarPre141 = mysecond();
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    t = 1.0E6 * (_imopVarPre141 - t);
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    int _imopVarPre143;
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    _imopVarPre143 = (int) t;
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    printf("Each test below will take on the order" " of %d microseconds.\n", _imopVarPre143);
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    int _imopVarPre145;
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    _imopVarPre145 = (int) (t / quantum);
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    printf("   (= %d clock ticks)\n", _imopVarPre145);
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    printf("Increase the size of the arrays if this shows that\n");
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    printf("you are not getting at least 20 clock ticks per test.\n");
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    printf("-------------------------------------------------------------\n");
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    printf("WARNING -- The above is only a rough guideline.\n");
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    printf("For best results, please be sure you know the\n");
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    printf("precision of your system timer.\n");
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    printf("-------------------------------------------------------------\n");
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    scalar = 3.0;
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    for (k = 0; k < 10; k++) {
#pragma omp parallel
        {
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            double _imopVarPre146;
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre146 = mysecond();
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                times[0][k] = _imopVarPre146;
            }
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            double _imopVarPre148;
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            double _imopVarPre149;
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            double _imopVarPre151;
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            double _imopVarPre152;
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            double _imopVarPre154;
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            double _imopVarPre155;
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            double _imopVarPre157;
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            for (j = 0; j < 2000000; j++) {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                c[j] = a[j];
            }
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre148 = mysecond();
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                times[0][k] = _imopVarPre148 - times[0][k];
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre149 = mysecond();
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                times[1][k] = _imopVarPre149;
            }
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
#pragma omp barrier
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            for (j = 0; j < 2000000; j++) {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                b[j] = scalar * c[j];
            }
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre151 = mysecond();
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                times[1][k] = _imopVarPre151 - times[1][k];
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre152 = mysecond();
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                times[2][k] = _imopVarPre152;
            }
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
#pragma omp barrier
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            for (j = 0; j < 2000000; j++) {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                c[j] = a[j] + b[j];
            }
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre154 = mysecond();
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                times[2][k] = _imopVarPre154 - times[2][k];
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre155 = mysecond();
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                times[3][k] = _imopVarPre155;
            }
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
#pragma omp barrier
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            for (j = 0; j < 2000000; j++) {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                a[j] = b[j] + scalar * c[j];
            }
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre157 = mysecond();
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                times[3][k] = _imopVarPre157 - times[3][k];
            }
        }
    }
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    for (k = 1; k < 10; k++) {
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        for (j = 0; j < 4; j++) {
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            avgtime[j] = avgtime[j] + times[j][k];
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            int _imopVarPre160;
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            double _imopVarPre161;
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            _imopVarPre160 = (mintime[j]) < (times[j][k]);
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            if (_imopVarPre160) {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre161 = (mintime[j]);
            } else {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre161 = (times[j][k]);
            }
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            mintime[j] = _imopVarPre161;
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            int _imopVarPre164;
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            double _imopVarPre165;
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            _imopVarPre164 = (maxtime[j]) > (times[j][k]);
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            if (_imopVarPre164) {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre165 = (maxtime[j]);
            } else {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre165 = (times[j][k]);
            }
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            maxtime[j] = _imopVarPre165;
        }
    }
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    printf("Function      Rate (MB/s)   Avg time     Min time     Max time\n");
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    for (j = 0; j < 4; j++) {
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        avgtime[j] = avgtime[j] / (double) 10;
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        double _imopVarPre171;
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        double _imopVarPre172;
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        double _imopVarPre173;
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        double _imopVarPre174;
        /*OUT: [ptsTo(_imopVarPre175) := [nullCell];
        ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        char *_imopVarPre175;
        /*OUT: [ptsTo(_imopVarPre175) := [nullCell];
        ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        _imopVarPre171 = maxtime[j];
        /*OUT: [ptsTo(_imopVarPre175) := [nullCell];
        ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        _imopVarPre172 = mintime[j];
        /*OUT: [ptsTo(_imopVarPre175) := [nullCell];
        ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        _imopVarPre173 = avgtime[j];
        /*OUT: [ptsTo(_imopVarPre175) := [nullCell];
        ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        _imopVarPre174 = 1.0E-06 * bytes[j] / mintime[j];
        /*OUT: [ptsTo(_imopVarPre175) := [label.f];
        ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        _imopVarPre175 = label[j];
        /*OUT: [ptsTo(_imopVarPre175) := [label.f];
        ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        printf("%s%11.4f  %11.4f  %11.4f  %11.4f\n", _imopVarPre175, _imopVarPre174, _imopVarPre173, _imopVarPre172, _imopVarPre171);
        /*OUT: [ptsTo(_imopVarPre175) := [label.f];
        ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
    }
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    printf("-------------------------------------------------------------\n");
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    checkSTREAMresults();
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    printf("-------------------------------------------------------------\n");
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    return 0;
}
int checktick() {
    int i;
    int minDelta;
    int Delta;
    double t1;
    double t2;
    double timesfound[20];
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    for (i = 0; i < 20; i++) {
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        t1 = mysecond();
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        double _imopVarPre179;
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        _imopVarPre179 = mysecond();
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        while (((t2 = _imopVarPre179) - t1) < 1.0E-6) {
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            ;
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            _imopVarPre179 = mysecond();
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
        }
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        timesfound[i] = t1 = t2;
    }
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    minDelta = 1000000;
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    for (i = 1; i < 20; i++) {
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        Delta = (int) (1.0E6 * (timesfound[i] - timesfound[i - 1]));
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        int _imopVarPre204;
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        int _imopVarPre205;
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        int _imopVarPre206;
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        int _imopVarPre207;
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        int _imopVarPre214;
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        int _imopVarPre215;
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        _imopVarPre204 = Delta > 0;
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        if (_imopVarPre204) {
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            _imopVarPre205 = Delta;
        } else {
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            _imopVarPre205 = 0;
        }
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        _imopVarPre206 = minDelta < _imopVarPre205;
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        if (_imopVarPre206) {
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            _imopVarPre207 = minDelta;
        } else {
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            _imopVarPre214 = Delta > 0;
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            if (_imopVarPre214) {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre215 = Delta;
            } else {
                /*OUT: [ptsTo(_imopVarPre218) := [tzp];
                ptsTo(_imopVarPre219) := [tp];
                ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre215 = 0;
            }
            /*OUT: [ptsTo(_imopVarPre218) := [tzp];
            ptsTo(_imopVarPre219) := [tp];
            ptsTo(c.f) := [a.f];
            ]*/
            _imopVarPre207 = _imopVarPre215;
        }
        /*OUT: [ptsTo(_imopVarPre218) := [tzp];
        ptsTo(_imopVarPre219) := [tp];
        ptsTo(c.f) := [a.f];
        ]*/
        minDelta = _imopVarPre207;
    }
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    return minDelta;
}
double mysecond() {
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    struct timeval tp;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    struct timezone tzp;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    int i;
    /*OUT: [ptsTo(_imopVarPre218) := [nullCell];
    ptsTo(c.f) := [a.f];
    ]*/
    struct timezone *_imopVarPre218;
    /*OUT: [ptsTo(_imopVarPre218) := [nullCell];
    ptsTo(_imopVarPre219) := [nullCell];
    ptsTo(c.f) := [a.f];
    ]*/
    struct timeval *_imopVarPre219;
    /*OUT: [ptsTo(_imopVarPre218) := [nullCell];
    ptsTo(_imopVarPre219) := [nullCell];
    ptsTo(c.f) := [a.f];
    ]*/
    int _imopVarPre220;
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [nullCell];
    ptsTo(c.f) := [a.f];
    ]*/
    _imopVarPre218 = &tzp;
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    _imopVarPre219 = &tp;
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    _imopVarPre220 = gettimeofday(_imopVarPre219, _imopVarPre218);
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    i = _imopVarPre220;
    /*OUT: [ptsTo(_imopVarPre218) := [tzp];
    ptsTo(_imopVarPre219) := [tp];
    ptsTo(c.f) := [a.f];
    ]*/
    return ((double) tp.tv_sec + (double) tp.tv_usec * 1.e-6);
}
void checkSTREAMresults() {
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    double aj;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    double bj;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    double cj;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    double scalar;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    double asum;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    double bsum;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    double csum;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    double epsilon;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    int j;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    int k;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    aj = 1.0;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    bj = 2.0;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    cj = 0.0;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    aj = 2.0E0 * aj;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    scalar = 3.0;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    for (k = 0; k < 10; k++) {
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        cj = aj;
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        bj = scalar * cj;
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        cj = aj + bj;
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        aj = bj + scalar * cj;
    }
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    aj = aj * (double) 2000000;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    bj = bj * (double) 2000000;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    cj = cj * (double) 2000000;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    asum = 0.0;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    bsum = 0.0;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    csum = 0.0;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    for (j = 0; j < 2000000; j++) {
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        asum += a[j];
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        bsum += b[j];
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        csum += c[j];
    }
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    epsilon = 1.e-8;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    int _imopVarPre223;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    double _imopVarPre224;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    _imopVarPre223 = (aj - asum) >= 0;
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    if (_imopVarPre223) {
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        _imopVarPre224 = (aj - asum);
    } else {
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        _imopVarPre224 = -(aj - asum);
    }
    /*OUT: [ptsTo(c.f) := [a.f];
    ]*/
    if (_imopVarPre224 / asum > epsilon) {
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        printf("Failed Validation on array a[]\n");
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        printf("        Expected  : %f \n", aj);
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        printf("        Observed  : %f \n", asum);
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
    } else {
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        int _imopVarPre227;
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        double _imopVarPre228;
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        _imopVarPre227 = (bj - bsum) >= 0;
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        if (_imopVarPre227) {
            /*OUT: [ptsTo(c.f) := [a.f];
            ]*/
            _imopVarPre228 = (bj - bsum);
        } else {
            /*OUT: [ptsTo(c.f) := [a.f];
            ]*/
            _imopVarPre228 = -(bj - bsum);
        }
        /*OUT: [ptsTo(c.f) := [a.f];
        ]*/
        if (_imopVarPre228 / bsum > epsilon) {
            /*OUT: [ptsTo(c.f) := [a.f];
            ]*/
            printf("Failed Validation on array b[]\n");
            /*OUT: [ptsTo(c.f) := [a.f];
            ]*/
            /*OUT: [ptsTo(c.f) := [a.f];
            ]*/
            printf("        Expected  : %f \n", bj);
            /*OUT: [ptsTo(c.f) := [a.f];
            ]*/
            /*OUT: [ptsTo(c.f) := [a.f];
            ]*/
            printf("        Observed  : %f \n", bsum);
            /*OUT: [ptsTo(c.f) := [a.f];
            ]*/
        } else {
            /*OUT: [ptsTo(c.f) := [a.f];
            ]*/
            int _imopVarPre231;
            /*OUT: [ptsTo(c.f) := [a.f];
            ]*/
            double _imopVarPre232;
            /*OUT: [ptsTo(c.f) := [a.f];
            ]*/
            _imopVarPre231 = (cj - csum) >= 0;
            /*OUT: [ptsTo(c.f) := [a.f];
            ]*/
            if (_imopVarPre231) {
                /*OUT: [ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre232 = (cj - csum);
            } else {
                /*OUT: [ptsTo(c.f) := [a.f];
                ]*/
                _imopVarPre232 = -(cj - csum);
            }
            /*OUT: [ptsTo(c.f) := [a.f];
            ]*/
            if (_imopVarPre232 / csum > epsilon) {
                /*OUT: [ptsTo(c.f) := [a.f];
                ]*/
                printf("Failed Validation on array c[]\n");
                /*OUT: [ptsTo(c.f) := [a.f];
                ]*/
                /*OUT: [ptsTo(c.f) := [a.f];
                ]*/
                printf("        Expected  : %f \n", cj);
                /*OUT: [ptsTo(c.f) := [a.f];
                ]*/
                /*OUT: [ptsTo(c.f) := [a.f];
                ]*/
                printf("        Observed  : %f \n", csum);
                /*OUT: [ptsTo(c.f) := [a.f];
                ]*/
            } else {
                /*OUT: [ptsTo(c.f) := [a.f];
                ]*/
                printf("Solution Validates\n");
                /*OUT: [ptsTo(c.f) := [a.f];
                ]*/
            }
        }
    }
}
