
/*[]*/
typedef int __int32_t;
/*[]*/
typedef long __darwin_time_t;
/*[]*/
typedef __int32_t __darwin_suseconds_t;
/*[]*/
struct __sFILEX ;
/*[]*/
int printf(const char *restrict , ...);
/*[]*/
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
/*[]*/
struct timezone {
    int tz_minuteswest;
    int tz_dsttime;
} ;
/*[]*/
int gettimeofday(struct timeval *restrict , void *restrict );
/*[]*/
static double a[2000000 + 0];
/*[]*/
static double b[2000000 + 0];
/*[]*/
static double c[2000000 + 0];
/*[]*/
static double avgtime[4] = {0};
/*[]*/
static double maxtime[4] = {0};
/*[]*/
static double mintime[4] = {3.40282346638528859812e+38F, 3.40282346638528859812e+38F , 3.40282346638528859812e+38F , 3.40282346638528859812e+38F};
/*[]*/
static char *label[4] = {"Copy:      ", "Scale:     " , "Add:       " , "Triad:     "};
/*[]*/
static double bytes[4] = {2 * sizeof(double) * 2000000, 2 * sizeof(double) * 2000000 , 3 * sizeof(double) * 2000000 , 3 * sizeof(double) * 2000000};
/*[]*/
extern double mysecond();
/*[]*/
extern void checkSTREAMresults();
/*[]*/
int main() {
/*[]*/
    /*[]*/
    int quantum;
    /*[]*/
    int checktick();
    /*[]*/
    int BytesPerWord;
    /*[]*/
    register int j;
    /*[]*/
    register int k;
    /*[]*/
    double scalar;
    /*[]*/
    double t;
    /*[]*/
    double times[4][10];
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("-------------------------------------------------------------\n");
    /*[]*/
    /*[]*/
    printf("Sequoia Benchmark Version 1.0\n");
    /*[]*/
    /*[]*/
    printf("-------------------------------------------------------------\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    BytesPerWord = sizeof(double);
    /*[]*/
    printf("This system uses %d bytes per DOUBLE PRECISION word.\n", BytesPerWord);
    /*[]*/
    /*[]*/
    printf("-------------------------------------------------------------\n");
    /*[]*/
    /*[]*/
    printf("Array size = %d, Offset = %d\n", 2000000, 0);
    /*[]*/
    /*[]*/
    double _imopVarPre135;
    /*[]*/
    _imopVarPre135 = (3.0 * BytesPerWord) * ((double) 2000000 / 1048576.0);
    /*[]*/
    printf("Total memory required = %.1f MB.\n", _imopVarPre135);
    /*[]*/
    /*[]*/
    printf("Each test is run %d times, but only\n", 10);
    /*[]*/
    /*[]*/
    printf("the *best* time for each is used.\n");
    /*[]*/
    /*[1]*/
#pragma omp parallel
    {
    /*[1]*/
        /*[1]*/
#pragma omp for nowait
        /*[1]*/
        /*[1]*/
        /*[1]*/
        for (j = 0; j < 2000000; j++) {
        /*[1]*/
            /*[1]*/
            a[j] = 1.0;
            /*[1]*/
            b[j] = 2.0;
            /*[1]*/
            c[j] = 0.0;
        }
    }
    /*[]*/
    printf("-------------------------------------------------------------\n");
    /*[]*/
    /*[]*/
    int _imopVarPre137;
    /*[]*/
    _imopVarPre137 = checktick();
    /*[]*/
    /*[]*/
    /*[]*/
    if ((quantum = _imopVarPre137) >= 1) {
    /*[]*/
        /*[]*/
        printf("Your clock granularity/precision appears to be " "%d microseconds.\n", quantum);
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        printf("Your clock granularity appears to be " "less than one microsecond.\n");
        /*[]*/
    }
    /*[]*/
    t = mysecond();
    /*[]*/
    /*[2]*/
#pragma omp parallel
    {
    /*[2]*/
        /*[2]*/
#pragma omp for nowait
        /*[2]*/
        /*[2]*/
        /*[2]*/
        for (j = 0; j < 2000000; j++) {
        /*[2]*/
            /*[2]*/
            a[j] = 2.0E0 * a[j];
        }
    }
    /*[]*/
    double _imopVarPre141;
    /*[]*/
    _imopVarPre141 = mysecond();
    /*[]*/
    /*[]*/
    t = 1.0E6 * (_imopVarPre141 - t);
    /*[]*/
    int _imopVarPre143;
    /*[]*/
    _imopVarPre143 = (int) t;
    /*[]*/
    printf("Each test below will take on the order" " of %d microseconds.\n", _imopVarPre143);
    /*[]*/
    /*[]*/
    int _imopVarPre145;
    /*[]*/
    _imopVarPre145 = (int) (t / quantum);
    /*[]*/
    printf("   (= %d clock ticks)\n", _imopVarPre145);
    /*[]*/
    /*[]*/
    printf("Increase the size of the arrays if this shows that\n");
    /*[]*/
    /*[]*/
    printf("you are not getting at least 20 clock ticks per test.\n");
    /*[]*/
    /*[]*/
    printf("-------------------------------------------------------------\n");
    /*[]*/
    /*[]*/
    printf("WARNING -- The above is only a rough guideline.\n");
    /*[]*/
    /*[]*/
    printf("For best results, please be sure you know the\n");
    /*[]*/
    /*[]*/
    printf("precision of your system timer.\n");
    /*[]*/
    /*[]*/
    printf("-------------------------------------------------------------\n");
    /*[]*/
    /*[]*/
    scalar = 3.0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (k = 0; k < 10; k++) {
    /*[]*/
        /*[3]*/
#pragma omp parallel
        {
        /*[3]*/
            /*[3]*/
            double _imopVarPre146;
            /*[3]*/
#pragma omp master
            {
            /*[3]*/
                /*[3]*/
                _imopVarPre146 = mysecond();
                /*[3]*/
                /*[3]*/
                times[0][k] = _imopVarPre146;
            }
            /*[3]*/
            double _imopVarPre148;
            /*[3]*/
            double _imopVarPre149;
            /*[3]*/
            double _imopVarPre151;
            /*[3]*/
            double _imopVarPre152;
            /*[3]*/
            double _imopVarPre154;
            /*[3]*/
            double _imopVarPre155;
            /*[3]*/
            double _imopVarPre157;
            /*[3]*/
#pragma omp for nowait
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (j = 0; j < 2000000; j++) {
            /*[3]*/
                /*[3]*/
                c[j] = a[j];
            }
            /*[3]*/
#pragma omp master
            {
            /*[3]*/
                /*[3]*/
                _imopVarPre148 = mysecond();
                /*[3]*/
                /*[3]*/
                times[0][k] = _imopVarPre148 - times[0][k];
                /*[3]*/
                _imopVarPre149 = mysecond();
                /*[3]*/
                /*[3]*/
                times[1][k] = _imopVarPre149;
            }
            /*[3]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[3]*/
#pragma omp barrier
            /*[4]*/
#pragma omp for nowait
            /*[4]*/
            /*[4]*/
            /*[4]*/
            for (j = 0; j < 2000000; j++) {
            /*[4]*/
                /*[4]*/
                b[j] = scalar * c[j];
            }
            /*[4]*/
#pragma omp master
            {
            /*[4]*/
                /*[4]*/
                _imopVarPre151 = mysecond();
                /*[4]*/
                /*[4]*/
                times[1][k] = _imopVarPre151 - times[1][k];
                /*[4]*/
                _imopVarPre152 = mysecond();
                /*[4]*/
                /*[4]*/
                times[2][k] = _imopVarPre152;
            }
            /*[4]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[4]*/
#pragma omp barrier
            /*[5]*/
#pragma omp for nowait
            /*[5]*/
            /*[5]*/
            /*[5]*/
            for (j = 0; j < 2000000; j++) {
            /*[5]*/
                /*[5]*/
                c[j] = a[j] + b[j];
            }
            /*[5]*/
#pragma omp master
            {
            /*[5]*/
                /*[5]*/
                _imopVarPre154 = mysecond();
                /*[5]*/
                /*[5]*/
                times[2][k] = _imopVarPre154 - times[2][k];
                /*[5]*/
                _imopVarPre155 = mysecond();
                /*[5]*/
                /*[5]*/
                times[3][k] = _imopVarPre155;
            }
            /*[5]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[5]*/
#pragma omp barrier
            /*[6]*/
#pragma omp for nowait
            /*[6]*/
            /*[6]*/
            /*[6]*/
            for (j = 0; j < 2000000; j++) {
            /*[6]*/
                /*[6]*/
                a[j] = b[j] + scalar * c[j];
            }
            /*[6]*/
#pragma omp master
            {
            /*[6]*/
                /*[6]*/
                _imopVarPre157 = mysecond();
                /*[6]*/
                /*[6]*/
                times[3][k] = _imopVarPre157 - times[3][k];
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (k = 1; k < 10; k++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < 4; j++) {
        /*[]*/
            /*[]*/
            avgtime[j] = avgtime[j] + times[j][k];
            /*[]*/
            int _imopVarPre160;
            /*[]*/
            double _imopVarPre161;
            /*[]*/
            _imopVarPre160 = (mintime[j]) < (times[j][k]);
            /*[]*/
            /*[]*/
            if (_imopVarPre160) {
            /*[]*/
                /*[]*/
                _imopVarPre161 = (mintime[j]);
            } else {
            /*[]*/
                /*[]*/
                _imopVarPre161 = (times[j][k]);
            }
            /*[]*/
            mintime[j] = _imopVarPre161;
            /*[]*/
            int _imopVarPre164;
            /*[]*/
            double _imopVarPre165;
            /*[]*/
            _imopVarPre164 = (maxtime[j]) > (times[j][k]);
            /*[]*/
            /*[]*/
            if (_imopVarPre164) {
            /*[]*/
                /*[]*/
                _imopVarPre165 = (maxtime[j]);
            } else {
            /*[]*/
                /*[]*/
                _imopVarPre165 = (times[j][k]);
            }
            /*[]*/
            maxtime[j] = _imopVarPre165;
        }
    }
    /*[]*/
    printf("Function      Rate (MB/s)   Avg time     Min time     Max time\n");
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 0; j < 4; j++) {
    /*[]*/
        /*[]*/
        avgtime[j] = avgtime[j] / (double) 10;
        /*[]*/
        double _imopVarPre171;
        /*[]*/
        double _imopVarPre172;
        /*[]*/
        double _imopVarPre173;
        /*[]*/
        double _imopVarPre174;
        /*[]*/
        char *_imopVarPre175;
        /*[]*/
        _imopVarPre171 = maxtime[j];
        /*[]*/
        _imopVarPre172 = mintime[j];
        /*[]*/
        _imopVarPre173 = avgtime[j];
        /*[]*/
        _imopVarPre174 = 1.0E-06 * bytes[j] / mintime[j];
        /*[]*/
        _imopVarPre175 = label[j];
        /*[]*/
        printf("%s%11.4f  %11.4f  %11.4f  %11.4f\n", _imopVarPre175, _imopVarPre174, _imopVarPre173, _imopVarPre172, _imopVarPre171);
        /*[]*/
    }
    /*[]*/
    printf("-------------------------------------------------------------\n");
    /*[]*/
    /*[]*/
    checkSTREAMresults();
    /*[]*/
    /*[]*/
    printf("-------------------------------------------------------------\n");
    /*[]*/
    /*[]*/
    return 0;
}
/*[]*/
int checktick() {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int minDelta;
    /*[]*/
    int Delta;
    /*[]*/
    double t1;
    /*[]*/
    double t2;
    /*[]*/
    double timesfound[20];
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 20; i++) {
    /*[]*/
        /*[]*/
        t1 = mysecond();
        /*[]*/
        /*[]*/
        double _imopVarPre179;
        /*[]*/
        _imopVarPre179 = mysecond();
        /*[]*/
        /*[]*/
        /*[]*/
        while (((t2 = _imopVarPre179) - t1) < 1.0E-6) {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre179 = mysecond();
            /*[]*/
        }
        /*[]*/
        timesfound[i] = t1 = t2;
    }
    /*[]*/
    minDelta = 1000000;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < 20; i++) {
    /*[]*/
        /*[]*/
        Delta = (int) (1.0E6 * (timesfound[i] - timesfound[i - 1]));
        /*[]*/
        int _imopVarPre204;
        /*[]*/
        int _imopVarPre205;
        /*[]*/
        int _imopVarPre206;
        /*[]*/
        int _imopVarPre207;
        /*[]*/
        int _imopVarPre214;
        /*[]*/
        int _imopVarPre215;
        /*[]*/
        _imopVarPre204 = Delta > 0;
        /*[]*/
        /*[]*/
        if (_imopVarPre204) {
        /*[]*/
            /*[]*/
            _imopVarPre205 = Delta;
        } else {
        /*[]*/
            /*[]*/
            _imopVarPre205 = 0;
        }
        /*[]*/
        _imopVarPre206 = minDelta < _imopVarPre205;
        /*[]*/
        /*[]*/
        if (_imopVarPre206) {
        /*[]*/
            /*[]*/
            _imopVarPre207 = minDelta;
        } else {
        /*[]*/
            /*[]*/
            _imopVarPre214 = Delta > 0;
            /*[]*/
            /*[]*/
            if (_imopVarPre214) {
            /*[]*/
                /*[]*/
                _imopVarPre215 = Delta;
            } else {
            /*[]*/
                /*[]*/
                _imopVarPre215 = 0;
            }
            /*[]*/
            _imopVarPre207 = _imopVarPre215;
        }
        /*[]*/
        minDelta = _imopVarPre207;
    }
    /*[]*/
    return minDelta;
}
/*[3, 4, 5, 6]*/
double mysecond() {
/*[3, 4, 5, 6]*/
    /*[3, 4, 5, 6]*/
    struct timeval tp;
    /*[3, 4, 5, 6]*/
    struct timezone tzp;
    /*[3, 4, 5, 6]*/
    int i;
    /*[3, 4, 5, 6]*/
    struct timezone *_imopVarPre218;
    /*[3, 4, 5, 6]*/
    struct timeval *_imopVarPre219;
    /*[3, 4, 5, 6]*/
    int _imopVarPre220;
    /*[3, 4, 5, 6]*/
    _imopVarPre218 = &tzp;
    /*[3, 4, 5, 6]*/
    _imopVarPre219 = &tp;
    /*[3, 4, 5, 6]*/
    _imopVarPre220 = gettimeofday(_imopVarPre219, _imopVarPre218);
    /*[3, 4, 5, 6]*/
    /*[3, 4, 5, 6]*/
    i = _imopVarPre220;
    /*[3, 4, 5, 6]*/
    return ((double) tp.tv_sec + (double) tp.tv_usec * 1.e-6);
}
/*[]*/
void checkSTREAMresults() {
/*[]*/
    /*[]*/
    double aj;
    /*[]*/
    double bj;
    /*[]*/
    double cj;
    /*[]*/
    double scalar;
    /*[]*/
    double asum;
    /*[]*/
    double bsum;
    /*[]*/
    double csum;
    /*[]*/
    double epsilon;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    aj = 1.0;
    /*[]*/
    bj = 2.0;
    /*[]*/
    cj = 0.0;
    /*[]*/
    aj = 2.0E0 * aj;
    /*[]*/
    scalar = 3.0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (k = 0; k < 10; k++) {
    /*[]*/
        /*[]*/
        cj = aj;
        /*[]*/
        bj = scalar * cj;
        /*[]*/
        cj = aj + bj;
        /*[]*/
        aj = bj + scalar * cj;
    }
    /*[]*/
    aj = aj * (double) 2000000;
    /*[]*/
    bj = bj * (double) 2000000;
    /*[]*/
    cj = cj * (double) 2000000;
    /*[]*/
    asum = 0.0;
    /*[]*/
    bsum = 0.0;
    /*[]*/
    csum = 0.0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 0; j < 2000000; j++) {
    /*[]*/
        /*[]*/
        asum += a[j];
        /*[]*/
        bsum += b[j];
        /*[]*/
        csum += c[j];
    }
    /*[]*/
    epsilon = 1.e-8;
    /*[]*/
    int _imopVarPre223;
    /*[]*/
    double _imopVarPre224;
    /*[]*/
    _imopVarPre223 = (aj - asum) >= 0;
    /*[]*/
    /*[]*/
    if (_imopVarPre223) {
    /*[]*/
        /*[]*/
        _imopVarPre224 = (aj - asum);
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre224 = -(aj - asum);
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre224 / asum > epsilon) {
    /*[]*/
        /*[]*/
        printf("Failed Validation on array a[]\n");
        /*[]*/
        /*[]*/
        printf("        Expected  : %f \n", aj);
        /*[]*/
        /*[]*/
        printf("        Observed  : %f \n", asum);
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        int _imopVarPre227;
        /*[]*/
        double _imopVarPre228;
        /*[]*/
        _imopVarPre227 = (bj - bsum) >= 0;
        /*[]*/
        /*[]*/
        if (_imopVarPre227) {
        /*[]*/
            /*[]*/
            _imopVarPre228 = (bj - bsum);
        } else {
        /*[]*/
            /*[]*/
            _imopVarPre228 = -(bj - bsum);
        }
        /*[]*/
        /*[]*/
        if (_imopVarPre228 / bsum > epsilon) {
        /*[]*/
            /*[]*/
            printf("Failed Validation on array b[]\n");
            /*[]*/
            /*[]*/
            printf("        Expected  : %f \n", bj);
            /*[]*/
            /*[]*/
            printf("        Observed  : %f \n", bsum);
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            int _imopVarPre231;
            /*[]*/
            double _imopVarPre232;
            /*[]*/
            _imopVarPre231 = (cj - csum) >= 0;
            /*[]*/
            /*[]*/
            if (_imopVarPre231) {
            /*[]*/
                /*[]*/
                _imopVarPre232 = (cj - csum);
            } else {
            /*[]*/
                /*[]*/
                _imopVarPre232 = -(cj - csum);
            }
            /*[]*/
            /*[]*/
            if (_imopVarPre232 / csum > epsilon) {
            /*[]*/
                /*[]*/
                printf("Failed Validation on array c[]\n");
                /*[]*/
                /*[]*/
                printf("        Expected  : %f \n", cj);
                /*[]*/
                /*[]*/
                printf("        Observed  : %f \n", csum);
                /*[]*/
            } else {
            /*[]*/
                /*[]*/
                printf("Solution Validates\n");
                /*[]*/
            }
        }
    }
}
