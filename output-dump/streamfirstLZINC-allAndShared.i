
/*READ_S: []
WRITE_S: []*/
typedef int __int32_t;
/*READ_S: []
WRITE_S: []*/
typedef long __darwin_time_t;
/*READ_S: []
WRITE_S: []*/
typedef __int32_t __darwin_suseconds_t;
/*READ_S: []
WRITE_S: []*/
struct __sFILEX ;
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *restrict , ...);
/*READ_S: []
WRITE_S: []*/
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
/*READ_S: []
WRITE_S: []*/
struct timezone {
    int tz_minuteswest;
    int tz_dsttime;
} ;
/*READ_S: []
WRITE_S: [gettimeofday]*/
int gettimeofday(struct timeval *restrict , void *restrict );
/*READ_S: []
WRITE_S: [a, a.f]*/
static double a[2000000 + 0];
/*READ_S: []
WRITE_S: [b, b.f]*/
static double b[2000000 + 0];
/*READ_S: []
WRITE_S: [c, c.f]*/
static double c[2000000 + 0];
/*READ_S: []
WRITE_S: [avgtime, avgtime.f]*/
static double avgtime[4] = {0};
/*READ_S: []
WRITE_S: [maxtime, maxtime.f]*/
static double maxtime[4] = {0};
/*READ_S: []
WRITE_S: [mintime.f, mintime]*/
static double mintime[4] = {3.40282346638528859812e+38F, 3.40282346638528859812e+38F , 3.40282346638528859812e+38F , 3.40282346638528859812e+38F};
/*READ_S: []
WRITE_S: [label.f, label]*/
static char *label[4] = {"Copy:      ", "Scale:     " , "Add:       " , "Triad:     "};
/*READ_S: []
WRITE_S: [bytes, bytes.f]*/
static double bytes[4] = {2 * sizeof(double) * 2000000, 2 * sizeof(double) * 2000000 , 3 * sizeof(double) * 2000000 , 3 * sizeof(double) * 2000000};
/*READ_S: []
WRITE_S: [mysecond]*/
extern double mysecond();
/*READ_S: []
WRITE_S: [checkSTREAMresults]*/
extern void checkSTREAMresults();
/*READ_S: [maxtime, gettimeofday, bytes.f, avgtime, scalar, checkSTREAMresults, printf, label.f, mintime.f, a, b.f, c, _imopVarPre231, maxtime.f, bytes, j, avgtime.f, _imopVarPre227, _imopVarPre160, _imopVarPre164, mysecond, _imopVarPre223, mintime, b, a.f, c.f, label]
WRITE_S: [maxtime.f, label.f, mintime.f, avgtime.f, a.f, b.f, c.f]*/
int main() {
/*READ_S: [maxtime, gettimeofday, bytes.f, avgtime, scalar, checkSTREAMresults, printf, label.f, mintime.f, a, b.f, c, _imopVarPre231, maxtime.f, bytes, j, avgtime.f, _imopVarPre227, _imopVarPre160, _imopVarPre164, mysecond, _imopVarPre223, mintime, b, a.f, c.f, label]
WRITE_S: [maxtime.f, label.f, mintime.f, avgtime.f, a.f, b.f, c.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int quantum;
    /*READ_S: []
    WRITE_S: []*/
    int checktick();
    /*READ_S: []
    WRITE_S: []*/
    int BytesPerWord;
    /*READ_S: []
    WRITE_S: []*/
    register int j;
    /*READ_S: []
    WRITE_S: []*/
    register int k;
    /*READ_S: []
    WRITE_S: []*/
    double scalar;
    /*READ_S: []
    WRITE_S: []*/
    double t;
    /*READ_S: []
    WRITE_S: []*/
    double times[4][10];
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("-------------------------------------------------------------\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Sequoia Benchmark Version 1.0\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("-------------------------------------------------------------\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    BytesPerWord = sizeof(double);
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("This system uses %d bytes per DOUBLE PRECISION word.\n", BytesPerWord);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("-------------------------------------------------------------\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Array size = %d, Offset = %d\n", 2000000, 0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre135;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre135 = (3.0 * BytesPerWord) * ((double) 2000000 / 1048576.0);
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Total memory required = %.1f MB.\n", _imopVarPre135);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Each test is run %d times, but only\n", 10);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("the *best* time for each is used.\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [j, a, b, c]
    WRITE_S: [a.f, b.f, c.f]*/
#pragma omp parallel
    {
    /*READ_S: [j, a, b, c]
    WRITE_S: [a.f, b.f, c.f]*/
        /*READ_S: [j, a, b, c]
        WRITE_S: [a.f, b.f, c.f]*/
        /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < 2000000; j++) {
        /*READ_S: [a, b, c]
        WRITE_S: [a.f, b.f, c.f]*/
            /*READ_S: [a]
            WRITE_S: [a.f]*/
            a[j] = 1.0;
            /*READ_S: [b]
            WRITE_S: [b.f]*/
            b[j] = 2.0;
            /*READ_S: [c]
            WRITE_S: [c.f]*/
            c[j] = 0.0;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
        /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
    }
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("-------------------------------------------------------------\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre137;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre137 = checktick();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    if ((quantum = _imopVarPre137) >= 1) {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("Your clock granularity/precision appears to be " "%d microseconds.\n", quantum);
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("Your clock granularity appears to be " "less than one microsecond.\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [mysecond]
    WRITE_S: []*/
    t = mysecond();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [j, a, a.f]
    WRITE_S: [a.f]*/
#pragma omp parallel
    {
    /*READ_S: [j, a, a.f]
    WRITE_S: [a.f]*/
        /*READ_S: [j, a, a.f]
        WRITE_S: [a.f]*/
        /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < 2000000; j++) {
        /*READ_S: [a, a.f]
        WRITE_S: [a.f]*/
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[j] = 2.0E0 * a[j];
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
        /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre141;
    /*READ_S: [mysecond]
    WRITE_S: []*/
    _imopVarPre141 = mysecond();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    t = 1.0E6 * (_imopVarPre141 - t);
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre143;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre143 = (int) t;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Each test below will take on the order" " of %d microseconds.\n", _imopVarPre143);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre145;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre145 = (int) (t / quantum);
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("   (= %d clock ticks)\n", _imopVarPre145);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Increase the size of the arrays if this shows that\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("you are not getting at least 20 clock ticks per test.\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("-------------------------------------------------------------\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("WARNING -- The above is only a rough guideline.\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("For best results, please be sure you know the\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("precision of your system timer.\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("-------------------------------------------------------------\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    scalar = 3.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [mysecond, gettimeofday, j, a, b, a.f, scalar, c, b.f, c.f]
    WRITE_S: [a.f, b.f, c.f]*/
    for (k = 0; k < 10; k++) {
    /*READ_S: [mysecond, gettimeofday, j, a, b, a.f, scalar, c, b.f, c.f]
    WRITE_S: [a.f, b.f, c.f]*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre146;
        /*READ_S: [mysecond]
        WRITE_S: []*/
        _imopVarPre146 = mysecond();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        times[0][k] = _imopVarPre146;
        /*READ_S: [j, a, a.f, c]
        WRITE_S: [c.f]*/
#pragma omp parallel
        {
        /*READ_S: [j, a, a.f, c]
        WRITE_S: [c.f]*/
            /*READ_S: [j, a, a.f, c]
            WRITE_S: [c.f]*/
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 0; j < 2000000; j++) {
            /*READ_S: [a, a.f, c]
            WRITE_S: [c.f]*/
                /*READ_S: [a, a.f, c]
                WRITE_S: [c.f]*/
                c[j] = a[j];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre148;
        /*READ_S: [mysecond]
        WRITE_S: []*/
        _imopVarPre148 = mysecond();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        times[0][k] = _imopVarPre148 - times[0][k];
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre149;
        /*READ_S: [mysecond]
        WRITE_S: []*/
        _imopVarPre149 = mysecond();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        times[1][k] = _imopVarPre149;
        /*READ_S: [j, b, scalar, c, c.f]
        WRITE_S: [b.f]*/
#pragma omp parallel
        {
        /*READ_S: [j, b, scalar, c, c.f]
        WRITE_S: [b.f]*/
            /*READ_S: [j, b, scalar, c, c.f]
            WRITE_S: [b.f]*/
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 0; j < 2000000; j++) {
            /*READ_S: [b, scalar, c, c.f]
            WRITE_S: [b.f]*/
                /*READ_S: [b, scalar, c, c.f]
                WRITE_S: [b.f]*/
                b[j] = scalar * c[j];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre151;
        /*READ_S: [mysecond]
        WRITE_S: []*/
        _imopVarPre151 = mysecond();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        times[1][k] = _imopVarPre151 - times[1][k];
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre152;
        /*READ_S: [mysecond]
        WRITE_S: []*/
        _imopVarPre152 = mysecond();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        times[2][k] = _imopVarPre152;
        /*READ_S: [j, a, a.f, b, c, b.f]
        WRITE_S: [c.f]*/
#pragma omp parallel
        {
        /*READ_S: [j, a, a.f, b, c, b.f]
        WRITE_S: [c.f]*/
            /*READ_S: [j, a, a.f, b, c, b.f]
            WRITE_S: [c.f]*/
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 0; j < 2000000; j++) {
            /*READ_S: [a, a.f, b, c, b.f]
            WRITE_S: [c.f]*/
                /*READ_S: [a, a.f, b, c, b.f]
                WRITE_S: [c.f]*/
                c[j] = a[j] + b[j];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre154;
        /*READ_S: [mysecond]
        WRITE_S: []*/
        _imopVarPre154 = mysecond();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        times[2][k] = _imopVarPre154 - times[2][k];
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre155;
        /*READ_S: [mysecond]
        WRITE_S: []*/
        _imopVarPre155 = mysecond();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        times[3][k] = _imopVarPre155;
        /*READ_S: [j, a, b, b.f, scalar, c, c.f]
        WRITE_S: [a.f]*/
#pragma omp parallel
        {
        /*READ_S: [j, a, b, b.f, scalar, c, c.f]
        WRITE_S: [a.f]*/
            /*READ_S: [j, a, b, b.f, scalar, c, c.f]
            WRITE_S: [a.f]*/
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 0; j < 2000000; j++) {
            /*READ_S: [a, b, b.f, scalar, c, c.f]
            WRITE_S: [a.f]*/
                /*READ_S: [a, b, b.f, scalar, c, c.f]
                WRITE_S: [a.f]*/
                a[j] = b[j] + scalar * c[j];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre157;
        /*READ_S: [mysecond]
        WRITE_S: []*/
        _imopVarPre157 = mysecond();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        times[3][k] = _imopVarPre157 - times[3][k];
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [maxtime, maxtime.f, mintime.f, avgtime, mintime, _imopVarPre160, avgtime.f, _imopVarPre164]
    WRITE_S: [maxtime.f, mintime.f, avgtime.f]*/
    for (k = 1; k < 10; k++) {
    /*READ_S: [maxtime, maxtime.f, mintime.f, avgtime, mintime, _imopVarPre160, avgtime.f, _imopVarPre164]
    WRITE_S: [maxtime.f, mintime.f, avgtime.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [maxtime, maxtime.f, mintime.f, avgtime, mintime, _imopVarPre160, avgtime.f, _imopVarPre164]
        WRITE_S: [maxtime.f, mintime.f, avgtime.f]*/
        for (j = 0; j < 4; j++) {
        /*READ_S: [maxtime, maxtime.f, mintime.f, avgtime, mintime, _imopVarPre160, avgtime.f, _imopVarPre164]
        WRITE_S: [maxtime.f, mintime.f, avgtime.f]*/
            /*READ_S: [avgtime, avgtime.f]
            WRITE_S: [avgtime.f]*/
            avgtime[j] = avgtime[j] + times[j][k];
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre160;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre161;
            /*READ_S: [mintime.f, mintime]
            WRITE_S: []*/
            _imopVarPre160 = (mintime[j]) < (times[j][k]);
            /*READ_S: [_imopVarPre160]
            WRITE_S: []*/
            /*READ_S: [mintime.f, mintime, _imopVarPre160]
            WRITE_S: []*/
            if (_imopVarPre160) {
            /*READ_S: [mintime.f, mintime]
            WRITE_S: []*/
                /*READ_S: [mintime.f, mintime]
                WRITE_S: []*/
                _imopVarPre161 = (mintime[j]);
            } else {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre161 = (times[j][k]);
            }
            /*READ_S: [mintime]
            WRITE_S: [mintime.f]*/
            mintime[j] = _imopVarPre161;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre164;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre165;
            /*READ_S: [maxtime, maxtime.f]
            WRITE_S: []*/
            _imopVarPre164 = (maxtime[j]) > (times[j][k]);
            /*READ_S: [_imopVarPre164]
            WRITE_S: []*/
            /*READ_S: [maxtime, maxtime.f, _imopVarPre164]
            WRITE_S: []*/
            if (_imopVarPre164) {
            /*READ_S: [maxtime, maxtime.f]
            WRITE_S: []*/
                /*READ_S: [maxtime, maxtime.f]
                WRITE_S: []*/
                _imopVarPre165 = (maxtime[j]);
            } else {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre165 = (times[j][k]);
            }
            /*READ_S: [maxtime]
            WRITE_S: [maxtime.f]*/
            maxtime[j] = _imopVarPre165;
        }
    }
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Function      Rate (MB/s)   Avg time     Min time     Max time\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [maxtime, printf, maxtime.f, bytes, label.f, bytes.f, avgtime, mintime.f, avgtime.f, mintime, label]
    WRITE_S: [label.f, avgtime.f]*/
    for (j = 0; j < 4; j++) {
    /*READ_S: [maxtime, printf, maxtime.f, bytes, label.f, bytes.f, avgtime, mintime.f, avgtime.f, mintime, label]
    WRITE_S: [label.f, avgtime.f]*/
        /*READ_S: [avgtime, avgtime.f]
        WRITE_S: [avgtime.f]*/
        avgtime[j] = avgtime[j] / (double) 10;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre171;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre172;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre173;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre174;
        /*READ_S: []
        WRITE_S: []*/
        char *_imopVarPre175;
        /*READ_S: [maxtime, maxtime.f]
        WRITE_S: []*/
        _imopVarPre171 = maxtime[j];
        /*READ_S: [mintime.f, mintime]
        WRITE_S: []*/
        _imopVarPre172 = mintime[j];
        /*READ_S: [avgtime, avgtime.f]
        WRITE_S: []*/
        _imopVarPre173 = avgtime[j];
        /*READ_S: [bytes, bytes.f, mintime.f, mintime]
        WRITE_S: []*/
        _imopVarPre174 = 1.0E-06 * bytes[j] / mintime[j];
        /*READ_S: [label.f, label]
        WRITE_S: []*/
        _imopVarPre175 = label[j];
        /*READ_S: [printf, label.f]
        WRITE_S: [label.f]*/
        printf("%s%11.4f  %11.4f  %11.4f  %11.4f\n", _imopVarPre175, _imopVarPre174, _imopVarPre173, _imopVarPre172, _imopVarPre171);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("-------------------------------------------------------------\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [checkSTREAMresults]
    WRITE_S: []*/
    checkSTREAMresults();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("-------------------------------------------------------------\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
/*READ_S: [_imopVarPre206, _imopVarPre204, mysecond, gettimeofday, _imopVarPre214]
WRITE_S: []*/
int checktick() {
/*READ_S: [_imopVarPre206, _imopVarPre204, mysecond, gettimeofday, _imopVarPre214]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int minDelta;
    /*READ_S: []
    WRITE_S: []*/
    int Delta;
    /*READ_S: []
    WRITE_S: []*/
    double t1;
    /*READ_S: []
    WRITE_S: []*/
    double t2;
    /*READ_S: []
    WRITE_S: []*/
    double timesfound[20];
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [mysecond, gettimeofday]
    WRITE_S: []*/
    for (i = 0; i < 20; i++) {
    /*READ_S: [mysecond, gettimeofday]
    WRITE_S: []*/
        /*READ_S: [mysecond]
        WRITE_S: []*/
        t1 = mysecond();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre179;
        /*READ_S: [mysecond]
        WRITE_S: []*/
        _imopVarPre179 = mysecond();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [mysecond, gettimeofday]
        WRITE_S: []*/
        while (((t2 = _imopVarPre179) - t1) < 1.0E-6) {
        /*READ_S: [mysecond, gettimeofday]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [mysecond]
            WRITE_S: []*/
            _imopVarPre179 = mysecond();
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        timesfound[i] = t1 = t2;
    }
    /*READ_S: []
    WRITE_S: []*/
    minDelta = 1000000;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [_imopVarPre206, _imopVarPre204, _imopVarPre214]
    WRITE_S: []*/
    for (i = 1; i < 20; i++) {
    /*READ_S: [_imopVarPre206, _imopVarPre204, _imopVarPre214]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        Delta = (int) (1.0E6 * (timesfound[i] - timesfound[i - 1]));
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre204;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre205;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre206;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre207;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre214;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre215;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre204 = Delta > 0;
        /*READ_S: [_imopVarPre204]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre204]
        WRITE_S: []*/
        if (_imopVarPre204) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre205 = Delta;
        } else {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre205 = 0;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre206 = minDelta < _imopVarPre205;
        /*READ_S: [_imopVarPre206]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre206, _imopVarPre214]
        WRITE_S: []*/
        if (_imopVarPre206) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre207 = minDelta;
        } else {
        /*READ_S: [_imopVarPre214]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre214 = Delta > 0;
            /*READ_S: [_imopVarPre214]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre214]
            WRITE_S: []*/
            if (_imopVarPre214) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre215 = Delta;
            } else {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre215 = 0;
            }
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre207 = _imopVarPre215;
        }
        /*READ_S: []
        WRITE_S: []*/
        minDelta = _imopVarPre207;
    }
    /*READ_S: []
    WRITE_S: []*/
    return minDelta;
}
/*READ_S: [gettimeofday]
WRITE_S: []*/
double mysecond() {
/*READ_S: [gettimeofday]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval tp;
    /*READ_S: []
    WRITE_S: []*/
    struct timezone tzp;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    struct timezone *_imopVarPre218;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre219;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre220;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre218 = &tzp;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre219 = &tp;
    /*READ_S: [gettimeofday]
    WRITE_S: []*/
    _imopVarPre220 = gettimeofday(_imopVarPre219, _imopVarPre218);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    i = _imopVarPre220;
    /*READ_S: []
    WRITE_S: []*/
    return ((double) tp.tv_sec + (double) tp.tv_usec * 1.e-6);
}
/*READ_S: [printf, _imopVarPre231, _imopVarPre223, _imopVarPre227, a, a.f, b, b.f, c, c.f]
WRITE_S: []*/
void checkSTREAMresults() {
/*READ_S: [printf, _imopVarPre231, _imopVarPre223, _imopVarPre227, a, a.f, b, b.f, c, c.f]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double aj;
    /*READ_S: []
    WRITE_S: []*/
    double bj;
    /*READ_S: []
    WRITE_S: []*/
    double cj;
    /*READ_S: []
    WRITE_S: []*/
    double scalar;
    /*READ_S: []
    WRITE_S: []*/
    double asum;
    /*READ_S: []
    WRITE_S: []*/
    double bsum;
    /*READ_S: []
    WRITE_S: []*/
    double csum;
    /*READ_S: []
    WRITE_S: []*/
    double epsilon;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    aj = 1.0;
    /*READ_S: []
    WRITE_S: []*/
    bj = 2.0;
    /*READ_S: []
    WRITE_S: []*/
    cj = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    aj = 2.0E0 * aj;
    /*READ_S: []
    WRITE_S: []*/
    scalar = 3.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (k = 0; k < 10; k++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        cj = aj;
        /*READ_S: []
        WRITE_S: []*/
        bj = scalar * cj;
        /*READ_S: []
        WRITE_S: []*/
        cj = aj + bj;
        /*READ_S: []
        WRITE_S: []*/
        aj = bj + scalar * cj;
    }
    /*READ_S: []
    WRITE_S: []*/
    aj = aj * (double) 2000000;
    /*READ_S: []
    WRITE_S: []*/
    bj = bj * (double) 2000000;
    /*READ_S: []
    WRITE_S: []*/
    cj = cj * (double) 2000000;
    /*READ_S: []
    WRITE_S: []*/
    asum = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    bsum = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    csum = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [a, a.f, b, c, b.f, c.f]
    WRITE_S: []*/
    for (j = 0; j < 2000000; j++) {
    /*READ_S: [a, a.f, b, c, b.f, c.f]
    WRITE_S: []*/
        /*READ_S: [a, a.f]
        WRITE_S: []*/
        asum += a[j];
        /*READ_S: [b, b.f]
        WRITE_S: []*/
        bsum += b[j];
        /*READ_S: [c, c.f]
        WRITE_S: []*/
        csum += c[j];
    }
    /*READ_S: []
    WRITE_S: []*/
    epsilon = 1.e-8;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre223;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre224;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre223 = (aj - asum) >= 0;
    /*READ_S: [_imopVarPre223]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre223]
    WRITE_S: []*/
    if (_imopVarPre223) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre224 = (aj - asum);
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre224 = -(aj - asum);
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, _imopVarPre231, _imopVarPre227]
    WRITE_S: []*/
    if (_imopVarPre224 / asum > epsilon) {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("Failed Validation on array a[]\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("        Expected  : %f \n", aj);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("        Observed  : %f \n", asum);
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [printf, _imopVarPre231, _imopVarPre227]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre227;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre228;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre227 = (bj - bsum) >= 0;
        /*READ_S: [_imopVarPre227]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre227]
        WRITE_S: []*/
        if (_imopVarPre227) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre228 = (bj - bsum);
        } else {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre228 = -(bj - bsum);
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf, _imopVarPre231]
        WRITE_S: []*/
        if (_imopVarPre228 / bsum > epsilon) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("Failed Validation on array b[]\n");
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("        Expected  : %f \n", bj);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("        Observed  : %f \n", bsum);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [_imopVarPre231, printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre231;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre232;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre231 = (cj - csum) >= 0;
            /*READ_S: [_imopVarPre231]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre231]
            WRITE_S: []*/
            if (_imopVarPre231) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre232 = (cj - csum);
            } else {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre232 = -(cj - csum);
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            if (_imopVarPre232 / csum > epsilon) {
            /*READ_S: [printf]
            WRITE_S: []*/
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("Failed Validation on array c[]\n");
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("        Expected  : %f \n", cj);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("        Observed  : %f \n", csum);
                /*READ_S: []
                WRITE_S: []*/
            } else {
            /*READ_S: [printf]
            WRITE_S: []*/
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("Solution Validates\n");
                /*READ_S: []
                WRITE_S: []*/
            }
        }
    }
}
