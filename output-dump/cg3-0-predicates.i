struct __sFILEX ;
int printf(const char *restrict , ...);
void exit(int );
extern double fabs(double );
extern double pow(double , double );
extern double sqrt(double );
typedef int boolean;
extern double randlc(double *, double );
extern void timer_clear(int );
extern void timer_start(int );
extern void timer_stop(int );
extern double timer_read(int );
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
static int naa;
static int nzz;
static int firstrow;
static int lastrow;
static int firstcol;
static int lastcol;
static int colidx[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
static int rowstr[1400 + 1 + 1];
static int iv[2 * 1400 + 1 + 1];
static int arow[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
static int acol[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
static double v[1400 + 1 + 1];
static double aelt[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
static double a[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
static double x[1400 + 2 + 1];
static double z[1400 + 2 + 1];
static double p[1400 + 2 + 1];
static double q[1400 + 2 + 1];
static double r[1400 + 2 + 1];
static double amult;
static double tran;
static void conj_grad(int colidx[], int rowstr[] , double x[] , double z[] , double a[] , double p[] , double q[] , double r[] , double *rnorm);
static void makea(int n, int nz , double a[] , int colidx[] , int rowstr[] , int nonzer , int firstrow , int lastrow , int firstcol , int lastcol , double rcond , int arow[] , int acol[] , double aelt[] , double v[] , int iv[] , double shift);
static void sparse(double a[], int colidx[] , int rowstr[] , int n , int arow[] , int acol[] , double aelt[] , int firstrow , int lastrow , double x[] , boolean mark[] , int nzloc[] , int nnza);
static void sprnvc(int n, int nz , double v[] , int iv[] , int nzloc[] , int mark[]);
static int icnvrt(double x, int ipwr2);
static void vecset(int n, double v[] , int iv[] , int *nzv , int i , double val);
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int it;
    /*OUT: {
    Reverse<--,>}*/
    int nthreads = 1;
    /*OUT: {
    Reverse<--,>}*/
    double zeta;
    /*OUT: {
    Reverse<--,>}*/
    double rnorm;
    /*OUT: {
    Reverse<--,>}*/
    double norm_temp11;
    /*OUT: {
    Reverse<--,>}*/
    double norm_temp12;
    /*OUT: {
    Reverse<--,>}*/
    double t;
    /*OUT: {
    Reverse<--,>}*/
    double mflops;
    /*OUT: {
    Reverse<--,>}*/
    char class;
    /*OUT: {
    Reverse<--,>}*/
    boolean verified;
    /*OUT: {
    Reverse<--,>}*/
    double zeta_verify_value;
    /*OUT: {
    Reverse<--,>}*/
    double epsilon;
    /*OUT: {
    Reverse<--,>}*/
    firstrow = 1;
    /*OUT: {
    Reverse<--,>}*/
    lastrow = 1400;
    /*OUT: {
    Reverse<--,>}*/
    firstcol = 1;
    /*OUT: {
    Reverse<--,>}*/
    lastcol = 1400;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre143;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre144;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre145;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre143 = 1400 == 1400;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre143) {
        /*OUT: {
        Reverse<--, 1833_0;>}*/
        _imopVarPre144 = 7 == 7;
        /*OUT: {
        Reverse<--, 1833_0;>}*/
        if (_imopVarPre144) {
            /*OUT: {
            Reverse<--, 1836_0; 1833_0;>}*/
            _imopVarPre145 = 15 == 15;
            /*OUT: {
            Reverse<--, 1836_0; 1833_0;>}*/
            if (_imopVarPre145) {
                /*OUT: {
                Reverse<--, 1839_0; 1836_0; 1833_0;>}*/
                _imopVarPre145 = 10.0 == 10.0;
            }
            /*OUT: {
            Reverse<--, 1836_0; 1833_0;>}*/
            _imopVarPre144 = _imopVarPre145;
        }
        /*OUT: {
        Reverse<--, 1833_0;>}*/
        _imopVarPre143 = _imopVarPre144;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre143) {
        /*OUT: {
        Reverse<--, 1846_0;>}*/
        class = 'S';
        /*OUT: {
        Reverse<--, 1846_0;>}*/
        zeta_verify_value = 8.5971775078648;
    } else {
        /*OUT: {
        Reverse<--, 1846_1;>}*/
        int _imopVarPre149;
        /*OUT: {
        Reverse<--, 1846_1;>}*/
        int _imopVarPre150;
        /*OUT: {
        Reverse<--, 1846_1;>}*/
        int _imopVarPre151;
        /*OUT: {
        Reverse<--, 1846_1;>}*/
        _imopVarPre149 = 1400 == 7000;
        /*OUT: {
        Reverse<--, 1846_1;>}*/
        if (_imopVarPre149) {
            /*OUT: {
            Reverse<--, 1856_0; 1846_1;>}*/
            _imopVarPre150 = 7 == 8;
            /*OUT: {
            Reverse<--, 1856_0; 1846_1;>}*/
            if (_imopVarPre150) {
                /*OUT: {
                Reverse<--, 1859_0; 1856_0; 1846_1;>}*/
                _imopVarPre151 = 15 == 15;
                /*OUT: {
                Reverse<--, 1859_0; 1856_0; 1846_1;>}*/
                if (_imopVarPre151) {
                    /*OUT: {
                    Reverse<--, 1862_0; 1859_0; 1856_0; 1846_1;>}*/
                    _imopVarPre151 = 10.0 == 12.0;
                }
                /*OUT: {
                Reverse<--, 1859_0; 1856_0; 1846_1;>}*/
                _imopVarPre150 = _imopVarPre151;
            }
            /*OUT: {
            Reverse<--, 1856_0; 1846_1;>}*/
            _imopVarPre149 = _imopVarPre150;
        }
        /*OUT: {
        Reverse<--, 1846_1;>}*/
        if (_imopVarPre149) {
            /*OUT: {
            Reverse<--, 1869_0; 1846_1;>}*/
            class = 'W';
            /*OUT: {
            Reverse<--, 1869_0; 1846_1;>}*/
            zeta_verify_value = 10.362595087124;
        } else {
            /*OUT: {
            Reverse<--, 1869_1; 1846_1;>}*/
            int _imopVarPre155;
            /*OUT: {
            Reverse<--, 1869_1; 1846_1;>}*/
            int _imopVarPre156;
            /*OUT: {
            Reverse<--, 1869_1; 1846_1;>}*/
            int _imopVarPre157;
            /*OUT: {
            Reverse<--, 1869_1; 1846_1;>}*/
            _imopVarPre155 = 1400 == 14000;
            /*OUT: {
            Reverse<--, 1869_1; 1846_1;>}*/
            if (_imopVarPre155) {
                /*OUT: {
                Reverse<--, 1879_0; 1869_1; 1846_1;>}*/
                _imopVarPre156 = 7 == 11;
                /*OUT: {
                Reverse<--, 1879_0; 1869_1; 1846_1;>}*/
                if (_imopVarPre156) {
                    /*OUT: {
                    Reverse<--, 1882_0; 1879_0; 1869_1; 1846_1;>}*/
                    _imopVarPre157 = 15 == 15;
                    /*OUT: {
                    Reverse<--, 1882_0; 1879_0; 1869_1; 1846_1;>}*/
                    if (_imopVarPre157) {
                        /*OUT: {
                        Reverse<--, 1885_0; 1882_0; 1879_0; 1869_1; 1846_1;>}*/
                        _imopVarPre157 = 10.0 == 20.0;
                    }
                    /*OUT: {
                    Reverse<--, 1882_0; 1879_0; 1869_1; 1846_1;>}*/
                    _imopVarPre156 = _imopVarPre157;
                }
                /*OUT: {
                Reverse<--, 1879_0; 1869_1; 1846_1;>}*/
                _imopVarPre155 = _imopVarPre156;
            }
            /*OUT: {
            Reverse<--, 1869_1; 1846_1;>}*/
            if (_imopVarPre155) {
                /*OUT: {
                Reverse<--, 1892_0; 1869_1; 1846_1;>}*/
                class = 'A';
                /*OUT: {
                Reverse<--, 1892_0; 1869_1; 1846_1;>}*/
                zeta_verify_value = 17.130235054029;
            } else {
                /*OUT: {
                Reverse<--, 1892_1; 1869_1; 1846_1;>}*/
                int _imopVarPre161;
                /*OUT: {
                Reverse<--, 1892_1; 1869_1; 1846_1;>}*/
                int _imopVarPre162;
                /*OUT: {
                Reverse<--, 1892_1; 1869_1; 1846_1;>}*/
                int _imopVarPre163;
                /*OUT: {
                Reverse<--, 1892_1; 1869_1; 1846_1;>}*/
                _imopVarPre161 = 1400 == 75000;
                /*OUT: {
                Reverse<--, 1892_1; 1869_1; 1846_1;>}*/
                if (_imopVarPre161) {
                    /*OUT: {
                    Reverse<--, 1902_0; 1892_1; 1869_1; 1846_1;>}*/
                    _imopVarPre162 = 7 == 13;
                    /*OUT: {
                    Reverse<--, 1902_0; 1892_1; 1869_1; 1846_1;>}*/
                    if (_imopVarPre162) {
                        /*OUT: {
                        Reverse<--, 1905_0; 1902_0; 1892_1; 1869_1; 1846_1;>}*/
                        _imopVarPre163 = 15 == 75;
                        /*OUT: {
                        Reverse<--, 1905_0; 1902_0; 1892_1; 1869_1; 1846_1;>}*/
                        if (_imopVarPre163) {
                            /*OUT: {
                            Reverse<--, 1908_0; 1905_0; 1902_0; 1892_1; 1869_1; 1846_1;>}*/
                            _imopVarPre163 = 10.0 == 60.0;
                        }
                        /*OUT: {
                        Reverse<--, 1905_0; 1902_0; 1892_1; 1869_1; 1846_1;>}*/
                        _imopVarPre162 = _imopVarPre163;
                    }
                    /*OUT: {
                    Reverse<--, 1902_0; 1892_1; 1869_1; 1846_1;>}*/
                    _imopVarPre161 = _imopVarPre162;
                }
                /*OUT: {
                Reverse<--, 1892_1; 1869_1; 1846_1;>}*/
                if (_imopVarPre161) {
                    /*OUT: {
                    Reverse<--, 1915_0; 1892_1; 1869_1; 1846_1;>}*/
                    class = 'B';
                    /*OUT: {
                    Reverse<--, 1915_0; 1892_1; 1869_1; 1846_1;>}*/
                    zeta_verify_value = 22.712745482631;
                } else {
                    /*OUT: {
                    Reverse<--, 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                    int _imopVarPre167;
                    /*OUT: {
                    Reverse<--, 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                    int _imopVarPre168;
                    /*OUT: {
                    Reverse<--, 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                    int _imopVarPre169;
                    /*OUT: {
                    Reverse<--, 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                    _imopVarPre167 = 1400 == 150000;
                    /*OUT: {
                    Reverse<--, 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                    if (_imopVarPre167) {
                        /*OUT: {
                        Reverse<--, 1925_0; 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                        _imopVarPre168 = 7 == 15;
                        /*OUT: {
                        Reverse<--, 1925_0; 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                        if (_imopVarPre168) {
                            /*OUT: {
                            Reverse<--, 1928_0; 1925_0; 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                            _imopVarPre169 = 15 == 75;
                            /*OUT: {
                            Reverse<--, 1928_0; 1925_0; 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                            if (_imopVarPre169) {
                                /*OUT: {
                                Reverse<--, 1931_0; 1928_0; 1925_0; 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                                _imopVarPre169 = 10.0 == 110.0;
                            }
                            /*OUT: {
                            Reverse<--, 1928_0; 1925_0; 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                            _imopVarPre168 = _imopVarPre169;
                        }
                        /*OUT: {
                        Reverse<--, 1925_0; 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                        _imopVarPre167 = _imopVarPre168;
                    }
                    /*OUT: {
                    Reverse<--, 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                    if (_imopVarPre167) {
                        /*OUT: {
                        Reverse<--, 1938_0; 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                        class = 'C';
                        /*OUT: {
                        Reverse<--, 1938_0; 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                        zeta_verify_value = 28.973605592845;
                    } else {
                        /*OUT: {
                        Reverse<--, 1938_1; 1915_1; 1892_1; 1869_1; 1846_1;>}*/
                        class = 'U';
                    }
                }
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - CG Benchmark\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf(" Size: %10d\n", 1400);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf(" Iterations: %5d\n", 15);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    naa = 1400;
    /*OUT: {
    Reverse<--,>}*/
    nzz = 1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2);
    /*OUT: {
    Reverse<--,>}*/
    tran = 314159265.0;
    /*OUT: {
    Reverse<--,>}*/
    amult = 1220703125.0;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre171;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre172;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre171 = &tran;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre172 = randlc(_imopVarPre171, amult);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    zeta = _imopVarPre172;
    /*OUT: {
    Reverse<--,>}*/
    makea(naa, nzz, a, colidx, rowstr, 7, firstrow, lastrow, firstcol, lastcol, 1.0e-1, arow, acol, aelt, v, iv, 10.0);
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel default(shared) private(i, j, k)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<3075,>}*/
        /*OUT: {
        Reverse<3075,>}*/
        /*OUT: {
        Reverse<3075, 1996_1;>}*/
        for (j = 1; j <= lastrow - firstrow + 1; j++) {
            /*OUT: {
            Reverse<3075,>}*/
            /*OUT: {
            Reverse<3075,>}*/
            /*OUT: {
            Reverse<3075, 1996_0;>}*/
            for (k = rowstr[j]; k < rowstr[j + 1]; k++) {
                /*OUT: {
                Reverse<3075, 1996_0;>}*/
                colidx[k] = colidx[k] - firstcol + 1;
            }
        }
#pragma omp for nowait
        /*OUT: {
        Reverse<3075,>}*/
        /*OUT: {
        Reverse<3075,>}*/
        /*OUT: {
        Reverse<3075,>}*/
        for (i = 1; i <= 1400 + 1; i++) {
            /*OUT: {
            Reverse<3075,>}*/
            x[i] = 1.0;
        }
#pragma omp for nowait
        /*OUT: {
        Reverse<3075,>}*/
        /*OUT: {
        Reverse<3075,>}*/
        /*OUT: {
        Reverse<3075,>}*/
        for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*OUT: {
            Reverse<3075,>}*/
            q[j] = 0.0;
            /*OUT: {
            Reverse<3075,>}*/
            z[j] = 0.0;
            /*OUT: {
            Reverse<3075,>}*/
            r[j] = 0.0;
            /*OUT: {
            Reverse<3075,>}*/
            p[j] = 0.0;
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    zeta = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2030_0;>}*/
    for (it = 1; it <= 1; it++) {
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        double *_imopVarPre174;
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        _imopVarPre174 = &rnorm;
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        conj_grad(colidx, rowstr, x, z, a, p, q, r, _imopVarPre174);
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        norm_temp11 = 0.0;
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        norm_temp12 = 0.0;
#pragma omp parallel default(shared) private(j)
        {
#pragma omp for reduction(+:norm_temp11, norm_temp12) nowait
            /*OUT: {
            Reverse<3099,>}*/
            /*OUT: {
            Reverse<3099,>}*/
            /*OUT: {
            Reverse<3099,>}*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: {
                Reverse<3099,>}*/
                norm_temp11 = norm_temp11 + x[j] * z[j];
                /*OUT: {
                Reverse<3099,>}*/
                norm_temp12 = norm_temp12 + z[j] * z[j];
            }
            /*OUT: {
            Reverse<3099,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<2057,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        double _imopVarPre176;
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        _imopVarPre176 = sqrt(norm_temp12);
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        norm_temp12 = 1.0 / _imopVarPre176;
#pragma omp parallel default(shared) private(j)
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<3107,>}*/
            /*OUT: {
            Reverse<3107,>}*/
            /*OUT: {
            Reverse<3107,>}*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: {
                Reverse<3107,>}*/
                x[j] = norm_temp12 * z[j];
            }
            /*OUT: {
            Reverse<3107,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<2076,>}*/
#pragma omp barrier
        }
    }
#pragma omp parallel default(shared) private(i)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<3115,>}*/
        /*OUT: {
        Reverse<3115,>}*/
        /*OUT: {
        Reverse<3115,>}*/
        for (i = 1; i <= 1400 + 1; i++) {
            /*OUT: {
            Reverse<3115,>}*/
            x[i] = 1.0;
        }
        /*OUT: {
        Reverse<3115,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2085,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--, 2030_1;>}*/
    zeta = 0.0;
    /*OUT: {
    Reverse<--, 2030_1;>}*/
    timer_clear(1);
    /*OUT: {
    Reverse<--, 2030_1;>}*/
    /*OUT: {
    Reverse<--, 2030_1;>}*/
    timer_start(1);
    /*OUT: {
    Reverse<--, 2030_1;>}*/
    /*OUT: {
    Reverse<--, 2030_1;>}*/
    /*OUT: {
    Reverse<--, 2030_1;>}*/
    /*OUT: {
    Reverse<--, 2099_0; 2030_1;>}*/
    for (it = 1; it <= 15; it++) {
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
        double *_imopVarPre178;
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
        _imopVarPre178 = &rnorm;
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
        conj_grad(colidx, rowstr, x, z, a, p, q, r, _imopVarPre178);
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
        norm_temp11 = 0.0;
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
        norm_temp12 = 0.0;
#pragma omp parallel default(shared) private(j)
        {
#pragma omp for reduction(+:norm_temp11, norm_temp12) nowait
            /*OUT: {
            Reverse<3127,>}*/
            /*OUT: {
            Reverse<3127,>}*/
            /*OUT: {
            Reverse<3127,>}*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: {
                Reverse<3127,>}*/
                norm_temp11 = norm_temp11 + x[j] * z[j];
                /*OUT: {
                Reverse<3127,>}*/
                norm_temp12 = norm_temp12 + z[j] * z[j];
            }
            /*OUT: {
            Reverse<3127,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<2126,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
        double _imopVarPre180;
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
        _imopVarPre180 = sqrt(norm_temp12);
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
        norm_temp12 = 1.0 / _imopVarPre180;
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
        zeta = 10.0 + 1.0 / norm_temp11;
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
        if (it == 1) {
            /*OUT: {
            Reverse<--, 2138_0; 2099_0; 2030_1;>}*/
            printf("   iteration           ||r||                 zeta\n");
            /*OUT: {
            Reverse<--, 2138_0; 2099_0; 2030_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
        printf("    %5d       %20.14e%20.13e\n", it, rnorm, zeta);
        /*OUT: {
        Reverse<--, 2099_0; 2030_1;>}*/
#pragma omp parallel default(shared) private(j)
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<3139,>}*/
            /*OUT: {
            Reverse<3139,>}*/
            /*OUT: {
            Reverse<3139,>}*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: {
                Reverse<3139,>}*/
                x[j] = norm_temp12 * z[j];
            }
            /*OUT: {
            Reverse<3139,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<2158,>}*/
#pragma omp barrier
        }
    }
#pragma omp parallel
    {
    }
    /*OUT: {
    Reverse<--, 2099_1; 2030_1;>}*/
    timer_stop(1);
    /*OUT: {
    Reverse<--, 2099_1; 2030_1;>}*/
    /*OUT: {
    Reverse<--, 2099_1; 2030_1;>}*/
    t = timer_read(1);
    /*OUT: {
    Reverse<--, 2099_1; 2030_1;>}*/
    /*OUT: {
    Reverse<--, 2099_1; 2030_1;>}*/
    printf(" Benchmark completed\n");
    /*OUT: {
    Reverse<--, 2099_1; 2030_1;>}*/
    /*OUT: {
    Reverse<--, 2099_1; 2030_1;>}*/
    epsilon = 1.0e-10;
    /*OUT: {
    Reverse<--, 2099_1; 2030_1;>}*/
    if (class != 'U') {
        /*OUT: {
        Reverse<--, 2177_0; 2099_1; 2030_1;>}*/
        double _imopVarPre183;
        /*OUT: {
        Reverse<--, 2177_0; 2099_1; 2030_1;>}*/
        double _imopVarPre184;
        /*OUT: {
        Reverse<--, 2177_0; 2099_1; 2030_1;>}*/
        _imopVarPre183 = zeta - zeta_verify_value;
        /*OUT: {
        Reverse<--, 2177_0; 2099_1; 2030_1;>}*/
        _imopVarPre184 = fabs(_imopVarPre183);
        /*OUT: {
        Reverse<--, 2177_0; 2099_1; 2030_1;>}*/
        /*OUT: {
        Reverse<--, 2177_0; 2099_1; 2030_1;>}*/
        if (_imopVarPre184 <= epsilon) {
            /*OUT: {
            Reverse<--, 2188_0; 2177_0; 2099_1; 2030_1;>}*/
            verified = 1;
            /*OUT: {
            Reverse<--, 2188_0; 2177_0; 2099_1; 2030_1;>}*/
            printf(" VERIFICATION SUCCESSFUL\n");
            /*OUT: {
            Reverse<--, 2188_0; 2177_0; 2099_1; 2030_1;>}*/
            /*OUT: {
            Reverse<--, 2188_0; 2177_0; 2099_1; 2030_1;>}*/
            printf(" Zeta is    %20.12e\n", zeta);
            /*OUT: {
            Reverse<--, 2188_0; 2177_0; 2099_1; 2030_1;>}*/
            /*OUT: {
            Reverse<--, 2188_0; 2177_0; 2099_1; 2030_1;>}*/
            double _imopVarPre186;
            /*OUT: {
            Reverse<--, 2188_0; 2177_0; 2099_1; 2030_1;>}*/
            _imopVarPre186 = zeta - zeta_verify_value;
            /*OUT: {
            Reverse<--, 2188_0; 2177_0; 2099_1; 2030_1;>}*/
            printf(" Error is   %20.12e\n", _imopVarPre186);
            /*OUT: {
            Reverse<--, 2188_0; 2177_0; 2099_1; 2030_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 2188_1; 2177_0; 2099_1; 2030_1;>}*/
            verified = 0;
            /*OUT: {
            Reverse<--, 2188_1; 2177_0; 2099_1; 2030_1;>}*/
            printf(" VERIFICATION FAILED\n");
            /*OUT: {
            Reverse<--, 2188_1; 2177_0; 2099_1; 2030_1;>}*/
            /*OUT: {
            Reverse<--, 2188_1; 2177_0; 2099_1; 2030_1;>}*/
            printf(" Zeta                %20.12e\n", zeta);
            /*OUT: {
            Reverse<--, 2188_1; 2177_0; 2099_1; 2030_1;>}*/
            /*OUT: {
            Reverse<--, 2188_1; 2177_0; 2099_1; 2030_1;>}*/
            printf(" The correct zeta is %20.12e\n", zeta_verify_value);
            /*OUT: {
            Reverse<--, 2188_1; 2177_0; 2099_1; 2030_1;>}*/
        }
    } else {
        /*OUT: {
        Reverse<--, 2177_1; 2099_1; 2030_1;>}*/
        verified = 0;
        /*OUT: {
        Reverse<--, 2177_1; 2099_1; 2030_1;>}*/
        printf(" Problem size unknown\n");
        /*OUT: {
        Reverse<--, 2177_1; 2099_1; 2030_1;>}*/
        /*OUT: {
        Reverse<--, 2177_1; 2099_1; 2030_1;>}*/
        printf(" NO VERIFICATION PERFORMED\n");
        /*OUT: {
        Reverse<--, 2177_1; 2099_1; 2030_1;>}*/
    }
    /*OUT: {
    Reverse<--, 2099_1; 2030_1;>}*/
    if (t != 0.0) {
        /*OUT: {
        Reverse<--, 2238_0; 2099_1; 2030_1;>}*/
        mflops = (2.0 * 15 * 1400) * (3.0 + (7 * (7 + 1)) + 25.0 * (5.0 + (7 * (7 + 1))) + 3.0) / t / 1000000.0;
    } else {
        /*OUT: {
        Reverse<--, 2238_1; 2099_1; 2030_1;>}*/
        mflops = 0.0;
    }
    /*OUT: {
    Reverse<--, 2099_1; 2030_1;>}*/
    c_print_results("CG", class, 1400, 0, 0, 15, nthreads, t, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
    /*OUT: {
    Reverse<--, 2099_1; 2030_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void conj_grad(int colidx[], int rowstr[] , double x[] , double z[] , double a[] , double p[] , double q[] , double r[] , double *rnorm) {
    /*OUT: {
    Reverse<--,>}*/
    static int callcount = 0;
    /*OUT: {
    Reverse<--,>}*/
    double d;
    /*OUT: {
    Reverse<--,>}*/
    double sum;
    /*OUT: {
    Reverse<--,>}*/
    double rho;
    /*OUT: {
    Reverse<--,>}*/
    double rho0;
    /*OUT: {
    Reverse<--,>}*/
    double alpha;
    /*OUT: {
    Reverse<--,>}*/
    double beta;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int cgit;
    /*OUT: {
    Reverse<--,>}*/
    int cgitmax = 25;
    /*OUT: {
    Reverse<--,>}*/
    rho = 0.0;
#pragma omp parallel default(shared) private(j, sum) shared(rho, naa)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<3174,>}*/
        /*OUT: {
        Reverse<3174,>}*/
        /*OUT: {
        Reverse<3174,>}*/
        for (j = 1; j <= naa + 1; j++) {
            /*OUT: {
            Reverse<3174,>}*/
            q[j] = 0.0;
            /*OUT: {
            Reverse<3174,>}*/
            z[j] = 0.0;
            /*OUT: {
            Reverse<3174,>}*/
            r[j] = x[j];
            /*OUT: {
            Reverse<3174,>}*/
            p[j] = r[j];
        }
        /*OUT: {
        Reverse<3174,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2296,>}*/
#pragma omp barrier
#pragma omp for reduction(+:rho) nowait
        /*OUT: {
        Reverse<2296,>}*/
        /*OUT: {
        Reverse<2296,>}*/
        /*OUT: {
        Reverse<2296,>}*/
        for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*OUT: {
            Reverse<2296,>}*/
            rho = rho + r[j] * r[j];
        }
        /*OUT: {
        Reverse<2296,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2306,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2308_0;>}*/
    for (cgit = 1; cgit <= cgitmax; cgit++) {
        /*OUT: {
        Reverse<--, 2308_0;>}*/
        rho0 = rho;
        /*OUT: {
        Reverse<--, 2308_0;>}*/
        d = 0.0;
        /*OUT: {
        Reverse<--, 2308_0;>}*/
        rho = 0.0;
#pragma omp parallel default(shared) private(j, k, sum, alpha, beta) shared(d, rho0, rho)
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<3190,>}*/
            /*OUT: {
            Reverse<3190,>}*/
            /*OUT: {
            Reverse<3190, 2326_1;>}*/
            for (j = 1; j <= lastrow - firstrow + 1; j++) {
                /*OUT: {
                Reverse<3190,>}*/
                sum = 0.0;
                /*OUT: {
                Reverse<3190,>}*/
                /*OUT: {
                Reverse<3190,>}*/
                /*OUT: {
                Reverse<3190, 2326_0;>}*/
                for (k = rowstr[j]; k < rowstr[j + 1]; k++) {
                    /*OUT: {
                    Reverse<3190, 2326_0;>}*/
                    sum = sum + a[k] * p[colidx[k]];
                }
                /*OUT: {
                Reverse<3190, 2326_1;>}*/
                q[j] = sum;
            }
            /*OUT: {
            Reverse<3190,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<2336,>}*/
#pragma omp barrier
#pragma omp for reduction(+:d) nowait
            /*OUT: {
            Reverse<2336,>}*/
            /*OUT: {
            Reverse<2336,>}*/
            /*OUT: {
            Reverse<2336,>}*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: {
                Reverse<2336,>}*/
                d = d + p[j] * q[j];
            }
            /*OUT: {
            Reverse<2336,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<2346,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<2346,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<2347,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<2347,>}*/
            alpha = rho0 / d;
#pragma omp for reduction(+:rho) nowait
            /*OUT: {
            Reverse<2347,>}*/
            /*OUT: {
            Reverse<2347,>}*/
            /*OUT: {
            Reverse<2347,>}*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: {
                Reverse<2347,>}*/
                z[j] = z[j] + alpha * p[j];
                /*OUT: {
                Reverse<2347,>}*/
                r[j] = r[j] - alpha * q[j];
                /*OUT: {
                Reverse<2347,>}*/
                rho = rho + r[j] * r[j];
            }
            /*OUT: {
            Reverse<2347,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<2369,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<2369,>}*/
            beta = rho / rho0;
#pragma omp for nowait
            /*OUT: {
            Reverse<2369,>}*/
            /*OUT: {
            Reverse<2369,>}*/
            /*OUT: {
            Reverse<2369,>}*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: {
                Reverse<2369,>}*/
                p[j] = r[j] + beta * p[j];
            }
            /*OUT: {
            Reverse<2369,>}*/
            callcount++;
        }
    }
    /*OUT: {
    Reverse<--, 2308_1;>}*/
    sum = 0.0;
#pragma omp parallel default(shared) private(j, d) shared(sum)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<3214,>}*/
        /*OUT: {
        Reverse<3214,>}*/
        /*OUT: {
        Reverse<3214, 2396_1;>}*/
        for (j = 1; j <= lastrow - firstrow + 1; j++) {
            /*OUT: {
            Reverse<3214,>}*/
            d = 0.0;
            /*OUT: {
            Reverse<3214,>}*/
            /*OUT: {
            Reverse<3214,>}*/
            /*OUT: {
            Reverse<3214, 2396_0;>}*/
            for (k = rowstr[j]; k <= rowstr[j + 1] - 1; k++) {
                /*OUT: {
                Reverse<3214, 2396_0;>}*/
                d = d + a[k] * z[colidx[k]];
            }
            /*OUT: {
            Reverse<3214, 2396_1;>}*/
            r[j] = d;
        }
        /*OUT: {
        Reverse<3214,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2406,>}*/
#pragma omp barrier
#pragma omp for reduction(+:sum) nowait
        /*OUT: {
        Reverse<2406,>}*/
        /*OUT: {
        Reverse<2406,>}*/
        /*OUT: {
        Reverse<2406,>}*/
        for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*OUT: {
            Reverse<2406,>}*/
            d = x[j] - r[j];
            /*OUT: {
            Reverse<2406,>}*/
            sum = sum + d * d;
        }
        /*OUT: {
        Reverse<2406,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2418,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--, 2308_1;>}*/
    double _imopVarPre187;
    /*OUT: {
    Reverse<--, 2308_1;>}*/
    _imopVarPre187 = sqrt(sum);
    /*OUT: {
    Reverse<--, 2308_1;>}*/
    /*OUT: {
    Reverse<--, 2308_1;>}*/
    (*rnorm) = _imopVarPre187;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void makea(int n, int nz , double a[] , int colidx[] , int rowstr[] , int nonzer , int firstrow , int lastrow , int firstcol , int lastcol , double rcond , int arow[] , int acol[] , double aelt[] , double v[] , int iv[] , double shift) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int nnza;
    /*OUT: {
    Reverse<--,>}*/
    int iouter;
    /*OUT: {
    Reverse<--,>}*/
    int ivelt;
    /*OUT: {
    Reverse<--,>}*/
    int ivelt1;
    /*OUT: {
    Reverse<--,>}*/
    int irow;
    /*OUT: {
    Reverse<--,>}*/
    int nzv;
    /*OUT: {
    Reverse<--,>}*/
    double size;
    /*OUT: {
    Reverse<--,>}*/
    double ratio;
    /*OUT: {
    Reverse<--,>}*/
    double scale;
    /*OUT: {
    Reverse<--,>}*/
    int jcol;
    /*OUT: {
    Reverse<--,>}*/
    size = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre189;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre190;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre189 = (1.0 / (double) n);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre190 = pow(rcond, _imopVarPre189);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ratio = _imopVarPre190;
    /*OUT: {
    Reverse<--,>}*/
    nnza = 0;
#pragma omp parallel default(shared) private(i)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<3235,>}*/
        /*OUT: {
        Reverse<3235,>}*/
        /*OUT: {
        Reverse<3235,>}*/
        for (i = 1; i <= n; i++) {
            /*OUT: {
            Reverse<3235,>}*/
            colidx[n + i] = 0;
        }
        /*OUT: {
        Reverse<3235,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2482,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2512_1; 2484_0;>}*/
    for (iouter = 1; iouter <= n; iouter++) {
        /*OUT: {
        Reverse<--, 2484_0;>}*/
        nzv = nonzer;
        /*OUT: {
        Reverse<--, 2484_0;>}*/
        int *_imopVarPre193;
        /*OUT: {
        Reverse<--, 2484_0;>}*/
        int *_imopVarPre194;
        /*OUT: {
        Reverse<--, 2484_0;>}*/
        _imopVarPre193 = &(colidx[n]);
        /*OUT: {
        Reverse<--, 2484_0;>}*/
        _imopVarPre194 = &(colidx[0]);
        /*OUT: {
        Reverse<--, 2484_0;>}*/
        sprnvc(n, nzv, v, iv, _imopVarPre194, _imopVarPre193);
        /*OUT: {
        Reverse<--, 2484_0;>}*/
        /*OUT: {
        Reverse<--, 2484_0;>}*/
        int *_imopVarPre196;
        /*OUT: {
        Reverse<--, 2484_0;>}*/
        _imopVarPre196 = &nzv;
        /*OUT: {
        Reverse<--, 2484_0;>}*/
        vecset(n, v, iv, _imopVarPre196, iouter, 0.5);
        /*OUT: {
        Reverse<--, 2484_0;>}*/
        /*OUT: {
        Reverse<--, 2484_0;>}*/
        /*OUT: {
        Reverse<--, 2484_0;>}*/
        /*OUT: {
        Reverse<--, 2523_1; 2512_0; 2484_0;>
        Reverse<--, 2528_1; 2523_0; 2512_0; 2484_0;>}*/
        for (ivelt = 1; ivelt <= nzv; ivelt++) {
            /*OUT: {
            Reverse<--, 2512_0; 2484_0;>}*/
            jcol = iv[ivelt];
            /*OUT: {
            Reverse<--, 2512_0; 2484_0;>}*/
            int _imopVarPre198;
            /*OUT: {
            Reverse<--, 2512_0; 2484_0;>}*/
            _imopVarPre198 = jcol >= firstcol;
            /*OUT: {
            Reverse<--, 2512_0; 2484_0;>}*/
            if (_imopVarPre198) {
                /*OUT: {
                Reverse<--, 2520_0; 2512_0; 2484_0;>}*/
                _imopVarPre198 = jcol <= lastcol;
            }
            /*OUT: {
            Reverse<--, 2512_0; 2484_0;>}*/
            if (_imopVarPre198) {
                /*OUT: {
                Reverse<--, 2523_0; 2512_0; 2484_0;>}*/
                scale = size * v[ivelt];
                /*OUT: {
                Reverse<--, 2523_0; 2512_0; 2484_0;>}*/
                /*OUT: {
                Reverse<--, 2523_0; 2512_0; 2484_0;>}*/
                /*OUT: {
                Reverse<--, 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                for (ivelt1 = 1; ivelt1 <= nzv; ivelt1++) {
                    /*OUT: {
                    Reverse<--, 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                    irow = iv[ivelt1];
                    /*OUT: {
                    Reverse<--, 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                    int _imopVarPre200;
                    /*OUT: {
                    Reverse<--, 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                    _imopVarPre200 = irow >= firstrow;
                    /*OUT: {
                    Reverse<--, 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                    if (_imopVarPre200) {
                        /*OUT: {
                        Reverse<--, 2536_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                        _imopVarPre200 = irow <= lastrow;
                    }
                    /*OUT: {
                    Reverse<--, 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                    if (_imopVarPre200) {
                        /*OUT: {
                        Reverse<--, 2539_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                        nnza = nnza + 1;
                        /*OUT: {
                        Reverse<--, 2539_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                        if (nnza > nz) {
                            /*OUT: {
                            Reverse<--, 2542_0; 2539_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                            printf("Space for matrix elements exceeded in" " makea\n");
                            /*OUT: {
                            Reverse<--, 2542_0; 2539_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                            /*OUT: {
                            Reverse<--, 2542_0; 2539_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                            printf("nnza, nzmax = %d, %d\n", nnza, nz);
                            /*OUT: {
                            Reverse<--, 2542_0; 2539_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                            /*OUT: {
                            Reverse<--, 2542_0; 2539_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                            printf("iouter = %d\n", iouter);
                            /*OUT: {
                            Reverse<--, 2542_0; 2539_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                            /*OUT: {
                            Reverse<--, 2542_0; 2539_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                            exit(1);
                            /*OUT: {
                            Reverse<--, 2542_0; 2539_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                        }
                        /*OUT: {
                        Reverse<--, 2539_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                        acol[nnza] = jcol;
                        /*OUT: {
                        Reverse<--, 2539_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                        arow[nnza] = irow;
                        /*OUT: {
                        Reverse<--, 2539_0; 2528_0; 2523_0; 2512_0; 2484_0;>}*/
                        aelt[nnza] = v[ivelt1] * scale;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<--, 2512_1; 2484_0;>}*/
        size = size * ratio;
    }
    /*OUT: {
    Reverse<--, 2484_1;>}*/
    /*OUT: {
    Reverse<--, 2484_1;>}*/
    /*OUT: {
    Reverse<--, 2576_0; 2484_1;>}*/
    for (i = firstrow; i <= lastrow; i++) {
        /*OUT: {
        Reverse<--, 2576_0; 2484_1;>}*/
        int _imopVarPre202;
        /*OUT: {
        Reverse<--, 2576_0; 2484_1;>}*/
        _imopVarPre202 = i >= firstcol;
        /*OUT: {
        Reverse<--, 2576_0; 2484_1;>}*/
        if (_imopVarPre202) {
            /*OUT: {
            Reverse<--, 2581_0; 2576_0; 2484_1;>}*/
            _imopVarPre202 = i <= lastcol;
        }
        /*OUT: {
        Reverse<--, 2576_0; 2484_1;>}*/
        if (_imopVarPre202) {
            /*OUT: {
            Reverse<--, 2584_0; 2576_0; 2484_1;>}*/
            iouter = n + i;
            /*OUT: {
            Reverse<--, 2584_0; 2576_0; 2484_1;>}*/
            nnza = nnza + 1;
            /*OUT: {
            Reverse<--, 2584_0; 2576_0; 2484_1;>}*/
            if (nnza > nz) {
                /*OUT: {
                Reverse<--, 2589_0; 2584_0; 2576_0; 2484_1;>}*/
                printf("Space for matrix elements exceeded in makea\n");
                /*OUT: {
                Reverse<--, 2589_0; 2584_0; 2576_0; 2484_1;>}*/
                /*OUT: {
                Reverse<--, 2589_0; 2584_0; 2576_0; 2484_1;>}*/
                printf("nnza, nzmax = %d, %d\n", nnza, nz);
                /*OUT: {
                Reverse<--, 2589_0; 2584_0; 2576_0; 2484_1;>}*/
                /*OUT: {
                Reverse<--, 2589_0; 2584_0; 2576_0; 2484_1;>}*/
                printf("iouter = %d\n", iouter);
                /*OUT: {
                Reverse<--, 2589_0; 2584_0; 2576_0; 2484_1;>}*/
                /*OUT: {
                Reverse<--, 2589_0; 2584_0; 2576_0; 2484_1;>}*/
                exit(1);
                /*OUT: {
                Reverse<--, 2589_0; 2584_0; 2576_0; 2484_1;>}*/
            }
            /*OUT: {
            Reverse<--, 2584_0; 2576_0; 2484_1;>}*/
            acol[nnza] = i;
            /*OUT: {
            Reverse<--, 2584_0; 2576_0; 2484_1;>}*/
            arow[nnza] = i;
            /*OUT: {
            Reverse<--, 2584_0; 2576_0; 2484_1;>}*/
            aelt[nnza] = rcond - shift;
        }
    }
    /*OUT: {
    Reverse<--, 2576_1; 2484_1;>}*/
    int *_imopVarPre205;
    /*OUT: {
    Reverse<--, 2576_1; 2484_1;>}*/
    int *_imopVarPre206;
    /*OUT: {
    Reverse<--, 2576_1; 2484_1;>}*/
    _imopVarPre205 = &(iv[n]);
    /*OUT: {
    Reverse<--, 2576_1; 2484_1;>}*/
    _imopVarPre206 = &(iv[0]);
    /*OUT: {
    Reverse<--, 2576_1; 2484_1;>}*/
    sparse(a, colidx, rowstr, n, arow, acol, aelt, firstrow, lastrow, v, _imopVarPre206, _imopVarPre205, nnza);
    /*OUT: {
    Reverse<--, 2576_1; 2484_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void sparse(double a[], int colidx[] , int rowstr[] , int n , int arow[] , int acol[] , double aelt[] , int firstrow , int lastrow , double x[] , boolean mark[] , int nzloc[] , int nnza) {
    /*OUT: {
    Reverse<--,>}*/
    int nrows;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int jajp1;
    /*OUT: {
    Reverse<--,>}*/
    int nza;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int nzrow;
    /*OUT: {
    Reverse<--,>}*/
    double xi;
    /*OUT: {
    Reverse<--,>}*/
    nrows = lastrow - firstrow + 1;
#pragma omp parallel default(shared) private(j)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<3296,>}*/
        /*OUT: {
        Reverse<3296,>}*/
        /*OUT: {
        Reverse<3296,>}*/
        for (j = 1; j <= n; j++) {
            /*OUT: {
            Reverse<3296,>}*/
            rowstr[j] = 0;
            /*OUT: {
            Reverse<3296,>}*/
            mark[j] = 0;
        }
        /*OUT: {
        Reverse<3296,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2668,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    rowstr[n + 1] = 0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2673_0;>}*/
    for (nza = 1; nza <= nnza; nza++) {
        /*OUT: {
        Reverse<--, 2673_0;>}*/
        j = (arow[nza] - firstrow + 1) + 1;
        /*OUT: {
        Reverse<--, 2673_0;>}*/
        rowstr[j] = rowstr[j] + 1;
    }
    /*OUT: {
    Reverse<--, 2673_1;>}*/
    rowstr[1] = 1;
    /*OUT: {
    Reverse<--, 2673_1;>}*/
    /*OUT: {
    Reverse<--, 2673_1;>}*/
    /*OUT: {
    Reverse<--, 2687_0; 2673_1;>}*/
    for (j = 2; j <= nrows + 1; j++) {
        /*OUT: {
        Reverse<--, 2687_0; 2673_1;>}*/
        rowstr[j] = rowstr[j] + rowstr[j - 1];
    }
#pragma omp parallel default(shared) private(k, j)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<3312,>}*/
        /*OUT: {
        Reverse<3312,>}*/
        /*OUT: {
        Reverse<3312, 2702_1;>}*/
        for (j = 0; j <= nrows - 1; j++) {
            /*OUT: {
            Reverse<3312,>}*/
            /*OUT: {
            Reverse<3312,>}*/
            /*OUT: {
            Reverse<3312, 2702_0;>}*/
            for (k = rowstr[j]; k <= rowstr[j + 1] - 1; k++) {
                /*OUT: {
                Reverse<3312, 2702_0;>}*/
                a[k] = 0.0;
            }
        }
        /*OUT: {
        Reverse<3312,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2707,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--, 2687_1; 2673_1;>}*/
    /*OUT: {
    Reverse<--, 2687_1; 2673_1;>}*/
    /*OUT: {
    Reverse<--, 2709_0; 2687_1; 2673_1;>}*/
    for (nza = 1; nza <= nnza; nza++) {
        /*OUT: {
        Reverse<--, 2709_0; 2687_1; 2673_1;>}*/
        j = arow[nza] - firstrow + 1;
        /*OUT: {
        Reverse<--, 2709_0; 2687_1; 2673_1;>}*/
        k = rowstr[j];
        /*OUT: {
        Reverse<--, 2709_0; 2687_1; 2673_1;>}*/
        a[k] = aelt[nza];
        /*OUT: {
        Reverse<--, 2709_0; 2687_1; 2673_1;>}*/
        colidx[k] = acol[nza];
        /*OUT: {
        Reverse<--, 2709_0; 2687_1; 2673_1;>}*/
        rowstr[j] = rowstr[j] + 1;
    }
    /*OUT: {
    Reverse<--, 2709_1; 2687_1; 2673_1;>}*/
    /*OUT: {
    Reverse<--, 2709_1; 2687_1; 2673_1;>}*/
    /*OUT: {
    Reverse<--, 2730_0; 2709_1; 2687_1; 2673_1;>}*/
    for (j = nrows; j >= 1; j--) {
        /*OUT: {
        Reverse<--, 2730_0; 2709_1; 2687_1; 2673_1;>}*/
        rowstr[j + 1] = rowstr[j];
    }
    /*OUT: {
    Reverse<--, 2730_1; 2709_1; 2687_1; 2673_1;>}*/
    rowstr[1] = 1;
    /*OUT: {
    Reverse<--, 2730_1; 2709_1; 2687_1; 2673_1;>}*/
    nza = 0;
#pragma omp parallel default(shared) private(i)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<3332,>}*/
        /*OUT: {
        Reverse<3332,>}*/
        /*OUT: {
        Reverse<3332,>}*/
        for (i = 1; i <= n; i++) {
            /*OUT: {
            Reverse<3332,>}*/
            x[i] = 0.0;
            /*OUT: {
            Reverse<3332,>}*/
            mark[i] = 0;
        }
        /*OUT: {
        Reverse<3332,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2752,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--, 2730_1; 2709_1; 2687_1; 2673_1;>}*/
    jajp1 = rowstr[1];
    /*OUT: {
    Reverse<--, 2730_1; 2709_1; 2687_1; 2673_1;>}*/
    /*OUT: {
    Reverse<--, 2730_1; 2709_1; 2687_1; 2673_1;>}*/
    /*OUT: {
    Reverse<--, 2791_1; 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
    for (j = 1; j <= nrows; j++) {
        /*OUT: {
        Reverse<--, 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
        nzrow = 0;
        /*OUT: {
        Reverse<--, 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
        /*OUT: {
        Reverse<--, 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
        /*OUT: {
        Reverse<--, 2763_0; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
        for (k = jajp1; k < rowstr[j + 1]; k++) {
            /*OUT: {
            Reverse<--, 2763_0; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
            i = colidx[k];
            /*OUT: {
            Reverse<--, 2763_0; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
            x[i] = x[i] + a[k];
            /*OUT: {
            Reverse<--, 2763_0; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
            int _imopVarPre208;
            /*OUT: {
            Reverse<--, 2763_0; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
            _imopVarPre208 = mark[i] == 0;
            /*OUT: {
            Reverse<--, 2763_0; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
            if (_imopVarPre208) {
                /*OUT: {
                Reverse<--, 2777_0; 2763_0; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
                _imopVarPre208 = x[i] != 0.0;
            }
            /*OUT: {
            Reverse<--, 2763_0; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
            if (_imopVarPre208) {
                /*OUT: {
                Reverse<--, 2781_0; 2763_0; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
                mark[i] = 1;
                /*OUT: {
                Reverse<--, 2781_0; 2763_0; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
                nzrow = nzrow + 1;
                /*OUT: {
                Reverse<--, 2781_0; 2763_0; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
                nzloc[nzrow] = i;
            }
        }
        /*OUT: {
        Reverse<--, 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
        /*OUT: {
        Reverse<--, 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
        /*OUT: {
        Reverse<--, 2791_0; 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
        for (k = 1; k <= nzrow; k++) {
            /*OUT: {
            Reverse<--, 2791_0; 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
            i = nzloc[k];
            /*OUT: {
            Reverse<--, 2791_0; 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
            mark[i] = 0;
            /*OUT: {
            Reverse<--, 2791_0; 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
            xi = x[i];
            /*OUT: {
            Reverse<--, 2791_0; 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
            x[i] = 0.0;
            /*OUT: {
            Reverse<--, 2791_0; 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
            if (xi != 0.0) {
                /*OUT: {
                Reverse<--, 2805_0; 2791_0; 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
                nza = nza + 1;
                /*OUT: {
                Reverse<--, 2805_0; 2791_0; 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
                a[nza] = xi;
                /*OUT: {
                Reverse<--, 2805_0; 2791_0; 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
                colidx[nza] = i;
            }
        }
        /*OUT: {
        Reverse<--, 2791_1; 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
        jajp1 = rowstr[j + 1];
        /*OUT: {
        Reverse<--, 2791_1; 2763_1; 2757_0; 2730_1; 2709_1; 2687_1; 2673_1;>}*/
        rowstr[j + 1] = nza + rowstr[1];
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void sprnvc(int n, int nz , double v[] , int iv[] , int nzloc[] , int mark[]) {
    /*OUT: {
    Reverse<--,>}*/
    int nn1;
    /*OUT: {
    Reverse<--,>}*/
    int nzrow;
    /*OUT: {
    Reverse<--,>}*/
    int nzv;
    /*OUT: {
    Reverse<--,>}*/
    int ii;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    double vecelt;
    /*OUT: {
    Reverse<--,>}*/
    double vecloc;
    /*OUT: {
    Reverse<--,>}*/
    nzv = 0;
    /*OUT: {
    Reverse<--,>}*/
    nzrow = 0;
    /*OUT: {
    Reverse<--,>}*/
    nn1 = 1;
    /*OUT: {
    Reverse<--,>}*/
    do {
        /*OUT: {
        Reverse<--,>}*/
        nn1 = 2 * nn1;
    } while (nn1 < n);
    /*OUT: {
    Reverse<--, 2842_1;>}*/
    while (nzv < nz) {
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        double *_imopVarPre210;
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        double _imopVarPre211;
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        _imopVarPre210 = &tran;
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        _imopVarPre211 = randlc(_imopVarPre210, amult);
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        vecelt = _imopVarPre211;
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        double *_imopVarPre213;
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        double _imopVarPre214;
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        _imopVarPre213 = &tran;
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        _imopVarPre214 = randlc(_imopVarPre213, amult);
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        vecloc = _imopVarPre214;
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        int _imopVarPre216;
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        _imopVarPre216 = icnvrt(vecloc, nn1);
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        i = _imopVarPre216 + 1;
        /*OUT: {
        Reverse<--, 2843_0; 2842_1;>}*/
        if (i > n) {
            /*OUT: {
            Reverse<--, 2877_0; 2843_0; 2842_1;>}*/
            continue;
        }
        /*OUT: {
        Reverse<--, 2877_1; 2843_0; 2842_1;>}*/
        if (mark[i] == 0) {
            /*OUT: {
            Reverse<--, 2880_0; 2877_1; 2843_0; 2842_1;>}*/
            mark[i] = 1;
            /*OUT: {
            Reverse<--, 2880_0; 2877_1; 2843_0; 2842_1;>}*/
            nzrow = nzrow + 1;
            /*OUT: {
            Reverse<--, 2880_0; 2877_1; 2843_0; 2842_1;>}*/
            nzloc[nzrow] = i;
            /*OUT: {
            Reverse<--, 2880_0; 2877_1; 2843_0; 2842_1;>}*/
            nzv = nzv + 1;
            /*OUT: {
            Reverse<--, 2880_0; 2877_1; 2843_0; 2842_1;>}*/
            v[nzv] = vecelt;
            /*OUT: {
            Reverse<--, 2880_0; 2877_1; 2843_0; 2842_1;>}*/
            iv[nzv] = i;
        }
    }
    /*OUT: {
    Reverse<--, 2843_1; 2842_1;>}*/
    /*OUT: {
    Reverse<--, 2843_1; 2842_1;>}*/
    /*OUT: {
    Reverse<--, 2898_0; 2843_1; 2842_1;>}*/
    for (ii = 1; ii <= nzrow; ii++) {
        /*OUT: {
        Reverse<--, 2898_0; 2843_1; 2842_1;>}*/
        i = nzloc[ii];
        /*OUT: {
        Reverse<--, 2898_0; 2843_1; 2842_1;>}*/
        mark[i] = 0;
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static int icnvrt(double x, int ipwr2) {
    /*OUT: {
    Reverse<--,>}*/
    return ((int) (ipwr2 * x));
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void vecset(int n, double v[] , int iv[] , int *nzv , int i , double val) {
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    boolean set;
    /*OUT: {
    Reverse<--,>}*/
    set = 0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2923_0;>}*/
    for (k = 1; k <= *nzv; k++) {
        /*OUT: {
        Reverse<--, 2923_0;>}*/
        if (iv[k] == i) {
            /*OUT: {
            Reverse<--, 2926_0; 2923_0;>}*/
            v[k] = val;
            /*OUT: {
            Reverse<--, 2926_0; 2923_0;>}*/
            set = 1;
        }
    }
    /*OUT: {
    Reverse<--, 2923_1;>}*/
    if (set == 0) {
        /*OUT: {
        Reverse<--, 2932_0; 2923_1;>}*/
        *nzv = *nzv + 1;
        /*OUT: {
        Reverse<--, 2932_0; 2923_1;>}*/
        v[*nzv] = val;
        /*OUT: {
        Reverse<--, 2932_0; 2923_1;>}*/
        iv[*nzv] = i;
    }
}
