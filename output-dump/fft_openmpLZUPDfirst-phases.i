
/*[]*/
typedef long unsigned int __darwin_size_t;
/*[]*/
typedef long __darwin_time_t;
/*[]*/
typedef __darwin_size_t size_t;
/*[]*/
void free(void *);
/*[]*/
void *malloc(size_t __size);
/*[]*/
struct __sFILEX ;
/*[]*/
int printf(const char *, ...);
/*[]*/
extern double cos(double );
/*[]*/
extern double sin(double );
/*[]*/
extern double log(double );
/*[]*/
extern double pow(double , double );
/*[]*/
extern double sqrt(double );
/*[]*/
extern double fmod(double , double );
/*[]*/
typedef __darwin_time_t time_t;
/*[]*/
struct tm *localtime(const time_t *);
/*[]*/
size_t strftime(char *, size_t  , const char * , const struct tm *);
/*[]*/
time_t time(time_t *);
/*[]*/
extern int omp_get_max_threads(void );
/*[]*/
extern int omp_get_num_procs(void );
/*[]*/
extern double omp_get_wtime(void );
/*[]*/
int main(void );
/*[]*/
void ccopy(int n, double x[] , double y[]);
/*[]*/
void cfft2(int n, double x[] , double y[] , double w[] , double sgn);
/*[]*/
void cffti(int n, double w[]);
/*[]*/
double ggl(double *ds);
/*[]*/
void step(int n, int mj , double a[] , double b[] , double c[] , double d[] , double w[] , double sgn);
/*[]*/
void timestamp(void );
/*[]*/
int main() {
/*[]*/
    /*[]*/
    double error;
    /*[]*/
    int first;
    /*[]*/
    double flops;
    /*[]*/
    double fnm1;
    /*[]*/
    int i;
    /*[]*/
    int icase;
    /*[]*/
    int it;
    /*[]*/
    int ln2;
    /*[]*/
    int ln2_max = 25;
    /*[]*/
    double mflops;
    /*[]*/
    int n;
    /*[]*/
    int nits = 10000;
    /*[]*/
    static double seed;
    /*[]*/
    double sgn;
    /*[]*/
    double *w;
    /*[]*/
    double wtime;
    /*[]*/
    double *x;
    /*[]*/
    double *y;
    /*[]*/
    double *z;
    /*[]*/
    double z0;
    /*[]*/
    double z1;
    /*[]*/
    timestamp();
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("FFT_OPENMP\n");
    /*[]*/
    /*[]*/
    printf("  C/OpenMP version\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  Demonstrate an implementation of the Fast Fourier Transform\n");
    /*[]*/
    /*[]*/
    printf("  of a complex data vector, using OpenMP for parallel execution.\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    int _imopVarPre143;
    /*[]*/
    _imopVarPre143 = omp_get_num_procs();
    /*[]*/
    /*[]*/
    printf("  Number of processors available = %d\n", _imopVarPre143);
    /*[]*/
    /*[]*/
    int _imopVarPre145;
    /*[]*/
    _imopVarPre145 = omp_get_max_threads();
    /*[]*/
    /*[]*/
    printf("  Number of threads =              %d\n", _imopVarPre145);
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  Accuracy check:\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("    FFT ( FFT ( X(1:N) ) ) == N * X(1:N)\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("             N      NITS    Error         Time          Time/Call     MFLOPS\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    seed = 331.0;
    /*[]*/
    n = 1;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (ln2 = 1; ln2 <= ln2_max; ln2++) {
    /*[]*/
        /*[]*/
        n = 2 * n;
        /*[]*/
        unsigned long int _imopVarPre148;
        /*[]*/
        void *_imopVarPre149;
        /*[]*/
        _imopVarPre148 = n * sizeof(double);
        /*[]*/
        _imopVarPre149 = malloc(_imopVarPre148);
        /*[]*/
        /*[]*/
        w = (double *) _imopVarPre149;
        /*[]*/
        unsigned long int _imopVarPre152;
        /*[]*/
        void *_imopVarPre153;
        /*[]*/
        _imopVarPre152 = 2 * n * sizeof(double);
        /*[]*/
        _imopVarPre153 = malloc(_imopVarPre152);
        /*[]*/
        /*[]*/
        x = (double *) _imopVarPre153;
        /*[]*/
        unsigned long int _imopVarPre156;
        /*[]*/
        void *_imopVarPre157;
        /*[]*/
        _imopVarPre156 = 2 * n * sizeof(double);
        /*[]*/
        _imopVarPre157 = malloc(_imopVarPre156);
        /*[]*/
        /*[]*/
        y = (double *) _imopVarPre157;
        /*[]*/
        unsigned long int _imopVarPre160;
        /*[]*/
        void *_imopVarPre161;
        /*[]*/
        _imopVarPre160 = 2 * n * sizeof(double);
        /*[]*/
        _imopVarPre161 = malloc(_imopVarPre160);
        /*[]*/
        /*[]*/
        z = (double *) _imopVarPre161;
        /*[]*/
        first = 1;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (icase = 0; icase < 2; icase++) {
        /*[]*/
            /*[]*/
            /*[]*/
            if (first) {
            /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (i = 0; i < 2 * n; i = i + 2) {
                /*[]*/
                    /*[]*/
                    double *_imopVarPre163;
                    /*[]*/
                    double _imopVarPre164;
                    /*[]*/
                    _imopVarPre163 = &seed;
                    /*[]*/
                    _imopVarPre164 = ggl(_imopVarPre163);
                    /*[]*/
                    /*[]*/
                    z0 = _imopVarPre164;
                    /*[]*/
                    double *_imopVarPre166;
                    /*[]*/
                    double _imopVarPre167;
                    /*[]*/
                    _imopVarPre166 = &seed;
                    /*[]*/
                    _imopVarPre167 = ggl(_imopVarPre166);
                    /*[]*/
                    /*[]*/
                    z1 = _imopVarPre167;
                    /*[]*/
                    x[i] = z0;
                    /*[]*/
                    z[i] = z0;
                    /*[]*/
                    x[i + 1] = z1;
                    /*[]*/
                    z[i + 1] = z1;
                }
            } else {
            /*[]*/
                /*[1]*/
#pragma omp parallel shared(n, x, z) private(i, z0, z1)
                {
                /*[1]*/
                    /*[1]*/
#pragma omp for nowait
                    /*[1]*/
                    /*[1]*/
                    /*[1]*/
                    for (i = 0; i < 2 * n; i = i + 2) {
                    /*[1]*/
                        /*[1]*/
                        z0 = 0.0;
                        /*[1]*/
                        z1 = 0.0;
                        /*[1]*/
                        x[i] = z0;
                        /*[1]*/
                        z[i] = z0;
                        /*[1]*/
                        x[i + 1] = z1;
                        /*[1]*/
                        z[i + 1] = z1;
                    }
                }
            }
            /*[]*/
            cffti(n, w);
            /*[]*/
            /*[]*/
            /*[]*/
            if (first) {
            /*[]*/
                /*[]*/
                sgn = +1.0;
                /*[]*/
                cfft2(n, x, y, w, sgn);
                /*[]*/
                /*[]*/
                sgn = -1.0;
                /*[]*/
                cfft2(n, y, x, w, sgn);
                /*[]*/
                /*[]*/
                fnm1 = 1.0 / (double) n;
                /*[]*/
                error = 0.0;
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (i = 0; i < 2 * n; i = i + 2) {
                /*[]*/
                    /*[]*/
                    double _imopVarPre172;
                    /*[]*/
                    double _imopVarPre173;
                    /*[]*/
                    double _imopVarPre174;
                    /*[]*/
                    double _imopVarPre175;
                    /*[]*/
                    _imopVarPre172 = z[i] - fnm1 * x[i];
                    /*[]*/
                    _imopVarPre173 = pow(_imopVarPre172, 2);
                    /*[]*/
                    /*[]*/
                    _imopVarPre174 = z[i + 1] - fnm1 * x[i + 1];
                    /*[]*/
                    _imopVarPre175 = pow(_imopVarPre174, 2);
                    /*[]*/
                    /*[]*/
                    error = error + _imopVarPre173 + _imopVarPre175;
                }
                /*[]*/
                double _imopVarPre177;
                /*[]*/
                double _imopVarPre178;
                /*[]*/
                _imopVarPre177 = fnm1 * error;
                /*[]*/
                _imopVarPre178 = sqrt(_imopVarPre177);
                /*[]*/
                /*[]*/
                error = _imopVarPre178;
                /*[]*/
                printf("  %12d  %8d  %12e", n, nits, error);
                /*[]*/
                /*[]*/
                first = 0;
            } else {
            /*[]*/
                /*[]*/
                wtime = omp_get_wtime();
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (it = 0; it < nits; it++) {
                /*[]*/
                    /*[]*/
                    sgn = +1.0;
                    /*[]*/
                    cfft2(n, x, y, w, sgn);
                    /*[]*/
                    /*[]*/
                    sgn = -1.0;
                    /*[]*/
                    cfft2(n, y, x, w, sgn);
                    /*[]*/
                }
                /*[]*/
                double _imopVarPre180;
                /*[]*/
                _imopVarPre180 = omp_get_wtime();
                /*[]*/
                /*[]*/
                wtime = _imopVarPre180 - wtime;
                /*[]*/
                flops = 2.0 * (double) nits * (5.0 * (double) n * (double) ln2);
                /*[]*/
                mflops = flops / 1.0E+06 / wtime;
                /*[]*/
                double _imopVarPre182;
                /*[]*/
                _imopVarPre182 = wtime / (double) (2 * nits);
                /*[]*/
                printf("  %12e  %12e  %12f\n", wtime, _imopVarPre182, mflops);
                /*[]*/
            }
        }
        /*[]*/
        /*[]*/
        if ((ln2 % 4) == 0) {
        /*[]*/
            /*[]*/
            nits = nits / 10;
        }
        /*[]*/
        /*[]*/
        if (nits < 1) {
        /*[]*/
            /*[]*/
            nits = 1;
        }
        /*[]*/
        free(w);
        /*[]*/
        /*[]*/
        free(x);
        /*[]*/
        /*[]*/
        free(y);
        /*[]*/
        /*[]*/
        free(z);
        /*[]*/
    }
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("FFT_OPENMP:\n");
    /*[]*/
    /*[]*/
    printf("  Normal end of execution.\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    timestamp();
    /*[]*/
    /*[]*/
    return 0;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void ccopy(int n, double x[] , double y[]) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < n; i++) {
    /*[]*/
        /*[]*/
        y[i * 2 + 0] = x[i * 2 + 0];
        /*[]*/
        y[i * 2 + 1] = x[i * 2 + 1];
    }
    /*[]*/
    return;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void cfft2(int n, double x[] , double y[] , double w[] , double sgn) {
/*[]*/
    /*[]*/
    int j;
    /*[]*/
    int m;
    /*[]*/
    int mj;
    /*[]*/
    int tgle;
    /*[]*/
    double _imopVarPre192;
    /*[]*/
    double _imopVarPre193;
    /*[]*/
    double _imopVarPre194;
    /*[]*/
    _imopVarPre192 = (double) n;
    /*[]*/
    _imopVarPre193 = log(_imopVarPre192);
    /*[]*/
    /*[]*/
    _imopVarPre194 = log(1.99);
    /*[]*/
    /*[]*/
    m = (int) (_imopVarPre193 / _imopVarPre194);
    /*[]*/
    mj = 1;
    /*[]*/
    tgle = 1;
    /*[]*/
    double *_imopVarPre199;
    /*[]*/
    double *_imopVarPre200;
    /*[]*/
    double *_imopVarPre201;
    /*[]*/
    double *_imopVarPre202;
    /*[]*/
    _imopVarPre199 = &y[mj * 2 + 0];
    /*[]*/
    _imopVarPre200 = &y[0 * 2 + 0];
    /*[]*/
    _imopVarPre201 = &x[(n / 2) * 2 + 0];
    /*[]*/
    _imopVarPre202 = &x[0 * 2 + 0];
    /*[]*/
    step(n, mj, _imopVarPre202, _imopVarPre201, _imopVarPre200, _imopVarPre199, w, sgn);
    /*[]*/
    /*[]*/
    /*[]*/
    if (n == 2) {
    /*[]*/
        /*[]*/
        return;
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 0; j < m - 2; j++) {
    /*[]*/
        /*[]*/
        mj = mj * 2;
        /*[]*/
        /*[]*/
        if (tgle) {
        /*[]*/
            /*[]*/
            double *_imopVarPre207;
            /*[]*/
            double *_imopVarPre208;
            /*[]*/
            double *_imopVarPre209;
            /*[]*/
            double *_imopVarPre210;
            /*[]*/
            _imopVarPre207 = &x[mj * 2 + 0];
            /*[]*/
            _imopVarPre208 = &x[0 * 2 + 0];
            /*[]*/
            _imopVarPre209 = &y[(n / 2) * 2 + 0];
            /*[]*/
            _imopVarPre210 = &y[0 * 2 + 0];
            /*[]*/
            step(n, mj, _imopVarPre210, _imopVarPre209, _imopVarPre208, _imopVarPre207, w, sgn);
            /*[]*/
            /*[]*/
            tgle = 0;
        } else {
        /*[]*/
            /*[]*/
            double *_imopVarPre215;
            /*[]*/
            double *_imopVarPre216;
            /*[]*/
            double *_imopVarPre217;
            /*[]*/
            double *_imopVarPre218;
            /*[]*/
            _imopVarPre215 = &y[mj * 2 + 0];
            /*[]*/
            _imopVarPre216 = &y[0 * 2 + 0];
            /*[]*/
            _imopVarPre217 = &x[(n / 2) * 2 + 0];
            /*[]*/
            _imopVarPre218 = &x[0 * 2 + 0];
            /*[]*/
            step(n, mj, _imopVarPre218, _imopVarPre217, _imopVarPre216, _imopVarPre215, w, sgn);
            /*[]*/
            /*[]*/
            tgle = 1;
        }
    }
    /*[]*/
    /*[]*/
    if (tgle) {
    /*[]*/
        /*[]*/
        ccopy(n, y, x);
        /*[]*/
    }
    /*[]*/
    mj = n / 2;
    /*[]*/
    double *_imopVarPre223;
    /*[]*/
    double *_imopVarPre224;
    /*[]*/
    double *_imopVarPre225;
    /*[]*/
    double *_imopVarPre226;
    /*[]*/
    _imopVarPre223 = &y[mj * 2 + 0];
    /*[]*/
    _imopVarPre224 = &y[0 * 2 + 0];
    /*[]*/
    _imopVarPre225 = &x[(n / 2) * 2 + 0];
    /*[]*/
    _imopVarPre226 = &x[0 * 2 + 0];
    /*[]*/
    step(n, mj, _imopVarPre226, _imopVarPre225, _imopVarPre224, _imopVarPre223, w, sgn);
    /*[]*/
    /*[]*/
    return;
}
/*[]*/
/*[]*/
/*[]*/
void cffti(int n, double w[]) {
/*[]*/
    /*[]*/
    double arg;
    /*[]*/
    double aw;
    /*[]*/
    int i;
    /*[]*/
    int n2;
    /*[]*/
    const double pi = 3.141592653589793;
    /*[]*/
    n2 = n / 2;
    /*[]*/
    aw = 2.0 * pi / ((double) n);
    /*[2]*/
#pragma omp parallel shared(aw, n, w) private(arg, i)
    {
    /*[2]*/
        /*[2]*/
#pragma omp for nowait
        /*[2]*/
        /*[2]*/
        /*[2]*/
        for (i = 0; i < n2; i++) {
        /*[2]*/
            /*[2]*/
            arg = aw * ((double) i);
            /*[2]*/
            double _imopVarPre227;
            /*[2]*/
            _imopVarPre227 = cos(arg);
            /*[2]*/
            /*[2]*/
            w[i * 2 + 0] = _imopVarPre227;
            /*[2]*/
            double _imopVarPre228;
            /*[2]*/
            _imopVarPre228 = sin(arg);
            /*[2]*/
            /*[2]*/
            w[i * 2 + 1] = _imopVarPre228;
        }
    }
    /*[]*/
    return;
}
/*[]*/
/*[]*/
double ggl(double *seed) {
/*[]*/
    /*[]*/
    double d2 = 0.2147483647e10;
    /*[]*/
    double t;
    /*[]*/
    double value;
    /*[]*/
    t = (double) *seed;
    /*[]*/
    double _imopVarPre230;
    /*[]*/
    double _imopVarPre231;
    /*[]*/
    _imopVarPre230 = 16807.0 * t;
    /*[]*/
    _imopVarPre231 = fmod(_imopVarPre230, d2);
    /*[]*/
    /*[]*/
    t = _imopVarPre231;
    /*[]*/
    *seed = (double) t;
    /*[]*/
    value = (double) ((t - 1.0) / (d2 - 1.0));
    /*[]*/
    return value;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void step(int n, int mj , double a[] , double b[] , double c[] , double d[] , double w[] , double sgn) {
/*[]*/
    /*[]*/
    double ambr;
    /*[]*/
    double ambu;
    /*[]*/
    int j;
    /*[]*/
    int ja;
    /*[]*/
    int jb;
    /*[]*/
    int jc;
    /*[]*/
    int jd;
    /*[]*/
    int jw;
    /*[]*/
    int k;
    /*[]*/
    int lj;
    /*[]*/
    int mj2;
    /*[]*/
    double wjw[2];
    /*[]*/
    mj2 = 2 * mj;
    /*[]*/
    lj = n / mj2;
    /*[3]*/
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w) private(ambr, ambu, j, ja, jb, jc, jd, jw, k, wjw)
    {
    /*[3]*/
        /*[3]*/
#pragma omp for nowait
        /*[3]*/
        /*[3]*/
        /*[3]*/
        for (j = 0; j < lj; j++) {
        /*[3]*/
            /*[3]*/
            jw = j * mj;
            /*[3]*/
            ja = jw;
            /*[3]*/
            jb = ja;
            /*[3]*/
            jc = j * mj2;
            /*[3]*/
            jd = jc;
            /*[3]*/
            wjw[0] = w[jw * 2 + 0];
            /*[3]*/
            wjw[1] = w[jw * 2 + 1];
            /*[3]*/
            /*[3]*/
            if (sgn < 0.0) {
            /*[3]*/
                /*[3]*/
                wjw[1] = -wjw[1];
            }
            /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (k = 0; k < mj; k++) {
            /*[3]*/
                /*[3]*/
                c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                /*[3]*/
                c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                /*[3]*/
                ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                /*[3]*/
                ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                /*[3]*/
                d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                /*[3]*/
                d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
            }
        }
    }
    /*[]*/
    return;
}
/*[]*/
void timestamp() {
/*[]*/
    /*[]*/
    static char time_buffer[40];
    /*[]*/
    const struct tm *tm;
    /*[]*/
    size_t len;
    /*[]*/
    time_t now;
    /*[]*/
    void *_imopVarPre233;
    /*[]*/
    signed long int _imopVarPre234;
    /*[]*/
    _imopVarPre233 = ((void *) 0);
    /*[]*/
    _imopVarPre234 = time(_imopVarPre233);
    /*[]*/
    /*[]*/
    now = _imopVarPre234;
    /*[]*/
    signed long int *_imopVarPre236;
    /*[]*/
    struct tm *_imopVarPre237;
    /*[]*/
    _imopVarPre236 = &now;
    /*[]*/
    _imopVarPre237 = localtime(_imopVarPre236);
    /*[]*/
    /*[]*/
    tm = _imopVarPre237;
    /*[]*/
    len = strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    /*[]*/
    /*[]*/
    printf("%s\n", time_buffer);
    /*[]*/
    /*[]*/
    return;
}
