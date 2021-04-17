
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
double ggl(double *ds);
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
            int n2;
            /*[]*/
            double aw;
            /*[1]*/
#pragma omp parallel shared(n, x, z, aw, w) private(i, z0, z1)
            {
            /*[1]*/
                /*[1]*/
                /*[1]*/
                if (first) {
                /*[1]*/
                    /*[1]*/
#pragma omp master
                    {
                    /*[1]*/
                        /*[1]*/
                        /*[1]*/
                        /*[1]*/
                        /*[1]*/
                        for (i = 0; i < 2 * n; i = i + 2) {
                        /*[1]*/
                            /*[1]*/
                            double *_imopVarPre163;
                            /*[1]*/
                            double _imopVarPre164;
                            /*[1]*/
                            _imopVarPre163 = &seed;
                            /*[1]*/
                            _imopVarPre164 = ggl(_imopVarPre163);
                            /*[1]*/
                            /*[1]*/
                            z0 = _imopVarPre164;
                            /*[1]*/
                            double *_imopVarPre166;
                            /*[1]*/
                            double _imopVarPre167;
                            /*[1]*/
                            _imopVarPre166 = &seed;
                            /*[1]*/
                            _imopVarPre167 = ggl(_imopVarPre166);
                            /*[1]*/
                            /*[1]*/
                            z1 = _imopVarPre167;
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
                } else {
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
                {
                /*[1]*/
                    /*[1]*/
                    double arg;
                    /*[1]*/
                    int i;
                    /*[1]*/
                    const double pi = 3.141592653589793;
                    /*[1]*/
#pragma omp master
                    {
                    /*[1]*/
                        /*[1]*/
                        n2 = n / 2;
                        /*[1]*/
                        aw = 2.0 * pi / ((double) n);
                    }
                    /*[1]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[1]*/
#pragma omp barrier
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
            }
            /*[]*/
            /*[]*/
            if (first) {
            /*[]*/
                /*[]*/
                double *d_imopVar130;
                /*[]*/
                int lj_imopVar131;
                /*[]*/
                int mj2_imopVar132;
                /*[]*/
                int j_imopVar116;
                /*[]*/
                int m_imopVar117;
                /*[]*/
                double *a_imopVar75;
                /*[]*/
                double *b_imopVar76;
                /*[]*/
                double *c_imopVar77;
                /*[]*/
                double *d_imopVar78;
                /*[]*/
                int lj_imopVar79;
                /*[]*/
                int mj2_imopVar80;
                /*[]*/
                int mj_imopVar118;
                /*[]*/
                int tgle_imopVar119;
                /*[]*/
                double *a_imopVar127;
                /*[]*/
                double *x_imopVar112;
                /*[]*/
                double *y_imopVar113;
                /*[]*/
                int m;
                /*[]*/
                int mj;
                /*[]*/
                int tgle;
                /*[]*/
                double *b_imopVar128;
                /*[]*/
                double *a_imopVar75_imopVar137;
                /*[]*/
                double *b_imopVar76_imopVar138;
                /*[]*/
                double *c_imopVar77_imopVar139;
                /*[]*/
                double *d_imopVar78_imopVar140;
                /*[]*/
                int lj_imopVar79_imopVar141;
                /*[]*/
                int mj2_imopVar80_imopVar142;
                /*[]*/
                double *c_imopVar129;
                /*[3]*/
#pragma omp parallel shared(a_imopVar127, b_imopVar128, c_imopVar129, d_imopVar130, lj_imopVar131, mj_imopVar118, mj2_imopVar132, sgn, w)
                {
                /*[3]*/
                    /*[3]*/
#pragma omp master
                    {
                    /*[3]*/
                        /*[3]*/
                        sgn = +1.0;
                    }
                    /*[3]*/
                    double _imopVarPre192_imopVar120;
                    /*[3]*/
                    double _imopVarPre193_imopVar121;
                    /*[3]*/
                    double _imopVarPre194_imopVar122;
                    /*[3]*/
#pragma omp master
                    {
                    /*[3]*/
                        /*[3]*/
                        _imopVarPre192_imopVar120 = (double) n;
                        /*[3]*/
                        _imopVarPre193_imopVar121 = log(_imopVarPre192_imopVar120);
                        /*[3]*/
                        /*[3]*/
                        _imopVarPre194_imopVar122 = log(1.99);
                        /*[3]*/
                        /*[3]*/
                        m_imopVar117 = (int) (_imopVarPre193_imopVar121 / _imopVarPre194_imopVar122);
                        /*[3]*/
                        mj_imopVar118 = 1;
                        /*[3]*/
                        tgle_imopVar119 = 1;
                    }
                    /*[3]*/
                    double *_imopVarPre199_imopVar123;
                    /*[3]*/
                    double *_imopVarPre200_imopVar124;
                    /*[3]*/
                    double *_imopVarPre201_imopVar125;
                    /*[3]*/
                    double *_imopVarPre202_imopVar126;
                    /*[3]*/
#pragma omp master
                    {
                    /*[3]*/
                        /*[3]*/
                        _imopVarPre199_imopVar123 = &y[mj_imopVar118 * 2 + 0];
                        /*[3]*/
                        _imopVarPre200_imopVar124 = &y[0 * 2 + 0];
                        /*[3]*/
                        _imopVarPre201_imopVar125 = &x[(n / 2) * 2 + 0];
                        /*[3]*/
                        _imopVarPre202_imopVar126 = &x[0 * 2 + 0];
                        /*[3]*/
                        a_imopVar127 = _imopVarPre202_imopVar126;
                        /*[3]*/
                        b_imopVar128 = _imopVarPre201_imopVar125;
                        /*[3]*/
                        c_imopVar129 = _imopVarPre200_imopVar124;
                        /*[3]*/
                        d_imopVar130 = _imopVarPre199_imopVar123;
                    }
                    /*[3]*/
                    double ambr;
                    /*[3]*/
                    double ambu;
                    /*[3]*/
                    int j;
                    /*[3]*/
                    int ja;
                    /*[3]*/
                    int jb;
                    /*[3]*/
                    int jc;
                    /*[3]*/
                    int jd;
                    /*[3]*/
                    int jw;
                    /*[3]*/
                    int k;
                    /*[3]*/
                    double wjw[2];
                    /*[3]*/
#pragma omp master
                    {
                    /*[3]*/
                        /*[3]*/
                        mj2_imopVar132 = 2 * mj_imopVar118;
                        /*[3]*/
                        lj_imopVar131 = n / mj2_imopVar132;
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
                    for (j = 0; j < lj_imopVar131; j++) {
                    /*[4]*/
                        /*[4]*/
                        jw = j * mj_imopVar118;
                        /*[4]*/
                        ja = jw;
                        /*[4]*/
                        jb = ja;
                        /*[4]*/
                        jc = j * mj2_imopVar132;
                        /*[4]*/
                        jd = jc;
                        /*[4]*/
                        wjw[0] = w[jw * 2 + 0];
                        /*[4]*/
                        wjw[1] = w[jw * 2 + 1];
                        /*[4]*/
                        /*[4]*/
                        if (sgn < 0.0) {
                        /*[4]*/
                            /*[4]*/
                            wjw[1] = -wjw[1];
                        }
                        /*[4]*/
                        /*[4]*/
                        /*[4]*/
                        /*[4]*/
                        for (k = 0; k < mj_imopVar118; k++) {
                        /*[4]*/
                            /*[4]*/
                            c_imopVar129[(jc + k) * 2 + 0] = a_imopVar127[(ja + k) * 2 + 0] + b_imopVar128[(jb + k) * 2 + 0];
                            /*[4]*/
                            c_imopVar129[(jc + k) * 2 + 1] = a_imopVar127[(ja + k) * 2 + 1] + b_imopVar128[(jb + k) * 2 + 1];
                            /*[4]*/
                            ambr = a_imopVar127[(ja + k) * 2 + 0] - b_imopVar128[(jb + k) * 2 + 0];
                            /*[4]*/
                            ambu = a_imopVar127[(ja + k) * 2 + 1] - b_imopVar128[(jb + k) * 2 + 1];
                            /*[4]*/
                            d_imopVar130[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                            /*[4]*/
                            d_imopVar130[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                        }
                    }
                }
                /*[]*/
                /*[]*/
                if (n == 2) {
                /*[]*/
                    /*[]*/
                    goto cfft2_imopVar115;
                }
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (j_imopVar116 = 0; j_imopVar116 < m_imopVar117 - 2; j_imopVar116++) {
                /*[]*/
                    /*[]*/
                    mj_imopVar118 = mj_imopVar118 * 2;
                    /*[]*/
                    /*[]*/
                    if (tgle_imopVar119) {
                    /*[]*/
                        /*[]*/
                        double *a;
                        /*[]*/
                        double *b;
                        /*[]*/
                        double *c;
                        /*[]*/
                        double *d;
                        /*[]*/
                        int lj;
                        /*[]*/
                        int mj2;
                        /*[5]*/
#pragma omp parallel shared(a, b, c, d, lj, mj_imopVar118, mj2, sgn, w)
                        {
                        /*[5]*/
                            /*[5]*/
                            double *_imopVarPre207;
                            /*[5]*/
                            double *_imopVarPre208;
                            /*[5]*/
                            double *_imopVarPre209;
                            /*[5]*/
                            double *_imopVarPre210;
                            /*[5]*/
#pragma omp master
                            {
                            /*[5]*/
                                /*[5]*/
                                _imopVarPre207 = &x[mj_imopVar118 * 2 + 0];
                                /*[5]*/
                                _imopVarPre208 = &x[0 * 2 + 0];
                                /*[5]*/
                                _imopVarPre209 = &y[(n / 2) * 2 + 0];
                                /*[5]*/
                                _imopVarPre210 = &y[0 * 2 + 0];
                                /*[5]*/
                                a = _imopVarPre210;
                                /*[5]*/
                                b = _imopVarPre209;
                                /*[5]*/
                                c = _imopVarPre208;
                                /*[5]*/
                                d = _imopVarPre207;
                            }
                            /*[5]*/
                            double ambr;
                            /*[5]*/
                            double ambu;
                            /*[5]*/
                            int j;
                            /*[5]*/
                            int ja;
                            /*[5]*/
                            int jb;
                            /*[5]*/
                            int jc;
                            /*[5]*/
                            int jd;
                            /*[5]*/
                            int jw;
                            /*[5]*/
                            int k;
                            /*[5]*/
                            double wjw[2];
                            /*[5]*/
#pragma omp master
                            {
                            /*[5]*/
                                /*[5]*/
                                mj2 = 2 * mj_imopVar118;
                                /*[5]*/
                                lj = n / mj2;
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
                            for (j = 0; j < lj; j++) {
                            /*[6]*/
                                /*[6]*/
                                jw = j * mj_imopVar118;
                                /*[6]*/
                                ja = jw;
                                /*[6]*/
                                jb = ja;
                                /*[6]*/
                                jc = j * mj2;
                                /*[6]*/
                                jd = jc;
                                /*[6]*/
                                wjw[0] = w[jw * 2 + 0];
                                /*[6]*/
                                wjw[1] = w[jw * 2 + 1];
                                /*[6]*/
                                /*[6]*/
                                if (sgn < 0.0) {
                                /*[6]*/
                                    /*[6]*/
                                    wjw[1] = -wjw[1];
                                }
                                /*[6]*/
                                /*[6]*/
                                /*[6]*/
                                /*[6]*/
                                for (k = 0; k < mj_imopVar118; k++) {
                                /*[6]*/
                                    /*[6]*/
                                    c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                    /*[6]*/
                                    c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                    /*[6]*/
                                    ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                    /*[6]*/
                                    ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                    /*[6]*/
                                    d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                    /*[6]*/
                                    d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                }
                            }
                            /*[6]*/
#pragma omp master
                            {
                            /*[6]*/
                                /*[6]*/
                                tgle_imopVar119 = 0;
                            }
                        }
                    } else {
                    /*[]*/
                        /*[]*/
                        double *b;
                        /*[]*/
                        double *c;
                        /*[]*/
                        double *d;
                        /*[]*/
                        int lj;
                        /*[]*/
                        int mj2;
                        /*[]*/
                        double *a;
                        /*[7]*/
#pragma omp parallel shared(a, b, c, d, lj, mj_imopVar118, mj2, sgn, w)
                        {
                        /*[7]*/
                            /*[7]*/
                            double *_imopVarPre215;
                            /*[7]*/
                            double *_imopVarPre216;
                            /*[7]*/
                            double *_imopVarPre217;
                            /*[7]*/
                            double *_imopVarPre218;
                            /*[7]*/
#pragma omp master
                            {
                            /*[7]*/
                                /*[7]*/
                                _imopVarPre215 = &y[mj_imopVar118 * 2 + 0];
                                /*[7]*/
                                _imopVarPre216 = &y[0 * 2 + 0];
                                /*[7]*/
                                _imopVarPre217 = &x[(n / 2) * 2 + 0];
                                /*[7]*/
                                _imopVarPre218 = &x[0 * 2 + 0];
                                /*[7]*/
                                a = _imopVarPre218;
                                /*[7]*/
                                b = _imopVarPre217;
                                /*[7]*/
                                c = _imopVarPre216;
                                /*[7]*/
                                d = _imopVarPre215;
                            }
                            /*[7]*/
                            double ambr;
                            /*[7]*/
                            double ambu;
                            /*[7]*/
                            int j;
                            /*[7]*/
                            int ja;
                            /*[7]*/
                            int jb;
                            /*[7]*/
                            int jc;
                            /*[7]*/
                            int jd;
                            /*[7]*/
                            int jw;
                            /*[7]*/
                            int k;
                            /*[7]*/
                            double wjw[2];
                            /*[7]*/
#pragma omp master
                            {
                            /*[7]*/
                                /*[7]*/
                                mj2 = 2 * mj_imopVar118;
                                /*[7]*/
                                lj = n / mj2;
                            }
                            /*[7]*/
                            // #pragma omp dummyFlush BARRIER_START
                            /*[7]*/
#pragma omp barrier
                            /*[8]*/
#pragma omp for nowait
                            /*[8]*/
                            /*[8]*/
                            /*[8]*/
                            for (j = 0; j < lj; j++) {
                            /*[8]*/
                                /*[8]*/
                                jw = j * mj_imopVar118;
                                /*[8]*/
                                ja = jw;
                                /*[8]*/
                                jb = ja;
                                /*[8]*/
                                jc = j * mj2;
                                /*[8]*/
                                jd = jc;
                                /*[8]*/
                                wjw[0] = w[jw * 2 + 0];
                                /*[8]*/
                                wjw[1] = w[jw * 2 + 1];
                                /*[8]*/
                                /*[8]*/
                                if (sgn < 0.0) {
                                /*[8]*/
                                    /*[8]*/
                                    wjw[1] = -wjw[1];
                                }
                                /*[8]*/
                                /*[8]*/
                                /*[8]*/
                                /*[8]*/
                                for (k = 0; k < mj_imopVar118; k++) {
                                /*[8]*/
                                    /*[8]*/
                                    c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                    /*[8]*/
                                    c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                    /*[8]*/
                                    ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                    /*[8]*/
                                    ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                    /*[8]*/
                                    d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                    /*[8]*/
                                    d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                }
                            }
                            /*[8]*/
#pragma omp master
                            {
                            /*[8]*/
                                /*[8]*/
                                tgle_imopVar119 = 1;
                            }
                        }
                    }
                }
                /*[]*/
                int lj;
                /*[]*/
                int mj2;
                /*[]*/
                double *a;
                /*[]*/
                double *b;
                /*[]*/
                double *c;
                /*[]*/
                double *d;
                /*[9]*/
#pragma omp parallel shared(a_imopVar75_imopVar137, b_imopVar76_imopVar138, c_imopVar77_imopVar139, d_imopVar78_imopVar140, lj_imopVar79_imopVar141, mj_imopVar118, mj2_imopVar80_imopVar142, sgn, w)
                {
                /*[9]*/
                    /*[9]*/
#pragma omp master
                    {
                    /*[9]*/
                        /*[9]*/
                        /*[9]*/
                        if (tgle_imopVar119) {
                        /*[9]*/
                            /*[9]*/
                            ccopy(n, y, x);
                            /*[9]*/
                        }
                        /*[9]*/
                        mj_imopVar118 = n / 2;
                    }
                    /*[9]*/
                    double *_imopVarPre223_imopVar133;
                    /*[9]*/
                    double *_imopVarPre224_imopVar134;
                    /*[9]*/
                    double *_imopVarPre225_imopVar135;
                    /*[9]*/
                    double *_imopVarPre226_imopVar136;
                    /*[9]*/
#pragma omp master
                    {
                    /*[9]*/
                        /*[9]*/
                        _imopVarPre223_imopVar133 = &y[mj_imopVar118 * 2 + 0];
                        /*[9]*/
                        _imopVarPre224_imopVar134 = &y[0 * 2 + 0];
                        /*[9]*/
                        _imopVarPre225_imopVar135 = &x[(n / 2) * 2 + 0];
                        /*[9]*/
                        _imopVarPre226_imopVar136 = &x[0 * 2 + 0];
                        /*[9]*/
                        a_imopVar75_imopVar137 = _imopVarPre226_imopVar136;
                        /*[9]*/
                        b_imopVar76_imopVar138 = _imopVarPre225_imopVar135;
                        /*[9]*/
                        c_imopVar77_imopVar139 = _imopVarPre224_imopVar134;
                        /*[9]*/
                        d_imopVar78_imopVar140 = _imopVarPre223_imopVar133;
                    }
                    /*[9]*/
                    double ambr;
                    /*[9]*/
                    double ambu;
                    /*[9]*/
                    int j;
                    /*[9]*/
                    int ja;
                    /*[9]*/
                    int jb;
                    /*[9]*/
                    int jc;
                    /*[9]*/
                    int jd;
                    /*[9]*/
                    int jw;
                    /*[9]*/
                    int k;
                    /*[9]*/
                    double wjw[2];
                    /*[9]*/
#pragma omp master
                    {
                    /*[9]*/
                        /*[9]*/
                        mj2_imopVar80_imopVar142 = 2 * mj_imopVar118;
                        /*[9]*/
                        lj_imopVar79_imopVar141 = n / mj2_imopVar80_imopVar142;
                    }
                    /*[9]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[9]*/
#pragma omp barrier
                    /*[10]*/
#pragma omp for nowait
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    for (j = 0; j < lj_imopVar79_imopVar141; j++) {
                    /*[10]*/
                        /*[10]*/
                        jw = j * mj_imopVar118;
                        /*[10]*/
                        ja = jw;
                        /*[10]*/
                        jb = ja;
                        /*[10]*/
                        jc = j * mj2_imopVar80_imopVar142;
                        /*[10]*/
                        jd = jc;
                        /*[10]*/
                        wjw[0] = w[jw * 2 + 0];
                        /*[10]*/
                        wjw[1] = w[jw * 2 + 1];
                        /*[10]*/
                        /*[10]*/
                        if (sgn < 0.0) {
                        /*[10]*/
                            /*[10]*/
                            wjw[1] = -wjw[1];
                        }
                        /*[10]*/
                        /*[10]*/
                        /*[10]*/
                        /*[10]*/
                        for (k = 0; k < mj_imopVar118; k++) {
                        /*[10]*/
                            /*[10]*/
                            c_imopVar77_imopVar139[(jc + k) * 2 + 0] = a_imopVar75_imopVar137[(ja + k) * 2 + 0] + b_imopVar76_imopVar138[(jb + k) * 2 + 0];
                            /*[10]*/
                            c_imopVar77_imopVar139[(jc + k) * 2 + 1] = a_imopVar75_imopVar137[(ja + k) * 2 + 1] + b_imopVar76_imopVar138[(jb + k) * 2 + 1];
                            /*[10]*/
                            ambr = a_imopVar75_imopVar137[(ja + k) * 2 + 0] - b_imopVar76_imopVar138[(jb + k) * 2 + 0];
                            /*[10]*/
                            ambu = a_imopVar75_imopVar137[(ja + k) * 2 + 1] - b_imopVar76_imopVar138[(jb + k) * 2 + 1];
                            /*[10]*/
                            d_imopVar78_imopVar140[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                            /*[10]*/
                            d_imopVar78_imopVar140[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                        }
                    }
                }
                /*[]*/
                int j;
                /*[]*/
                goto cfft2_imopVar115;
                /*[]*/
                cfft2_imopVar115: ;
                /*[11]*/
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w)
                {
                /*[11]*/
                    /*[11]*/
#pragma omp master
                    {
                    /*[11]*/
                        /*[11]*/
                        sgn = -1.0;
                        /*[11]*/
                        x_imopVar112 = y;
                        /*[11]*/
                        y_imopVar113 = x;
                    }
                    /*[11]*/
                    double _imopVarPre192;
                    /*[11]*/
                    double _imopVarPre193;
                    /*[11]*/
                    double _imopVarPre194;
                    /*[11]*/
#pragma omp master
                    {
                    /*[11]*/
                        /*[11]*/
                        _imopVarPre192 = (double) n;
                        /*[11]*/
                        _imopVarPre193 = log(_imopVarPre192);
                        /*[11]*/
                        /*[11]*/
                        _imopVarPre194 = log(1.99);
                        /*[11]*/
                        /*[11]*/
                        m = (int) (_imopVarPre193 / _imopVarPre194);
                        /*[11]*/
                        mj = 1;
                        /*[11]*/
                        tgle = 1;
                    }
                    /*[11]*/
                    double *_imopVarPre199;
                    /*[11]*/
                    double *_imopVarPre200;
                    /*[11]*/
                    double *_imopVarPre201;
                    /*[11]*/
                    double *_imopVarPre202;
                    /*[11]*/
#pragma omp master
                    {
                    /*[11]*/
                        /*[11]*/
                        _imopVarPre199 = &y_imopVar113[mj * 2 + 0];
                        /*[11]*/
                        _imopVarPre200 = &y_imopVar113[0 * 2 + 0];
                        /*[11]*/
                        _imopVarPre201 = &x_imopVar112[(n / 2) * 2 + 0];
                        /*[11]*/
                        _imopVarPre202 = &x_imopVar112[0 * 2 + 0];
                        /*[11]*/
                        a = _imopVarPre202;
                        /*[11]*/
                        b = _imopVarPre201;
                        /*[11]*/
                        c = _imopVarPre200;
                        /*[11]*/
                        d = _imopVarPre199;
                    }
                    /*[11]*/
                    double ambr;
                    /*[11]*/
                    double ambu;
                    /*[11]*/
                    int j;
                    /*[11]*/
                    int ja;
                    /*[11]*/
                    int jb;
                    /*[11]*/
                    int jc;
                    /*[11]*/
                    int jd;
                    /*[11]*/
                    int jw;
                    /*[11]*/
                    int k;
                    /*[11]*/
                    double wjw[2];
                    /*[11]*/
#pragma omp master
                    {
                    /*[11]*/
                        /*[11]*/
                        mj2 = 2 * mj;
                        /*[11]*/
                        lj = n / mj2;
                    }
                    /*[11]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[11]*/
#pragma omp barrier
                    /*[12]*/
#pragma omp for nowait
                    /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    for (j = 0; j < lj; j++) {
                    /*[12]*/
                        /*[12]*/
                        jw = j * mj;
                        /*[12]*/
                        ja = jw;
                        /*[12]*/
                        jb = ja;
                        /*[12]*/
                        jc = j * mj2;
                        /*[12]*/
                        jd = jc;
                        /*[12]*/
                        wjw[0] = w[jw * 2 + 0];
                        /*[12]*/
                        wjw[1] = w[jw * 2 + 1];
                        /*[12]*/
                        /*[12]*/
                        if (sgn < 0.0) {
                        /*[12]*/
                            /*[12]*/
                            wjw[1] = -wjw[1];
                        }
                        /*[12]*/
                        /*[12]*/
                        /*[12]*/
                        /*[12]*/
                        for (k = 0; k < mj; k++) {
                        /*[12]*/
                            /*[12]*/
                            c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                            /*[12]*/
                            c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                            /*[12]*/
                            ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                            /*[12]*/
                            ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                            /*[12]*/
                            d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                            /*[12]*/
                            d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                        }
                    }
                }
                /*[]*/
                /*[]*/
                if (n == 2) {
                /*[]*/
                    /*[]*/
                    goto cfft2_imopVar114;
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
                        int lj;
                        /*[]*/
                        int mj2;
                        /*[]*/
                        double *a;
                        /*[]*/
                        double *b;
                        /*[]*/
                        double *c;
                        /*[]*/
                        double *d;
                        /*[13]*/
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w)
                        {
                        /*[13]*/
                            /*[13]*/
                            double *_imopVarPre207;
                            /*[13]*/
                            double *_imopVarPre208;
                            /*[13]*/
                            double *_imopVarPre209;
                            /*[13]*/
                            double *_imopVarPre210;
                            /*[13]*/
#pragma omp master
                            {
                            /*[13]*/
                                /*[13]*/
                                _imopVarPre207 = &x_imopVar112[mj * 2 + 0];
                                /*[13]*/
                                _imopVarPre208 = &x_imopVar112[0 * 2 + 0];
                                /*[13]*/
                                _imopVarPre209 = &y_imopVar113[(n / 2) * 2 + 0];
                                /*[13]*/
                                _imopVarPre210 = &y_imopVar113[0 * 2 + 0];
                                /*[13]*/
                                a = _imopVarPre210;
                                /*[13]*/
                                b = _imopVarPre209;
                                /*[13]*/
                                c = _imopVarPre208;
                                /*[13]*/
                                d = _imopVarPre207;
                            }
                            /*[13]*/
                            double ambr;
                            /*[13]*/
                            double ambu;
                            /*[13]*/
                            int j;
                            /*[13]*/
                            int ja;
                            /*[13]*/
                            int jb;
                            /*[13]*/
                            int jc;
                            /*[13]*/
                            int jd;
                            /*[13]*/
                            int jw;
                            /*[13]*/
                            int k;
                            /*[13]*/
                            double wjw[2];
                            /*[13]*/
#pragma omp master
                            {
                            /*[13]*/
                                /*[13]*/
                                mj2 = 2 * mj;
                                /*[13]*/
                                lj = n / mj2;
                            }
                            /*[13]*/
                            // #pragma omp dummyFlush BARRIER_START
                            /*[13]*/
#pragma omp barrier
                            /*[14]*/
#pragma omp for nowait
                            /*[14]*/
                            /*[14]*/
                            /*[14]*/
                            for (j = 0; j < lj; j++) {
                            /*[14]*/
                                /*[14]*/
                                jw = j * mj;
                                /*[14]*/
                                ja = jw;
                                /*[14]*/
                                jb = ja;
                                /*[14]*/
                                jc = j * mj2;
                                /*[14]*/
                                jd = jc;
                                /*[14]*/
                                wjw[0] = w[jw * 2 + 0];
                                /*[14]*/
                                wjw[1] = w[jw * 2 + 1];
                                /*[14]*/
                                /*[14]*/
                                if (sgn < 0.0) {
                                /*[14]*/
                                    /*[14]*/
                                    wjw[1] = -wjw[1];
                                }
                                /*[14]*/
                                /*[14]*/
                                /*[14]*/
                                /*[14]*/
                                for (k = 0; k < mj; k++) {
                                /*[14]*/
                                    /*[14]*/
                                    c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                    /*[14]*/
                                    c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                    /*[14]*/
                                    ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                    /*[14]*/
                                    ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                    /*[14]*/
                                    d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                    /*[14]*/
                                    d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                }
                            }
                            /*[14]*/
#pragma omp master
                            {
                            /*[14]*/
                                /*[14]*/
                                tgle = 0;
                            }
                        }
                    } else {
                    /*[]*/
                        /*[]*/
                        int mj2;
                        /*[]*/
                        double *a;
                        /*[]*/
                        double *b;
                        /*[]*/
                        double *c;
                        /*[]*/
                        double *d;
                        /*[]*/
                        int lj;
                        /*[15]*/
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w)
                        {
                        /*[15]*/
                            /*[15]*/
                            double *_imopVarPre215;
                            /*[15]*/
                            double *_imopVarPre216;
                            /*[15]*/
                            double *_imopVarPre217;
                            /*[15]*/
                            double *_imopVarPre218;
                            /*[15]*/
#pragma omp master
                            {
                            /*[15]*/
                                /*[15]*/
                                _imopVarPre215 = &y_imopVar113[mj * 2 + 0];
                                /*[15]*/
                                _imopVarPre216 = &y_imopVar113[0 * 2 + 0];
                                /*[15]*/
                                _imopVarPre217 = &x_imopVar112[(n / 2) * 2 + 0];
                                /*[15]*/
                                _imopVarPre218 = &x_imopVar112[0 * 2 + 0];
                                /*[15]*/
                                a = _imopVarPre218;
                                /*[15]*/
                                b = _imopVarPre217;
                                /*[15]*/
                                c = _imopVarPre216;
                                /*[15]*/
                                d = _imopVarPre215;
                            }
                            /*[15]*/
                            double ambr;
                            /*[15]*/
                            double ambu;
                            /*[15]*/
                            int j;
                            /*[15]*/
                            int ja;
                            /*[15]*/
                            int jb;
                            /*[15]*/
                            int jc;
                            /*[15]*/
                            int jd;
                            /*[15]*/
                            int jw;
                            /*[15]*/
                            int k;
                            /*[15]*/
                            double wjw[2];
                            /*[15]*/
#pragma omp master
                            {
                            /*[15]*/
                                /*[15]*/
                                mj2 = 2 * mj;
                                /*[15]*/
                                lj = n / mj2;
                            }
                            /*[15]*/
                            // #pragma omp dummyFlush BARRIER_START
                            /*[15]*/
#pragma omp barrier
                            /*[16]*/
#pragma omp for nowait
                            /*[16]*/
                            /*[16]*/
                            /*[16]*/
                            for (j = 0; j < lj; j++) {
                            /*[16]*/
                                /*[16]*/
                                jw = j * mj;
                                /*[16]*/
                                ja = jw;
                                /*[16]*/
                                jb = ja;
                                /*[16]*/
                                jc = j * mj2;
                                /*[16]*/
                                jd = jc;
                                /*[16]*/
                                wjw[0] = w[jw * 2 + 0];
                                /*[16]*/
                                wjw[1] = w[jw * 2 + 1];
                                /*[16]*/
                                /*[16]*/
                                if (sgn < 0.0) {
                                /*[16]*/
                                    /*[16]*/
                                    wjw[1] = -wjw[1];
                                }
                                /*[16]*/
                                /*[16]*/
                                /*[16]*/
                                /*[16]*/
                                for (k = 0; k < mj; k++) {
                                /*[16]*/
                                    /*[16]*/
                                    c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                    /*[16]*/
                                    c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                    /*[16]*/
                                    ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                    /*[16]*/
                                    ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                    /*[16]*/
                                    d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                    /*[16]*/
                                    d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                }
                            }
                            /*[16]*/
#pragma omp master
                            {
                            /*[16]*/
                                /*[16]*/
                                tgle = 1;
                            }
                        }
                    }
                }
                /*[17]*/
#pragma omp parallel shared(a_imopVar75, b_imopVar76, c_imopVar77, d_imopVar78, lj_imopVar79, mj, mj2_imopVar80, sgn, w)
                {
                /*[17]*/
                    /*[17]*/
#pragma omp master
                    {
                    /*[17]*/
                        /*[17]*/
                        /*[17]*/
                        if (tgle) {
                        /*[17]*/
                            /*[17]*/
                            ccopy(n, y_imopVar113, x_imopVar112);
                            /*[17]*/
                        }
                        /*[17]*/
                        mj = n / 2;
                    }
                    /*[17]*/
                    double *_imopVarPre223;
                    /*[17]*/
                    double *_imopVarPre224;
                    /*[17]*/
                    double *_imopVarPre225;
                    /*[17]*/
                    double *_imopVarPre226;
                    /*[17]*/
#pragma omp master
                    {
                    /*[17]*/
                        /*[17]*/
                        _imopVarPre223 = &y_imopVar113[mj * 2 + 0];
                        /*[17]*/
                        _imopVarPre224 = &y_imopVar113[0 * 2 + 0];
                        /*[17]*/
                        _imopVarPre225 = &x_imopVar112[(n / 2) * 2 + 0];
                        /*[17]*/
                        _imopVarPre226 = &x_imopVar112[0 * 2 + 0];
                        /*[17]*/
                        a_imopVar75 = _imopVarPre226;
                        /*[17]*/
                        b_imopVar76 = _imopVarPre225;
                        /*[17]*/
                        c_imopVar77 = _imopVarPre224;
                        /*[17]*/
                        d_imopVar78 = _imopVarPre223;
                    }
                    /*[17]*/
                    double ambr;
                    /*[17]*/
                    double ambu;
                    /*[17]*/
                    int j;
                    /*[17]*/
                    int ja;
                    /*[17]*/
                    int jb;
                    /*[17]*/
                    int jc;
                    /*[17]*/
                    int jd;
                    /*[17]*/
                    int jw;
                    /*[17]*/
                    int k;
                    /*[17]*/
                    double wjw[2];
                    /*[17]*/
#pragma omp master
                    {
                    /*[17]*/
                        /*[17]*/
                        mj2_imopVar80 = 2 * mj;
                        /*[17]*/
                        lj_imopVar79 = n / mj2_imopVar80;
                    }
                    /*[17]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[17]*/
#pragma omp barrier
                    /*[18]*/
#pragma omp for nowait
                    /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    for (j = 0; j < lj_imopVar79; j++) {
                    /*[18]*/
                        /*[18]*/
                        jw = j * mj;
                        /*[18]*/
                        ja = jw;
                        /*[18]*/
                        jb = ja;
                        /*[18]*/
                        jc = j * mj2_imopVar80;
                        /*[18]*/
                        jd = jc;
                        /*[18]*/
                        wjw[0] = w[jw * 2 + 0];
                        /*[18]*/
                        wjw[1] = w[jw * 2 + 1];
                        /*[18]*/
                        /*[18]*/
                        if (sgn < 0.0) {
                        /*[18]*/
                            /*[18]*/
                            wjw[1] = -wjw[1];
                        }
                        /*[18]*/
                        /*[18]*/
                        /*[18]*/
                        /*[18]*/
                        for (k = 0; k < mj; k++) {
                        /*[18]*/
                            /*[18]*/
                            c_imopVar77[(jc + k) * 2 + 0] = a_imopVar75[(ja + k) * 2 + 0] + b_imopVar76[(jb + k) * 2 + 0];
                            /*[18]*/
                            c_imopVar77[(jc + k) * 2 + 1] = a_imopVar75[(ja + k) * 2 + 1] + b_imopVar76[(jb + k) * 2 + 1];
                            /*[18]*/
                            ambr = a_imopVar75[(ja + k) * 2 + 0] - b_imopVar76[(jb + k) * 2 + 0];
                            /*[18]*/
                            ambu = a_imopVar75[(ja + k) * 2 + 1] - b_imopVar76[(jb + k) * 2 + 1];
                            /*[18]*/
                            d_imopVar78[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                            /*[18]*/
                            d_imopVar78[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                        }
                    }
                }
                /*[]*/
                goto cfft2_imopVar114;
                /*[]*/
                cfft2_imopVar114: ;
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
                    double *x_imopVar81;
                    /*[]*/
                    double *y_imopVar82;
                    /*[]*/
                    int m;
                    /*[]*/
                    int mj;
                    /*[]*/
                    int tgle;
                    /*[]*/
                    double *b_imopVar97;
                    /*[]*/
                    double *a_imopVar75_imopVar106;
                    /*[]*/
                    double *b_imopVar76_imopVar107;
                    /*[]*/
                    double *c_imopVar77_imopVar108;
                    /*[]*/
                    double *d_imopVar78_imopVar109;
                    /*[]*/
                    int lj_imopVar79_imopVar110;
                    /*[]*/
                    int mj2_imopVar80_imopVar111;
                    /*[]*/
                    double *c_imopVar98;
                    /*[]*/
                    double *d_imopVar99;
                    /*[]*/
                    int lj_imopVar100;
                    /*[]*/
                    int mj2_imopVar101;
                    /*[]*/
                    int j_imopVar85;
                    /*[]*/
                    int m_imopVar86;
                    /*[]*/
                    int mj_imopVar87;
                    /*[]*/
                    int tgle_imopVar88;
                    /*[]*/
                    double *a_imopVar96;
                    /*[19]*/
#pragma omp parallel shared(a_imopVar96, b_imopVar97, c_imopVar98, d_imopVar99, lj_imopVar100, mj_imopVar87, mj2_imopVar101, sgn, w)
                    {
                    /*[19]*/
                        /*[19]*/
#pragma omp master
                        {
                        /*[19]*/
                            /*[19]*/
                            sgn = +1.0;
                        }
                        /*[19]*/
                        double _imopVarPre192_imopVar89;
                        /*[19]*/
                        double _imopVarPre193_imopVar90;
                        /*[19]*/
                        double _imopVarPre194_imopVar91;
                        /*[19]*/
#pragma omp master
                        {
                        /*[19]*/
                            /*[19]*/
                            _imopVarPre192_imopVar89 = (double) n;
                            /*[19]*/
                            _imopVarPre193_imopVar90 = log(_imopVarPre192_imopVar89);
                            /*[19]*/
                            /*[19]*/
                            _imopVarPre194_imopVar91 = log(1.99);
                            /*[19]*/
                            /*[19]*/
                            m_imopVar86 = (int) (_imopVarPre193_imopVar90 / _imopVarPre194_imopVar91);
                            /*[19]*/
                            mj_imopVar87 = 1;
                            /*[19]*/
                            tgle_imopVar88 = 1;
                        }
                        /*[19]*/
                        double *_imopVarPre199_imopVar92;
                        /*[19]*/
                        double *_imopVarPre200_imopVar93;
                        /*[19]*/
                        double *_imopVarPre201_imopVar94;
                        /*[19]*/
                        double *_imopVarPre202_imopVar95;
                        /*[19]*/
#pragma omp master
                        {
                        /*[19]*/
                            /*[19]*/
                            _imopVarPre199_imopVar92 = &y[mj_imopVar87 * 2 + 0];
                            /*[19]*/
                            _imopVarPre200_imopVar93 = &y[0 * 2 + 0];
                            /*[19]*/
                            _imopVarPre201_imopVar94 = &x[(n / 2) * 2 + 0];
                            /*[19]*/
                            _imopVarPre202_imopVar95 = &x[0 * 2 + 0];
                            /*[19]*/
                            a_imopVar96 = _imopVarPre202_imopVar95;
                            /*[19]*/
                            b_imopVar97 = _imopVarPre201_imopVar94;
                            /*[19]*/
                            c_imopVar98 = _imopVarPre200_imopVar93;
                            /*[19]*/
                            d_imopVar99 = _imopVarPre199_imopVar92;
                        }
                        /*[19]*/
                        double ambr;
                        /*[19]*/
                        double ambu;
                        /*[19]*/
                        int j;
                        /*[19]*/
                        int ja;
                        /*[19]*/
                        int jb;
                        /*[19]*/
                        int jc;
                        /*[19]*/
                        int jd;
                        /*[19]*/
                        int jw;
                        /*[19]*/
                        int k;
                        /*[19]*/
                        double wjw[2];
                        /*[19]*/
#pragma omp master
                        {
                        /*[19]*/
                            /*[19]*/
                            mj2_imopVar101 = 2 * mj_imopVar87;
                            /*[19]*/
                            lj_imopVar100 = n / mj2_imopVar101;
                        }
                        /*[19]*/
                        // #pragma omp dummyFlush BARRIER_START
                        /*[19]*/
#pragma omp barrier
                        /*[20]*/
#pragma omp for nowait
                        /*[20]*/
                        /*[20]*/
                        /*[20]*/
                        for (j = 0; j < lj_imopVar100; j++) {
                        /*[20]*/
                            /*[20]*/
                            jw = j * mj_imopVar87;
                            /*[20]*/
                            ja = jw;
                            /*[20]*/
                            jb = ja;
                            /*[20]*/
                            jc = j * mj2_imopVar101;
                            /*[20]*/
                            jd = jc;
                            /*[20]*/
                            wjw[0] = w[jw * 2 + 0];
                            /*[20]*/
                            wjw[1] = w[jw * 2 + 1];
                            /*[20]*/
                            /*[20]*/
                            if (sgn < 0.0) {
                            /*[20]*/
                                /*[20]*/
                                wjw[1] = -wjw[1];
                            }
                            /*[20]*/
                            /*[20]*/
                            /*[20]*/
                            /*[20]*/
                            for (k = 0; k < mj_imopVar87; k++) {
                            /*[20]*/
                                /*[20]*/
                                c_imopVar98[(jc + k) * 2 + 0] = a_imopVar96[(ja + k) * 2 + 0] + b_imopVar97[(jb + k) * 2 + 0];
                                /*[20]*/
                                c_imopVar98[(jc + k) * 2 + 1] = a_imopVar96[(ja + k) * 2 + 1] + b_imopVar97[(jb + k) * 2 + 1];
                                /*[20]*/
                                ambr = a_imopVar96[(ja + k) * 2 + 0] - b_imopVar97[(jb + k) * 2 + 0];
                                /*[20]*/
                                ambu = a_imopVar96[(ja + k) * 2 + 1] - b_imopVar97[(jb + k) * 2 + 1];
                                /*[20]*/
                                d_imopVar99[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                /*[20]*/
                                d_imopVar99[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                            }
                        }
                    }
                    /*[]*/
                    /*[]*/
                    if (n == 2) {
                    /*[]*/
                        /*[]*/
                        goto cfft2_imopVar84;
                    }
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    for (j_imopVar85 = 0; j_imopVar85 < m_imopVar86 - 2; j_imopVar85++) {
                    /*[]*/
                        /*[]*/
                        mj_imopVar87 = mj_imopVar87 * 2;
                        /*[]*/
                        /*[]*/
                        if (tgle_imopVar88) {
                        /*[]*/
                            /*[]*/
                            double *c;
                            /*[]*/
                            double *d;
                            /*[]*/
                            int lj;
                            /*[]*/
                            int mj2;
                            /*[]*/
                            double *a;
                            /*[]*/
                            double *b;
                            /*[21]*/
#pragma omp parallel shared(a, b, c, d, lj, mj_imopVar87, mj2, sgn, w)
                            {
                            /*[21]*/
                                /*[21]*/
                                double *_imopVarPre207;
                                /*[21]*/
                                double *_imopVarPre208;
                                /*[21]*/
                                double *_imopVarPre209;
                                /*[21]*/
                                double *_imopVarPre210;
                                /*[21]*/
#pragma omp master
                                {
                                /*[21]*/
                                    /*[21]*/
                                    _imopVarPre207 = &x[mj_imopVar87 * 2 + 0];
                                    /*[21]*/
                                    _imopVarPre208 = &x[0 * 2 + 0];
                                    /*[21]*/
                                    _imopVarPre209 = &y[(n / 2) * 2 + 0];
                                    /*[21]*/
                                    _imopVarPre210 = &y[0 * 2 + 0];
                                    /*[21]*/
                                    a = _imopVarPre210;
                                    /*[21]*/
                                    b = _imopVarPre209;
                                    /*[21]*/
                                    c = _imopVarPre208;
                                    /*[21]*/
                                    d = _imopVarPre207;
                                }
                                /*[21]*/
                                double ambr;
                                /*[21]*/
                                double ambu;
                                /*[21]*/
                                int j;
                                /*[21]*/
                                int ja;
                                /*[21]*/
                                int jb;
                                /*[21]*/
                                int jc;
                                /*[21]*/
                                int jd;
                                /*[21]*/
                                int jw;
                                /*[21]*/
                                int k;
                                /*[21]*/
                                double wjw[2];
                                /*[21]*/
#pragma omp master
                                {
                                /*[21]*/
                                    /*[21]*/
                                    mj2 = 2 * mj_imopVar87;
                                    /*[21]*/
                                    lj = n / mj2;
                                }
                                /*[21]*/
                                // #pragma omp dummyFlush BARRIER_START
                                /*[21]*/
#pragma omp barrier
                                /*[22]*/
#pragma omp for nowait
                                /*[22]*/
                                /*[22]*/
                                /*[22]*/
                                for (j = 0; j < lj; j++) {
                                /*[22]*/
                                    /*[22]*/
                                    jw = j * mj_imopVar87;
                                    /*[22]*/
                                    ja = jw;
                                    /*[22]*/
                                    jb = ja;
                                    /*[22]*/
                                    jc = j * mj2;
                                    /*[22]*/
                                    jd = jc;
                                    /*[22]*/
                                    wjw[0] = w[jw * 2 + 0];
                                    /*[22]*/
                                    wjw[1] = w[jw * 2 + 1];
                                    /*[22]*/
                                    /*[22]*/
                                    if (sgn < 0.0) {
                                    /*[22]*/
                                        /*[22]*/
                                        wjw[1] = -wjw[1];
                                    }
                                    /*[22]*/
                                    /*[22]*/
                                    /*[22]*/
                                    /*[22]*/
                                    for (k = 0; k < mj_imopVar87; k++) {
                                    /*[22]*/
                                        /*[22]*/
                                        c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                        /*[22]*/
                                        c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                        /*[22]*/
                                        ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                        /*[22]*/
                                        ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                        /*[22]*/
                                        d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                        /*[22]*/
                                        d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                    }
                                }
                                /*[22]*/
#pragma omp master
                                {
                                /*[22]*/
                                    /*[22]*/
                                    tgle_imopVar88 = 0;
                                }
                            }
                        } else {
                        /*[]*/
                            /*[]*/
                            double *d;
                            /*[]*/
                            int lj;
                            /*[]*/
                            int mj2;
                            /*[]*/
                            double *a;
                            /*[]*/
                            double *b;
                            /*[]*/
                            double *c;
                            /*[23]*/
#pragma omp parallel shared(a, b, c, d, lj, mj_imopVar87, mj2, sgn, w)
                            {
                            /*[23]*/
                                /*[23]*/
                                double *_imopVarPre215;
                                /*[23]*/
                                double *_imopVarPre216;
                                /*[23]*/
                                double *_imopVarPre217;
                                /*[23]*/
                                double *_imopVarPre218;
                                /*[23]*/
#pragma omp master
                                {
                                /*[23]*/
                                    /*[23]*/
                                    _imopVarPre215 = &y[mj_imopVar87 * 2 + 0];
                                    /*[23]*/
                                    _imopVarPre216 = &y[0 * 2 + 0];
                                    /*[23]*/
                                    _imopVarPre217 = &x[(n / 2) * 2 + 0];
                                    /*[23]*/
                                    _imopVarPre218 = &x[0 * 2 + 0];
                                    /*[23]*/
                                    a = _imopVarPre218;
                                    /*[23]*/
                                    b = _imopVarPre217;
                                    /*[23]*/
                                    c = _imopVarPre216;
                                    /*[23]*/
                                    d = _imopVarPre215;
                                }
                                /*[23]*/
                                double ambr;
                                /*[23]*/
                                double ambu;
                                /*[23]*/
                                int j;
                                /*[23]*/
                                int ja;
                                /*[23]*/
                                int jb;
                                /*[23]*/
                                int jc;
                                /*[23]*/
                                int jd;
                                /*[23]*/
                                int jw;
                                /*[23]*/
                                int k;
                                /*[23]*/
                                double wjw[2];
                                /*[23]*/
#pragma omp master
                                {
                                /*[23]*/
                                    /*[23]*/
                                    mj2 = 2 * mj_imopVar87;
                                    /*[23]*/
                                    lj = n / mj2;
                                }
                                /*[23]*/
                                // #pragma omp dummyFlush BARRIER_START
                                /*[23]*/
#pragma omp barrier
                                /*[24]*/
#pragma omp for nowait
                                /*[24]*/
                                /*[24]*/
                                /*[24]*/
                                for (j = 0; j < lj; j++) {
                                /*[24]*/
                                    /*[24]*/
                                    jw = j * mj_imopVar87;
                                    /*[24]*/
                                    ja = jw;
                                    /*[24]*/
                                    jb = ja;
                                    /*[24]*/
                                    jc = j * mj2;
                                    /*[24]*/
                                    jd = jc;
                                    /*[24]*/
                                    wjw[0] = w[jw * 2 + 0];
                                    /*[24]*/
                                    wjw[1] = w[jw * 2 + 1];
                                    /*[24]*/
                                    /*[24]*/
                                    if (sgn < 0.0) {
                                    /*[24]*/
                                        /*[24]*/
                                        wjw[1] = -wjw[1];
                                    }
                                    /*[24]*/
                                    /*[24]*/
                                    /*[24]*/
                                    /*[24]*/
                                    for (k = 0; k < mj_imopVar87; k++) {
                                    /*[24]*/
                                        /*[24]*/
                                        c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                        /*[24]*/
                                        c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                        /*[24]*/
                                        ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                        /*[24]*/
                                        ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                        /*[24]*/
                                        d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                        /*[24]*/
                                        d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                    }
                                }
                                /*[24]*/
#pragma omp master
                                {
                                /*[24]*/
                                    /*[24]*/
                                    tgle_imopVar88 = 1;
                                }
                            }
                        }
                    }
                    /*[]*/
                    double *a;
                    /*[]*/
                    double *b;
                    /*[]*/
                    double *c;
                    /*[]*/
                    double *d;
                    /*[]*/
                    int lj;
                    /*[]*/
                    int mj2;
                    /*[25]*/
#pragma omp parallel shared(a_imopVar75_imopVar106, b_imopVar76_imopVar107, c_imopVar77_imopVar108, d_imopVar78_imopVar109, lj_imopVar79_imopVar110, mj_imopVar87, mj2_imopVar80_imopVar111, sgn, w)
                    {
                    /*[25]*/
                        /*[25]*/
#pragma omp master
                        {
                        /*[25]*/
                            /*[25]*/
                            /*[25]*/
                            if (tgle_imopVar88) {
                            /*[25]*/
                                /*[25]*/
                                ccopy(n, y, x);
                                /*[25]*/
                            }
                            /*[25]*/
                            mj_imopVar87 = n / 2;
                        }
                        /*[25]*/
                        double *_imopVarPre223_imopVar102;
                        /*[25]*/
                        double *_imopVarPre224_imopVar103;
                        /*[25]*/
                        double *_imopVarPre225_imopVar104;
                        /*[25]*/
                        double *_imopVarPre226_imopVar105;
                        /*[25]*/
#pragma omp master
                        {
                        /*[25]*/
                            /*[25]*/
                            _imopVarPre223_imopVar102 = &y[mj_imopVar87 * 2 + 0];
                            /*[25]*/
                            _imopVarPre224_imopVar103 = &y[0 * 2 + 0];
                            /*[25]*/
                            _imopVarPre225_imopVar104 = &x[(n / 2) * 2 + 0];
                            /*[25]*/
                            _imopVarPre226_imopVar105 = &x[0 * 2 + 0];
                            /*[25]*/
                            a_imopVar75_imopVar106 = _imopVarPre226_imopVar105;
                            /*[25]*/
                            b_imopVar76_imopVar107 = _imopVarPre225_imopVar104;
                            /*[25]*/
                            c_imopVar77_imopVar108 = _imopVarPre224_imopVar103;
                            /*[25]*/
                            d_imopVar78_imopVar109 = _imopVarPre223_imopVar102;
                        }
                        /*[25]*/
                        double ambr;
                        /*[25]*/
                        double ambu;
                        /*[25]*/
                        int j;
                        /*[25]*/
                        int ja;
                        /*[25]*/
                        int jb;
                        /*[25]*/
                        int jc;
                        /*[25]*/
                        int jd;
                        /*[25]*/
                        int jw;
                        /*[25]*/
                        int k;
                        /*[25]*/
                        double wjw[2];
                        /*[25]*/
#pragma omp master
                        {
                        /*[25]*/
                            /*[25]*/
                            mj2_imopVar80_imopVar111 = 2 * mj_imopVar87;
                            /*[25]*/
                            lj_imopVar79_imopVar110 = n / mj2_imopVar80_imopVar111;
                        }
                        /*[25]*/
                        // #pragma omp dummyFlush BARRIER_START
                        /*[25]*/
#pragma omp barrier
                        /*[26]*/
#pragma omp for nowait
                        /*[26]*/
                        /*[26]*/
                        /*[26]*/
                        for (j = 0; j < lj_imopVar79_imopVar110; j++) {
                        /*[26]*/
                            /*[26]*/
                            jw = j * mj_imopVar87;
                            /*[26]*/
                            ja = jw;
                            /*[26]*/
                            jb = ja;
                            /*[26]*/
                            jc = j * mj2_imopVar80_imopVar111;
                            /*[26]*/
                            jd = jc;
                            /*[26]*/
                            wjw[0] = w[jw * 2 + 0];
                            /*[26]*/
                            wjw[1] = w[jw * 2 + 1];
                            /*[26]*/
                            /*[26]*/
                            if (sgn < 0.0) {
                            /*[26]*/
                                /*[26]*/
                                wjw[1] = -wjw[1];
                            }
                            /*[26]*/
                            /*[26]*/
                            /*[26]*/
                            /*[26]*/
                            for (k = 0; k < mj_imopVar87; k++) {
                            /*[26]*/
                                /*[26]*/
                                c_imopVar77_imopVar108[(jc + k) * 2 + 0] = a_imopVar75_imopVar106[(ja + k) * 2 + 0] + b_imopVar76_imopVar107[(jb + k) * 2 + 0];
                                /*[26]*/
                                c_imopVar77_imopVar108[(jc + k) * 2 + 1] = a_imopVar75_imopVar106[(ja + k) * 2 + 1] + b_imopVar76_imopVar107[(jb + k) * 2 + 1];
                                /*[26]*/
                                ambr = a_imopVar75_imopVar106[(ja + k) * 2 + 0] - b_imopVar76_imopVar107[(jb + k) * 2 + 0];
                                /*[26]*/
                                ambu = a_imopVar75_imopVar106[(ja + k) * 2 + 1] - b_imopVar76_imopVar107[(jb + k) * 2 + 1];
                                /*[26]*/
                                d_imopVar78_imopVar109[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                /*[26]*/
                                d_imopVar78_imopVar109[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                            }
                        }
                    }
                    /*[]*/
                    int j;
                    /*[]*/
                    goto cfft2_imopVar84;
                    /*[]*/
                    cfft2_imopVar84: ;
                    /*[27]*/
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w)
                    {
                    /*[27]*/
                        /*[27]*/
#pragma omp master
                        {
                        /*[27]*/
                            /*[27]*/
                            sgn = -1.0;
                            /*[27]*/
                            x_imopVar81 = y;
                            /*[27]*/
                            y_imopVar82 = x;
                        }
                        /*[27]*/
                        double _imopVarPre192;
                        /*[27]*/
                        double _imopVarPre193;
                        /*[27]*/
                        double _imopVarPre194;
                        /*[27]*/
#pragma omp master
                        {
                        /*[27]*/
                            /*[27]*/
                            _imopVarPre192 = (double) n;
                            /*[27]*/
                            _imopVarPre193 = log(_imopVarPre192);
                            /*[27]*/
                            /*[27]*/
                            _imopVarPre194 = log(1.99);
                            /*[27]*/
                            /*[27]*/
                            m = (int) (_imopVarPre193 / _imopVarPre194);
                            /*[27]*/
                            mj = 1;
                            /*[27]*/
                            tgle = 1;
                        }
                        /*[27]*/
                        double *_imopVarPre199;
                        /*[27]*/
                        double *_imopVarPre200;
                        /*[27]*/
                        double *_imopVarPre201;
                        /*[27]*/
                        double *_imopVarPre202;
                        /*[27]*/
#pragma omp master
                        {
                        /*[27]*/
                            /*[27]*/
                            _imopVarPre199 = &y_imopVar82[mj * 2 + 0];
                            /*[27]*/
                            _imopVarPre200 = &y_imopVar82[0 * 2 + 0];
                            /*[27]*/
                            _imopVarPre201 = &x_imopVar81[(n / 2) * 2 + 0];
                            /*[27]*/
                            _imopVarPre202 = &x_imopVar81[0 * 2 + 0];
                            /*[27]*/
                            a = _imopVarPre202;
                            /*[27]*/
                            b = _imopVarPre201;
                            /*[27]*/
                            c = _imopVarPre200;
                            /*[27]*/
                            d = _imopVarPre199;
                        }
                        /*[27]*/
                        double ambr;
                        /*[27]*/
                        double ambu;
                        /*[27]*/
                        int j;
                        /*[27]*/
                        int ja;
                        /*[27]*/
                        int jb;
                        /*[27]*/
                        int jc;
                        /*[27]*/
                        int jd;
                        /*[27]*/
                        int jw;
                        /*[27]*/
                        int k;
                        /*[27]*/
                        double wjw[2];
                        /*[27]*/
#pragma omp master
                        {
                        /*[27]*/
                            /*[27]*/
                            mj2 = 2 * mj;
                            /*[27]*/
                            lj = n / mj2;
                        }
                        /*[27]*/
                        // #pragma omp dummyFlush BARRIER_START
                        /*[27]*/
#pragma omp barrier
                        /*[28]*/
#pragma omp for nowait
                        /*[28]*/
                        /*[28]*/
                        /*[28]*/
                        for (j = 0; j < lj; j++) {
                        /*[28]*/
                            /*[28]*/
                            jw = j * mj;
                            /*[28]*/
                            ja = jw;
                            /*[28]*/
                            jb = ja;
                            /*[28]*/
                            jc = j * mj2;
                            /*[28]*/
                            jd = jc;
                            /*[28]*/
                            wjw[0] = w[jw * 2 + 0];
                            /*[28]*/
                            wjw[1] = w[jw * 2 + 1];
                            /*[28]*/
                            /*[28]*/
                            if (sgn < 0.0) {
                            /*[28]*/
                                /*[28]*/
                                wjw[1] = -wjw[1];
                            }
                            /*[28]*/
                            /*[28]*/
                            /*[28]*/
                            /*[28]*/
                            for (k = 0; k < mj; k++) {
                            /*[28]*/
                                /*[28]*/
                                c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                /*[28]*/
                                c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                /*[28]*/
                                ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                /*[28]*/
                                ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                /*[28]*/
                                d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                /*[28]*/
                                d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                            }
                        }
                    }
                    /*[]*/
                    /*[]*/
                    if (n == 2) {
                    /*[]*/
                        /*[]*/
                        goto cfft2_imopVar83;
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
                            _imopVarPre207 = &x_imopVar81[mj * 2 + 0];
                            /*[]*/
                            _imopVarPre208 = &x_imopVar81[0 * 2 + 0];
                            /*[]*/
                            _imopVarPre209 = &y_imopVar82[(n / 2) * 2 + 0];
                            /*[]*/
                            _imopVarPre210 = &y_imopVar82[0 * 2 + 0];
                            /*[]*/
                            double *a;
                            /*[]*/
                            double *b;
                            /*[]*/
                            double *c;
                            /*[]*/
                            double *d;
                            /*[]*/
                            a = _imopVarPre210;
                            /*[]*/
                            b = _imopVarPre209;
                            /*[]*/
                            c = _imopVarPre208;
                            /*[]*/
                            d = _imopVarPre207;
                            /*[]*/
                            int lj;
                            /*[]*/
                            int mj2;
                            /*[29]*/
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w)
                            {
                            /*[29]*/
                                /*[29]*/
                                double ambr;
                                /*[29]*/
                                double ambu;
                                /*[29]*/
                                int j;
                                /*[29]*/
                                int ja;
                                /*[29]*/
                                int jb;
                                /*[29]*/
                                int jc;
                                /*[29]*/
                                int jd;
                                /*[29]*/
                                int jw;
                                /*[29]*/
                                int k;
                                /*[29]*/
                                double wjw[2];
                                /*[29]*/
#pragma omp master
                                {
                                /*[29]*/
                                    /*[29]*/
                                    mj2 = 2 * mj;
                                    /*[29]*/
                                    lj = n / mj2;
                                }
                                /*[29]*/
                                // #pragma omp dummyFlush BARRIER_START
                                /*[29]*/
#pragma omp barrier
                                /*[30]*/
#pragma omp for nowait
                                /*[30]*/
                                /*[30]*/
                                /*[30]*/
                                for (j = 0; j < lj; j++) {
                                /*[30]*/
                                    /*[30]*/
                                    jw = j * mj;
                                    /*[30]*/
                                    ja = jw;
                                    /*[30]*/
                                    jb = ja;
                                    /*[30]*/
                                    jc = j * mj2;
                                    /*[30]*/
                                    jd = jc;
                                    /*[30]*/
                                    wjw[0] = w[jw * 2 + 0];
                                    /*[30]*/
                                    wjw[1] = w[jw * 2 + 1];
                                    /*[30]*/
                                    /*[30]*/
                                    if (sgn < 0.0) {
                                    /*[30]*/
                                        /*[30]*/
                                        wjw[1] = -wjw[1];
                                    }
                                    /*[30]*/
                                    /*[30]*/
                                    /*[30]*/
                                    /*[30]*/
                                    for (k = 0; k < mj; k++) {
                                    /*[30]*/
                                        /*[30]*/
                                        c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                        /*[30]*/
                                        c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                        /*[30]*/
                                        ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                        /*[30]*/
                                        ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                        /*[30]*/
                                        d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                        /*[30]*/
                                        d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                    }
                                }
                            }
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
                            _imopVarPre215 = &y_imopVar82[mj * 2 + 0];
                            /*[]*/
                            _imopVarPre216 = &y_imopVar82[0 * 2 + 0];
                            /*[]*/
                            _imopVarPre217 = &x_imopVar81[(n / 2) * 2 + 0];
                            /*[]*/
                            _imopVarPre218 = &x_imopVar81[0 * 2 + 0];
                            /*[]*/
                            double *a;
                            /*[]*/
                            double *b;
                            /*[]*/
                            double *c;
                            /*[]*/
                            double *d;
                            /*[]*/
                            a = _imopVarPre218;
                            /*[]*/
                            b = _imopVarPre217;
                            /*[]*/
                            c = _imopVarPre216;
                            /*[]*/
                            d = _imopVarPre215;
                            /*[]*/
                            int lj;
                            /*[]*/
                            int mj2;
                            /*[31]*/
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w)
                            {
                            /*[31]*/
                                /*[31]*/
                                double ambr;
                                /*[31]*/
                                double ambu;
                                /*[31]*/
                                int j;
                                /*[31]*/
                                int ja;
                                /*[31]*/
                                int jb;
                                /*[31]*/
                                int jc;
                                /*[31]*/
                                int jd;
                                /*[31]*/
                                int jw;
                                /*[31]*/
                                int k;
                                /*[31]*/
                                double wjw[2];
                                /*[31]*/
#pragma omp master
                                {
                                /*[31]*/
                                    /*[31]*/
                                    mj2 = 2 * mj;
                                    /*[31]*/
                                    lj = n / mj2;
                                }
                                /*[31]*/
                                // #pragma omp dummyFlush BARRIER_START
                                /*[31]*/
#pragma omp barrier
                                /*[32]*/
#pragma omp for nowait
                                /*[32]*/
                                /*[32]*/
                                /*[32]*/
                                for (j = 0; j < lj; j++) {
                                /*[32]*/
                                    /*[32]*/
                                    jw = j * mj;
                                    /*[32]*/
                                    ja = jw;
                                    /*[32]*/
                                    jb = ja;
                                    /*[32]*/
                                    jc = j * mj2;
                                    /*[32]*/
                                    jd = jc;
                                    /*[32]*/
                                    wjw[0] = w[jw * 2 + 0];
                                    /*[32]*/
                                    wjw[1] = w[jw * 2 + 1];
                                    /*[32]*/
                                    /*[32]*/
                                    if (sgn < 0.0) {
                                    /*[32]*/
                                        /*[32]*/
                                        wjw[1] = -wjw[1];
                                    }
                                    /*[32]*/
                                    /*[32]*/
                                    /*[32]*/
                                    /*[32]*/
                                    for (k = 0; k < mj; k++) {
                                    /*[32]*/
                                        /*[32]*/
                                        c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                                        /*[32]*/
                                        c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                                        /*[32]*/
                                        ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                                        /*[32]*/
                                        ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                                        /*[32]*/
                                        d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                        /*[32]*/
                                        d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                                    }
                                }
                            }
                            /*[]*/
                            tgle = 1;
                        }
                    }
                    /*[]*/
                    /*[]*/
                    if (tgle) {
                    /*[]*/
                        /*[]*/
                        ccopy(n, y_imopVar82, x_imopVar81);
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
                    _imopVarPre223 = &y_imopVar82[mj * 2 + 0];
                    /*[]*/
                    _imopVarPre224 = &y_imopVar82[0 * 2 + 0];
                    /*[]*/
                    _imopVarPre225 = &x_imopVar81[(n / 2) * 2 + 0];
                    /*[]*/
                    _imopVarPre226 = &x_imopVar81[0 * 2 + 0];
                    /*[]*/
                    double *a_imopVar75;
                    /*[]*/
                    double *b_imopVar76;
                    /*[]*/
                    double *c_imopVar77;
                    /*[]*/
                    double *d_imopVar78;
                    /*[]*/
                    a_imopVar75 = _imopVarPre226;
                    /*[]*/
                    b_imopVar76 = _imopVarPre225;
                    /*[]*/
                    c_imopVar77 = _imopVarPre224;
                    /*[]*/
                    d_imopVar78 = _imopVarPre223;
                    /*[]*/
                    int lj_imopVar79;
                    /*[]*/
                    int mj2_imopVar80;
                    /*[33]*/
#pragma omp parallel shared(a_imopVar75, b_imopVar76, c_imopVar77, d_imopVar78, lj_imopVar79, mj, mj2_imopVar80, sgn, w)
                    {
                    /*[33]*/
                        /*[33]*/
                        double ambr;
                        /*[33]*/
                        double ambu;
                        /*[33]*/
                        int j;
                        /*[33]*/
                        int ja;
                        /*[33]*/
                        int jb;
                        /*[33]*/
                        int jc;
                        /*[33]*/
                        int jd;
                        /*[33]*/
                        int jw;
                        /*[33]*/
                        int k;
                        /*[33]*/
                        double wjw[2];
                        /*[33]*/
#pragma omp master
                        {
                        /*[33]*/
                            /*[33]*/
                            mj2_imopVar80 = 2 * mj;
                            /*[33]*/
                            lj_imopVar79 = n / mj2_imopVar80;
                        }
                        /*[33]*/
                        // #pragma omp dummyFlush BARRIER_START
                        /*[33]*/
#pragma omp barrier
                        /*[34]*/
#pragma omp for nowait
                        /*[34]*/
                        /*[34]*/
                        /*[34]*/
                        for (j = 0; j < lj_imopVar79; j++) {
                        /*[34]*/
                            /*[34]*/
                            jw = j * mj;
                            /*[34]*/
                            ja = jw;
                            /*[34]*/
                            jb = ja;
                            /*[34]*/
                            jc = j * mj2_imopVar80;
                            /*[34]*/
                            jd = jc;
                            /*[34]*/
                            wjw[0] = w[jw * 2 + 0];
                            /*[34]*/
                            wjw[1] = w[jw * 2 + 1];
                            /*[34]*/
                            /*[34]*/
                            if (sgn < 0.0) {
                            /*[34]*/
                                /*[34]*/
                                wjw[1] = -wjw[1];
                            }
                            /*[34]*/
                            /*[34]*/
                            /*[34]*/
                            /*[34]*/
                            for (k = 0; k < mj; k++) {
                            /*[34]*/
                                /*[34]*/
                                c_imopVar77[(jc + k) * 2 + 0] = a_imopVar75[(ja + k) * 2 + 0] + b_imopVar76[(jb + k) * 2 + 0];
                                /*[34]*/
                                c_imopVar77[(jc + k) * 2 + 1] = a_imopVar75[(ja + k) * 2 + 1] + b_imopVar76[(jb + k) * 2 + 1];
                                /*[34]*/
                                ambr = a_imopVar75[(ja + k) * 2 + 0] - b_imopVar76[(jb + k) * 2 + 0];
                                /*[34]*/
                                ambu = a_imopVar75[(ja + k) * 2 + 1] - b_imopVar76[(jb + k) * 2 + 1];
                                /*[34]*/
                                d_imopVar78[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                                /*[34]*/
                                d_imopVar78[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
                            }
                        }
                    }
                    /*[]*/
                    goto cfft2_imopVar83;
                    /*[]*/
                    cfft2_imopVar83: ;
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
/*[9, 17, 25]*/
/*[9, 17, 25]*/
/*[9, 17, 25]*/
/*[9, 17, 25]*/
void ccopy(int n, double x[] , double y[]) {
/*[9, 17, 25]*/
    /*[9, 17, 25]*/
    int i;
    /*[9, 17, 25]*/
    /*[9, 17, 25]*/
    /*[9, 17, 25]*/
    /*[9, 17, 25]*/
    for (i = 0; i < n; i++) {
    /*[9, 17, 25]*/
        /*[9, 17, 25]*/
        y[i * 2 + 0] = x[i * 2 + 0];
        /*[9, 17, 25]*/
        y[i * 2 + 1] = x[i * 2 + 1];
    }
    /*[9, 17, 25]*/
    return;
}
/*[1]*/
/*[1]*/
double ggl(double *seed) {
/*[1]*/
    /*[1]*/
    double d2 = 0.2147483647e10;
    /*[1]*/
    double t;
    /*[1]*/
    double value;
    /*[1]*/
    t = (double) *seed;
    /*[1]*/
    double _imopVarPre230;
    /*[1]*/
    double _imopVarPre231;
    /*[1]*/
    _imopVarPre230 = 16807.0 * t;
    /*[1]*/
    _imopVarPre231 = fmod(_imopVarPre230, d2);
    /*[1]*/
    /*[1]*/
    t = _imopVarPre231;
    /*[1]*/
    *seed = (double) t;
    /*[1]*/
    value = (double) ((t - 1.0) / (d2 - 1.0));
    /*[1]*/
    return value;
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
