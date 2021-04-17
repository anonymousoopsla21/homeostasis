typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __darwin_size_t size_t;
void free(void *);
void *malloc(size_t __size);
struct __sFILEX ;
int printf(const char *, ...);
extern double cos(double );
extern double sin(double );
extern double log(double );
extern double pow(double , double );
extern double sqrt(double );
extern double fmod(double , double );
typedef __darwin_time_t time_t;
struct tm *localtime(const time_t *);
size_t strftime(char *, size_t  , const char * , const struct tm *);
time_t time(time_t *);
extern int omp_get_max_threads(void );
extern int omp_get_num_procs(void );
extern double omp_get_wtime(void );
int main(void );
void ccopy(int n, double x[] , double y[]);
double ggl(double *ds);
void timestamp(void );
int main() {
    double error;
    int first;
    double flops;
    double fnm1;
    int i;
    int icase;
    int it;
    int ln2;
    int ln2_max = 25;
    double mflops;
    int n;
    int nits = 10000;
    static double seed;
    double sgn;
    double *w;
    double wtime;
    double *x;
    double *y;
    double *z;
    double z0;
    double z1;
    timestamp();
    printf("\n");
    printf("FFT_OPENMP\n");
    printf("  C/OpenMP version\n");
    printf("\n");
    printf("  Demonstrate an implementation of the Fast Fourier Transform\n");
    printf("  of a complex data vector, using OpenMP for parallel execution.\n");
    printf("\n");
    int _imopVarPre143;
    _imopVarPre143 = omp_get_num_procs();
    printf("  Number of processors available = %d\n", _imopVarPre143);
    int _imopVarPre145;
    _imopVarPre145 = omp_get_max_threads();
    printf("  Number of threads =              %d\n", _imopVarPre145);
    printf("\n");
    printf("  Accuracy check:\n");
    printf("\n");
    printf("    FFT ( FFT ( X(1:N) ) ) == N * X(1:N)\n");
    printf("\n");
    printf("             N      NITS    Error         Time          Time/Call     MFLOPS\n");
    printf("\n");
    seed = 331.0;
    n = 1;
    for (ln2 = 1; ln2 <= ln2_max; ln2++) {
        n = 2 * n;
        unsigned long int _imopVarPre148;
        void *_imopVarPre149;
        _imopVarPre148 = n * sizeof(double);
        _imopVarPre149 = malloc(_imopVarPre148);
        w = (double *) _imopVarPre149;
        unsigned long int _imopVarPre152;
        void *_imopVarPre153;
        _imopVarPre152 = 2 * n * sizeof(double);
        _imopVarPre153 = malloc(_imopVarPre152);
        x = (double *) _imopVarPre153;
        unsigned long int _imopVarPre156;
        void *_imopVarPre157;
        _imopVarPre156 = 2 * n * sizeof(double);
        _imopVarPre157 = malloc(_imopVarPre156);
        y = (double *) _imopVarPre157;
        unsigned long int _imopVarPre160;
        void *_imopVarPre161;
        _imopVarPre160 = 2 * n * sizeof(double);
        _imopVarPre161 = malloc(_imopVarPre160);
        z = (double *) _imopVarPre161;
        first = 1;
        for (icase = 0; icase < 2; icase++) {
            int n2;
            double aw;
#pragma omp parallel shared(n, x, z, aw, w) private(i, z0, z1)
            {
                if (first) {
#pragma omp master
                    {
                        for (i = 0; i < 2 * n; i = i + 2) {
                            double *_imopVarPre163;
                            double _imopVarPre164;
                            _imopVarPre163 = &seed;
                            _imopVarPre164 = ggl(_imopVarPre163);
                            z0 = _imopVarPre164;
                            double *_imopVarPre166;
                            double _imopVarPre167;
                            _imopVarPre166 = &seed;
                            _imopVarPre167 = ggl(_imopVarPre166);
                            z1 = _imopVarPre167;
                            x[i] = z0;
                            z[i] = z0;
                            x[i + 1] = z1;
                            z[i + 1] = z1;
                        }
                    }
                } else {
#pragma omp for nowait
                    for (i = 0; i < 2 * n; i = i + 2) {
                        z0 = 0.0;
                        z1 = 0.0;
                        x[i] = z0;
                        z[i] = z0;
                        x[i + 1] = z1;
                        z[i + 1] = z1;
                    }
                }
                {
                    double arg;
                    int i;
                    const double pi = 3.141592653589793;
#pragma omp master
                    {
                        n2 = n / 2;
                        aw = 2.0 * pi / ((double) n);
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                    for (i = 0; i < n2; i++) {
                        arg = aw * ((double) i);
                        double _imopVarPre227;
                        _imopVarPre227 = cos(arg);
                        w[i * 2 + 0] = _imopVarPre227;
                        double _imopVarPre228;
                        _imopVarPre228 = sin(arg);
                        w[i * 2 + 1] = _imopVarPre228;
                    }
                }
            }
            if (first) {
                double *d_imopVar130;
                int lj_imopVar131;
                int mj2_imopVar132;
                int j_imopVar116;
                int m_imopVar117;
                double *a_imopVar75;
                double *b_imopVar76;
                double *c_imopVar77;
                double *d_imopVar78;
                int lj_imopVar79;
                int mj2_imopVar80;
                int mj_imopVar118;
                int tgle_imopVar119;
                double *a_imopVar127;
                double *x_imopVar112;
                double *y_imopVar113;
                int m;
                int mj;
                int tgle;
                double *b_imopVar128;
                double *a_imopVar75_imopVar137;
                double *b_imopVar76_imopVar138;
                double *c_imopVar77_imopVar139;
                double *d_imopVar78_imopVar140;
                int lj_imopVar79_imopVar141;
                int mj2_imopVar80_imopVar142;
                double *c_imopVar129;
#pragma omp parallel shared(a_imopVar127, b_imopVar128, c_imopVar129, d_imopVar130, lj_imopVar131, mj_imopVar118, mj2_imopVar132, sgn, w)
                {
#pragma omp master
                    {
                        sgn = +1.0;
                    }
                    double _imopVarPre192_imopVar120;
                    double _imopVarPre193_imopVar121;
                    double _imopVarPre194_imopVar122;
#pragma omp master
                    {
                        _imopVarPre192_imopVar120 = (double) n;
                        _imopVarPre193_imopVar121 = log(_imopVarPre192_imopVar120);
                        _imopVarPre194_imopVar122 = log(1.99);
                        m_imopVar117 = (int) (_imopVarPre193_imopVar121 / _imopVarPre194_imopVar122);
                        mj_imopVar118 = 1;
                        tgle_imopVar119 = 1;
                    }
                    double *_imopVarPre199_imopVar123;
                    double *_imopVarPre200_imopVar124;
                    double *_imopVarPre201_imopVar125;
                    double *_imopVarPre202_imopVar126;
#pragma omp master
                    {
                        _imopVarPre199_imopVar123 = &y[mj_imopVar118 * 2 + 0];
                        _imopVarPre200_imopVar124 = &y[0 * 2 + 0];
                        _imopVarPre201_imopVar125 = &x[(n / 2) * 2 + 0];
                        _imopVarPre202_imopVar126 = &x[0 * 2 + 0];
                        a_imopVar127 = _imopVarPre202_imopVar126;
                        b_imopVar128 = _imopVarPre201_imopVar125;
                        c_imopVar129 = _imopVarPre200_imopVar124;
                        d_imopVar130 = _imopVarPre199_imopVar123;
                    }
                    double ambr;
                    double ambu;
                    int j;
                    int ja;
                    int jb;
                    int jc;
                    int jd;
                    int jw;
                    int k;
                    double wjw[2];
#pragma omp master
                    {
                        mj2_imopVar132 = 2 * mj_imopVar118;
                        lj_imopVar131 = n / mj2_imopVar132;
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                    for (j = 0; j < lj_imopVar131; j++) {
                        jw = j * mj_imopVar118;
                        ja = jw;
                        jb = ja;
                        jc = j * mj2_imopVar132;
                        jd = jc;
                        wjw[0] = w[jw * 2 + 0];
                        wjw[1] = w[jw * 2 + 1];
                        if (sgn < 0.0) {
                            wjw[1] = -wjw[1];
                        }
                        for (k = 0; k < mj_imopVar118; k++) {
                            c_imopVar129[(jc + k) * 2 + 0] = a_imopVar127[(ja + k) * 2 + 0] + b_imopVar128[(jb + k) * 2 + 0];
                            c_imopVar129[(jc + k) * 2 + 1] = a_imopVar127[(ja + k) * 2 + 1] + b_imopVar128[(jb + k) * 2 + 1];
                            ambr = a_imopVar127[(ja + k) * 2 + 0] - b_imopVar128[(jb + k) * 2 + 0];
                            ambu = a_imopVar127[(ja + k) * 2 + 1] - b_imopVar128[(jb + k) * 2 + 1];
                            d_imopVar130[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                            d_imopVar130[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                        }
                    }
                }
                if (n == 2) {
                    goto cfft2_imopVar115;
                }
                for (j_imopVar116 = 0; j_imopVar116 < m_imopVar117 - 2; j_imopVar116++) {
                    mj_imopVar118 = mj_imopVar118 * 2;
                    if (tgle_imopVar119) {
                        double *a;
                        double *b;
                        double *c;
                        double *d;
                        int lj;
                        int mj2;
#pragma omp parallel shared(a, b, c, d, lj, mj_imopVar118, mj2, sgn, w)
                        {
                            double *_imopVarPre207;
                            double *_imopVarPre208;
                            double *_imopVarPre209;
                            double *_imopVarPre210;
#pragma omp master
                            {
                                _imopVarPre207 = &x[mj_imopVar118 * 2 + 0];
                                _imopVarPre208 = &x[0 * 2 + 0];
                                _imopVarPre209 = &y[(n / 2) * 2 + 0];
                                _imopVarPre210 = &y[0 * 2 + 0];
                                a = _imopVarPre210;
                                b = _imopVarPre209;
                                c = _imopVarPre208;
                                d = _imopVarPre207;
                            }
                            double ambr;
                            double ambu;
                            int j;
                            int ja;
                            int jb;
                            int jc;
                            int jd;
                            int jw;
                            int k;
                            double wjw[2];
#pragma omp master
                            {
                                mj2 = 2 * mj_imopVar118;
                                lj = n / mj2;
                            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                            for (j = 0; j < lj; j++) {
                                jw = j * mj_imopVar118;
                                ja = jw;
                                jb = ja;
                                jc = j * mj2;
                                jd = jc;
                                wjw[0] = w[jw * 2 + 0];
                                wjw[1] = w[jw * 2 + 1];
                                if (sgn < 0.0) {
                                    wjw[1] = -wjw[1];
                                }
                                for (k = 0; k < mj_imopVar118; k++) {
                                    c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                    c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                    ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                    ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                    d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                    d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                }
                            }
#pragma omp master
                            {
                                tgle_imopVar119 = 0;
                            }
                        }
                    } else {
                        double *b;
                        double *c;
                        double *d;
                        int lj;
                        int mj2;
                        double *a;
#pragma omp parallel shared(a, b, c, d, lj, mj_imopVar118, mj2, sgn, w)
                        {
                            double *_imopVarPre215;
                            double *_imopVarPre216;
                            double *_imopVarPre217;
                            double *_imopVarPre218;
#pragma omp master
                            {
                                _imopVarPre215 = &y[mj_imopVar118 * 2 + 0];
                                _imopVarPre216 = &y[0 * 2 + 0];
                                _imopVarPre217 = &x[(n / 2) * 2 + 0];
                                _imopVarPre218 = &x[0 * 2 + 0];
                                a = _imopVarPre218;
                                b = _imopVarPre217;
                                c = _imopVarPre216;
                                d = _imopVarPre215;
                            }
                            double ambr;
                            double ambu;
                            int j;
                            int ja;
                            int jb;
                            int jc;
                            int jd;
                            int jw;
                            int k;
                            double wjw[2];
#pragma omp master
                            {
                                mj2 = 2 * mj_imopVar118;
                                lj = n / mj2;
                            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                            for (j = 0; j < lj; j++) {
                                jw = j * mj_imopVar118;
                                ja = jw;
                                jb = ja;
                                jc = j * mj2;
                                jd = jc;
                                wjw[0] = w[jw * 2 + 0];
                                wjw[1] = w[jw * 2 + 1];
                                if (sgn < 0.0) {
                                    wjw[1] = -wjw[1];
                                }
                                for (k = 0; k < mj_imopVar118; k++) {
                                    c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                    c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                    ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                    ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                    d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                    d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                }
                            }
#pragma omp master
                            {
                                tgle_imopVar119 = 1;
                            }
                        }
                    }
                }
                int lj;
                int mj2;
                double *a;
                double *b;
                double *c;
                double *d;
#pragma omp parallel shared(a_imopVar75_imopVar137, b_imopVar76_imopVar138, c_imopVar77_imopVar139, d_imopVar78_imopVar140, lj_imopVar79_imopVar141, mj_imopVar118, mj2_imopVar80_imopVar142, sgn, w)
                {
#pragma omp master
                    {
                        if (tgle_imopVar119) {
                            ccopy(n, y, x);
                        }
                        mj_imopVar118 = n / 2;
                    }
                    double *_imopVarPre223_imopVar133;
                    double *_imopVarPre224_imopVar134;
                    double *_imopVarPre225_imopVar135;
                    double *_imopVarPre226_imopVar136;
#pragma omp master
                    {
                        _imopVarPre223_imopVar133 = &y[mj_imopVar118 * 2 + 0];
                        _imopVarPre224_imopVar134 = &y[0 * 2 + 0];
                        _imopVarPre225_imopVar135 = &x[(n / 2) * 2 + 0];
                        _imopVarPre226_imopVar136 = &x[0 * 2 + 0];
                        a_imopVar75_imopVar137 = _imopVarPre226_imopVar136;
                        b_imopVar76_imopVar138 = _imopVarPre225_imopVar135;
                        c_imopVar77_imopVar139 = _imopVarPre224_imopVar134;
                        d_imopVar78_imopVar140 = _imopVarPre223_imopVar133;
                    }
                    double ambr;
                    double ambu;
                    int j;
                    int ja;
                    int jb;
                    int jc;
                    int jd;
                    int jw;
                    int k;
                    double wjw[2];
#pragma omp master
                    {
                        mj2_imopVar80_imopVar142 = 2 * mj_imopVar118;
                        lj_imopVar79_imopVar141 = n / mj2_imopVar80_imopVar142;
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                    for (j = 0; j < lj_imopVar79_imopVar141; j++) {
                        jw = j * mj_imopVar118;
                        ja = jw;
                        jb = ja;
                        jc = j * mj2_imopVar80_imopVar142;
                        jd = jc;
                        wjw[0] = w[jw * 2 + 0];
                        wjw[1] = w[jw * 2 + 1];
                        if (sgn < 0.0) {
                            wjw[1] = -wjw[1];
                        }
                        for (k = 0; k < mj_imopVar118; k++) {
                            c_imopVar77_imopVar139[(jc + k) * 2 + 0] = a_imopVar75_imopVar137[(ja + k) * 2 + 0] + b_imopVar76_imopVar138[(jb + k) * 2 + 0];
                            c_imopVar77_imopVar139[(jc + k) * 2 + 1] = a_imopVar75_imopVar137[(ja + k) * 2 + 1] + b_imopVar76_imopVar138[(jb + k) * 2 + 1];
                            ambr = a_imopVar75_imopVar137[(ja + k) * 2 + 0] - b_imopVar76_imopVar138[(jb + k) * 2 + 0];
                            ambu = a_imopVar75_imopVar137[(ja + k) * 2 + 1] - b_imopVar76_imopVar138[(jb + k) * 2 + 1];
                            d_imopVar78_imopVar140[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                            d_imopVar78_imopVar140[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                        }
                    }
                }
                int j;
                goto cfft2_imopVar115;
                cfft2_imopVar115: ;
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w)
                {
#pragma omp master
                    {
                        sgn = -1.0;
                        x_imopVar112 = y;
                        y_imopVar113 = x;
                    }
                    double _imopVarPre192;
                    double _imopVarPre193;
                    double _imopVarPre194;
#pragma omp master
                    {
                        _imopVarPre192 = (double) n;
                        _imopVarPre193 = log(_imopVarPre192);
                        _imopVarPre194 = log(1.99);
                        m = (int) (_imopVarPre193 / _imopVarPre194);
                        mj = 1;
                        tgle = 1;
                    }
                    double *_imopVarPre199;
                    double *_imopVarPre200;
                    double *_imopVarPre201;
                    double *_imopVarPre202;
#pragma omp master
                    {
                        _imopVarPre199 = &y_imopVar113[mj * 2 + 0];
                        _imopVarPre200 = &y_imopVar113[0 * 2 + 0];
                        _imopVarPre201 = &x_imopVar112[(n / 2) * 2 + 0];
                        _imopVarPre202 = &x_imopVar112[0 * 2 + 0];
                        a = _imopVarPre202;
                        b = _imopVarPre201;
                        c = _imopVarPre200;
                        d = _imopVarPre199;
                    }
                    double ambr;
                    double ambu;
                    int j;
                    int ja;
                    int jb;
                    int jc;
                    int jd;
                    int jw;
                    int k;
                    double wjw[2];
#pragma omp master
                    {
                        mj2 = 2 * mj;
                        lj = n / mj2;
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                    for (j = 0; j < lj; j++) {
                        jw = j * mj;
                        ja = jw;
                        jb = ja;
                        jc = j * mj2;
                        jd = jc;
                        wjw[0] = w[jw * 2 + 0];
                        wjw[1] = w[jw * 2 + 1];
                        if (sgn < 0.0) {
                            wjw[1] = -wjw[1];
                        }
                        for (k = 0; k < mj; k++) {
                            c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                            c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                            ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                            ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                            d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                            d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                        }
                    }
                }
                if (n == 2) {
                    goto cfft2_imopVar114;
                }
                for (j = 0; j < m - 2; j++) {
                    mj = mj * 2;
                    if (tgle) {
                        int lj;
                        int mj2;
                        double *a;
                        double *b;
                        double *c;
                        double *d;
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w)
                        {
                            double *_imopVarPre207;
                            double *_imopVarPre208;
                            double *_imopVarPre209;
                            double *_imopVarPre210;
#pragma omp master
                            {
                                _imopVarPre207 = &x_imopVar112[mj * 2 + 0];
                                _imopVarPre208 = &x_imopVar112[0 * 2 + 0];
                                _imopVarPre209 = &y_imopVar113[(n / 2) * 2 + 0];
                                _imopVarPre210 = &y_imopVar113[0 * 2 + 0];
                                a = _imopVarPre210;
                                b = _imopVarPre209;
                                c = _imopVarPre208;
                                d = _imopVarPre207;
                            }
                            double ambr;
                            double ambu;
                            int j;
                            int ja;
                            int jb;
                            int jc;
                            int jd;
                            int jw;
                            int k;
                            double wjw[2];
#pragma omp master
                            {
                                mj2 = 2 * mj;
                                lj = n / mj2;
                            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                            for (j = 0; j < lj; j++) {
                                jw = j * mj;
                                ja = jw;
                                jb = ja;
                                jc = j * mj2;
                                jd = jc;
                                wjw[0] = w[jw * 2 + 0];
                                wjw[1] = w[jw * 2 + 1];
                                if (sgn < 0.0) {
                                    wjw[1] = -wjw[1];
                                }
                                for (k = 0; k < mj; k++) {
                                    c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                    c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                    ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                    ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                    d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                    d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                }
                            }
#pragma omp master
                            {
                                tgle = 0;
                            }
                        }
                    } else {
                        int mj2;
                        double *a;
                        double *b;
                        double *c;
                        double *d;
                        int lj;
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w)
                        {
                            double *_imopVarPre215;
                            double *_imopVarPre216;
                            double *_imopVarPre217;
                            double *_imopVarPre218;
#pragma omp master
                            {
                                _imopVarPre215 = &y_imopVar113[mj * 2 + 0];
                                _imopVarPre216 = &y_imopVar113[0 * 2 + 0];
                                _imopVarPre217 = &x_imopVar112[(n / 2) * 2 + 0];
                                _imopVarPre218 = &x_imopVar112[0 * 2 + 0];
                                a = _imopVarPre218;
                                b = _imopVarPre217;
                                c = _imopVarPre216;
                                d = _imopVarPre215;
                            }
                            double ambr;
                            double ambu;
                            int j;
                            int ja;
                            int jb;
                            int jc;
                            int jd;
                            int jw;
                            int k;
                            double wjw[2];
#pragma omp master
                            {
                                mj2 = 2 * mj;
                                lj = n / mj2;
                            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                            for (j = 0; j < lj; j++) {
                                jw = j * mj;
                                ja = jw;
                                jb = ja;
                                jc = j * mj2;
                                jd = jc;
                                wjw[0] = w[jw * 2 + 0];
                                wjw[1] = w[jw * 2 + 1];
                                if (sgn < 0.0) {
                                    wjw[1] = -wjw[1];
                                }
                                for (k = 0; k < mj; k++) {
                                    c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                    c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                    ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                    ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                    d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                    d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                }
                            }
#pragma omp master
                            {
                                tgle = 1;
                            }
                        }
                    }
                }
#pragma omp parallel shared(a_imopVar75, b_imopVar76, c_imopVar77, d_imopVar78, lj_imopVar79, mj, mj2_imopVar80, sgn, w)
                {
#pragma omp master
                    {
                        if (tgle) {
                            ccopy(n, y_imopVar113, x_imopVar112);
                        }
                        mj = n / 2;
                    }
                    double *_imopVarPre223;
                    double *_imopVarPre224;
                    double *_imopVarPre225;
                    double *_imopVarPre226;
#pragma omp master
                    {
                        _imopVarPre223 = &y_imopVar113[mj * 2 + 0];
                        _imopVarPre224 = &y_imopVar113[0 * 2 + 0];
                        _imopVarPre225 = &x_imopVar112[(n / 2) * 2 + 0];
                        _imopVarPre226 = &x_imopVar112[0 * 2 + 0];
                        a_imopVar75 = _imopVarPre226;
                        b_imopVar76 = _imopVarPre225;
                        c_imopVar77 = _imopVarPre224;
                        d_imopVar78 = _imopVarPre223;
                    }
                    double ambr;
                    double ambu;
                    int j;
                    int ja;
                    int jb;
                    int jc;
                    int jd;
                    int jw;
                    int k;
                    double wjw[2];
#pragma omp master
                    {
                        mj2_imopVar80 = 2 * mj;
                        lj_imopVar79 = n / mj2_imopVar80;
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                    for (j = 0; j < lj_imopVar79; j++) {
                        jw = j * mj;
                        ja = jw;
                        jb = ja;
                        jc = j * mj2_imopVar80;
                        jd = jc;
                        wjw[0] = w[jw * 2 + 0];
                        wjw[1] = w[jw * 2 + 1];
                        if (sgn < 0.0) {
                            wjw[1] = -wjw[1];
                        }
                        for (k = 0; k < mj; k++) {
                            c_imopVar77[(jc + k) * 2 + 0] = a_imopVar75[(ja + k) * 2 + 0] + b_imopVar76[(jb + k) * 2 + 0];
                            c_imopVar77[(jc + k) * 2 + 1] = a_imopVar75[(ja + k) * 2 + 1] + b_imopVar76[(jb + k) * 2 + 1];
                            ambr = a_imopVar75[(ja + k) * 2 + 0] - b_imopVar76[(jb + k) * 2 + 0];
                            ambu = a_imopVar75[(ja + k) * 2 + 1] - b_imopVar76[(jb + k) * 2 + 1];
                            d_imopVar78[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                            d_imopVar78[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                        }
                    }
                }
                goto cfft2_imopVar114;
                cfft2_imopVar114: ;
                fnm1 = 1.0 / (double) n;
                error = 0.0;
                for (i = 0; i < 2 * n; i = i + 2) {
                    double _imopVarPre172;
                    double _imopVarPre173;
                    double _imopVarPre174;
                    double _imopVarPre175;
                    _imopVarPre172 = z[i] - fnm1 * x[i];
                    _imopVarPre173 = pow(_imopVarPre172, 2);
                    _imopVarPre174 = z[i + 1] - fnm1 * x[i + 1];
                    _imopVarPre175 = pow(_imopVarPre174, 2);
                    error = error + _imopVarPre173 + _imopVarPre175;
                }
                double _imopVarPre177;
                double _imopVarPre178;
                _imopVarPre177 = fnm1 * error;
                _imopVarPre178 = sqrt(_imopVarPre177);
                error = _imopVarPre178;
                printf("  %12d  %8d  %12e", n, nits, error);
                first = 0;
            } else {
                wtime = omp_get_wtime();
                for (it = 0; it < nits; it++) {
                    double *x_imopVar81;
                    double *y_imopVar82;
                    int m;
                    int mj;
                    int tgle;
                    double *b_imopVar97;
                    double *a_imopVar75_imopVar106;
                    double *b_imopVar76_imopVar107;
                    double *c_imopVar77_imopVar108;
                    double *d_imopVar78_imopVar109;
                    int lj_imopVar79_imopVar110;
                    int mj2_imopVar80_imopVar111;
                    double *c_imopVar98;
                    double *d_imopVar99;
                    int lj_imopVar100;
                    int mj2_imopVar101;
                    int j_imopVar85;
                    int m_imopVar86;
                    int mj_imopVar87;
                    int tgle_imopVar88;
                    double *a_imopVar96;
#pragma omp parallel shared(a_imopVar96, b_imopVar97, c_imopVar98, d_imopVar99, lj_imopVar100, mj_imopVar87, mj2_imopVar101, sgn, w)
                    {
#pragma omp master
                        {
                            sgn = +1.0;
                        }
                        double _imopVarPre192_imopVar89;
                        double _imopVarPre193_imopVar90;
                        double _imopVarPre194_imopVar91;
#pragma omp master
                        {
                            _imopVarPre192_imopVar89 = (double) n;
                            _imopVarPre193_imopVar90 = log(_imopVarPre192_imopVar89);
                            _imopVarPre194_imopVar91 = log(1.99);
                            m_imopVar86 = (int) (_imopVarPre193_imopVar90 / _imopVarPre194_imopVar91);
                            mj_imopVar87 = 1;
                            tgle_imopVar88 = 1;
                        }
                        double *_imopVarPre199_imopVar92;
                        double *_imopVarPre200_imopVar93;
                        double *_imopVarPre201_imopVar94;
                        double *_imopVarPre202_imopVar95;
#pragma omp master
                        {
                            _imopVarPre199_imopVar92 = &y[mj_imopVar87 * 2 + 0];
                            _imopVarPre200_imopVar93 = &y[0 * 2 + 0];
                            _imopVarPre201_imopVar94 = &x[(n / 2) * 2 + 0];
                            _imopVarPre202_imopVar95 = &x[0 * 2 + 0];
                            a_imopVar96 = _imopVarPre202_imopVar95;
                            b_imopVar97 = _imopVarPre201_imopVar94;
                            c_imopVar98 = _imopVarPre200_imopVar93;
                            d_imopVar99 = _imopVarPre199_imopVar92;
                        }
                        double ambr;
                        double ambu;
                        int j;
                        int ja;
                        int jb;
                        int jc;
                        int jd;
                        int jw;
                        int k;
                        double wjw[2];
#pragma omp master
                        {
                            mj2_imopVar101 = 2 * mj_imopVar87;
                            lj_imopVar100 = n / mj2_imopVar101;
                        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                        for (j = 0; j < lj_imopVar100; j++) {
                            jw = j * mj_imopVar87;
                            ja = jw;
                            jb = ja;
                            jc = j * mj2_imopVar101;
                            jd = jc;
                            wjw[0] = w[jw * 2 + 0];
                            wjw[1] = w[jw * 2 + 1];
                            if (sgn < 0.0) {
                                wjw[1] = -wjw[1];
                            }
                            for (k = 0; k < mj_imopVar87; k++) {
                                c_imopVar98[(jc + k) * 2 + 0] = a_imopVar96[(ja + k) * 2 + 0] + b_imopVar97[(jb + k) * 2 + 0];
                                c_imopVar98[(jc + k) * 2 + 1] = a_imopVar96[(ja + k) * 2 + 1] + b_imopVar97[(jb + k) * 2 + 1];
                                ambr = a_imopVar96[(ja + k) * 2 + 0] - b_imopVar97[(jb + k) * 2 + 0];
                                ambu = a_imopVar96[(ja + k) * 2 + 1] - b_imopVar97[(jb + k) * 2 + 1];
                                d_imopVar99[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                d_imopVar99[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                            }
                        }
                    }
                    if (n == 2) {
                        goto cfft2_imopVar84;
                    }
                    for (j_imopVar85 = 0; j_imopVar85 < m_imopVar86 - 2; j_imopVar85++) {
                        mj_imopVar87 = mj_imopVar87 * 2;
                        if (tgle_imopVar88) {
                            double *c;
                            double *d;
                            int lj;
                            int mj2;
                            double *a;
                            double *b;
#pragma omp parallel shared(a, b, c, d, lj, mj_imopVar87, mj2, sgn, w)
                            {
                                double *_imopVarPre207;
                                double *_imopVarPre208;
                                double *_imopVarPre209;
                                double *_imopVarPre210;
#pragma omp master
                                {
                                    _imopVarPre207 = &x[mj_imopVar87 * 2 + 0];
                                    _imopVarPre208 = &x[0 * 2 + 0];
                                    _imopVarPre209 = &y[(n / 2) * 2 + 0];
                                    _imopVarPre210 = &y[0 * 2 + 0];
                                    a = _imopVarPre210;
                                    b = _imopVarPre209;
                                    c = _imopVarPre208;
                                    d = _imopVarPre207;
                                }
                                double ambr;
                                double ambu;
                                int j;
                                int ja;
                                int jb;
                                int jc;
                                int jd;
                                int jw;
                                int k;
                                double wjw[2];
#pragma omp master
                                {
                                    mj2 = 2 * mj_imopVar87;
                                    lj = n / mj2;
                                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                                for (j = 0; j < lj; j++) {
                                    jw = j * mj_imopVar87;
                                    ja = jw;
                                    jb = ja;
                                    jc = j * mj2;
                                    jd = jc;
                                    wjw[0] = w[jw * 2 + 0];
                                    wjw[1] = w[jw * 2 + 1];
                                    if (sgn < 0.0) {
                                        wjw[1] = -wjw[1];
                                    }
                                    for (k = 0; k < mj_imopVar87; k++) {
                                        c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                        c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                        ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                        ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                        d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                        d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                    }
                                }
#pragma omp master
                                {
                                    tgle_imopVar88 = 0;
                                }
                            }
                        } else {
                            double *d;
                            int lj;
                            int mj2;
                            double *a;
                            double *b;
                            double *c;
#pragma omp parallel shared(a, b, c, d, lj, mj_imopVar87, mj2, sgn, w)
                            {
                                double *_imopVarPre215;
                                double *_imopVarPre216;
                                double *_imopVarPre217;
                                double *_imopVarPre218;
#pragma omp master
                                {
                                    _imopVarPre215 = &y[mj_imopVar87 * 2 + 0];
                                    _imopVarPre216 = &y[0 * 2 + 0];
                                    _imopVarPre217 = &x[(n / 2) * 2 + 0];
                                    _imopVarPre218 = &x[0 * 2 + 0];
                                    a = _imopVarPre218;
                                    b = _imopVarPre217;
                                    c = _imopVarPre216;
                                    d = _imopVarPre215;
                                }
                                double ambr;
                                double ambu;
                                int j;
                                int ja;
                                int jb;
                                int jc;
                                int jd;
                                int jw;
                                int k;
                                double wjw[2];
#pragma omp master
                                {
                                    mj2 = 2 * mj_imopVar87;
                                    lj = n / mj2;
                                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                                for (j = 0; j < lj; j++) {
                                    jw = j * mj_imopVar87;
                                    ja = jw;
                                    jb = ja;
                                    jc = j * mj2;
                                    jd = jc;
                                    wjw[0] = w[jw * 2 + 0];
                                    wjw[1] = w[jw * 2 + 1];
                                    if (sgn < 0.0) {
                                        wjw[1] = -wjw[1];
                                    }
                                    for (k = 0; k < mj_imopVar87; k++) {
                                        c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                        c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                        ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                        ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                        d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                        d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                    }
                                }
#pragma omp master
                                {
                                    tgle_imopVar88 = 1;
                                }
                            }
                        }
                    }
                    double *a;
                    double *b;
                    double *c;
                    double *d;
                    int lj;
                    int mj2;
#pragma omp parallel shared(a_imopVar75_imopVar106, b_imopVar76_imopVar107, c_imopVar77_imopVar108, d_imopVar78_imopVar109, lj_imopVar79_imopVar110, mj_imopVar87, mj2_imopVar80_imopVar111, sgn, w)
                    {
#pragma omp master
                        {
                            if (tgle_imopVar88) {
                                ccopy(n, y, x);
                            }
                            mj_imopVar87 = n / 2;
                        }
                        double *_imopVarPre223_imopVar102;
                        double *_imopVarPre224_imopVar103;
                        double *_imopVarPre225_imopVar104;
                        double *_imopVarPre226_imopVar105;
#pragma omp master
                        {
                            _imopVarPre223_imopVar102 = &y[mj_imopVar87 * 2 + 0];
                            _imopVarPre224_imopVar103 = &y[0 * 2 + 0];
                            _imopVarPre225_imopVar104 = &x[(n / 2) * 2 + 0];
                            _imopVarPre226_imopVar105 = &x[0 * 2 + 0];
                            a_imopVar75_imopVar106 = _imopVarPre226_imopVar105;
                            b_imopVar76_imopVar107 = _imopVarPre225_imopVar104;
                            c_imopVar77_imopVar108 = _imopVarPre224_imopVar103;
                            d_imopVar78_imopVar109 = _imopVarPre223_imopVar102;
                        }
                        double ambr;
                        double ambu;
                        int j;
                        int ja;
                        int jb;
                        int jc;
                        int jd;
                        int jw;
                        int k;
                        double wjw[2];
#pragma omp master
                        {
                            mj2_imopVar80_imopVar111 = 2 * mj_imopVar87;
                            lj_imopVar79_imopVar110 = n / mj2_imopVar80_imopVar111;
                        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                        for (j = 0; j < lj_imopVar79_imopVar110; j++) {
                            jw = j * mj_imopVar87;
                            ja = jw;
                            jb = ja;
                            jc = j * mj2_imopVar80_imopVar111;
                            jd = jc;
                            wjw[0] = w[jw * 2 + 0];
                            wjw[1] = w[jw * 2 + 1];
                            if (sgn < 0.0) {
                                wjw[1] = -wjw[1];
                            }
                            for (k = 0; k < mj_imopVar87; k++) {
                                c_imopVar77_imopVar108[(jc + k) * 2 + 0] = a_imopVar75_imopVar106[(ja + k) * 2 + 0] + b_imopVar76_imopVar107[(jb + k) * 2 + 0];
                                c_imopVar77_imopVar108[(jc + k) * 2 + 1] = a_imopVar75_imopVar106[(ja + k) * 2 + 1] + b_imopVar76_imopVar107[(jb + k) * 2 + 1];
                                ambr = a_imopVar75_imopVar106[(ja + k) * 2 + 0] - b_imopVar76_imopVar107[(jb + k) * 2 + 0];
                                ambu = a_imopVar75_imopVar106[(ja + k) * 2 + 1] - b_imopVar76_imopVar107[(jb + k) * 2 + 1];
                                d_imopVar78_imopVar109[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                d_imopVar78_imopVar109[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                            }
                        }
                    }
                    int j;
                    goto cfft2_imopVar84;
                    cfft2_imopVar84: ;
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w)
                    {
#pragma omp master
                        {
                            sgn = -1.0;
                            x_imopVar81 = y;
                            y_imopVar82 = x;
                        }
                        double _imopVarPre192;
                        double _imopVarPre193;
                        double _imopVarPre194;
#pragma omp master
                        {
                            _imopVarPre192 = (double) n;
                            _imopVarPre193 = log(_imopVarPre192);
                            _imopVarPre194 = log(1.99);
                            m = (int) (_imopVarPre193 / _imopVarPre194);
                            mj = 1;
                            tgle = 1;
                        }
                        double *_imopVarPre199;
                        double *_imopVarPre200;
                        double *_imopVarPre201;
                        double *_imopVarPre202;
#pragma omp master
                        {
                            _imopVarPre199 = &y_imopVar82[mj * 2 + 0];
                            _imopVarPre200 = &y_imopVar82[0 * 2 + 0];
                            _imopVarPre201 = &x_imopVar81[(n / 2) * 2 + 0];
                            _imopVarPre202 = &x_imopVar81[0 * 2 + 0];
                            a = _imopVarPre202;
                            b = _imopVarPre201;
                            c = _imopVarPre200;
                            d = _imopVarPre199;
                        }
                        double ambr;
                        double ambu;
                        int j;
                        int ja;
                        int jb;
                        int jc;
                        int jd;
                        int jw;
                        int k;
                        double wjw[2];
#pragma omp master
                        {
                            mj2 = 2 * mj;
                            lj = n / mj2;
                        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                        for (j = 0; j < lj; j++) {
                            jw = j * mj;
                            ja = jw;
                            jb = ja;
                            jc = j * mj2;
                            jd = jc;
                            wjw[0] = w[jw * 2 + 0];
                            wjw[1] = w[jw * 2 + 1];
                            if (sgn < 0.0) {
                                wjw[1] = -wjw[1];
                            }
                            for (k = 0; k < mj; k++) {
                                c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                            }
                        }
                    }
                    if (n == 2) {
                        goto cfft2_imopVar83;
                    }
                    for (j = 0; j < m - 2; j++) {
                        mj = mj * 2;
                        if (tgle) {
                            double *_imopVarPre207;
                            double *_imopVarPre208;
                            double *_imopVarPre209;
                            double *_imopVarPre210;
                            _imopVarPre207 = &x_imopVar81[mj * 2 + 0];
                            _imopVarPre208 = &x_imopVar81[0 * 2 + 0];
                            _imopVarPre209 = &y_imopVar82[(n / 2) * 2 + 0];
                            _imopVarPre210 = &y_imopVar82[0 * 2 + 0];
                            double *a;
                            double *b;
                            double *c;
                            double *d;
                            a = _imopVarPre210;
                            b = _imopVarPre209;
                            c = _imopVarPre208;
                            d = _imopVarPre207;
                            int lj;
                            int mj2;
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w)
                            {
                                double ambr;
                                double ambu;
                                int j;
                                int ja;
                                int jb;
                                int jc;
                                int jd;
                                int jw;
                                int k;
                                double wjw[2];
#pragma omp master
                                {
                                    mj2 = 2 * mj;
                                    lj = n / mj2;
                                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                                for (j = 0; j < lj; j++) {
                                    jw = j * mj;
                                    ja = jw;
                                    jb = ja;
                                    jc = j * mj2;
                                    jd = jc;
                                    wjw[0] = w[jw * 2 + 0];
                                    wjw[1] = w[jw * 2 + 1];
                                    if (sgn < 0.0) {
                                        wjw[1] = -wjw[1];
                                    }
                                    for (k = 0; k < mj; k++) {
                                        c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                        c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                        ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                        ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                        d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                        d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                    }
                                }
                            }
                            tgle = 0;
                        } else {
                            double *_imopVarPre215;
                            double *_imopVarPre216;
                            double *_imopVarPre217;
                            double *_imopVarPre218;
                            _imopVarPre215 = &y_imopVar82[mj * 2 + 0];
                            _imopVarPre216 = &y_imopVar82[0 * 2 + 0];
                            _imopVarPre217 = &x_imopVar81[(n / 2) * 2 + 0];
                            _imopVarPre218 = &x_imopVar81[0 * 2 + 0];
                            double *a;
                            double *b;
                            double *c;
                            double *d;
                            a = _imopVarPre218;
                            b = _imopVarPre217;
                            c = _imopVarPre216;
                            d = _imopVarPre215;
                            int lj;
                            int mj2;
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w)
                            {
                                double ambr;
                                double ambu;
                                int j;
                                int ja;
                                int jb;
                                int jc;
                                int jd;
                                int jw;
                                int k;
                                double wjw[2];
#pragma omp master
                                {
                                    mj2 = 2 * mj;
                                    lj = n / mj2;
                                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                                for (j = 0; j < lj; j++) {
                                    jw = j * mj;
                                    ja = jw;
                                    jb = ja;
                                    jc = j * mj2;
                                    jd = jc;
                                    wjw[0] = w[jw * 2 + 0];
                                    wjw[1] = w[jw * 2 + 1];
                                    if (sgn < 0.0) {
                                        wjw[1] = -wjw[1];
                                    }
                                    for (k = 0; k < mj; k++) {
                                        c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                        c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                        ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                        ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                        d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                        d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                    }
                                }
                            }
                            tgle = 1;
                        }
                    }
                    if (tgle) {
                        ccopy(n, y_imopVar82, x_imopVar81);
                    }
                    mj = n / 2;
                    double *_imopVarPre223;
                    double *_imopVarPre224;
                    double *_imopVarPre225;
                    double *_imopVarPre226;
                    _imopVarPre223 = &y_imopVar82[mj * 2 + 0];
                    _imopVarPre224 = &y_imopVar82[0 * 2 + 0];
                    _imopVarPre225 = &x_imopVar81[(n / 2) * 2 + 0];
                    _imopVarPre226 = &x_imopVar81[0 * 2 + 0];
                    double *a_imopVar75;
                    double *b_imopVar76;
                    double *c_imopVar77;
                    double *d_imopVar78;
                    a_imopVar75 = _imopVarPre226;
                    b_imopVar76 = _imopVarPre225;
                    c_imopVar77 = _imopVarPre224;
                    d_imopVar78 = _imopVarPre223;
                    int lj_imopVar79;
                    int mj2_imopVar80;
#pragma omp parallel shared(a_imopVar75, b_imopVar76, c_imopVar77, d_imopVar78, lj_imopVar79, mj, mj2_imopVar80, sgn, w)
                    {
                        double ambr;
                        double ambu;
                        int j;
                        int ja;
                        int jb;
                        int jc;
                        int jd;
                        int jw;
                        int k;
                        double wjw[2];
#pragma omp master
                        {
                            mj2_imopVar80 = 2 * mj;
                            lj_imopVar79 = n / mj2_imopVar80;
                        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                        for (j = 0; j < lj_imopVar79; j++) {
                            jw = j * mj;
                            ja = jw;
                            jb = ja;
                            jc = j * mj2_imopVar80;
                            jd = jc;
                            wjw[0] = w[jw * 2 + 0];
                            wjw[1] = w[jw * 2 + 1];
                            if (sgn < 0.0) {
                                wjw[1] = -wjw[1];
                            }
                            for (k = 0; k < mj; k++) {
                                c_imopVar77[(jc + k) * 2 + 0] = a_imopVar75[(ja + k) * 2 + 0] + b_imopVar76[(jb + k) * 2 + 0];
                                c_imopVar77[(jc + k) * 2 + 1] = a_imopVar75[(ja + k) * 2 + 1] + b_imopVar76[(jb + k) * 2 + 1];
                                ambr = a_imopVar75[(ja + k) * 2 + 0] - b_imopVar76[(jb + k) * 2 + 0];
                                ambu = a_imopVar75[(ja + k) * 2 + 1] - b_imopVar76[(jb + k) * 2 + 1];
                                d_imopVar78[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                d_imopVar78[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                            }
                        }
                    }
                    goto cfft2_imopVar83;
                    cfft2_imopVar83: ;
                }
                double _imopVarPre180;
                _imopVarPre180 = omp_get_wtime();
                wtime = _imopVarPre180 - wtime;
                flops = 2.0 * (double) nits * (5.0 * (double) n * (double) ln2);
                mflops = flops / 1.0E+06 / wtime;
                double _imopVarPre182;
                _imopVarPre182 = wtime / (double) (2 * nits);
                printf("  %12e  %12e  %12f\n", wtime, _imopVarPre182, mflops);
            }
        }
        if ((ln2 % 4) == 0) {
            nits = nits / 10;
        }
        if (nits < 1) {
            nits = 1;
        }
        free(w);
        free(x);
        free(y);
        free(z);
    }
    printf("\n");
    printf("FFT_OPENMP:\n");
    printf("  Normal end of execution.\n");
    printf("\n");
    timestamp();
    return 0;
}
void ccopy(int n, double x[] , double y[]) {
    int i;
    for (i = 0; i < n; i++) {
        y[i * 2 + 0] = x[i * 2 + 0];
        y[i * 2 + 1] = x[i * 2 + 1];
    }
    return;
}
double ggl(double *seed) {
    double d2 = 0.2147483647e10;
    double t;
    double value;
    t = (double) *seed;
    double _imopVarPre230;
    double _imopVarPre231;
    _imopVarPre230 = 16807.0 * t;
    _imopVarPre231 = fmod(_imopVarPre230, d2);
    t = _imopVarPre231;
    *seed = (double) t;
    value = (double) ((t - 1.0) / (d2 - 1.0));
    return value;
}
void timestamp() {
    static char time_buffer[40];
    const struct tm *tm;
    size_t len;
    time_t now;
    void *_imopVarPre233;
    signed long int _imopVarPre234;
    _imopVarPre233 = ((void *) 0);
    _imopVarPre234 = time(_imopVarPre233);
    now = _imopVarPre234;
    signed long int *_imopVarPre236;
    struct tm *_imopVarPre237;
    _imopVarPre236 = &now;
    _imopVarPre237 = localtime(_imopVarPre236);
    tm = _imopVarPre237;
    len = strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    printf("%s\n", time_buffer);
    return;
}
