
/*READ_S: []
WRITE_S: []*/
typedef long unsigned int __darwin_size_t;
/*READ_S: []
WRITE_S: []*/
typedef long __darwin_time_t;
/*READ_S: []
WRITE_S: []*/
typedef __darwin_size_t size_t;
/*READ_S: []
WRITE_S: [free]*/
void free(void *);
/*READ_S: []
WRITE_S: [malloc]*/
void *malloc(size_t __size);
/*READ_S: []
WRITE_S: []*/
struct __sFILEX ;
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *, ...);
/*READ_S: []
WRITE_S: [cos]*/
extern double cos(double );
/*READ_S: []
WRITE_S: [sin]*/
extern double sin(double );
/*READ_S: []
WRITE_S: [log]*/
extern double log(double );
/*READ_S: []
WRITE_S: [pow]*/
extern double pow(double , double );
/*READ_S: []
WRITE_S: [sqrt]*/
extern double sqrt(double );
/*READ_S: []
WRITE_S: [fmod]*/
extern double fmod(double , double );
/*READ_S: []
WRITE_S: []*/
typedef __darwin_time_t time_t;
/*READ_S: []
WRITE_S: [localtime]*/
struct tm *localtime(const time_t *);
/*READ_S: []
WRITE_S: [strftime]*/
size_t strftime(char *, size_t  , const char * , const struct tm *);
/*READ_S: []
WRITE_S: [time]*/
time_t time(time_t *);
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
int main(void );
/*READ_S: []
WRITE_S: [ccopy]*/
void ccopy(int n, double x[] , double y[]);
/*READ_S: []
WRITE_S: [cfft2]*/
void cfft2(int n, double x[] , double y[] , double w[] , double sgn);
/*READ_S: []
WRITE_S: [cffti]*/
void cffti(int n, double w[]);
/*READ_S: []
WRITE_S: [ggl]*/
double ggl(double *ds);
/*READ_S: []
WRITE_S: [step]*/
void step(int n, int mj , double a[] , double b[] , double c[] , double d[] , double w[] , double sgn);
/*READ_S: []
WRITE_S: [timestamp]*/
void timestamp(void );
/*READ_S: [w, omp_get_wtime, &seed, &heapCell#1, omp_get_max_threads, a, heapCell#3, cffti, n2, time_buffer, d, first, time, z, free, aw, heapCell#1, strftime, heapCell#0, log, n, mj2, cos, printf, heapCell#2, timestamp, cfft2, c, mj, fmod, i, seed, sqrt, malloc, sgn, omp_get_num_procs, w, i, pow, ggl, localtime, sin, x, &heapCell#2, lj, b, j, tgle, step, time_buffer.f, ccopy]
WRITE_S: [heapCell#2, seed, heapCell#1, time_buffer.f, heapCell#0, time_buffer, heapCell#3]*/
int main() {
/*READ_S: [w, omp_get_wtime, &seed, &heapCell#1, omp_get_max_threads, a, heapCell#3, cffti, n2, time_buffer, d, first, time, z, free, aw, heapCell#1, strftime, heapCell#0, log, n, mj2, cos, printf, heapCell#2, timestamp, cfft2, c, mj, fmod, i, seed, sqrt, malloc, sgn, omp_get_num_procs, w, i, pow, ggl, localtime, sin, x, &heapCell#2, lj, b, j, tgle, step, time_buffer.f, ccopy]
WRITE_S: [heapCell#2, seed, heapCell#1, time_buffer.f, heapCell#0, time_buffer, heapCell#3]*/
    /*READ_S: []
    WRITE_S: []*/
    double error;
    /*READ_S: []
    WRITE_S: []*/
    int first;
    /*READ_S: []
    WRITE_S: []*/
    double flops;
    /*READ_S: []
    WRITE_S: []*/
    double fnm1;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int icase;
    /*READ_S: []
    WRITE_S: []*/
    int it;
    /*READ_S: []
    WRITE_S: []*/
    int ln2;
    /*READ_S: []
    WRITE_S: []*/
    int ln2_max = 25;
    /*READ_S: []
    WRITE_S: []*/
    double mflops;
    /*READ_S: []
    WRITE_S: []*/
    int n;
    /*READ_S: []
    WRITE_S: []*/
    int nits = 10000;
    /*READ_S: []
    WRITE_S: [seed]*/
    static double seed;
    /*READ_S: []
    WRITE_S: []*/
    double sgn;
    /*READ_S: []
    WRITE_S: []*/
    double *w;
    /*READ_S: []
    WRITE_S: []*/
    double wtime;
    /*READ_S: []
    WRITE_S: []*/
    double *x;
    /*READ_S: []
    WRITE_S: []*/
    double *y;
    /*READ_S: []
    WRITE_S: []*/
    double *z;
    /*READ_S: []
    WRITE_S: []*/
    double z0;
    /*READ_S: []
    WRITE_S: []*/
    double z1;
    /*READ_S: [timestamp]
    WRITE_S: []*/
    timestamp();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("FFT_OPENMP\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  C/OpenMP version\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  Demonstrate an implementation of the Fast Fourier Transform\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  of a complex data vector, using OpenMP for parallel execution.\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre143;
    /*READ_S: [omp_get_num_procs]
    WRITE_S: []*/
    _imopVarPre143 = omp_get_num_procs();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  Number of processors available = %d\n", _imopVarPre143);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre145;
    /*READ_S: [omp_get_max_threads]
    WRITE_S: []*/
    _imopVarPre145 = omp_get_max_threads();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  Number of threads =              %d\n", _imopVarPre145);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  Accuracy check:\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("    FFT ( FFT ( X(1:N) ) ) == N * X(1:N)\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("             N      NITS    Error         Time          Time/Call     MFLOPS\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [seed]*/
    seed = 331.0;
    /*READ_S: []
    WRITE_S: []*/
    n = 1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [c, mj, w, omp_get_wtime, fmod, i, &seed, seed, sqrt, malloc, &heapCell#1, sgn, a, heapCell#3, cffti, n2, w, i, pow, ggl, sin, d, first, z, x, free, aw, &heapCell#2, lj, heapCell#1, heapCell#0, b, log, n, mj2, cos, j, printf, heapCell#2, tgle, cfft2, step, ccopy]
    WRITE_S: [heapCell#2, seed, heapCell#1, heapCell#0, heapCell#3]*/
    for (ln2 = 1; ln2 <= ln2_max; ln2++) {
    /*READ_S: [c, mj, w, omp_get_wtime, fmod, i, &seed, seed, sqrt, malloc, &heapCell#1, sgn, a, heapCell#3, cffti, n2, w, i, pow, ggl, sin, d, first, z, x, free, aw, &heapCell#2, lj, heapCell#1, heapCell#0, b, log, n, mj2, cos, j, printf, heapCell#2, tgle, cfft2, step, ccopy]
    WRITE_S: [heapCell#2, seed, heapCell#1, heapCell#0, heapCell#3]*/
        /*READ_S: []
        WRITE_S: []*/
        n = 2 * n;
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre148;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre149;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre148 = n * sizeof(double);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre149 = malloc(_imopVarPre148);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        w = (double *) _imopVarPre149;
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre152;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre153;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre152 = 2 * n * sizeof(double);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre153 = malloc(_imopVarPre152);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        x = (double *) _imopVarPre153;
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre156;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre157;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre156 = 2 * n * sizeof(double);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre157 = malloc(_imopVarPre156);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        y = (double *) _imopVarPre157;
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre160;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre161;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre160 = 2 * n * sizeof(double);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre161 = malloc(_imopVarPre160);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        z = (double *) _imopVarPre161;
        /*READ_S: []
        WRITE_S: []*/
        first = 1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [c, mj, w, omp_get_wtime, fmod, i, &seed, seed, sqrt, &heapCell#1, sgn, a, heapCell#3, cffti, n2, w, i, pow, ggl, sin, d, first, z, x, aw, &heapCell#2, lj, heapCell#1, b, heapCell#0, log, n, mj2, cos, j, printf, heapCell#2, tgle, cfft2, step, ccopy]
        WRITE_S: [heapCell#2, seed, heapCell#1, heapCell#0, heapCell#3]*/
        for (icase = 0; icase < 2; icase++) {
        /*READ_S: [c, mj, w, omp_get_wtime, fmod, i, &seed, seed, sqrt, &heapCell#1, sgn, a, heapCell#3, cffti, n2, w, i, pow, ggl, sin, d, first, z, x, aw, &heapCell#2, lj, heapCell#1, b, heapCell#0, log, n, mj2, cos, j, printf, heapCell#2, tgle, cfft2, step, ccopy]
        WRITE_S: [heapCell#2, seed, heapCell#1, heapCell#0, heapCell#3]*/
            /*READ_S: [first]
            WRITE_S: []*/
            /*READ_S: [n, first, z, x, i, fmod, ggl, &seed, seed]
            WRITE_S: [seed, heapCell#1, heapCell#3]*/
            if (first) {
            /*READ_S: [fmod, ggl, &seed, seed]
            WRITE_S: [seed, heapCell#1, heapCell#3]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [fmod, ggl, &seed, seed]
                WRITE_S: [seed, heapCell#1, heapCell#3]*/
                for (i = 0; i < 2 * n; i = i + 2) {
                /*READ_S: [fmod, ggl, &seed, seed]
                WRITE_S: [seed, heapCell#1, heapCell#3]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    double *_imopVarPre163;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre164;
                    /*READ_S: [&seed]
                    WRITE_S: []*/
                    _imopVarPre163 = &seed;
                    /*READ_S: [ggl]
                    WRITE_S: []*/
                    _imopVarPre164 = ggl(_imopVarPre163);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    z0 = _imopVarPre164;
                    /*READ_S: []
                    WRITE_S: []*/
                    double *_imopVarPre166;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre167;
                    /*READ_S: [&seed]
                    WRITE_S: []*/
                    _imopVarPre166 = &seed;
                    /*READ_S: [ggl]
                    WRITE_S: []*/
                    _imopVarPre167 = ggl(_imopVarPre166);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    z1 = _imopVarPre167;
                    /*READ_S: []
                    WRITE_S: [heapCell#1]*/
                    x[i] = z0;
                    /*READ_S: []
                    WRITE_S: [heapCell#3]*/
                    z[i] = z0;
                    /*READ_S: []
                    WRITE_S: [heapCell#1]*/
                    x[i + 1] = z1;
                    /*READ_S: []
                    WRITE_S: [heapCell#3]*/
                    z[i + 1] = z1;
                }
            } else {
            /*READ_S: [n, z, x, i]
            WRITE_S: [heapCell#1, heapCell#3]*/
                /*READ_S: [n, z, x, i]
                WRITE_S: [heapCell#1, heapCell#3]*/
#pragma omp parallel shared(n, x, z) private(i, z0, z1)
                {
                /*READ_S: [n, z, x, i]
                WRITE_S: [heapCell#1, heapCell#3]*/
                    /*READ_S: [n, z, x, i]
                    WRITE_S: [heapCell#1, heapCell#3]*/
#pragma omp for nowait
                    /*READ_S: [i]
                    WRITE_S: []*/
                    /*READ_S: [n]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    for (i = 0; i < 2 * n; i = i + 2) {
                    /*READ_S: [z, x]
                    WRITE_S: [heapCell#1, heapCell#3]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        z0 = 0.0;
                        /*READ_S: []
                        WRITE_S: []*/
                        z1 = 0.0;
                        /*READ_S: [x]
                        WRITE_S: [heapCell#1]*/
                        x[i] = z0;
                        /*READ_S: [z]
                        WRITE_S: [heapCell#3]*/
                        z[i] = z0;
                        /*READ_S: [x]
                        WRITE_S: [heapCell#1]*/
                        x[i + 1] = z1;
                        /*READ_S: [z]
                        WRITE_S: [heapCell#3]*/
                        z[i + 1] = z1;
                    }
                }
            }
            /*READ_S: [cffti]
            WRITE_S: []*/
            cffti(n, w);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [first]
            WRITE_S: []*/
            /*READ_S: [c, mj, omp_get_wtime, sqrt, &heapCell#1, sgn, a, heapCell#3, w, pow, d, first, &heapCell#2, lj, heapCell#1, b, log, heapCell#0, mj2, j, printf, heapCell#2, tgle, cfft2, ccopy, step]
            WRITE_S: [heapCell#2, heapCell#1]*/
            if (first) {
            /*READ_S: [d, c, mj, &heapCell#2, lj, sqrt, heapCell#1, &heapCell#1, sgn, b, log, heapCell#0, a, heapCell#3, mj2, j, w, printf, heapCell#2, tgle, pow, cfft2, ccopy, step]
            WRITE_S: [heapCell#2, heapCell#1]*/
                /*READ_S: []
                WRITE_S: []*/
                sgn = +1.0;
                /*READ_S: [cfft2]
                WRITE_S: []*/
                cfft2(n, x, y, w, sgn);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                sgn = -1.0;
                /*READ_S: [cfft2]
                WRITE_S: []*/
                cfft2(n, y, x, w, sgn);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                fnm1 = 1.0 / (double) n;
                /*READ_S: []
                WRITE_S: []*/
                error = 0.0;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [pow, heapCell#1, heapCell#3]
                WRITE_S: []*/
                for (i = 0; i < 2 * n; i = i + 2) {
                /*READ_S: [pow, heapCell#1, heapCell#3]
                WRITE_S: []*/
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
                    double _imopVarPre175;
                    /*READ_S: [heapCell#1, heapCell#3]
                    WRITE_S: []*/
                    _imopVarPre172 = z[i] - fnm1 * x[i];
                    /*READ_S: [pow]
                    WRITE_S: []*/
                    _imopVarPre173 = pow(_imopVarPre172, 2);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [heapCell#1, heapCell#3]
                    WRITE_S: []*/
                    _imopVarPre174 = z[i + 1] - fnm1 * x[i + 1];
                    /*READ_S: [pow]
                    WRITE_S: []*/
                    _imopVarPre175 = pow(_imopVarPre174, 2);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    error = error + _imopVarPre173 + _imopVarPre175;
                }
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre177;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre178;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre177 = fnm1 * error;
                /*READ_S: [sqrt]
                WRITE_S: []*/
                _imopVarPre178 = sqrt(_imopVarPre177);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                error = _imopVarPre178;
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("  %12d  %8d  %12e", n, nits, error);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                first = 0;
            } else {
            /*READ_S: [d, c, mj, omp_get_wtime, &heapCell#2, lj, heapCell#1, &heapCell#1, sgn, b, log, heapCell#0, a, mj2, j, w, heapCell#2, printf, tgle, cfft2, ccopy, step]
            WRITE_S: [heapCell#2, heapCell#1]*/
                /*READ_S: [omp_get_wtime]
                WRITE_S: []*/
                wtime = omp_get_wtime();
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [d, c, mj, &heapCell#2, lj, heapCell#1, &heapCell#1, sgn, b, log, heapCell#0, a, mj2, j, w, heapCell#2, tgle, cfft2, ccopy, step]
                WRITE_S: [heapCell#2, heapCell#1]*/
                for (it = 0; it < nits; it++) {
                /*READ_S: [d, c, mj, &heapCell#2, lj, heapCell#1, &heapCell#1, sgn, b, log, heapCell#0, a, mj2, j, w, heapCell#2, tgle, cfft2, ccopy, step]
                WRITE_S: [heapCell#2, heapCell#1]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    sgn = +1.0;
                    /*READ_S: [cfft2]
                    WRITE_S: []*/
                    cfft2(n, x, y, w, sgn);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    sgn = -1.0;
                    /*READ_S: [cfft2]
                    WRITE_S: []*/
                    cfft2(n, y, x, w, sgn);
                    /*READ_S: []
                    WRITE_S: []*/
                }
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre180;
                /*READ_S: [omp_get_wtime]
                WRITE_S: []*/
                _imopVarPre180 = omp_get_wtime();
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                wtime = _imopVarPre180 - wtime;
                /*READ_S: []
                WRITE_S: []*/
                flops = 2.0 * (double) nits * (5.0 * (double) n * (double) ln2);
                /*READ_S: []
                WRITE_S: []*/
                mflops = flops / 1.0E+06 / wtime;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre182;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre182 = wtime / (double) (2 * nits);
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("  %12e  %12e  %12f\n", wtime, _imopVarPre182, mflops);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if ((ln2 % 4) == 0) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            nits = nits / 10;
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (nits < 1) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            nits = 1;
        }
        /*READ_S: [free, heapCell#0]
        WRITE_S: [heapCell#0]*/
        free(w);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [free, heapCell#1]
        WRITE_S: [heapCell#1]*/
        free(x);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [free, heapCell#2]
        WRITE_S: [heapCell#2]*/
        free(y);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [free, heapCell#3]
        WRITE_S: [heapCell#3]*/
        free(z);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("FFT_OPENMP:\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  Normal end of execution.\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timestamp]
    WRITE_S: []*/
    timestamp();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#2]
WRITE_S: [heapCell#1]*/
void ccopy(int n, double x[] , double y[]) {
/*READ_S: [heapCell#2]
WRITE_S: [heapCell#1]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#2]
    WRITE_S: [heapCell#1]*/
    for (i = 0; i < n; i++) {
    /*READ_S: [heapCell#2]
    WRITE_S: [heapCell#1]*/
        /*READ_S: [heapCell#2]
        WRITE_S: [heapCell#1]*/
        y[i * 2 + 0] = x[i * 2 + 0];
        /*READ_S: [heapCell#2]
        WRITE_S: [heapCell#1]*/
        y[i * 2 + 1] = x[i * 2 + 1];
    }
    /*READ_S: []
    WRITE_S: []*/
    return;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [d, c, mj, &heapCell#2, lj, &heapCell#1, heapCell#1, sgn, b, heapCell#0, log, a, mj2, j, w, heapCell#2, tgle, ccopy, step]
WRITE_S: [heapCell#2, heapCell#1]*/
void cfft2(int n, double x[] , double y[] , double w[] , double sgn) {
/*READ_S: [d, c, mj, &heapCell#2, lj, &heapCell#1, heapCell#1, sgn, b, heapCell#0, log, a, mj2, j, w, heapCell#2, tgle, ccopy, step]
WRITE_S: [heapCell#2, heapCell#1]*/
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int m;
    /*READ_S: []
    WRITE_S: []*/
    int mj;
    /*READ_S: []
    WRITE_S: []*/
    int tgle;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre192;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre193;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre194;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre192 = (double) n;
    /*READ_S: [log]
    WRITE_S: []*/
    _imopVarPre193 = log(_imopVarPre192);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [log]
    WRITE_S: []*/
    _imopVarPre194 = log(1.99);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    m = (int) (_imopVarPre193 / _imopVarPre194);
    /*READ_S: []
    WRITE_S: []*/
    mj = 1;
    /*READ_S: []
    WRITE_S: []*/
    tgle = 1;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre199;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre200;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre201;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre202;
    /*READ_S: [&heapCell#2, &heapCell#1]
    WRITE_S: []*/
    _imopVarPre199 = &y[mj * 2 + 0];
    /*READ_S: [&heapCell#2, &heapCell#1]
    WRITE_S: []*/
    _imopVarPre200 = &y[0 * 2 + 0];
    /*READ_S: [&heapCell#2, &heapCell#1]
    WRITE_S: []*/
    _imopVarPre201 = &x[(n / 2) * 2 + 0];
    /*READ_S: [&heapCell#2, &heapCell#1]
    WRITE_S: []*/
    _imopVarPre202 = &x[0 * 2 + 0];
    /*READ_S: [step]
    WRITE_S: []*/
    step(n, mj, _imopVarPre202, _imopVarPre201, _imopVarPre200, _imopVarPre199, w, sgn);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (n == 2) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        return;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [d, c, mj, &heapCell#2, lj, &heapCell#1, heapCell#1, sgn, b, heapCell#0, a, mj2, j, w, heapCell#2, tgle, step]
    WRITE_S: [heapCell#2, heapCell#1]*/
    for (j = 0; j < m - 2; j++) {
    /*READ_S: [d, c, mj, &heapCell#2, lj, &heapCell#1, heapCell#1, sgn, b, heapCell#0, a, mj2, j, w, heapCell#2, tgle, step]
    WRITE_S: [heapCell#2, heapCell#1]*/
        /*READ_S: []
        WRITE_S: []*/
        mj = mj * 2;
        /*READ_S: [tgle]
        WRITE_S: []*/
        /*READ_S: [d, c, mj, &heapCell#2, lj, heapCell#1, &heapCell#1, sgn, b, heapCell#0, a, mj2, j, w, heapCell#2, tgle, step]
        WRITE_S: [heapCell#2, heapCell#1]*/
        if (tgle) {
        /*READ_S: [d, c, mj, &heapCell#2, lj, heapCell#1, &heapCell#1, sgn, b, heapCell#0, a, mj2, j, w, heapCell#2, step]
        WRITE_S: [heapCell#2, heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre207;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre208;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre209;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre210;
            /*READ_S: [&heapCell#1]
            WRITE_S: []*/
            _imopVarPre207 = &x[mj * 2 + 0];
            /*READ_S: [&heapCell#1]
            WRITE_S: []*/
            _imopVarPre208 = &x[0 * 2 + 0];
            /*READ_S: [&heapCell#2]
            WRITE_S: []*/
            _imopVarPre209 = &y[(n / 2) * 2 + 0];
            /*READ_S: [&heapCell#2]
            WRITE_S: []*/
            _imopVarPre210 = &y[0 * 2 + 0];
            /*READ_S: [step]
            WRITE_S: []*/
            step(n, mj, _imopVarPre210, _imopVarPre209, _imopVarPre208, _imopVarPre207, w, sgn);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            tgle = 0;
        } else {
        /*READ_S: [d, c, mj, &heapCell#2, lj, heapCell#1, &heapCell#1, sgn, b, heapCell#0, a, mj2, j, w, heapCell#2, step]
        WRITE_S: [heapCell#2, heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre215;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre216;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre217;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre218;
            /*READ_S: [&heapCell#2]
            WRITE_S: []*/
            _imopVarPre215 = &y[mj * 2 + 0];
            /*READ_S: [&heapCell#2]
            WRITE_S: []*/
            _imopVarPre216 = &y[0 * 2 + 0];
            /*READ_S: [&heapCell#1]
            WRITE_S: []*/
            _imopVarPre217 = &x[(n / 2) * 2 + 0];
            /*READ_S: [&heapCell#1]
            WRITE_S: []*/
            _imopVarPre218 = &x[0 * 2 + 0];
            /*READ_S: [step]
            WRITE_S: []*/
            step(n, mj, _imopVarPre218, _imopVarPre217, _imopVarPre216, _imopVarPre215, w, sgn);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            tgle = 1;
        }
    }
    /*READ_S: [tgle]
    WRITE_S: []*/
    /*READ_S: [heapCell#2, tgle, ccopy]
    WRITE_S: [heapCell#1]*/
    if (tgle) {
    /*READ_S: [heapCell#2, ccopy]
    WRITE_S: [heapCell#1]*/
        /*READ_S: [ccopy]
        WRITE_S: []*/
        ccopy(n, y, x);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    mj = n / 2;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre223;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre224;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre225;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre226;
    /*READ_S: [&heapCell#2]
    WRITE_S: []*/
    _imopVarPre223 = &y[mj * 2 + 0];
    /*READ_S: [&heapCell#2]
    WRITE_S: []*/
    _imopVarPre224 = &y[0 * 2 + 0];
    /*READ_S: [&heapCell#1]
    WRITE_S: []*/
    _imopVarPre225 = &x[(n / 2) * 2 + 0];
    /*READ_S: [&heapCell#1]
    WRITE_S: []*/
    _imopVarPre226 = &x[0 * 2 + 0];
    /*READ_S: [step]
    WRITE_S: []*/
    step(n, mj, _imopVarPre226, _imopVarPre225, _imopVarPre224, _imopVarPre223, w, sgn);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [cos, n2, w, aw, i, sin]
WRITE_S: [heapCell#0]*/
void cffti(int n, double w[]) {
/*READ_S: [cos, n2, w, aw, i, sin]
WRITE_S: [heapCell#0]*/
    /*READ_S: []
    WRITE_S: []*/
    double arg;
    /*READ_S: []
    WRITE_S: []*/
    double aw;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int n2;
    /*READ_S: []
    WRITE_S: []*/
    const double pi = 3.141592653589793;
    /*READ_S: []
    WRITE_S: []*/
    n2 = n / 2;
    /*READ_S: []
    WRITE_S: []*/
    aw = 2.0 * pi / ((double) n);
    /*READ_S: [cos, n2, w, aw, i, sin]
    WRITE_S: [heapCell#0]*/
#pragma omp parallel shared(aw, n, w) private(arg, i)
    {
    /*READ_S: [cos, n2, w, aw, i, sin]
    WRITE_S: [heapCell#0]*/
        /*READ_S: [cos, n2, w, aw, i, sin]
        WRITE_S: [heapCell#0]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [n2]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < n2; i++) {
        /*READ_S: [cos, w, aw, sin]
        WRITE_S: [heapCell#0]*/
            /*READ_S: [aw]
            WRITE_S: []*/
            arg = aw * ((double) i);
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre227;
            /*READ_S: [cos]
            WRITE_S: []*/
            _imopVarPre227 = cos(arg);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [w]
            WRITE_S: [heapCell#0]*/
            w[i * 2 + 0] = _imopVarPre227;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre228;
            /*READ_S: [sin]
            WRITE_S: []*/
            _imopVarPre228 = sin(arg);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [w]
            WRITE_S: [heapCell#0]*/
            w[i * 2 + 1] = _imopVarPre228;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    return;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [fmod, seed]
WRITE_S: [seed]*/
double ggl(double *seed) {
/*READ_S: [fmod, seed]
WRITE_S: [seed]*/
    /*READ_S: []
    WRITE_S: []*/
    double d2 = 0.2147483647e10;
    /*READ_S: []
    WRITE_S: []*/
    double t;
    /*READ_S: []
    WRITE_S: []*/
    double value;
    /*READ_S: [seed]
    WRITE_S: []*/
    t = (double) *seed;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre230;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre231;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre230 = 16807.0 * t;
    /*READ_S: [fmod]
    WRITE_S: []*/
    _imopVarPre231 = fmod(_imopVarPre230, d2);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    t = _imopVarPre231;
    /*READ_S: []
    WRITE_S: [seed]*/
    *seed = (double) t;
    /*READ_S: []
    WRITE_S: []*/
    value = (double) ((t - 1.0) / (d2 - 1.0));
    /*READ_S: []
    WRITE_S: []*/
    return value;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [d, c, mj, lj, heapCell#1, sgn, b, heapCell#0, a, mj2, j, w, heapCell#2]
WRITE_S: [heapCell#2, heapCell#1]*/
void step(int n, int mj , double a[] , double b[] , double c[] , double d[] , double w[] , double sgn) {
/*READ_S: [d, c, mj, lj, heapCell#1, sgn, b, heapCell#0, a, mj2, j, w, heapCell#2]
WRITE_S: [heapCell#2, heapCell#1]*/
    /*READ_S: []
    WRITE_S: []*/
    double ambr;
    /*READ_S: []
    WRITE_S: []*/
    double ambu;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int ja;
    /*READ_S: []
    WRITE_S: []*/
    int jb;
    /*READ_S: []
    WRITE_S: []*/
    int jc;
    /*READ_S: []
    WRITE_S: []*/
    int jd;
    /*READ_S: []
    WRITE_S: []*/
    int jw;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int lj;
    /*READ_S: []
    WRITE_S: []*/
    int mj2;
    /*READ_S: []
    WRITE_S: []*/
    double wjw[2];
    /*READ_S: []
    WRITE_S: []*/
    mj2 = 2 * mj;
    /*READ_S: []
    WRITE_S: []*/
    lj = n / mj2;
    /*READ_S: [d, c, mj, lj, sgn, heapCell#1, b, heapCell#0, a, mj2, j, w, heapCell#2]
    WRITE_S: [heapCell#2, heapCell#1]*/
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w) private(ambr, ambu, j, ja, jb, jc, jd, jw, k, wjw)
    {
    /*READ_S: [d, c, mj, lj, sgn, heapCell#1, b, heapCell#0, a, mj2, j, w, heapCell#2]
    WRITE_S: [heapCell#2, heapCell#1]*/
        /*READ_S: [d, c, mj, lj, sgn, heapCell#1, b, heapCell#0, a, mj2, j, w, heapCell#2]
        WRITE_S: [heapCell#2, heapCell#1]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [lj]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < lj; j++) {
        /*READ_S: [mj2, d, c, w, mj, heapCell#2, sgn, heapCell#1, b, heapCell#0, a]
        WRITE_S: [heapCell#2, heapCell#1]*/
            /*READ_S: [mj]
            WRITE_S: []*/
            jw = j * mj;
            /*READ_S: []
            WRITE_S: []*/
            ja = jw;
            /*READ_S: []
            WRITE_S: []*/
            jb = ja;
            /*READ_S: [mj2]
            WRITE_S: []*/
            jc = j * mj2;
            /*READ_S: []
            WRITE_S: []*/
            jd = jc;
            /*READ_S: [w, heapCell#0]
            WRITE_S: []*/
            wjw[0] = w[jw * 2 + 0];
            /*READ_S: [w, heapCell#0]
            WRITE_S: []*/
            wjw[1] = w[jw * 2 + 1];
            /*READ_S: [sgn]
            WRITE_S: []*/
            /*READ_S: [sgn]
            WRITE_S: []*/
            if (sgn < 0.0) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                wjw[1] = -wjw[1];
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [mj]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [d, c, mj, heapCell#2, heapCell#1, b, a]
            WRITE_S: [heapCell#2, heapCell#1]*/
            for (k = 0; k < mj; k++) {
            /*READ_S: [d, c, heapCell#2, heapCell#1, b, a]
            WRITE_S: [heapCell#2, heapCell#1]*/
                /*READ_S: [c, heapCell#2, heapCell#1, b, a]
                WRITE_S: [heapCell#2, heapCell#1]*/
                c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                /*READ_S: [c, heapCell#2, heapCell#1, b, a]
                WRITE_S: [heapCell#2, heapCell#1]*/
                c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                /*READ_S: [heapCell#2, heapCell#1, b, a]
                WRITE_S: []*/
                ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                /*READ_S: [heapCell#2, heapCell#1, b, a]
                WRITE_S: []*/
                ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                /*READ_S: [d]
                WRITE_S: [heapCell#2, heapCell#1]*/
                d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                /*READ_S: [d]
                WRITE_S: [heapCell#2, heapCell#1]*/
                d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    return;
}
/*READ_S: [time, printf, strftime, localtime, time_buffer.f, time_buffer]
WRITE_S: [time_buffer.f, time_buffer]*/
void timestamp() {
/*READ_S: [time, printf, strftime, localtime, time_buffer.f, time_buffer]
WRITE_S: [time_buffer.f, time_buffer]*/
    /*READ_S: []
    WRITE_S: [time_buffer.f, time_buffer]*/
    static char time_buffer[40];
    /*READ_S: []
    WRITE_S: []*/
    const struct tm *tm;
    /*READ_S: []
    WRITE_S: []*/
    size_t len;
    /*READ_S: []
    WRITE_S: []*/
    time_t now;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre233;
    /*READ_S: []
    WRITE_S: []*/
    signed long int _imopVarPre234;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre233 = ((void *) 0);
    /*READ_S: [time]
    WRITE_S: []*/
    _imopVarPre234 = time(_imopVarPre233);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    now = _imopVarPre234;
    /*READ_S: []
    WRITE_S: []*/
    signed long int *_imopVarPre236;
    /*READ_S: []
    WRITE_S: []*/
    struct tm *_imopVarPre237;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre236 = &now;
    /*READ_S: [localtime]
    WRITE_S: []*/
    _imopVarPre237 = localtime(_imopVarPre236);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    tm = _imopVarPre237;
    /*READ_S: [strftime, time_buffer.f, time_buffer]
    WRITE_S: [time_buffer.f]*/
    len = strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, time_buffer.f, time_buffer]
    WRITE_S: [time_buffer.f]*/
    printf("%s\n", time_buffer);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return;
}
