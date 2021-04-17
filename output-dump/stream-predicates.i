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
    /*OUT: {
    Reverse<--,>}*/
    int quantum;
    /*OUT: {
    Reverse<--,>}*/
    int checktick();
    /*OUT: {
    Reverse<--,>}*/
    int BytesPerWord;
    /*OUT: {
    Reverse<--,>}*/
    register int j;
    /*OUT: {
    Reverse<--,>}*/
    register int k;
    /*OUT: {
    Reverse<--,>}*/
    double scalar;
    /*OUT: {
    Reverse<--,>}*/
    double t;
    /*OUT: {
    Reverse<--,>}*/
    double times[4][10];
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("-------------------------------------------------------------\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("Sequoia Benchmark Version 1.0\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("-------------------------------------------------------------\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    BytesPerWord = sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    printf("This system uses %d bytes per DOUBLE PRECISION word.\n", BytesPerWord);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("-------------------------------------------------------------\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("Array size = %d, Offset = %d\n", 2000000, 0);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre135;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre135 = (3.0 * BytesPerWord) * ((double) 2000000 / 1048576.0);
    /*OUT: {
    Reverse<--,>}*/
    printf("Total memory required = %.1f MB.\n", _imopVarPre135);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("Each test is run %d times, but only\n", 10);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("the *best* time for each is used.\n");
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<14703,>}*/
        /*OUT: {
        Reverse<14703,>}*/
        /*OUT: {
        Reverse<14703,>}*/
        for (j = 0; j < 2000000; j++) {
            /*OUT: {
            Reverse<14703,>}*/
            a[j] = 1.0;
            /*OUT: {
            Reverse<14703,>}*/
            b[j] = 2.0;
            /*OUT: {
            Reverse<14703,>}*/
            c[j] = 0.0;
        }
        /*OUT: {
        Reverse<14703,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<18160,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    printf("-------------------------------------------------------------\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre137;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre137 = checktick();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if ((quantum = _imopVarPre137) >= 1) {
        /*OUT: {
        Reverse<--, 13929_0;>}*/
        printf("Your clock granularity/precision appears to be " "%d microseconds.\n", quantum);
        /*OUT: {
        Reverse<--, 13929_0;>}*/
    } else {
        /*OUT: {
        Reverse<--, 13929_1;>}*/
        printf("Your clock granularity appears to be " "less than one microsecond.\n");
        /*OUT: {
        Reverse<--, 13929_1;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    t = mysecond();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<14717,>}*/
        /*OUT: {
        Reverse<14717,>}*/
        /*OUT: {
        Reverse<14717,>}*/
        for (j = 0; j < 2000000; j++) {
            /*OUT: {
            Reverse<14717,>}*/
            a[j] = 2.0E0 * a[j];
        }
        /*OUT: {
        Reverse<14717,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<18564,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre141;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre141 = mysecond();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    t = 1.0E6 * (_imopVarPre141 - t);
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre143;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre143 = (int) t;
    /*OUT: {
    Reverse<--,>}*/
    printf("Each test below will take on the order" " of %d microseconds.\n", _imopVarPre143);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre145;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre145 = (int) (t / quantum);
    /*OUT: {
    Reverse<--,>}*/
    printf("   (= %d clock ticks)\n", _imopVarPre145);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("Increase the size of the arrays if this shows that\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("you are not getting at least 20 clock ticks per test.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("-------------------------------------------------------------\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("WARNING -- The above is only a rough guideline.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("For best results, please be sure you know the\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("precision of your system timer.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("-------------------------------------------------------------\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    scalar = 3.0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 14020_0;>}*/
    for (k = 0; k < 10; k++) {
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        double _imopVarPre146;
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        _imopVarPre146 = mysecond();
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        times[0][k] = _imopVarPre146;
#pragma omp parallel
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<14729,>}*/
            /*OUT: {
            Reverse<14729,>}*/
            /*OUT: {
            Reverse<14729,>}*/
            for (j = 0; j < 2000000; j++) {
                /*OUT: {
                Reverse<14729,>}*/
                c[j] = a[j];
            }
            /*OUT: {
            Reverse<14729,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<18568,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        double _imopVarPre148;
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        _imopVarPre148 = mysecond();
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        times[0][k] = _imopVarPre148 - times[0][k];
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        double _imopVarPre149;
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        _imopVarPre149 = mysecond();
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        times[1][k] = _imopVarPre149;
#pragma omp parallel
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<14737,>}*/
            /*OUT: {
            Reverse<14737,>}*/
            /*OUT: {
            Reverse<14737,>}*/
            for (j = 0; j < 2000000; j++) {
                /*OUT: {
                Reverse<14737,>}*/
                b[j] = scalar * c[j];
            }
            /*OUT: {
            Reverse<14737,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<18572,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        double _imopVarPre151;
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        _imopVarPre151 = mysecond();
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        times[1][k] = _imopVarPre151 - times[1][k];
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        double _imopVarPre152;
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        _imopVarPre152 = mysecond();
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        times[2][k] = _imopVarPre152;
#pragma omp parallel
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<14745,>}*/
            /*OUT: {
            Reverse<14745,>}*/
            /*OUT: {
            Reverse<14745,>}*/
            for (j = 0; j < 2000000; j++) {
                /*OUT: {
                Reverse<14745,>}*/
                c[j] = a[j] + b[j];
            }
            /*OUT: {
            Reverse<14745,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<18576,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        double _imopVarPre154;
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        _imopVarPre154 = mysecond();
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        times[2][k] = _imopVarPre154 - times[2][k];
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        double _imopVarPre155;
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        _imopVarPre155 = mysecond();
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        times[3][k] = _imopVarPre155;
#pragma omp parallel
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<14753,>}*/
            /*OUT: {
            Reverse<14753,>}*/
            /*OUT: {
            Reverse<14753,>}*/
            for (j = 0; j < 2000000; j++) {
                /*OUT: {
                Reverse<14753,>}*/
                a[j] = b[j] + scalar * c[j];
            }
            /*OUT: {
            Reverse<14753,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<18580,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        double _imopVarPre157;
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        _imopVarPre157 = mysecond();
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        /*OUT: {
        Reverse<--, 14020_0;>}*/
        times[3][k] = _imopVarPre157 - times[3][k];
    }
    /*OUT: {
    Reverse<--, 14020_1;>}*/
    /*OUT: {
    Reverse<--, 14020_1;>}*/
    /*OUT: {
    Reverse<--, 14160_1; 14157_0; 14020_1;>}*/
    for (k = 1; k < 10; k++) {
        /*OUT: {
        Reverse<--, 14157_0; 14020_1;>}*/
        /*OUT: {
        Reverse<--, 14157_0; 14020_1;>}*/
        /*OUT: {
        Reverse<--, 14160_0; 14157_0; 14020_1;>}*/
        for (j = 0; j < 4; j++) {
            /*OUT: {
            Reverse<--, 14160_0; 14157_0; 14020_1;>}*/
            avgtime[j] = avgtime[j] + times[j][k];
            /*OUT: {
            Reverse<--, 14160_0; 14157_0; 14020_1;>}*/
            int _imopVarPre160;
            /*OUT: {
            Reverse<--, 14160_0; 14157_0; 14020_1;>}*/
            double _imopVarPre161;
            /*OUT: {
            Reverse<--, 14160_0; 14157_0; 14020_1;>}*/
            _imopVarPre160 = (mintime[j]) < (times[j][k]);
            /*OUT: {
            Reverse<--, 14160_0; 14157_0; 14020_1;>}*/
            if (_imopVarPre160) {
                /*OUT: {
                Reverse<--, 14177_0; 14160_0; 14157_0; 14020_1;>}*/
                _imopVarPre161 = (mintime[j]);
            } else {
                /*OUT: {
                Reverse<--, 14177_1; 14160_0; 14157_0; 14020_1;>}*/
                _imopVarPre161 = (times[j][k]);
            }
            /*OUT: {
            Reverse<--, 14160_0; 14157_0; 14020_1;>}*/
            mintime[j] = _imopVarPre161;
            /*OUT: {
            Reverse<--, 14160_0; 14157_0; 14020_1;>}*/
            int _imopVarPre164;
            /*OUT: {
            Reverse<--, 14160_0; 14157_0; 14020_1;>}*/
            double _imopVarPre165;
            /*OUT: {
            Reverse<--, 14160_0; 14157_0; 14020_1;>}*/
            _imopVarPre164 = (maxtime[j]) > (times[j][k]);
            /*OUT: {
            Reverse<--, 14160_0; 14157_0; 14020_1;>}*/
            if (_imopVarPre164) {
                /*OUT: {
                Reverse<--, 14199_0; 14160_0; 14157_0; 14020_1;>}*/
                _imopVarPre165 = (maxtime[j]);
            } else {
                /*OUT: {
                Reverse<--, 14199_1; 14160_0; 14157_0; 14020_1;>}*/
                _imopVarPre165 = (times[j][k]);
            }
            /*OUT: {
            Reverse<--, 14160_0; 14157_0; 14020_1;>}*/
            maxtime[j] = _imopVarPre165;
        }
    }
    /*OUT: {
    Reverse<--, 14157_1; 14020_1;>}*/
    printf("Function      Rate (MB/s)   Avg time     Min time     Max time\n");
    /*OUT: {
    Reverse<--, 14157_1; 14020_1;>}*/
    /*OUT: {
    Reverse<--, 14157_1; 14020_1;>}*/
    /*OUT: {
    Reverse<--, 14157_1; 14020_1;>}*/
    /*OUT: {
    Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
    for (j = 0; j < 4; j++) {
        /*OUT: {
        Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
        avgtime[j] = avgtime[j] / (double) 10;
        /*OUT: {
        Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
        double _imopVarPre171;
        /*OUT: {
        Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
        double _imopVarPre172;
        /*OUT: {
        Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
        double _imopVarPre173;
        /*OUT: {
        Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
        double _imopVarPre174;
        /*OUT: {
        Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
        char *_imopVarPre175;
        /*OUT: {
        Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
        _imopVarPre171 = maxtime[j];
        /*OUT: {
        Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
        _imopVarPre172 = mintime[j];
        /*OUT: {
        Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
        _imopVarPre173 = avgtime[j];
        /*OUT: {
        Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
        _imopVarPre174 = 1.0E-06 * bytes[j] / mintime[j];
        /*OUT: {
        Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
        _imopVarPre175 = label[j];
        /*OUT: {
        Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
        printf("%s%11.4f  %11.4f  %11.4f  %11.4f\n", _imopVarPre175, _imopVarPre174, _imopVarPre173, _imopVarPre172, _imopVarPre171);
        /*OUT: {
        Reverse<--, 14218_0; 14157_1; 14020_1;>}*/
    }
    /*OUT: {
    Reverse<--, 14218_1; 14157_1; 14020_1;>}*/
    printf("-------------------------------------------------------------\n");
    /*OUT: {
    Reverse<--, 14218_1; 14157_1; 14020_1;>}*/
    /*OUT: {
    Reverse<--, 14218_1; 14157_1; 14020_1;>}*/
    checkSTREAMresults();
    /*OUT: {
    Reverse<--, 14218_1; 14157_1; 14020_1;>}*/
    /*OUT: {
    Reverse<--, 14218_1; 14157_1; 14020_1;>}*/
    printf("-------------------------------------------------------------\n");
    /*OUT: {
    Reverse<--, 14218_1; 14157_1; 14020_1;>}*/
    /*OUT: {
    Reverse<--, 14218_1; 14157_1; 14020_1;>}*/
    return 0;
}
int checktick() {
    int i;
    int minDelta;
    int Delta;
    double t1;
    double t2;
    double timesfound[20];
    for (i = 0; i < 20; i++) {
        t1 = mysecond();
        double _imopVarPre179;
        _imopVarPre179 = mysecond();
        while (((t2 = _imopVarPre179) - t1) < 1.0E-6) {
            ;
            _imopVarPre179 = mysecond();
        }
        timesfound[i] = t1 = t2;
    }
    minDelta = 1000000;
    for (i = 1; i < 20; i++) {
        Delta = (int) (1.0E6 * (timesfound[i] - timesfound[i - 1]));
        int _imopVarPre204;
        int _imopVarPre205;
        int _imopVarPre206;
        int _imopVarPre207;
        int _imopVarPre214;
        int _imopVarPre215;
        _imopVarPre204 = Delta > 0;
        if (_imopVarPre204) {
            _imopVarPre205 = Delta;
        } else {
            _imopVarPre205 = 0;
        }
        _imopVarPre206 = minDelta < _imopVarPre205;
        if (_imopVarPre206) {
            _imopVarPre207 = minDelta;
        } else {
            _imopVarPre214 = Delta > 0;
            if (_imopVarPre214) {
                _imopVarPre215 = Delta;
            } else {
                _imopVarPre215 = 0;
            }
            _imopVarPre207 = _imopVarPre215;
        }
        minDelta = _imopVarPre207;
    }
    return minDelta;
}
double mysecond() {
    /*OUT: {
    Reverse<--,>}*/
    struct timeval tp;
    /*OUT: {
    Reverse<--,>}*/
    struct timezone tzp;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    struct timezone *_imopVarPre218;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre219;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre220;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre218 = &tzp;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre219 = &tp;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre220 = gettimeofday(_imopVarPre219, _imopVarPre218);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    i = _imopVarPre220;
    /*OUT: {
    Reverse<--,>}*/
    return ((double) tp.tv_sec + (double) tp.tv_usec * 1.e-6);
}
void checkSTREAMresults() {
    /*OUT: {
    Reverse<--,>}*/
    double aj;
    /*OUT: {
    Reverse<--,>}*/
    double bj;
    /*OUT: {
    Reverse<--,>}*/
    double cj;
    /*OUT: {
    Reverse<--,>}*/
    double scalar;
    /*OUT: {
    Reverse<--,>}*/
    double asum;
    /*OUT: {
    Reverse<--,>}*/
    double bsum;
    /*OUT: {
    Reverse<--,>}*/
    double csum;
    /*OUT: {
    Reverse<--,>}*/
    double epsilon;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    aj = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    bj = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    cj = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    aj = 2.0E0 * aj;
    /*OUT: {
    Reverse<--,>}*/
    scalar = 3.0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 14386_0;>}*/
    for (k = 0; k < 10; k++) {
        /*OUT: {
        Reverse<--, 14386_0;>}*/
        cj = aj;
        /*OUT: {
        Reverse<--, 14386_0;>}*/
        bj = scalar * cj;
        /*OUT: {
        Reverse<--, 14386_0;>}*/
        cj = aj + bj;
        /*OUT: {
        Reverse<--, 14386_0;>}*/
        aj = bj + scalar * cj;
    }
    /*OUT: {
    Reverse<--, 14386_1;>}*/
    aj = aj * (double) 2000000;
    /*OUT: {
    Reverse<--, 14386_1;>}*/
    bj = bj * (double) 2000000;
    /*OUT: {
    Reverse<--, 14386_1;>}*/
    cj = cj * (double) 2000000;
    /*OUT: {
    Reverse<--, 14386_1;>}*/
    asum = 0.0;
    /*OUT: {
    Reverse<--, 14386_1;>}*/
    bsum = 0.0;
    /*OUT: {
    Reverse<--, 14386_1;>}*/
    csum = 0.0;
    /*OUT: {
    Reverse<--, 14386_1;>}*/
    /*OUT: {
    Reverse<--, 14386_1;>}*/
    /*OUT: {
    Reverse<--, 14409_0; 14386_1;>}*/
    for (j = 0; j < 2000000; j++) {
        /*OUT: {
        Reverse<--, 14409_0; 14386_1;>}*/
        asum += a[j];
        /*OUT: {
        Reverse<--, 14409_0; 14386_1;>}*/
        bsum += b[j];
        /*OUT: {
        Reverse<--, 14409_0; 14386_1;>}*/
        csum += c[j];
    }
    /*OUT: {
    Reverse<--, 14409_1; 14386_1;>}*/
    epsilon = 1.e-8;
    /*OUT: {
    Reverse<--, 14409_1; 14386_1;>}*/
    int _imopVarPre223;
    /*OUT: {
    Reverse<--, 14409_1; 14386_1;>}*/
    double _imopVarPre224;
    /*OUT: {
    Reverse<--, 14409_1; 14386_1;>}*/
    _imopVarPre223 = (aj - asum) >= 0;
    /*OUT: {
    Reverse<--, 14409_1; 14386_1;>}*/
    if (_imopVarPre223) {
        /*OUT: {
        Reverse<--, 14427_0; 14409_1; 14386_1;>}*/
        _imopVarPre224 = (aj - asum);
    } else {
        /*OUT: {
        Reverse<--, 14427_1; 14409_1; 14386_1;>}*/
        _imopVarPre224 = -(aj - asum);
    }
    /*OUT: {
    Reverse<--, 14409_1; 14386_1;>}*/
    if (_imopVarPre224 / asum > epsilon) {
        /*OUT: {
        Reverse<--, 14434_0; 14409_1; 14386_1;>}*/
        printf("Failed Validation on array a[]\n");
        /*OUT: {
        Reverse<--, 14434_0; 14409_1; 14386_1;>}*/
        /*OUT: {
        Reverse<--, 14434_0; 14409_1; 14386_1;>}*/
        printf("        Expected  : %f \n", aj);
        /*OUT: {
        Reverse<--, 14434_0; 14409_1; 14386_1;>}*/
        /*OUT: {
        Reverse<--, 14434_0; 14409_1; 14386_1;>}*/
        printf("        Observed  : %f \n", asum);
        /*OUT: {
        Reverse<--, 14434_0; 14409_1; 14386_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 14434_1; 14409_1; 14386_1;>}*/
        int _imopVarPre227;
        /*OUT: {
        Reverse<--, 14434_1; 14409_1; 14386_1;>}*/
        double _imopVarPre228;
        /*OUT: {
        Reverse<--, 14434_1; 14409_1; 14386_1;>}*/
        _imopVarPre227 = (bj - bsum) >= 0;
        /*OUT: {
        Reverse<--, 14434_1; 14409_1; 14386_1;>}*/
        if (_imopVarPre227) {
            /*OUT: {
            Reverse<--, 14455_0; 14434_1; 14409_1; 14386_1;>}*/
            _imopVarPre228 = (bj - bsum);
        } else {
            /*OUT: {
            Reverse<--, 14455_1; 14434_1; 14409_1; 14386_1;>}*/
            _imopVarPre228 = -(bj - bsum);
        }
        /*OUT: {
        Reverse<--, 14434_1; 14409_1; 14386_1;>}*/
        if (_imopVarPre228 / bsum > epsilon) {
            /*OUT: {
            Reverse<--, 14462_0; 14434_1; 14409_1; 14386_1;>}*/
            printf("Failed Validation on array b[]\n");
            /*OUT: {
            Reverse<--, 14462_0; 14434_1; 14409_1; 14386_1;>}*/
            /*OUT: {
            Reverse<--, 14462_0; 14434_1; 14409_1; 14386_1;>}*/
            printf("        Expected  : %f \n", bj);
            /*OUT: {
            Reverse<--, 14462_0; 14434_1; 14409_1; 14386_1;>}*/
            /*OUT: {
            Reverse<--, 14462_0; 14434_1; 14409_1; 14386_1;>}*/
            printf("        Observed  : %f \n", bsum);
            /*OUT: {
            Reverse<--, 14462_0; 14434_1; 14409_1; 14386_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 14462_1; 14434_1; 14409_1; 14386_1;>}*/
            int _imopVarPre231;
            /*OUT: {
            Reverse<--, 14462_1; 14434_1; 14409_1; 14386_1;>}*/
            double _imopVarPre232;
            /*OUT: {
            Reverse<--, 14462_1; 14434_1; 14409_1; 14386_1;>}*/
            _imopVarPre231 = (cj - csum) >= 0;
            /*OUT: {
            Reverse<--, 14462_1; 14434_1; 14409_1; 14386_1;>}*/
            if (_imopVarPre231) {
                /*OUT: {
                Reverse<--, 14483_0; 14462_1; 14434_1; 14409_1; 14386_1;>}*/
                _imopVarPre232 = (cj - csum);
            } else {
                /*OUT: {
                Reverse<--, 14483_1; 14462_1; 14434_1; 14409_1; 14386_1;>}*/
                _imopVarPre232 = -(cj - csum);
            }
            /*OUT: {
            Reverse<--, 14462_1; 14434_1; 14409_1; 14386_1;>}*/
            if (_imopVarPre232 / csum > epsilon) {
                /*OUT: {
                Reverse<--, 14490_0; 14462_1; 14434_1; 14409_1; 14386_1;>}*/
                printf("Failed Validation on array c[]\n");
                /*OUT: {
                Reverse<--, 14490_0; 14462_1; 14434_1; 14409_1; 14386_1;>}*/
                /*OUT: {
                Reverse<--, 14490_0; 14462_1; 14434_1; 14409_1; 14386_1;>}*/
                printf("        Expected  : %f \n", cj);
                /*OUT: {
                Reverse<--, 14490_0; 14462_1; 14434_1; 14409_1; 14386_1;>}*/
                /*OUT: {
                Reverse<--, 14490_0; 14462_1; 14434_1; 14409_1; 14386_1;>}*/
                printf("        Observed  : %f \n", csum);
                /*OUT: {
                Reverse<--, 14490_0; 14462_1; 14434_1; 14409_1; 14386_1;>}*/
            } else {
                /*OUT: {
                Reverse<--, 14490_1; 14462_1; 14434_1; 14409_1; 14386_1;>}*/
                printf("Solution Validates\n");
                /*OUT: {
                Reverse<--, 14490_1; 14462_1; 14434_1; 14409_1; 14386_1;>}*/
            }
        }
    }
}
