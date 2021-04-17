
/*READ_S: []
WRITE_S: []*/
struct __sFILEX ;
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *restrict , ...);
/*READ_S: []
WRITE_S: [exit]*/
void exit(int );
/*READ_S: []
WRITE_S: [fabs]*/
extern double fabs(double );
/*READ_S: []
WRITE_S: [pow]*/
extern double pow(double , double );
/*READ_S: []
WRITE_S: [sqrt]*/
extern double sqrt(double );
/*READ_S: []
WRITE_S: []*/
typedef int boolean;
/*READ_S: []
WRITE_S: [randlc]*/
extern double randlc(double *, double );
/*READ_S: []
WRITE_S: [timer_clear]*/
extern void timer_clear(int );
/*READ_S: []
WRITE_S: [timer_start]*/
extern void timer_start(int );
/*READ_S: []
WRITE_S: [timer_stop]*/
extern void timer_stop(int );
/*READ_S: []
WRITE_S: [timer_read]*/
extern double timer_read(int );
/*READ_S: []
WRITE_S: [c_print_results]*/
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
/*READ_S: []
WRITE_S: [naa]*/
static int naa;
/*READ_S: []
WRITE_S: [nzz]*/
static int nzz;
/*READ_S: []
WRITE_S: [firstrow]*/
static int firstrow;
/*READ_S: []
WRITE_S: [lastrow]*/
static int lastrow;
/*READ_S: []
WRITE_S: [firstcol]*/
static int firstcol;
/*READ_S: []
WRITE_S: [lastcol]*/
static int lastcol;
/*READ_S: []
WRITE_S: [colidx.f, colidx]*/
static int colidx[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
/*READ_S: []
WRITE_S: [rowstr.f, rowstr]*/
static int rowstr[1400 + 1 + 1];
/*READ_S: []
WRITE_S: [iv.f, iv]*/
static int iv[2 * 1400 + 1 + 1];
/*READ_S: []
WRITE_S: [arow, arow.f]*/
static int arow[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
/*READ_S: []
WRITE_S: [acol, acol.f]*/
static int acol[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
/*READ_S: []
WRITE_S: [v, v.f]*/
static double v[1400 + 1 + 1];
/*READ_S: []
WRITE_S: [aelt, aelt.f]*/
static double aelt[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
/*READ_S: []
WRITE_S: [a.f, a]*/
static double a[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
/*READ_S: []
WRITE_S: [x, x.f]*/
static double x[1400 + 2 + 1];
/*READ_S: []
WRITE_S: [z, z.f]*/
static double z[1400 + 2 + 1];
/*READ_S: []
WRITE_S: [p, p.f]*/
static double p[1400 + 2 + 1];
/*READ_S: []
WRITE_S: [q.f, q]*/
static double q[1400 + 2 + 1];
/*READ_S: []
WRITE_S: [r, r.f]*/
static double r[1400 + 2 + 1];
/*READ_S: []
WRITE_S: [amult]*/
static double amult;
/*READ_S: []
WRITE_S: [tran]*/
static double tran;
/*READ_S: []
WRITE_S: [conj_grad]*/
static void conj_grad(int colidx[], int rowstr[] , double x[] , double z[] , double a[] , double p[] , double q[] , double r[] , double *rnorm);
/*READ_S: []
WRITE_S: [makea]*/
static void makea(int n, int nz , double a[] , int colidx[] , int rowstr[] , int nonzer , int firstrow , int lastrow , int firstcol , int lastcol , double rcond , int arow[] , int acol[] , double aelt[] , double v[] , int iv[] , double shift);
/*READ_S: []
WRITE_S: [sparse]*/
static void sparse(double a[], int colidx[] , int rowstr[] , int n , int arow[] , int acol[] , double aelt[] , int firstrow , int lastrow , double x[] , boolean mark[] , int nzloc[] , int nnza);
/*READ_S: []
WRITE_S: [sprnvc]*/
static void sprnvc(int n, int nz , double v[] , int iv[] , int nzloc[] , int mark[]);
/*READ_S: []
WRITE_S: [icnvrt]*/
static int icnvrt(double x, int ipwr2);
/*READ_S: []
WRITE_S: [vecset]*/
static void vecset(int n, double v[] , int iv[] , int *nzv , int i , double val);
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [lastcol, n, rowstr, k, norm_temp11, rho0, acol.f, j, firstrow, _imopVarPre162, colidx.f, sum, lastrow, n, rowstr.f, norm_temp12, j, timer_stop, _imopVarPre200, rho, firstcol, _imopVarPre143, _imopVarPre161, timer_start, callcount, vecset, _imopVarPre167, aelt, _imopVarPre198, timer_read, &tran, _imopVarPre150, v, _imopVarPre163, _imopVarPre168, rowstr, iv, _imopVarPre155, c_print_results, aelt.f, randlc, i, mark, sqrt, v.f, exit, i, printf, iv.f, p, _imopVarPre149, _imopVarPre169, nrows, _imopVarPre156, tran, p, conj_grad, x, x, j, colidx, q, p.f, a, makea, _imopVarPre157, _imopVarPre151, q, x.f, r, q.f, a, rowstr, sparse, colidx, colidx, arow, nzz, icnvrt, _imopVarPre144, r, a, z, amult, z, _imopVarPre208, r.f, i, d, fabs, sprnvc, pow, acol, a.f, naa, _imopVarPre202, _imopVarPre145, arow.f, z.f, timer_clear, x]
WRITE_S: [lastcol, q.f, iv.f, norm_temp11, k, acol.f, nzz, tran, firstrow, amult, colidx.f, sum, r.f, lastrow, p.f, d, rowstr.f, norm_temp12, aelt.f, rho, a.f, naa, firstcol, arow.f, z.f, x.f, v.f, callcount]*/
int main(int argc, char **argv) {
/*READ_S: [lastcol, n, rowstr, k, norm_temp11, rho0, acol.f, j, firstrow, _imopVarPre162, colidx.f, sum, lastrow, n, rowstr.f, norm_temp12, j, timer_stop, _imopVarPre200, rho, firstcol, _imopVarPre143, _imopVarPre161, timer_start, callcount, vecset, _imopVarPre167, aelt, _imopVarPre198, timer_read, &tran, _imopVarPre150, v, _imopVarPre163, _imopVarPre168, rowstr, iv, _imopVarPre155, c_print_results, aelt.f, randlc, i, mark, sqrt, v.f, exit, i, printf, iv.f, p, _imopVarPre149, _imopVarPre169, nrows, _imopVarPre156, tran, p, conj_grad, x, x, j, colidx, q, p.f, a, makea, _imopVarPre157, _imopVarPre151, q, x.f, r, q.f, a, rowstr, sparse, colidx, colidx, arow, nzz, icnvrt, _imopVarPre144, r, a, z, amult, z, _imopVarPre208, r.f, i, d, fabs, sprnvc, pow, acol, a.f, naa, _imopVarPre202, _imopVarPre145, arow.f, z.f, timer_clear, x]
WRITE_S: [lastcol, q.f, iv.f, norm_temp11, k, acol.f, nzz, tran, firstrow, amult, colidx.f, sum, r.f, lastrow, p.f, d, rowstr.f, norm_temp12, aelt.f, rho, a.f, naa, firstcol, arow.f, z.f, x.f, v.f, callcount]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int it;
    /*READ_S: []
    WRITE_S: []*/
    int nthreads = 1;
    /*READ_S: []
    WRITE_S: []*/
    double zeta;
    /*READ_S: []
    WRITE_S: []*/
    double rnorm;
    /*READ_S: []
    WRITE_S: []*/
    double norm_temp11;
    /*READ_S: []
    WRITE_S: []*/
    double norm_temp12;
    /*READ_S: []
    WRITE_S: []*/
    double t;
    /*READ_S: []
    WRITE_S: []*/
    double mflops;
    /*READ_S: []
    WRITE_S: []*/
    char class;
    /*READ_S: []
    WRITE_S: []*/
    boolean verified;
    /*READ_S: []
    WRITE_S: []*/
    double zeta_verify_value;
    /*READ_S: []
    WRITE_S: []*/
    double epsilon;
    /*READ_S: []
    WRITE_S: [firstrow]*/
    firstrow = 1;
    /*READ_S: []
    WRITE_S: [lastrow]*/
    lastrow = 1400;
    /*READ_S: []
    WRITE_S: [firstcol]*/
    firstcol = 1;
    /*READ_S: []
    WRITE_S: [lastcol]*/
    lastcol = 1400;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre143;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre144;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre145;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre143 = 1400 == 1400;
    /*READ_S: [_imopVarPre143]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre144, _imopVarPre145, _imopVarPre143]
    WRITE_S: []*/
    if (_imopVarPre143) {
    /*READ_S: [_imopVarPre144, _imopVarPre145]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre144 = 7 == 7;
        /*READ_S: [_imopVarPre144]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre144, _imopVarPre145]
        WRITE_S: []*/
        if (_imopVarPre144) {
        /*READ_S: [_imopVarPre145]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre145 = 15 == 15;
            /*READ_S: [_imopVarPre145]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre145]
            WRITE_S: []*/
            if (_imopVarPre145) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre145 = 10.0 == 10.0;
            }
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre144 = _imopVarPre145;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre143 = _imopVarPre144;
    }
    /*READ_S: [_imopVarPre143]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre163, _imopVarPre149, _imopVarPre169, _imopVarPre168, _imopVarPre157, _imopVarPre167, _imopVarPre156, _imopVarPre155, _imopVarPre151, _imopVarPre150, _imopVarPre143, _imopVarPre161, _imopVarPre162]
    WRITE_S: []*/
    if (_imopVarPre143) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        class = 'S';
        /*READ_S: []
        WRITE_S: []*/
        zeta_verify_value = 8.5971775078648;
    } else {
    /*READ_S: [_imopVarPre151, _imopVarPre150, _imopVarPre163, _imopVarPre149, _imopVarPre169, _imopVarPre168, _imopVarPre161, _imopVarPre157, _imopVarPre167, _imopVarPre162, _imopVarPre156, _imopVarPre155]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre149;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre150;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre151;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre149 = 1400 == 7000;
        /*READ_S: [_imopVarPre149]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre151, _imopVarPre150, _imopVarPre149]
        WRITE_S: []*/
        if (_imopVarPre149) {
        /*READ_S: [_imopVarPre151, _imopVarPre150]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre150 = 7 == 8;
            /*READ_S: [_imopVarPre150]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre151, _imopVarPre150]
            WRITE_S: []*/
            if (_imopVarPre150) {
            /*READ_S: [_imopVarPre151]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre151 = 15 == 15;
                /*READ_S: [_imopVarPre151]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre151]
                WRITE_S: []*/
                if (_imopVarPre151) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre151 = 10.0 == 12.0;
                }
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre150 = _imopVarPre151;
            }
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre149 = _imopVarPre150;
        }
        /*READ_S: [_imopVarPre149]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre163, _imopVarPre149, _imopVarPre169, _imopVarPre168, _imopVarPre161, _imopVarPre157, _imopVarPre167, _imopVarPre162, _imopVarPre156, _imopVarPre155]
        WRITE_S: []*/
        if (_imopVarPre149) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            class = 'W';
            /*READ_S: []
            WRITE_S: []*/
            zeta_verify_value = 10.362595087124;
        } else {
        /*READ_S: [_imopVarPre163, _imopVarPre169, _imopVarPre168, _imopVarPre161, _imopVarPre157, _imopVarPre167, _imopVarPre162, _imopVarPre156, _imopVarPre155]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre155;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre156;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre157;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre155 = 1400 == 14000;
            /*READ_S: [_imopVarPre155]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre157, _imopVarPre156, _imopVarPre155]
            WRITE_S: []*/
            if (_imopVarPre155) {
            /*READ_S: [_imopVarPre157, _imopVarPre156]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre156 = 7 == 11;
                /*READ_S: [_imopVarPre156]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre157, _imopVarPre156]
                WRITE_S: []*/
                if (_imopVarPre156) {
                /*READ_S: [_imopVarPre157]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre157 = 15 == 15;
                    /*READ_S: [_imopVarPre157]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre157]
                    WRITE_S: []*/
                    if (_imopVarPre157) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre157 = 10.0 == 20.0;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre156 = _imopVarPre157;
                }
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre155 = _imopVarPre156;
            }
            /*READ_S: [_imopVarPre155]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre163, _imopVarPre169, _imopVarPre168, _imopVarPre161, _imopVarPre167, _imopVarPre162, _imopVarPre155]
            WRITE_S: []*/
            if (_imopVarPre155) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                class = 'A';
                /*READ_S: []
                WRITE_S: []*/
                zeta_verify_value = 17.130235054029;
            } else {
            /*READ_S: [_imopVarPre163, _imopVarPre169, _imopVarPre168, _imopVarPre161, _imopVarPre167, _imopVarPre162]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre161;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre162;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre163;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre161 = 1400 == 75000;
                /*READ_S: [_imopVarPre161]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre163, _imopVarPre161, _imopVarPre162]
                WRITE_S: []*/
                if (_imopVarPre161) {
                /*READ_S: [_imopVarPre163, _imopVarPre162]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre162 = 7 == 13;
                    /*READ_S: [_imopVarPre162]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre163, _imopVarPre162]
                    WRITE_S: []*/
                    if (_imopVarPre162) {
                    /*READ_S: [_imopVarPre163]
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre163 = 15 == 75;
                        /*READ_S: [_imopVarPre163]
                        WRITE_S: []*/
                        /*READ_S: [_imopVarPre163]
                        WRITE_S: []*/
                        if (_imopVarPre163) {
                        /*READ_S: []
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre163 = 10.0 == 60.0;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre162 = _imopVarPre163;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre161 = _imopVarPre162;
                }
                /*READ_S: [_imopVarPre161]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre169, _imopVarPre168, _imopVarPre161, _imopVarPre167]
                WRITE_S: []*/
                if (_imopVarPre161) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    class = 'B';
                    /*READ_S: []
                    WRITE_S: []*/
                    zeta_verify_value = 22.712745482631;
                } else {
                /*READ_S: [_imopVarPre169, _imopVarPre168, _imopVarPre167]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre167;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre168;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre169;
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre167 = 1400 == 150000;
                    /*READ_S: [_imopVarPre167]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre169, _imopVarPre168, _imopVarPre167]
                    WRITE_S: []*/
                    if (_imopVarPre167) {
                    /*READ_S: [_imopVarPre169, _imopVarPre168]
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre168 = 7 == 15;
                        /*READ_S: [_imopVarPre168]
                        WRITE_S: []*/
                        /*READ_S: [_imopVarPre169, _imopVarPre168]
                        WRITE_S: []*/
                        if (_imopVarPre168) {
                        /*READ_S: [_imopVarPre169]
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre169 = 15 == 75;
                            /*READ_S: [_imopVarPre169]
                            WRITE_S: []*/
                            /*READ_S: [_imopVarPre169]
                            WRITE_S: []*/
                            if (_imopVarPre169) {
                            /*READ_S: []
                            WRITE_S: []*/
                                /*READ_S: []
                                WRITE_S: []*/
                                _imopVarPre169 = 10.0 == 110.0;
                            }
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre168 = _imopVarPre169;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre167 = _imopVarPre168;
                    }
                    /*READ_S: [_imopVarPre167]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre167]
                    WRITE_S: []*/
                    if (_imopVarPre167) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        class = 'C';
                        /*READ_S: []
                        WRITE_S: []*/
                        zeta_verify_value = 28.973605592845;
                    } else {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        class = 'U';
                    }
                }
            }
        }
    }
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - CG Benchmark\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" Size: %10d\n", 1400);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" Iterations: %5d\n", 15);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [naa]*/
    naa = 1400;
    /*READ_S: []
    WRITE_S: [nzz]*/
    nzz = 1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2);
    /*READ_S: []
    WRITE_S: [tran]*/
    tran = 314159265.0;
    /*READ_S: []
    WRITE_S: [amult]*/
    amult = 1220703125.0;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre171;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre172;
    /*READ_S: [&tran]
    WRITE_S: []*/
    _imopVarPre171 = &tran;
    /*READ_S: [randlc, tran, amult]
    WRITE_S: [tran]*/
    _imopVarPre172 = randlc(_imopVarPre171, amult);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    zeta = _imopVarPre172;
    /*READ_S: [lastcol, lastrow, makea, rowstr, iv, aelt, colidx, arow, acol, nzz, naa, firstcol, a, firstrow, v]
    WRITE_S: []*/
    makea(naa, nzz, a, colidx, rowstr, 7, firstrow, lastrow, firstcol, lastcol, 1.0e-1, arow, acol, aelt, v, iv, 10.0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [colidx.f, lastcol, i, j, r, lastrow, p, q, rowstr.f, rowstr, colidx, firstcol, firstrow, z, x]
    WRITE_S: [colidx.f, q.f, r.f, p.f, z.f, x.f]*/
#pragma omp parallel default(shared) private(i, j, k)
    {
    /*READ_S: [colidx.f, lastcol, i, j, r, lastrow, p, q, rowstr.f, rowstr, colidx, firstcol, firstrow, z, x]
    WRITE_S: [colidx.f, q.f, r.f, p.f, z.f, x.f]*/
        /*READ_S: [colidx.f, j, firstcol, lastrow, firstrow, rowstr.f, rowstr, colidx]
        WRITE_S: [colidx.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [lastrow, firstrow]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 1; j <= lastrow - firstrow + 1; j++) {
        /*READ_S: [colidx.f, firstcol, rowstr.f, rowstr, colidx]
        WRITE_S: [colidx.f]*/
            /*READ_S: [rowstr.f, rowstr]
            WRITE_S: []*/
            /*READ_S: [rowstr.f, rowstr]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [colidx.f, firstcol, rowstr.f, rowstr, colidx]
            WRITE_S: [colidx.f]*/
            for (k = rowstr[j]; k < rowstr[j + 1]; k++) {
            /*READ_S: [colidx.f, firstcol, colidx]
            WRITE_S: [colidx.f]*/
                /*READ_S: [colidx.f, firstcol, colidx]
                WRITE_S: [colidx.f]*/
                colidx[k] = colidx[k] - firstcol + 1;
            }
        }
        /*READ_S: [i, x]
        WRITE_S: [x.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i <= 1400 + 1; i++) {
        /*READ_S: [x]
        WRITE_S: [x.f]*/
            /*READ_S: [x]
            WRITE_S: [x.f]*/
            x[i] = 1.0;
        }
        /*READ_S: [lastcol, j, r, firstcol, p, q, z]
        WRITE_S: [q.f, r.f, p.f, z.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [lastcol, firstcol]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 1; j <= lastcol - firstcol + 1; j++) {
        /*READ_S: [r, p, q, z]
        WRITE_S: [q.f, r.f, p.f, z.f]*/
            /*READ_S: [q]
            WRITE_S: [q.f]*/
            q[j] = 0.0;
            /*READ_S: [z]
            WRITE_S: [z.f]*/
            z[j] = 0.0;
            /*READ_S: [r]
            WRITE_S: [r.f]*/
            r[j] = 0.0;
            /*READ_S: [p]
            WRITE_S: [p.f]*/
            p[j] = 0.0;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    zeta = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lastcol, q.f, r, p, a, rowstr, colidx, k, norm_temp11, colidx, rho0, r, a, p, firstrow, conj_grad, z, x, z, x, colidx.f, j, sum, r.f, lastrow, p.f, d, q, rowstr.f, rowstr, norm_temp12, j, rho, a.f, firstcol, naa, q, z.f, x.f, sqrt, callcount]
    WRITE_S: [rho, q.f, sum, r.f, d, p.f, z.f, k, norm_temp11, x.f, norm_temp12, callcount]*/
    for (it = 1; it <= 1; it++) {
    /*READ_S: [lastcol, q.f, r, p, a, rowstr, colidx, k, norm_temp11, colidx, rho0, r, a, p, firstrow, conj_grad, z, x, z, x, colidx.f, j, sum, r.f, lastrow, p.f, d, q, rowstr.f, rowstr, norm_temp12, j, rho, a.f, firstcol, naa, q, z.f, x.f, sqrt, callcount]
    WRITE_S: [rho, q.f, sum, r.f, d, p.f, z.f, k, norm_temp11, x.f, norm_temp12, callcount]*/
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre174;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre174 = &rnorm;
        /*READ_S: [r, p, a, q, conj_grad, rowstr, z, x, colidx]
        WRITE_S: []*/
        conj_grad(colidx, rowstr, x, z, a, p, q, r, _imopVarPre174);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        norm_temp11 = 0.0;
        /*READ_S: []
        WRITE_S: []*/
        norm_temp12 = 0.0;
        /*READ_S: [lastcol, j, firstcol, z, z.f, norm_temp11, x, norm_temp12, x.f]
        WRITE_S: [norm_temp11, norm_temp12]*/
#pragma omp parallel default(shared) private(j)
        {
        /*READ_S: [lastcol, j, firstcol, z, z.f, norm_temp11, x, norm_temp12, x.f]
        WRITE_S: [norm_temp11, norm_temp12]*/
            /*READ_S: [lastcol, j, firstcol, z, z.f, norm_temp11, x, norm_temp12, x.f]
            WRITE_S: [norm_temp11, norm_temp12]*/
#pragma omp for reduction(+:norm_temp11, norm_temp12) nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [lastcol, firstcol]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*READ_S: [z, z.f, norm_temp11, x, norm_temp12, x.f]
            WRITE_S: [norm_temp11, norm_temp12]*/
                /*READ_S: [z, z.f, norm_temp11, x, x.f]
                WRITE_S: [norm_temp11]*/
                norm_temp11 = norm_temp11 + x[j] * z[j];
                /*READ_S: [z, z.f, norm_temp12]
                WRITE_S: [norm_temp12]*/
                norm_temp12 = norm_temp12 + z[j] * z[j];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre176;
        /*READ_S: [sqrt]
        WRITE_S: []*/
        _imopVarPre176 = sqrt(norm_temp12);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        norm_temp12 = 1.0 / _imopVarPre176;
        /*READ_S: [lastcol, j, firstcol, z, z.f, x, norm_temp12]
        WRITE_S: [x.f]*/
#pragma omp parallel default(shared) private(j)
        {
        /*READ_S: [lastcol, j, firstcol, z, z.f, x, norm_temp12]
        WRITE_S: [x.f]*/
            /*READ_S: [lastcol, j, firstcol, z, z.f, x, norm_temp12]
            WRITE_S: [x.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [lastcol, firstcol]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*READ_S: [z, z.f, x, norm_temp12]
            WRITE_S: [x.f]*/
                /*READ_S: [z, z.f, x, norm_temp12]
                WRITE_S: [x.f]*/
                x[j] = norm_temp12 * z[j];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
    }
    /*READ_S: [i, x]
    WRITE_S: [x.f]*/
#pragma omp parallel default(shared) private(i)
    {
    /*READ_S: [i, x]
    WRITE_S: [x.f]*/
        /*READ_S: [i, x]
        WRITE_S: [x.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i <= 1400 + 1; i++) {
        /*READ_S: [x]
        WRITE_S: [x.f]*/
            /*READ_S: [x]
            WRITE_S: [x.f]*/
            x[i] = 1.0;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    zeta = 0.0;
    /*READ_S: [timer_clear]
    WRITE_S: []*/
    timer_clear(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_start]
    WRITE_S: []*/
    timer_start(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lastcol, q.f, r, printf, p, a, rowstr, colidx, k, norm_temp11, colidx, rho0, r, a, p, firstrow, conj_grad, z, x, z, x, colidx.f, j, sum, r.f, lastrow, p.f, d, q, rowstr.f, rowstr, norm_temp12, j, rho, a.f, firstcol, naa, q, z.f, x.f, sqrt, callcount]
    WRITE_S: [rho, q.f, sum, r.f, d, p.f, z.f, norm_temp11, k, x.f, norm_temp12, callcount]*/
    for (it = 1; it <= 15; it++) {
    /*READ_S: [lastcol, q.f, r, printf, p, a, rowstr, colidx, k, norm_temp11, colidx, rho0, r, a, p, firstrow, conj_grad, z, x, z, x, colidx.f, j, sum, r.f, lastrow, p.f, d, q, rowstr.f, rowstr, norm_temp12, j, rho, a.f, firstcol, naa, q, z.f, x.f, sqrt, callcount]
    WRITE_S: [rho, q.f, sum, r.f, d, p.f, z.f, norm_temp11, k, x.f, norm_temp12, callcount]*/
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre178;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre178 = &rnorm;
        /*READ_S: [r, p, a, q, conj_grad, rowstr, z, x, colidx]
        WRITE_S: []*/
        conj_grad(colidx, rowstr, x, z, a, p, q, r, _imopVarPre178);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        norm_temp11 = 0.0;
        /*READ_S: []
        WRITE_S: []*/
        norm_temp12 = 0.0;
        /*READ_S: [lastcol, j, firstcol, z, z.f, norm_temp11, x, x.f, norm_temp12]
        WRITE_S: [norm_temp11, norm_temp12]*/
#pragma omp parallel default(shared) private(j)
        {
        /*READ_S: [lastcol, j, firstcol, z, z.f, norm_temp11, x, x.f, norm_temp12]
        WRITE_S: [norm_temp11, norm_temp12]*/
            /*READ_S: [lastcol, j, firstcol, z, z.f, norm_temp11, x, x.f, norm_temp12]
            WRITE_S: [norm_temp11, norm_temp12]*/
#pragma omp for reduction(+:norm_temp11, norm_temp12) nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [lastcol, firstcol]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*READ_S: [z, z.f, norm_temp11, x, x.f, norm_temp12]
            WRITE_S: [norm_temp11, norm_temp12]*/
                /*READ_S: [z, z.f, norm_temp11, x, x.f]
                WRITE_S: [norm_temp11]*/
                norm_temp11 = norm_temp11 + x[j] * z[j];
                /*READ_S: [z, z.f, norm_temp12]
                WRITE_S: [norm_temp12]*/
                norm_temp12 = norm_temp12 + z[j] * z[j];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre180;
        /*READ_S: [sqrt]
        WRITE_S: []*/
        _imopVarPre180 = sqrt(norm_temp12);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        norm_temp12 = 1.0 / _imopVarPre180;
        /*READ_S: []
        WRITE_S: []*/
        zeta = 10.0 + 1.0 / norm_temp11;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        if (it == 1) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("   iteration           ||r||                 zeta\n");
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("    %5d       %20.14e%20.13e\n", it, rnorm, zeta);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [lastcol, j, firstcol, z, z.f, x, norm_temp12]
        WRITE_S: [x.f]*/
#pragma omp parallel default(shared) private(j)
        {
        /*READ_S: [lastcol, j, firstcol, z, z.f, x, norm_temp12]
        WRITE_S: [x.f]*/
            /*READ_S: [lastcol, j, firstcol, z, z.f, x, norm_temp12]
            WRITE_S: [x.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [lastcol, firstcol]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*READ_S: [z, z.f, x, norm_temp12]
            WRITE_S: [x.f]*/
                /*READ_S: [z, z.f, x, norm_temp12]
                WRITE_S: [x.f]*/
                x[j] = norm_temp12 * z[j];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
    }
    /*READ_S: []
    WRITE_S: []*/
#pragma omp parallel
    {
    /*READ_S: []
    WRITE_S: []*/
    }
    /*READ_S: [timer_stop]
    WRITE_S: []*/
    timer_stop(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_read]
    WRITE_S: []*/
    t = timer_read(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" Benchmark completed\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    epsilon = 1.0e-10;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, fabs]
    WRITE_S: []*/
    if (class != 'U') {
    /*READ_S: [printf, fabs]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre183;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre184;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre183 = zeta - zeta_verify_value;
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre184 = fabs(_imopVarPre183);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        if (_imopVarPre184 <= epsilon) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            verified = 1;
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" VERIFICATION SUCCESSFUL\n");
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" Zeta is    %20.12e\n", zeta);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre186;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre186 = zeta - zeta_verify_value;
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" Error is   %20.12e\n", _imopVarPre186);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            verified = 0;
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" VERIFICATION FAILED\n");
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" Zeta                %20.12e\n", zeta);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" The correct zeta is %20.12e\n", zeta_verify_value);
            /*READ_S: []
            WRITE_S: []*/
        }
    } else {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        verified = 0;
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Problem size unknown\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" NO VERIFICATION PERFORMED\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (t != 0.0) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        mflops = (2.0 * 15 * 1400) * (3.0 + (7 * (7 + 1)) + 25.0 * (5.0 + (7 * (7 + 1))) + 3.0) / t / 1000000.0;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        mflops = 0.0;
    }
    /*READ_S: [c_print_results]
    WRITE_S: []*/
    c_print_results("CG", class, 1400, 0, 0, 15, nthreads, t, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
    /*READ_S: []
    WRITE_S: []*/
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [lastcol, q.f, a, colidx, k, rho0, r, p, firstrow, z, x, colidx.f, sum, r.f, lastrow, p.f, d, rowstr.f, rowstr, j, rho, a.f, firstcol, naa, q, z.f, x.f, sqrt, callcount]
WRITE_S: [rho, q.f, sum, r.f, p.f, d, z.f, k, callcount]*/
static void conj_grad(int colidx[], int rowstr[] , double x[] , double z[] , double a[] , double p[] , double q[] , double r[] , double *rnorm) {
/*READ_S: [lastcol, q.f, a, colidx, k, rho0, r, p, firstrow, z, x, colidx.f, sum, r.f, lastrow, p.f, d, rowstr.f, rowstr, j, rho, a.f, firstcol, naa, q, z.f, x.f, sqrt, callcount]
WRITE_S: [rho, q.f, sum, r.f, p.f, d, z.f, k, callcount]*/
    /*READ_S: []
    WRITE_S: [callcount]*/
    static int callcount = 0;
    /*READ_S: []
    WRITE_S: []*/
    double d;
    /*READ_S: []
    WRITE_S: []*/
    double sum;
    /*READ_S: []
    WRITE_S: []*/
    double rho;
    /*READ_S: []
    WRITE_S: []*/
    double rho0;
    /*READ_S: []
    WRITE_S: []*/
    double alpha;
    /*READ_S: []
    WRITE_S: []*/
    double beta;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int cgit;
    /*READ_S: []
    WRITE_S: []*/
    int cgitmax = 25;
    /*READ_S: []
    WRITE_S: []*/
    rho = 0.0;
    /*READ_S: [lastcol, rho, firstcol, r.f, naa, r, q, p, x.f, z, j, x]
    WRITE_S: [rho, q.f, r.f, p.f, z.f]*/
#pragma omp parallel default(shared) private(j, sum) shared(rho, naa)
    {
    /*READ_S: [lastcol, rho, firstcol, r.f, naa, r, q, p, x.f, z, j, x]
    WRITE_S: [rho, q.f, r.f, p.f, z.f]*/
        /*READ_S: [r.f, naa, r, q, p, x.f, z, j, x]
        WRITE_S: [q.f, r.f, p.f, z.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [naa]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 1; j <= naa + 1; j++) {
        /*READ_S: [r.f, r, q, p, x.f, z, x]
        WRITE_S: [q.f, r.f, p.f, z.f]*/
            /*READ_S: [q]
            WRITE_S: [q.f]*/
            q[j] = 0.0;
            /*READ_S: [z]
            WRITE_S: [z.f]*/
            z[j] = 0.0;
            /*READ_S: [r, x.f, x]
            WRITE_S: [r.f]*/
            r[j] = x[j];
            /*READ_S: [r.f, r, p]
            WRITE_S: [p.f]*/
            p[j] = r[j];
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [lastcol, rho, r.f, firstcol, r, j]
        WRITE_S: [rho]*/
#pragma omp for reduction(+:rho) nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [lastcol, firstcol]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 1; j <= lastcol - firstcol + 1; j++) {
        /*READ_S: [rho, r.f, r]
        WRITE_S: [rho]*/
            /*READ_S: [rho, r.f, r]
            WRITE_S: [rho]*/
            rho = rho + r[j] * r[j];
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lastcol, colidx.f, q.f, r.f, lastrow, p.f, d, a, rowstr.f, rowstr, colidx, j, rho, rho0, a.f, firstcol, r, q, p, firstrow, z.f, z, callcount]
    WRITE_S: [rho, q.f, r.f, d, p.f, z.f, callcount]*/
    for (cgit = 1; cgit <= cgitmax; cgit++) {
    /*READ_S: [lastcol, colidx.f, q.f, r.f, lastrow, p.f, d, a, rowstr.f, rowstr, colidx, j, rho, rho0, a.f, firstcol, r, q, p, firstrow, z.f, z, callcount]
    WRITE_S: [rho, q.f, r.f, d, p.f, z.f, callcount]*/
        /*READ_S: []
        WRITE_S: []*/
        rho0 = rho;
        /*READ_S: []
        WRITE_S: []*/
        d = 0.0;
        /*READ_S: []
        WRITE_S: []*/
        rho = 0.0;
        /*READ_S: [lastcol, colidx.f, q.f, r.f, lastrow, p.f, d, a, rowstr.f, rowstr, colidx, j, rho, rho0, a.f, firstcol, r, q, p, firstrow, z.f, z, callcount]
        WRITE_S: [rho, q.f, r.f, d, p.f, z.f, callcount]*/
#pragma omp parallel default(shared) private(j, k, sum, alpha, beta) shared(d, rho0, rho)
        {
        /*READ_S: [lastcol, colidx.f, q.f, r.f, lastrow, p.f, d, a, rowstr.f, rowstr, colidx, j, rho, rho0, a.f, firstcol, r, q, p, firstrow, z.f, z, callcount]
        WRITE_S: [rho, q.f, r.f, d, p.f, z.f, callcount]*/
            /*READ_S: [colidx.f, a.f, lastrow, p.f, a, q, p, firstrow, rowstr.f, rowstr, colidx, j]
            WRITE_S: [q.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [lastrow, firstrow]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= lastrow - firstrow + 1; j++) {
            /*READ_S: [colidx.f, a.f, p.f, a, q, p, rowstr.f, rowstr, colidx]
            WRITE_S: [q.f]*/
                /*READ_S: []
                WRITE_S: []*/
                sum = 0.0;
                /*READ_S: [rowstr.f, rowstr]
                WRITE_S: []*/
                /*READ_S: [rowstr.f, rowstr]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [colidx.f, a.f, p.f, a, p, rowstr.f, rowstr, colidx]
                WRITE_S: []*/
                for (k = rowstr[j]; k < rowstr[j + 1]; k++) {
                /*READ_S: [colidx.f, a.f, p.f, a, p, colidx]
                WRITE_S: []*/
                    /*READ_S: [colidx.f, a.f, p.f, a, p, colidx]
                    WRITE_S: []*/
                    sum = sum + a[k] * p[colidx[k]];
                }
                /*READ_S: [q]
                WRITE_S: [q.f]*/
                q[j] = sum;
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [lastcol, q.f, firstcol, d, p.f, q, p, j]
            WRITE_S: [d]*/
#pragma omp for reduction(+:d) nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [lastcol, firstcol]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*READ_S: [q.f, d, p.f, q, p]
            WRITE_S: [d]*/
                /*READ_S: [q.f, d, p.f, q, p]
                WRITE_S: [d]*/
                d = d + p[j] * q[j];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [rho0, d]
            WRITE_S: []*/
            alpha = rho0 / d;
            /*READ_S: [lastcol, rho, q.f, r.f, firstcol, p.f, r, q, p, z.f, z, j]
            WRITE_S: [rho, r.f, z.f]*/
#pragma omp for reduction(+:rho) nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [lastcol, firstcol]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*READ_S: [rho, q.f, r.f, p.f, r, q, p, z.f, z]
            WRITE_S: [rho, r.f, z.f]*/
                /*READ_S: [p.f, p, z.f, z]
                WRITE_S: [z.f]*/
                z[j] = z[j] + alpha * p[j];
                /*READ_S: [q.f, r.f, r, q]
                WRITE_S: [r.f]*/
                r[j] = r[j] - alpha * q[j];
                /*READ_S: [rho, r.f, r]
                WRITE_S: [rho]*/
                rho = rho + r[j] * r[j];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [rho, rho0]
            WRITE_S: []*/
            beta = rho / rho0;
            /*READ_S: [lastcol, firstcol, r.f, r, p.f, p, j]
            WRITE_S: [p.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [lastcol, firstcol]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*READ_S: [r.f, r, p.f, p]
            WRITE_S: [p.f]*/
                /*READ_S: [r.f, r, p.f, p]
                WRITE_S: [p.f]*/
                p[j] = r[j] + beta * p[j];
            }
            /*READ_S: [callcount]
            WRITE_S: [callcount]*/
            callcount++;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    sum = 0.0;
    /*READ_S: [lastcol, colidx.f, sum, r.f, lastrow, a, rowstr.f, rowstr, k, colidx, j, a.f, firstcol, r, firstrow, z.f, x.f, z, x]
    WRITE_S: [sum, r.f, k]*/
#pragma omp parallel default(shared) private(j, d) shared(sum)
    {
    /*READ_S: [lastcol, colidx.f, sum, r.f, lastrow, a, rowstr.f, rowstr, k, colidx, j, a.f, firstcol, r, firstrow, z.f, x.f, z, x]
    WRITE_S: [sum, r.f, k]*/
        /*READ_S: [colidx.f, lastrow, a, rowstr.f, rowstr, k, colidx, j, a.f, r, firstrow, z.f, z]
        WRITE_S: [r.f, k]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [lastrow, firstrow]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 1; j <= lastrow - firstrow + 1; j++) {
        /*READ_S: [colidx.f, a.f, r, a, rowstr.f, rowstr, z.f, k, colidx, z]
        WRITE_S: [r.f, k]*/
            /*READ_S: []
            WRITE_S: []*/
            d = 0.0;
            /*READ_S: [rowstr.f, rowstr]
            WRITE_S: [k]*/
            /*READ_S: [rowstr.f, rowstr, k]
            WRITE_S: []*/
            /*READ_S: [k]
            WRITE_S: [k]*/
            /*READ_S: [colidx.f, a.f, a, rowstr.f, rowstr, z.f, k, colidx, z]
            WRITE_S: [k]*/
            for (k = rowstr[j]; k <= rowstr[j + 1] - 1; k++) {
            /*READ_S: [colidx.f, a.f, a, z.f, k, colidx, z]
            WRITE_S: []*/
                /*READ_S: [colidx.f, a.f, a, z.f, k, colidx, z]
                WRITE_S: []*/
                d = d + a[k] * z[colidx[k]];
            }
            /*READ_S: [r]
            WRITE_S: [r.f]*/
            r[j] = d;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [lastcol, sum, r.f, firstcol, r, x.f, x, j]
        WRITE_S: [sum]*/
#pragma omp for reduction(+:sum) nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [lastcol, firstcol]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 1; j <= lastcol - firstcol + 1; j++) {
        /*READ_S: [sum, r.f, r, x.f, x]
        WRITE_S: [sum]*/
            /*READ_S: [r.f, r, x.f, x]
            WRITE_S: []*/
            d = x[j] - r[j];
            /*READ_S: [sum]
            WRITE_S: [sum]*/
            sum = sum + d * d;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre187;
    /*READ_S: [sqrt]
    WRITE_S: []*/
    _imopVarPre187 = sqrt(sum);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    (*rnorm) = _imopVarPre187;
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [printf, iv.f, vecset, nrows, rowstr, n, sparse, colidx, _imopVarPre198, &tran, acol.f, j, tran, icnvrt, amult, colidx.f, colidx, _imopVarPre208, i, n, a, sprnvc, rowstr.f, pow, iv, aelt.f, _imopVarPre200, randlc, a.f, _imopVarPre202, i, arow.f, mark, x, exit, v.f]
WRITE_S: [colidx.f, acol.f, a.f, tran, iv.f, arow.f, rowstr.f, v.f, aelt.f]*/
static void makea(int n, int nz , double a[] , int colidx[] , int rowstr[] , int nonzer , int firstrow , int lastrow , int firstcol , int lastcol , double rcond , int arow[] , int acol[] , double aelt[] , double v[] , int iv[] , double shift) {
/*READ_S: [printf, iv.f, vecset, nrows, rowstr, n, sparse, colidx, _imopVarPre198, &tran, acol.f, j, tran, icnvrt, amult, colidx.f, colidx, _imopVarPre208, i, n, a, sprnvc, rowstr.f, pow, iv, aelt.f, _imopVarPre200, randlc, a.f, _imopVarPre202, i, arow.f, mark, x, exit, v.f]
WRITE_S: [colidx.f, acol.f, a.f, tran, iv.f, arow.f, rowstr.f, v.f, aelt.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int nnza;
    /*READ_S: []
    WRITE_S: []*/
    int iouter;
    /*READ_S: []
    WRITE_S: []*/
    int ivelt;
    /*READ_S: []
    WRITE_S: []*/
    int ivelt1;
    /*READ_S: []
    WRITE_S: []*/
    int irow;
    /*READ_S: []
    WRITE_S: []*/
    int nzv;
    /*READ_S: []
    WRITE_S: []*/
    double size;
    /*READ_S: []
    WRITE_S: []*/
    double ratio;
    /*READ_S: []
    WRITE_S: []*/
    double scale;
    /*READ_S: []
    WRITE_S: []*/
    int jcol;
    /*READ_S: []
    WRITE_S: []*/
    size = 1.0;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre189;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre190;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre189 = (1.0 / (double) n);
    /*READ_S: [pow]
    WRITE_S: []*/
    _imopVarPre190 = pow(rcond, _imopVarPre189);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ratio = _imopVarPre190;
    /*READ_S: []
    WRITE_S: []*/
    nnza = 0;
    /*READ_S: [colidx, i, n]
    WRITE_S: [colidx.f]*/
#pragma omp parallel default(shared) private(i)
    {
    /*READ_S: [colidx, i, n]
    WRITE_S: [colidx.f]*/
        /*READ_S: [colidx, i, n]
        WRITE_S: [colidx.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [n]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i <= n; i++) {
        /*READ_S: [colidx, n]
        WRITE_S: [colidx.f]*/
            /*READ_S: [colidx, n]
            WRITE_S: [colidx.f]*/
            colidx[n + i] = 0;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [colidx.f, printf, iv.f, vecset, sprnvc, colidx, _imopVarPre200, _imopVarPre198, randlc, &tran, tran, icnvrt, amult, v.f, exit]
    WRITE_S: [colidx.f, acol.f, tran, iv.f, arow.f, aelt.f, v.f]*/
    for (iouter = 1; iouter <= n; iouter++) {
    /*READ_S: [colidx.f, printf, iv.f, vecset, sprnvc, colidx, _imopVarPre200, _imopVarPre198, randlc, &tran, tran, icnvrt, amult, v.f, exit]
    WRITE_S: [colidx.f, acol.f, tran, iv.f, arow.f, aelt.f, v.f]*/
        /*READ_S: []
        WRITE_S: []*/
        nzv = nonzer;
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre193;
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre194;
        /*READ_S: [colidx]
        WRITE_S: []*/
        _imopVarPre193 = &(colidx[n]);
        /*READ_S: [colidx]
        WRITE_S: []*/
        _imopVarPre194 = &(colidx[0]);
        /*READ_S: [sprnvc]
        WRITE_S: []*/
        sprnvc(n, nzv, v, iv, _imopVarPre194, _imopVarPre193);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre196;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre196 = &nzv;
        /*READ_S: [vecset]
        WRITE_S: []*/
        vecset(n, v, iv, _imopVarPre196, iouter, 0.5);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [_imopVarPre200, _imopVarPre198, printf, iv.f, v.f, exit]
        WRITE_S: [acol.f, arow.f, aelt.f]*/
        for (ivelt = 1; ivelt <= nzv; ivelt++) {
        /*READ_S: [_imopVarPre200, _imopVarPre198, printf, iv.f, v.f, exit]
        WRITE_S: [acol.f, arow.f, aelt.f]*/
            /*READ_S: [iv.f]
            WRITE_S: []*/
            jcol = iv[ivelt];
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre198;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre198 = jcol >= firstcol;
            /*READ_S: [_imopVarPre198]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre198]
            WRITE_S: []*/
            if (_imopVarPre198) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre198 = jcol <= lastcol;
            }
            /*READ_S: [_imopVarPre198]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre200, _imopVarPre198, printf, iv.f, v.f, exit]
            WRITE_S: [acol.f, arow.f, aelt.f]*/
            if (_imopVarPre198) {
            /*READ_S: [_imopVarPre200, printf, iv.f, v.f, exit]
            WRITE_S: [acol.f, arow.f, aelt.f]*/
                /*READ_S: [v.f]
                WRITE_S: []*/
                scale = size * v[ivelt];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [_imopVarPre200, printf, iv.f, v.f, exit]
                WRITE_S: [acol.f, arow.f, aelt.f]*/
                for (ivelt1 = 1; ivelt1 <= nzv; ivelt1++) {
                /*READ_S: [_imopVarPre200, printf, iv.f, v.f, exit]
                WRITE_S: [acol.f, arow.f, aelt.f]*/
                    /*READ_S: [iv.f]
                    WRITE_S: []*/
                    irow = iv[ivelt1];
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre200;
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre200 = irow >= firstrow;
                    /*READ_S: [_imopVarPre200]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre200]
                    WRITE_S: []*/
                    if (_imopVarPre200) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre200 = irow <= lastrow;
                    }
                    /*READ_S: [_imopVarPre200]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre200, printf, exit, v.f]
                    WRITE_S: [acol.f, arow.f, aelt.f]*/
                    if (_imopVarPre200) {
                    /*READ_S: [printf, exit, v.f]
                    WRITE_S: [acol.f, arow.f, aelt.f]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        nnza = nnza + 1;
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [printf, exit]
                        WRITE_S: []*/
                        if (nnza > nz) {
                        /*READ_S: [printf, exit]
                        WRITE_S: []*/
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("Space for matrix elements exceeded in" " makea\n");
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("nnza, nzmax = %d, %d\n", nnza, nz);
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("iouter = %d\n", iouter);
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: [exit]
                            WRITE_S: []*/
                            exit(1);
                            /*READ_S: []
                            WRITE_S: []*/
                        }
                        /*READ_S: []
                        WRITE_S: [acol.f]*/
                        acol[nnza] = jcol;
                        /*READ_S: []
                        WRITE_S: [arow.f]*/
                        arow[nnza] = irow;
                        /*READ_S: [v.f]
                        WRITE_S: [aelt.f]*/
                        aelt[nnza] = v[ivelt1] * scale;
                    }
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        size = size * ratio;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, _imopVarPre202, exit]
    WRITE_S: [acol.f, arow.f, aelt.f]*/
    for (i = firstrow; i <= lastrow; i++) {
    /*READ_S: [printf, _imopVarPre202, exit]
    WRITE_S: [acol.f, arow.f, aelt.f]*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre202;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre202 = i >= firstcol;
        /*READ_S: [_imopVarPre202]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre202]
        WRITE_S: []*/
        if (_imopVarPre202) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre202 = i <= lastcol;
        }
        /*READ_S: [_imopVarPre202]
        WRITE_S: []*/
        /*READ_S: [printf, _imopVarPre202, exit]
        WRITE_S: [acol.f, arow.f, aelt.f]*/
        if (_imopVarPre202) {
        /*READ_S: [printf, exit]
        WRITE_S: [acol.f, arow.f, aelt.f]*/
            /*READ_S: []
            WRITE_S: []*/
            iouter = n + i;
            /*READ_S: []
            WRITE_S: []*/
            nnza = nnza + 1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf, exit]
            WRITE_S: []*/
            if (nnza > nz) {
            /*READ_S: [printf, exit]
            WRITE_S: []*/
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("Space for matrix elements exceeded in makea\n");
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("nnza, nzmax = %d, %d\n", nnza, nz);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("iouter = %d\n", iouter);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [exit]
                WRITE_S: []*/
                exit(1);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: []
            WRITE_S: [acol.f]*/
            acol[nnza] = i;
            /*READ_S: []
            WRITE_S: [arow.f]*/
            arow[nnza] = i;
            /*READ_S: []
            WRITE_S: [aelt.f]*/
            aelt[nnza] = rcond - shift;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre205;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre206;
    /*READ_S: [iv]
    WRITE_S: []*/
    _imopVarPre205 = &(iv[n]);
    /*READ_S: [iv]
    WRITE_S: []*/
    _imopVarPre206 = &(iv[0]);
    /*READ_S: [sparse]
    WRITE_S: []*/
    sparse(a, colidx, rowstr, n, arow, acol, aelt, firstrow, lastrow, v, _imopVarPre206, _imopVarPre205, nnza);
    /*READ_S: []
    WRITE_S: []*/
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
/*READ_S: [colidx.f, _imopVarPre208, iv.f, a, nrows, rowstr.f, rowstr, n, aelt.f, acol.f, j, a.f, i, arow.f, mark, x, v.f]
WRITE_S: [colidx.f, a.f, iv.f, rowstr.f, v.f]*/
static void sparse(double a[], int colidx[] , int rowstr[] , int n , int arow[] , int acol[] , double aelt[] , int firstrow , int lastrow , double x[] , boolean mark[] , int nzloc[] , int nnza) {
/*READ_S: [colidx.f, _imopVarPre208, iv.f, a, nrows, rowstr.f, rowstr, n, aelt.f, acol.f, j, a.f, i, arow.f, mark, x, v.f]
WRITE_S: [colidx.f, a.f, iv.f, rowstr.f, v.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int nrows;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int jajp1;
    /*READ_S: []
    WRITE_S: []*/
    int nza;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int nzrow;
    /*READ_S: []
    WRITE_S: []*/
    double xi;
    /*READ_S: []
    WRITE_S: []*/
    nrows = lastrow - firstrow + 1;
    /*READ_S: [j, mark, rowstr, n]
    WRITE_S: [iv.f, rowstr.f]*/
#pragma omp parallel default(shared) private(j)
    {
    /*READ_S: [j, mark, rowstr, n]
    WRITE_S: [iv.f, rowstr.f]*/
        /*READ_S: [j, mark, rowstr, n]
        WRITE_S: [iv.f, rowstr.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [n]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 1; j <= n; j++) {
        /*READ_S: [mark, rowstr]
        WRITE_S: [iv.f, rowstr.f]*/
            /*READ_S: [rowstr]
            WRITE_S: [rowstr.f]*/
            rowstr[j] = 0;
            /*READ_S: [mark]
            WRITE_S: [iv.f]*/
            mark[j] = 0;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: [rowstr.f]*/
    rowstr[n + 1] = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [arow.f, rowstr.f]
    WRITE_S: [rowstr.f]*/
    for (nza = 1; nza <= nnza; nza++) {
    /*READ_S: [arow.f, rowstr.f]
    WRITE_S: [rowstr.f]*/
        /*READ_S: [arow.f]
        WRITE_S: []*/
        j = (arow[nza] - firstrow + 1) + 1;
        /*READ_S: [rowstr.f]
        WRITE_S: [rowstr.f]*/
        rowstr[j] = rowstr[j] + 1;
    }
    /*READ_S: []
    WRITE_S: [rowstr.f]*/
    rowstr[1] = 1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [rowstr.f]
    WRITE_S: [rowstr.f]*/
    for (j = 2; j <= nrows + 1; j++) {
    /*READ_S: [rowstr.f]
    WRITE_S: [rowstr.f]*/
        /*READ_S: [rowstr.f]
        WRITE_S: [rowstr.f]*/
        rowstr[j] = rowstr[j] + rowstr[j - 1];
    }
    /*READ_S: [j, a, nrows, rowstr, rowstr.f]
    WRITE_S: [a.f]*/
#pragma omp parallel default(shared) private(k, j)
    {
    /*READ_S: [j, a, nrows, rowstr, rowstr.f]
    WRITE_S: [a.f]*/
        /*READ_S: [j, a, nrows, rowstr, rowstr.f]
        WRITE_S: [a.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [nrows]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j <= nrows - 1; j++) {
        /*READ_S: [a, rowstr, rowstr.f]
        WRITE_S: [a.f]*/
            /*READ_S: [rowstr, rowstr.f]
            WRITE_S: []*/
            /*READ_S: [rowstr, rowstr.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [a, rowstr, rowstr.f]
            WRITE_S: [a.f]*/
            for (k = rowstr[j]; k <= rowstr[j + 1] - 1; k++) {
            /*READ_S: [a]
            WRITE_S: [a.f]*/
                /*READ_S: [a]
                WRITE_S: [a.f]*/
                a[k] = 0.0;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [acol.f, arow.f, rowstr.f, aelt.f]
    WRITE_S: [colidx.f, a.f, rowstr.f]*/
    for (nza = 1; nza <= nnza; nza++) {
    /*READ_S: [acol.f, arow.f, rowstr.f, aelt.f]
    WRITE_S: [colidx.f, a.f, rowstr.f]*/
        /*READ_S: [arow.f]
        WRITE_S: []*/
        j = arow[nza] - firstrow + 1;
        /*READ_S: [rowstr.f]
        WRITE_S: []*/
        k = rowstr[j];
        /*READ_S: [aelt.f]
        WRITE_S: [a.f]*/
        a[k] = aelt[nza];
        /*READ_S: [acol.f]
        WRITE_S: [colidx.f]*/
        colidx[k] = acol[nza];
        /*READ_S: [rowstr.f]
        WRITE_S: [rowstr.f]*/
        rowstr[j] = rowstr[j] + 1;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [rowstr.f]
    WRITE_S: [rowstr.f]*/
    for (j = nrows; j >= 1; j--) {
    /*READ_S: [rowstr.f]
    WRITE_S: [rowstr.f]*/
        /*READ_S: [rowstr.f]
        WRITE_S: [rowstr.f]*/
        rowstr[j + 1] = rowstr[j];
    }
    /*READ_S: []
    WRITE_S: [rowstr.f]*/
    rowstr[1] = 1;
    /*READ_S: []
    WRITE_S: []*/
    nza = 0;
    /*READ_S: [i, mark, n, x]
    WRITE_S: [iv.f, v.f]*/
#pragma omp parallel default(shared) private(i)
    {
    /*READ_S: [i, mark, n, x]
    WRITE_S: [iv.f, v.f]*/
        /*READ_S: [i, mark, n, x]
        WRITE_S: [iv.f, v.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [n]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i <= n; i++) {
        /*READ_S: [mark, x]
        WRITE_S: [iv.f, v.f]*/
            /*READ_S: [x]
            WRITE_S: [v.f]*/
            x[i] = 0.0;
            /*READ_S: [mark]
            WRITE_S: [iv.f]*/
            mark[i] = 0;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [rowstr.f]
    WRITE_S: []*/
    jajp1 = rowstr[1];
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [colidx.f, a.f, _imopVarPre208, iv.f, rowstr.f, v.f]
    WRITE_S: [colidx.f, a.f, iv.f, rowstr.f, v.f]*/
    for (j = 1; j <= nrows; j++) {
    /*READ_S: [colidx.f, a.f, _imopVarPre208, iv.f, rowstr.f, v.f]
    WRITE_S: [colidx.f, a.f, iv.f, rowstr.f, v.f]*/
        /*READ_S: []
        WRITE_S: []*/
        nzrow = 0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rowstr.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [colidx.f, a.f, _imopVarPre208, iv.f, rowstr.f, v.f]
        WRITE_S: [iv.f, v.f]*/
        for (k = jajp1; k < rowstr[j + 1]; k++) {
        /*READ_S: [colidx.f, a.f, _imopVarPre208, iv.f, v.f]
        WRITE_S: [iv.f, v.f]*/
            /*READ_S: [colidx.f]
            WRITE_S: []*/
            i = colidx[k];
            /*READ_S: [a.f, v.f]
            WRITE_S: [v.f]*/
            x[i] = x[i] + a[k];
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre208;
            /*READ_S: [iv.f]
            WRITE_S: []*/
            _imopVarPre208 = mark[i] == 0;
            /*READ_S: [_imopVarPre208]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre208, v.f]
            WRITE_S: []*/
            if (_imopVarPre208) {
            /*READ_S: [v.f]
            WRITE_S: []*/
                /*READ_S: [v.f]
                WRITE_S: []*/
                _imopVarPre208 = x[i] != 0.0;
            }
            /*READ_S: [_imopVarPre208]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre208]
            WRITE_S: [iv.f]*/
            if (_imopVarPre208) {
            /*READ_S: []
            WRITE_S: [iv.f]*/
                /*READ_S: []
                WRITE_S: [iv.f]*/
                mark[i] = 1;
                /*READ_S: []
                WRITE_S: []*/
                nzrow = nzrow + 1;
                /*READ_S: []
                WRITE_S: [iv.f]*/
                nzloc[nzrow] = i;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [iv.f, v.f]
        WRITE_S: [colidx.f, a.f, iv.f, v.f]*/
        for (k = 1; k <= nzrow; k++) {
        /*READ_S: [iv.f, v.f]
        WRITE_S: [colidx.f, a.f, iv.f, v.f]*/
            /*READ_S: [iv.f]
            WRITE_S: []*/
            i = nzloc[k];
            /*READ_S: []
            WRITE_S: [iv.f]*/
            mark[i] = 0;
            /*READ_S: [v.f]
            WRITE_S: []*/
            xi = x[i];
            /*READ_S: []
            WRITE_S: [v.f]*/
            x[i] = 0.0;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: [colidx.f, a.f]*/
            if (xi != 0.0) {
            /*READ_S: []
            WRITE_S: [colidx.f, a.f]*/
                /*READ_S: []
                WRITE_S: []*/
                nza = nza + 1;
                /*READ_S: []
                WRITE_S: [a.f]*/
                a[nza] = xi;
                /*READ_S: []
                WRITE_S: [colidx.f]*/
                colidx[nza] = i;
            }
        }
        /*READ_S: [rowstr.f]
        WRITE_S: []*/
        jajp1 = rowstr[j + 1];
        /*READ_S: [rowstr.f]
        WRITE_S: [rowstr.f]*/
        rowstr[j + 1] = nza + rowstr[1];
    }
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
/*READ_S: [colidx.f, &tran, randlc, tran, icnvrt, amult]
WRITE_S: [colidx.f, tran, iv.f, v.f]*/
static void sprnvc(int n, int nz , double v[] , int iv[] , int nzloc[] , int mark[]) {
/*READ_S: [colidx.f, &tran, randlc, tran, icnvrt, amult]
WRITE_S: [colidx.f, tran, iv.f, v.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int nn1;
    /*READ_S: []
    WRITE_S: []*/
    int nzrow;
    /*READ_S: []
    WRITE_S: []*/
    int nzv;
    /*READ_S: []
    WRITE_S: []*/
    int ii;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    double vecelt;
    /*READ_S: []
    WRITE_S: []*/
    double vecloc;
    /*READ_S: []
    WRITE_S: []*/
    nzv = 0;
    /*READ_S: []
    WRITE_S: []*/
    nzrow = 0;
    /*READ_S: []
    WRITE_S: []*/
    nn1 = 1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    do {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        nn1 = 2 * nn1;
    } while (nn1 < n);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [colidx.f, &tran, randlc, tran, icnvrt, amult]
    WRITE_S: [colidx.f, tran, iv.f, v.f]*/
    while (nzv < nz) {
    /*READ_S: [colidx.f, &tran, randlc, tran, icnvrt, amult]
    WRITE_S: [colidx.f, tran, iv.f, v.f]*/
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre210;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre211;
        /*READ_S: [&tran]
        WRITE_S: []*/
        _imopVarPre210 = &tran;
        /*READ_S: [randlc, tran, amult]
        WRITE_S: [tran]*/
        _imopVarPre211 = randlc(_imopVarPre210, amult);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        vecelt = _imopVarPre211;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre213;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre214;
        /*READ_S: [&tran]
        WRITE_S: []*/
        _imopVarPre213 = &tran;
        /*READ_S: [randlc, tran, amult]
        WRITE_S: [tran]*/
        _imopVarPre214 = randlc(_imopVarPre213, amult);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        vecloc = _imopVarPre214;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre216;
        /*READ_S: [icnvrt]
        WRITE_S: []*/
        _imopVarPre216 = icnvrt(vecloc, nn1);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        i = _imopVarPre216 + 1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (i > n) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            continue;
        }
        /*READ_S: [colidx.f]
        WRITE_S: []*/
        /*READ_S: [colidx.f]
        WRITE_S: [colidx.f, iv.f, v.f]*/
        if (mark[i] == 0) {
        /*READ_S: []
        WRITE_S: [colidx.f, iv.f, v.f]*/
            /*READ_S: []
            WRITE_S: [colidx.f]*/
            mark[i] = 1;
            /*READ_S: []
            WRITE_S: []*/
            nzrow = nzrow + 1;
            /*READ_S: []
            WRITE_S: [colidx.f]*/
            nzloc[nzrow] = i;
            /*READ_S: []
            WRITE_S: []*/
            nzv = nzv + 1;
            /*READ_S: []
            WRITE_S: [v.f]*/
            v[nzv] = vecelt;
            /*READ_S: []
            WRITE_S: [iv.f]*/
            iv[nzv] = i;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [colidx.f]
    WRITE_S: [colidx.f]*/
    for (ii = 1; ii <= nzrow; ii++) {
    /*READ_S: [colidx.f]
    WRITE_S: [colidx.f]*/
        /*READ_S: [colidx.f]
        WRITE_S: []*/
        i = nzloc[ii];
        /*READ_S: []
        WRITE_S: [colidx.f]*/
        mark[i] = 0;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
static int icnvrt(double x, int ipwr2) {
/*READ_S: []
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return ((int) (ipwr2 * x));
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
/*READ_S: [iv.f]
WRITE_S: [iv.f, v.f]*/
static void vecset(int n, double v[] , int iv[] , int *nzv , int i , double val) {
/*READ_S: [iv.f]
WRITE_S: [iv.f, v.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    boolean set;
    /*READ_S: []
    WRITE_S: []*/
    set = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [iv.f]
    WRITE_S: [v.f]*/
    for (k = 1; k <= *nzv; k++) {
    /*READ_S: [iv.f]
    WRITE_S: [v.f]*/
        /*READ_S: [iv.f]
        WRITE_S: []*/
        /*READ_S: [iv.f]
        WRITE_S: [v.f]*/
        if (iv[k] == i) {
        /*READ_S: []
        WRITE_S: [v.f]*/
            /*READ_S: []
            WRITE_S: [v.f]*/
            v[k] = val;
            /*READ_S: []
            WRITE_S: []*/
            set = 1;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [iv.f, v.f]*/
    if (set == 0) {
    /*READ_S: []
    WRITE_S: [iv.f, v.f]*/
        /*READ_S: []
        WRITE_S: []*/
        *nzv = *nzv + 1;
        /*READ_S: []
        WRITE_S: [v.f]*/
        v[*nzv] = val;
        /*READ_S: []
        WRITE_S: [iv.f]*/
        iv[*nzv] = i;
    }
}
