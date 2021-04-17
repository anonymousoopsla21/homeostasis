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
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
int main(int argc, char **argv) {
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int i;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int j;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int k;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int it;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int nthreads = 1;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double zeta;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double rnorm;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double norm_temp11;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double norm_temp12;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double t;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double mflops;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    char class;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    boolean verified;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double zeta_verify_value;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double epsilon;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    firstrow = 1;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    lastrow = 1400;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    firstcol = 1;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    lastcol = 1400;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre143;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre144;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre145;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre143 = 1400 == 1400;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    if (_imopVarPre143) {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre144 = 7 == 7;
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        if (_imopVarPre144) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            _imopVarPre145 = 15 == 15;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            if (_imopVarPre145) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                _imopVarPre145 = 10.0 == 10.0;
            }
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            _imopVarPre144 = _imopVarPre145;
        }
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre143 = _imopVarPre144;
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    if (_imopVarPre143) {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        class = 'S';
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        zeta_verify_value = 8.5971775078648;
    } else {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        int _imopVarPre149;
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        int _imopVarPre150;
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        int _imopVarPre151;
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre149 = 1400 == 7000;
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        if (_imopVarPre149) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            _imopVarPre150 = 7 == 8;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            if (_imopVarPre150) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                _imopVarPre151 = 15 == 15;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                if (_imopVarPre151) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    _imopVarPre151 = 10.0 == 12.0;
                }
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                _imopVarPre150 = _imopVarPre151;
            }
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            _imopVarPre149 = _imopVarPre150;
        }
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        if (_imopVarPre149) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            class = 'W';
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            zeta_verify_value = 10.362595087124;
        } else {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            int _imopVarPre155;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            int _imopVarPre156;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            int _imopVarPre157;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            _imopVarPre155 = 1400 == 14000;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            if (_imopVarPre155) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                _imopVarPre156 = 7 == 11;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                if (_imopVarPre156) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    _imopVarPre157 = 15 == 15;
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    if (_imopVarPre157) {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        _imopVarPre157 = 10.0 == 20.0;
                    }
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    _imopVarPre156 = _imopVarPre157;
                }
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                _imopVarPre155 = _imopVarPre156;
            }
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            if (_imopVarPre155) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                class = 'A';
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                zeta_verify_value = 17.130235054029;
            } else {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                int _imopVarPre161;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                int _imopVarPre162;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                int _imopVarPre163;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                _imopVarPre161 = 1400 == 75000;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                if (_imopVarPre161) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    _imopVarPre162 = 7 == 13;
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    if (_imopVarPre162) {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        _imopVarPre163 = 15 == 75;
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        if (_imopVarPre163) {
                            /*OUT: [ptsTo(argv) := [heapCell#0];
                            ]*/
                            _imopVarPre163 = 10.0 == 60.0;
                        }
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        _imopVarPre162 = _imopVarPre163;
                    }
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    _imopVarPre161 = _imopVarPre162;
                }
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ]*/
                if (_imopVarPre161) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    class = 'B';
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    zeta_verify_value = 22.712745482631;
                } else {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    int _imopVarPre167;
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    int _imopVarPre168;
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    int _imopVarPre169;
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    _imopVarPre167 = 1400 == 150000;
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    if (_imopVarPre167) {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        _imopVarPre168 = 7 == 15;
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        if (_imopVarPre168) {
                            /*OUT: [ptsTo(argv) := [heapCell#0];
                            ]*/
                            _imopVarPre169 = 15 == 75;
                            /*OUT: [ptsTo(argv) := [heapCell#0];
                            ]*/
                            if (_imopVarPre169) {
                                /*OUT: [ptsTo(argv) := [heapCell#0];
                                ]*/
                                _imopVarPre169 = 10.0 == 110.0;
                            }
                            /*OUT: [ptsTo(argv) := [heapCell#0];
                            ]*/
                            _imopVarPre168 = _imopVarPre169;
                        }
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        _imopVarPre167 = _imopVarPre168;
                    }
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ]*/
                    if (_imopVarPre167) {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        class = 'C';
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        zeta_verify_value = 28.973605592845;
                    } else {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ]*/
                        class = 'U';
                    }
                }
            }
        }
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - CG Benchmark\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf(" Size: %10d\n", 1400);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf(" Iterations: %5d\n", 15);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    naa = 1400;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    nzz = 1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    tran = 314159265.0;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    amult = 1220703125.0;
    /*OUT: [ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double *_imopVarPre171;
    /*OUT: [ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double _imopVarPre172;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre171 = &tran;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre172 = randlc(_imopVarPre171, amult);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    zeta = _imopVarPre172;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    makea(naa, nzz, a, colidx, rowstr, 7, firstrow, lastrow, firstcol, lastcol, 1.0e-1, arow, acol, aelt, v, iv, 10.0);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
#pragma omp parallel default(shared) private(i, j, k)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        for (j = 1; j <= lastrow - firstrow + 1; j++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            for (k = rowstr[j]; k < rowstr[j + 1]; k++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ]*/
                colidx[k] = colidx[k] - firstcol + 1;
            }
        }
#pragma omp for nowait
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        for (i = 1; i <= 1400 + 1; i++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            x[i] = 1.0;
        }
#pragma omp for nowait
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            q[j] = 0.0;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            z[j] = 0.0;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            r[j] = 0.0;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            p[j] = 0.0;
        }
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
    zeta = 0.0;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    for (it = 1; it <= 1; it++) {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [nullCell];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        double *_imopVarPre174;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        _imopVarPre174 = &rnorm;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        conj_grad(colidx, rowstr, x, z, a, p, q, r, _imopVarPre174);
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
#pragma omp parallel default(shared) private(j)
        {
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                norm_temp11 = 0.0;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                norm_temp12 = 0.0;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            double _imopVarPre176;
#pragma omp for reduction(+:norm_temp11, norm_temp12) nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                norm_temp11 = norm_temp11 + x[j] * z[j];
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                norm_temp12 = norm_temp12 + z[j] * z[j];
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
#pragma omp barrier
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                _imopVarPre176 = sqrt(norm_temp12);
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                norm_temp12 = 1.0 / _imopVarPre176;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                x[j] = norm_temp12 * z[j];
            }
        }
    }
#pragma omp parallel default(shared) private(i)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        for (i = 1; i <= 1400 + 1; i++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            x[i] = 1.0;
        }
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    zeta = 0.0;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    timer_clear(1);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    timer_start(1);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    for (it = 1; it <= 15; it++) {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [nullCell];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        double *_imopVarPre178;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        _imopVarPre178 = &rnorm;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        conj_grad(colidx, rowstr, x, z, a, p, q, r, _imopVarPre178);
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
#pragma omp parallel default(shared) private(j)
        {
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                norm_temp11 = 0.0;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                norm_temp12 = 0.0;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            double _imopVarPre180;
#pragma omp for reduction(+:norm_temp11, norm_temp12) nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                norm_temp11 = norm_temp11 + x[j] * z[j];
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                norm_temp12 = norm_temp12 + z[j] * z[j];
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
#pragma omp barrier
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                _imopVarPre180 = sqrt(norm_temp12);
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                norm_temp12 = 1.0 / _imopVarPre180;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                zeta = 10.0 + 1.0 / norm_temp11;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                if (it == 1) {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(colidx.f) := [nullCell, acol.f];
                    ptsTo(rowstr.f) := [nullCell, rowstr.f];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(p.f) := [r.f];
                    ptsTo(r.f) := [x.f];
                    ]*/
                    printf("   iteration           ||r||                 zeta\n");
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(colidx.f) := [nullCell, acol.f];
                    ptsTo(rowstr.f) := [nullCell, rowstr.f];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(p.f) := [r.f];
                    ptsTo(r.f) := [x.f];
                    ]*/
                }
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                printf("    %5d       %20.14e%20.13e\n", it, rnorm, zeta);
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                x[j] = norm_temp12 * z[j];
            }
        }
    }
#pragma omp parallel
    {
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    timer_stop(1);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    t = timer_read(1);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    printf(" Benchmark completed\n");
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    epsilon = 1.0e-10;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    if (class != 'U') {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        double _imopVarPre183;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        double _imopVarPre184;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        _imopVarPre183 = zeta - zeta_verify_value;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        _imopVarPre184 = fabs(_imopVarPre183);
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        if (_imopVarPre184 <= epsilon) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            verified = 1;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            printf(" VERIFICATION SUCCESSFUL\n");
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            printf(" Zeta is    %20.12e\n", zeta);
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            double _imopVarPre186;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            _imopVarPre186 = zeta - zeta_verify_value;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            printf(" Error is   %20.12e\n", _imopVarPre186);
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
        } else {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            verified = 0;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            printf(" VERIFICATION FAILED\n");
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            printf(" Zeta                %20.12e\n", zeta);
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            printf(" The correct zeta is %20.12e\n", zeta_verify_value);
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
        }
    } else {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        verified = 0;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        printf(" Problem size unknown\n");
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        printf(" NO VERIFICATION PERFORMED\n");
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    if (t != 0.0) {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        mflops = (2.0 * 15 * 1400) * (3.0 + (7 * (7 + 1)) + 25.0 * (5.0 + (7 * (7 + 1))) + 3.0) / t / 1000000.0;
    } else {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        mflops = 0.0;
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    c_print_results("CG", class, 1400, 0, 0, 15, nthreads, t, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
}
/*OUT: [ptsTo(colidx) := [colidx.f];
ptsTo(colidx.f) := [nullCell, acol.f];
ptsTo(rowstr.f) := [nullCell, rowstr.f];
ptsTo(a.f) := [aelt.f];
ptsTo(iv.f) := [nullCell];
ptsTo(p.f) := [r.f];
ptsTo(r.f) := [x.f];
]*/
/*OUT: [ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx) := [colidx.f];
ptsTo(colidx.f) := [nullCell, acol.f];
ptsTo(rowstr.f) := [nullCell, rowstr.f];
ptsTo(a.f) := [aelt.f];
ptsTo(iv.f) := [nullCell];
ptsTo(p.f) := [r.f];
ptsTo(r.f) := [x.f];
]*/
/*OUT: [ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx) := [colidx.f];
ptsTo(x) := [x.f];
ptsTo(colidx.f) := [nullCell, acol.f];
ptsTo(rowstr.f) := [nullCell, rowstr.f];
ptsTo(a.f) := [aelt.f];
ptsTo(iv.f) := [nullCell];
ptsTo(p.f) := [r.f];
ptsTo(r.f) := [x.f];
]*/
/*OUT: [ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx) := [colidx.f];
ptsTo(x) := [x.f];
ptsTo(z) := [z.f];
ptsTo(colidx.f) := [nullCell, acol.f];
ptsTo(rowstr.f) := [nullCell, rowstr.f];
ptsTo(a.f) := [aelt.f];
ptsTo(iv.f) := [nullCell];
ptsTo(p.f) := [r.f];
ptsTo(r.f) := [x.f];
]*/
/*OUT: [ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx) := [colidx.f];
ptsTo(x) := [x.f];
ptsTo(a) := [a.f];
ptsTo(z) := [z.f];
ptsTo(colidx.f) := [nullCell, acol.f];
ptsTo(rowstr.f) := [nullCell, rowstr.f];
ptsTo(a.f) := [aelt.f];
ptsTo(iv.f) := [nullCell];
ptsTo(p.f) := [r.f];
ptsTo(r.f) := [x.f];
]*/
/*OUT: [ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx) := [colidx.f];
ptsTo(p) := [p.f];
ptsTo(x) := [x.f];
ptsTo(a) := [a.f];
ptsTo(z) := [z.f];
ptsTo(colidx.f) := [nullCell, acol.f];
ptsTo(rowstr.f) := [nullCell, rowstr.f];
ptsTo(a.f) := [aelt.f];
ptsTo(iv.f) := [nullCell];
ptsTo(p.f) := [r.f];
ptsTo(r.f) := [x.f];
]*/
/*OUT: [ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx) := [colidx.f];
ptsTo(p) := [p.f];
ptsTo(q) := [q.f];
ptsTo(x) := [x.f];
ptsTo(a) := [a.f];
ptsTo(z) := [z.f];
ptsTo(colidx.f) := [nullCell, acol.f];
ptsTo(rowstr.f) := [nullCell, rowstr.f];
ptsTo(a.f) := [aelt.f];
ptsTo(iv.f) := [nullCell];
ptsTo(p.f) := [r.f];
ptsTo(r.f) := [x.f];
]*/
/*OUT: [ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx) := [colidx.f];
ptsTo(p) := [p.f];
ptsTo(q) := [q.f];
ptsTo(x) := [x.f];
ptsTo(r) := [r.f];
ptsTo(a) := [a.f];
ptsTo(z) := [z.f];
ptsTo(colidx.f) := [nullCell, acol.f];
ptsTo(rowstr.f) := [nullCell, rowstr.f];
ptsTo(a.f) := [aelt.f];
ptsTo(iv.f) := [nullCell];
ptsTo(p.f) := [r.f];
ptsTo(r.f) := [x.f];
]*/
/*OUT: [ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx) := [colidx.f];
ptsTo(p) := [p.f];
ptsTo(q) := [q.f];
ptsTo(x) := [x.f];
ptsTo(r) := [r.f];
ptsTo(a) := [a.f];
ptsTo(rnorm) := [rnorm];
ptsTo(z) := [z.f];
ptsTo(colidx.f) := [nullCell, acol.f];
ptsTo(rowstr.f) := [nullCell, rowstr.f];
ptsTo(a.f) := [aelt.f];
ptsTo(iv.f) := [nullCell];
ptsTo(p.f) := [r.f];
ptsTo(r.f) := [x.f];
]*/
static void conj_grad(int colidx[], int rowstr[] , double x[] , double z[] , double a[] , double p[] , double q[] , double r[] , double *rnorm) {
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    int k;
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    int cgit;
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    int cgitmax = 25;
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    static int callcount = 0;
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    double d;
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    double sum;
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    double rho;
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    double rho0;
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    double alpha;
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    double beta;
#pragma omp parallel default(shared) private(j, sum) shared(rho, naa)
    {
#pragma omp master
        {
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            rho = 0.0;
        }
#pragma omp for nowait
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        for (j = 1; j <= naa + 1; j++) {
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            q[j] = 0.0;
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            z[j] = 0.0;
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            r[j] = x[j];
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            p[j] = r[j];
        }
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
#pragma omp barrier
#pragma omp for reduction(+:rho) nowait
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            rho = rho + r[j] * r[j];
        }
    }
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    /*OUT: [ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(p) := [p.f];
    ptsTo(q) := [q.f];
    ptsTo(x) := [x.f];
    ptsTo(r) := [r.f];
    ptsTo(a) := [a.f];
    ptsTo(rnorm) := [rnorm];
    ptsTo(z) := [z.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(p.f) := [r.f];
    ptsTo(r.f) := [x.f];
    ]*/
    for (cgit = 1; cgit <= cgitmax; cgit++) {
#pragma omp parallel default(shared) private(j, k, sum, alpha, beta) shared(d, rho0, rho)
        {
#pragma omp master
            {
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                rho0 = rho;
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                d = 0.0;
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                rho = 0.0;
            }
#pragma omp for nowait
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            for (j = 1; j <= lastrow - firstrow + 1; j++) {
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                sum = 0.0;
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                for (k = rowstr[j]; k < rowstr[j + 1]; k++) {
                    /*OUT: [ptsTo(rowstr) := [rowstr.f];
                    ptsTo(colidx) := [colidx.f];
                    ptsTo(p) := [p.f];
                    ptsTo(q) := [q.f];
                    ptsTo(x) := [x.f];
                    ptsTo(r) := [r.f];
                    ptsTo(a) := [a.f];
                    ptsTo(rnorm) := [rnorm];
                    ptsTo(z) := [z.f];
                    ptsTo(colidx.f) := [nullCell, acol.f];
                    ptsTo(rowstr.f) := [nullCell, rowstr.f];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(p.f) := [r.f];
                    ptsTo(r.f) := [x.f];
                    ]*/
                    sum = sum + a[k] * p[colidx[k]];
                }
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                q[j] = sum;
            }
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
#pragma omp barrier
#pragma omp for reduction(+:d) nowait
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                d = d + p[j] * q[j];
            }
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            alpha = rho0 / d;
#pragma omp for reduction(+:rho) nowait
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                z[j] = z[j] + alpha * p[j];
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                r[j] = r[j] - alpha * q[j];
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                rho = rho + r[j] * r[j];
            }
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            beta = rho / rho0;
#pragma omp for nowait
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                p[j] = r[j] + beta * p[j];
            }
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            callcount++;
        }
    }
#pragma omp parallel default(shared) private(j, d) shared(sum)
    {
#pragma omp master
        {
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            sum = 0.0;
        }
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        double _imopVarPre187;
#pragma omp for nowait
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        for (j = 1; j <= lastrow - firstrow + 1; j++) {
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            d = 0.0;
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            for (k = rowstr[j]; k <= rowstr[j + 1] - 1; k++) {
                /*OUT: [ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(p) := [p.f];
                ptsTo(q) := [q.f];
                ptsTo(x) := [x.f];
                ptsTo(r) := [r.f];
                ptsTo(a) := [a.f];
                ptsTo(rnorm) := [rnorm];
                ptsTo(z) := [z.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ptsTo(p.f) := [r.f];
                ptsTo(r.f) := [x.f];
                ]*/
                d = d + a[k] * z[colidx[k]];
            }
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            r[j] = d;
        }
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
#pragma omp barrier
#pragma omp for reduction(+:sum) nowait
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            d = x[j] - r[j];
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            sum = sum + d * d;
        }
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(p) := [p.f];
        ptsTo(q) := [q.f];
        ptsTo(x) := [x.f];
        ptsTo(r) := [r.f];
        ptsTo(a) := [a.f];
        ptsTo(rnorm) := [rnorm];
        ptsTo(z) := [z.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(p.f) := [r.f];
        ptsTo(r.f) := [x.f];
        ]*/
#pragma omp barrier
#pragma omp master
        {
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            _imopVarPre187 = sqrt(sum);
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            /*OUT: [ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(p) := [p.f];
            ptsTo(q) := [q.f];
            ptsTo(x) := [x.f];
            ptsTo(r) := [r.f];
            ptsTo(a) := [a.f];
            ptsTo(rnorm) := [rnorm];
            ptsTo(z) := [z.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ptsTo(p.f) := [r.f];
            ptsTo(r.f) := [x.f];
            ]*/
            (*rnorm) = _imopVarPre187;
        }
    }
}
/*OUT: []*/
/*OUT: []*/
/*OUT: [ptsTo(a) := [a.f];
]*/
/*OUT: [ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
]*/
/*OUT: [ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
]*/
/*OUT: [ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
]*/
/*OUT: [ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
]*/
/*OUT: [ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
]*/
/*OUT: [ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
]*/
/*OUT: [ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
]*/
/*OUT: [ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
]*/
/*OUT: [ptsTo(arow) := [arow.f];
ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
]*/
/*OUT: [ptsTo(arow) := [arow.f];
ptsTo(acol) := [acol.f];
ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
]*/
/*OUT: [ptsTo(arow) := [arow.f];
ptsTo(aelt) := [aelt.f];
ptsTo(acol) := [acol.f];
ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
]*/
/*OUT: [ptsTo(arow) := [arow.f];
ptsTo(v) := [v.f];
ptsTo(aelt) := [aelt.f];
ptsTo(acol) := [acol.f];
ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
]*/
/*OUT: [ptsTo(arow) := [arow.f];
ptsTo(v) := [v.f];
ptsTo(aelt) := [aelt.f];
ptsTo(acol) := [acol.f];
ptsTo(iv) := [iv.f];
ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
]*/
/*OUT: [ptsTo(arow) := [arow.f];
ptsTo(v) := [v.f];
ptsTo(aelt) := [aelt.f];
ptsTo(acol) := [acol.f];
ptsTo(iv) := [iv.f];
ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
]*/
static void makea(int n, int nz , double a[] , int colidx[] , int rowstr[] , int nonzer , int firstrow , int lastrow , int firstcol , int lastcol , double rcond , int arow[] , int acol[] , double aelt[] , double v[] , int iv[] , double shift) {
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    int i;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    int nnza;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    int iouter;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    int ivelt;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    int ivelt1;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    int irow;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    int nzv;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    double size;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    double ratio;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    double scale;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    int jcol;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    size = 1.0;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    double _imopVarPre189;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    double _imopVarPre190;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    _imopVarPre189 = (1.0 / (double) n);
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    _imopVarPre190 = pow(rcond, _imopVarPre189);
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    ratio = _imopVarPre190;
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ]*/
    nnza = 0;
#pragma omp parallel default(shared) private(i)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ]*/
        /*OUT: [ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        for (i = 1; i <= n; i++) {
            /*OUT: [ptsTo(arow) := [arow.f];
            ptsTo(v) := [v.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(acol) := [acol.f];
            ptsTo(iv) := [iv.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            colidx[n + i] = 0;
        }
    }
    /*OUT: [ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    for (iouter = 1; iouter <= n; iouter++) {
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        nzv = nonzer;
        /*OUT: [ptsTo(_imopVarPre193) := [nullCell];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        int *_imopVarPre193;
        /*OUT: [ptsTo(_imopVarPre193) := [nullCell];
        ptsTo(_imopVarPre194) := [nullCell];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        int *_imopVarPre194;
        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [nullCell];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre193 = &(colidx[n]);
        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre194 = &(colidx[0]);
        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        sprnvc(n, nzv, v, iv, _imopVarPre194, _imopVarPre193);
        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nullCell];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        int *_imopVarPre196;
        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre196 = &nzv;
        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        vecset(n, v, iv, _imopVarPre196, iouter, 0.5);
        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        for (ivelt = 1; ivelt <= nzv; ivelt++) {
            /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
            ptsTo(_imopVarPre194) := [colidx.f];
            ptsTo(_imopVarPre196) := [nzv];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(arow) := [arow.f];
            ptsTo(v) := [v.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(acol) := [acol.f];
            ptsTo(iv) := [iv.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            jcol = iv[ivelt];
            /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
            ptsTo(_imopVarPre194) := [colidx.f];
            ptsTo(_imopVarPre196) := [nzv];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(arow) := [arow.f];
            ptsTo(v) := [v.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(acol) := [acol.f];
            ptsTo(iv) := [iv.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            int _imopVarPre198;
            /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
            ptsTo(_imopVarPre194) := [colidx.f];
            ptsTo(_imopVarPre196) := [nzv];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(arow) := [arow.f];
            ptsTo(v) := [v.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(acol) := [acol.f];
            ptsTo(iv) := [iv.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            _imopVarPre198 = jcol >= firstcol;
            /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
            ptsTo(_imopVarPre194) := [colidx.f];
            ptsTo(_imopVarPre196) := [nzv];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(arow) := [arow.f];
            ptsTo(v) := [v.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(acol) := [acol.f];
            ptsTo(iv) := [iv.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            if (_imopVarPre198) {
                /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                ptsTo(_imopVarPre194) := [colidx.f];
                ptsTo(_imopVarPre196) := [nzv];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(arow) := [arow.f];
                ptsTo(v) := [v.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(acol) := [acol.f];
                ptsTo(iv) := [iv.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                _imopVarPre198 = jcol <= lastcol;
            }
            /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
            ptsTo(_imopVarPre194) := [colidx.f];
            ptsTo(_imopVarPre196) := [nzv];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(arow) := [arow.f];
            ptsTo(v) := [v.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(acol) := [acol.f];
            ptsTo(iv) := [iv.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            if (_imopVarPre198) {
                /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                ptsTo(_imopVarPre194) := [colidx.f];
                ptsTo(_imopVarPre196) := [nzv];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(arow) := [arow.f];
                ptsTo(v) := [v.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(acol) := [acol.f];
                ptsTo(iv) := [iv.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                scale = size * v[ivelt];
                /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                ptsTo(_imopVarPre194) := [colidx.f];
                ptsTo(_imopVarPre196) := [nzv];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(arow) := [arow.f];
                ptsTo(v) := [v.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(acol) := [acol.f];
                ptsTo(iv) := [iv.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                ptsTo(_imopVarPre194) := [colidx.f];
                ptsTo(_imopVarPre196) := [nzv];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(arow) := [arow.f];
                ptsTo(v) := [v.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(acol) := [acol.f];
                ptsTo(iv) := [iv.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                ptsTo(_imopVarPre194) := [colidx.f];
                ptsTo(_imopVarPre196) := [nzv];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(arow) := [arow.f];
                ptsTo(v) := [v.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(acol) := [acol.f];
                ptsTo(iv) := [iv.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                for (ivelt1 = 1; ivelt1 <= nzv; ivelt1++) {
                    /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                    ptsTo(_imopVarPre194) := [colidx.f];
                    ptsTo(_imopVarPre196) := [nzv];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(arow) := [arow.f];
                    ptsTo(v) := [v.f];
                    ptsTo(aelt) := [aelt.f];
                    ptsTo(acol) := [acol.f];
                    ptsTo(iv) := [iv.f];
                    ptsTo(colidx) := [colidx.f];
                    ptsTo(a) := [a.f];
                    ptsTo(rowstr) := [rowstr.f];
                    ptsTo(colidx.f) := [nullCell];
                    ]*/
                    irow = iv[ivelt1];
                    /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                    ptsTo(_imopVarPre194) := [colidx.f];
                    ptsTo(_imopVarPre196) := [nzv];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(arow) := [arow.f];
                    ptsTo(v) := [v.f];
                    ptsTo(aelt) := [aelt.f];
                    ptsTo(acol) := [acol.f];
                    ptsTo(iv) := [iv.f];
                    ptsTo(colidx) := [colidx.f];
                    ptsTo(a) := [a.f];
                    ptsTo(rowstr) := [rowstr.f];
                    ptsTo(colidx.f) := [nullCell];
                    ]*/
                    int _imopVarPre200;
                    /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                    ptsTo(_imopVarPre194) := [colidx.f];
                    ptsTo(_imopVarPre196) := [nzv];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(arow) := [arow.f];
                    ptsTo(v) := [v.f];
                    ptsTo(aelt) := [aelt.f];
                    ptsTo(acol) := [acol.f];
                    ptsTo(iv) := [iv.f];
                    ptsTo(colidx) := [colidx.f];
                    ptsTo(a) := [a.f];
                    ptsTo(rowstr) := [rowstr.f];
                    ptsTo(colidx.f) := [nullCell];
                    ]*/
                    _imopVarPre200 = irow >= firstrow;
                    /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                    ptsTo(_imopVarPre194) := [colidx.f];
                    ptsTo(_imopVarPre196) := [nzv];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(arow) := [arow.f];
                    ptsTo(v) := [v.f];
                    ptsTo(aelt) := [aelt.f];
                    ptsTo(acol) := [acol.f];
                    ptsTo(iv) := [iv.f];
                    ptsTo(colidx) := [colidx.f];
                    ptsTo(a) := [a.f];
                    ptsTo(rowstr) := [rowstr.f];
                    ptsTo(colidx.f) := [nullCell];
                    ]*/
                    if (_imopVarPre200) {
                        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                        ptsTo(_imopVarPre194) := [colidx.f];
                        ptsTo(_imopVarPre196) := [nzv];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(arow) := [arow.f];
                        ptsTo(v) := [v.f];
                        ptsTo(aelt) := [aelt.f];
                        ptsTo(acol) := [acol.f];
                        ptsTo(iv) := [iv.f];
                        ptsTo(colidx) := [colidx.f];
                        ptsTo(a) := [a.f];
                        ptsTo(rowstr) := [rowstr.f];
                        ptsTo(colidx.f) := [nullCell];
                        ]*/
                        _imopVarPre200 = irow <= lastrow;
                    }
                    /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                    ptsTo(_imopVarPre194) := [colidx.f];
                    ptsTo(_imopVarPre196) := [nzv];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(arow) := [arow.f];
                    ptsTo(v) := [v.f];
                    ptsTo(aelt) := [aelt.f];
                    ptsTo(acol) := [acol.f];
                    ptsTo(iv) := [iv.f];
                    ptsTo(colidx) := [colidx.f];
                    ptsTo(a) := [a.f];
                    ptsTo(rowstr) := [rowstr.f];
                    ptsTo(colidx.f) := [nullCell];
                    ]*/
                    if (_imopVarPre200) {
                        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                        ptsTo(_imopVarPre194) := [colidx.f];
                        ptsTo(_imopVarPre196) := [nzv];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(arow) := [arow.f];
                        ptsTo(v) := [v.f];
                        ptsTo(aelt) := [aelt.f];
                        ptsTo(acol) := [acol.f];
                        ptsTo(iv) := [iv.f];
                        ptsTo(colidx) := [colidx.f];
                        ptsTo(a) := [a.f];
                        ptsTo(rowstr) := [rowstr.f];
                        ptsTo(colidx.f) := [nullCell];
                        ]*/
                        nnza = nnza + 1;
                        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                        ptsTo(_imopVarPre194) := [colidx.f];
                        ptsTo(_imopVarPre196) := [nzv];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(arow) := [arow.f];
                        ptsTo(v) := [v.f];
                        ptsTo(aelt) := [aelt.f];
                        ptsTo(acol) := [acol.f];
                        ptsTo(iv) := [iv.f];
                        ptsTo(colidx) := [colidx.f];
                        ptsTo(a) := [a.f];
                        ptsTo(rowstr) := [rowstr.f];
                        ptsTo(colidx.f) := [nullCell];
                        ]*/
                        if (nnza > nz) {
                            /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(arow) := [arow.f];
                            ptsTo(v) := [v.f];
                            ptsTo(aelt) := [aelt.f];
                            ptsTo(acol) := [acol.f];
                            ptsTo(iv) := [iv.f];
                            ptsTo(colidx) := [colidx.f];
                            ptsTo(a) := [a.f];
                            ptsTo(rowstr) := [rowstr.f];
                            ptsTo(colidx.f) := [nullCell];
                            ]*/
                            printf("Space for matrix elements exceeded in" " makea\n");
                            /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(arow) := [arow.f];
                            ptsTo(v) := [v.f];
                            ptsTo(aelt) := [aelt.f];
                            ptsTo(acol) := [acol.f];
                            ptsTo(iv) := [iv.f];
                            ptsTo(colidx) := [colidx.f];
                            ptsTo(a) := [a.f];
                            ptsTo(rowstr) := [rowstr.f];
                            ptsTo(colidx.f) := [nullCell];
                            ]*/
                            /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(arow) := [arow.f];
                            ptsTo(v) := [v.f];
                            ptsTo(aelt) := [aelt.f];
                            ptsTo(acol) := [acol.f];
                            ptsTo(iv) := [iv.f];
                            ptsTo(colidx) := [colidx.f];
                            ptsTo(a) := [a.f];
                            ptsTo(rowstr) := [rowstr.f];
                            ptsTo(colidx.f) := [nullCell];
                            ]*/
                            printf("nnza, nzmax = %d, %d\n", nnza, nz);
                            /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(arow) := [arow.f];
                            ptsTo(v) := [v.f];
                            ptsTo(aelt) := [aelt.f];
                            ptsTo(acol) := [acol.f];
                            ptsTo(iv) := [iv.f];
                            ptsTo(colidx) := [colidx.f];
                            ptsTo(a) := [a.f];
                            ptsTo(rowstr) := [rowstr.f];
                            ptsTo(colidx.f) := [nullCell];
                            ]*/
                            /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(arow) := [arow.f];
                            ptsTo(v) := [v.f];
                            ptsTo(aelt) := [aelt.f];
                            ptsTo(acol) := [acol.f];
                            ptsTo(iv) := [iv.f];
                            ptsTo(colidx) := [colidx.f];
                            ptsTo(a) := [a.f];
                            ptsTo(rowstr) := [rowstr.f];
                            ptsTo(colidx.f) := [nullCell];
                            ]*/
                            printf("iouter = %d\n", iouter);
                            /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(arow) := [arow.f];
                            ptsTo(v) := [v.f];
                            ptsTo(aelt) := [aelt.f];
                            ptsTo(acol) := [acol.f];
                            ptsTo(iv) := [iv.f];
                            ptsTo(colidx) := [colidx.f];
                            ptsTo(a) := [a.f];
                            ptsTo(rowstr) := [rowstr.f];
                            ptsTo(colidx.f) := [nullCell];
                            ]*/
                            /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(arow) := [arow.f];
                            ptsTo(v) := [v.f];
                            ptsTo(aelt) := [aelt.f];
                            ptsTo(acol) := [acol.f];
                            ptsTo(iv) := [iv.f];
                            ptsTo(colidx) := [colidx.f];
                            ptsTo(a) := [a.f];
                            ptsTo(rowstr) := [rowstr.f];
                            ptsTo(colidx.f) := [nullCell];
                            ]*/
                            exit(1);
                            /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(arow) := [arow.f];
                            ptsTo(v) := [v.f];
                            ptsTo(aelt) := [aelt.f];
                            ptsTo(acol) := [acol.f];
                            ptsTo(iv) := [iv.f];
                            ptsTo(colidx) := [colidx.f];
                            ptsTo(a) := [a.f];
                            ptsTo(rowstr) := [rowstr.f];
                            ptsTo(colidx.f) := [nullCell];
                            ]*/
                        }
                        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                        ptsTo(_imopVarPre194) := [colidx.f];
                        ptsTo(_imopVarPre196) := [nzv];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(arow) := [arow.f];
                        ptsTo(v) := [v.f];
                        ptsTo(aelt) := [aelt.f];
                        ptsTo(acol) := [acol.f];
                        ptsTo(iv) := [iv.f];
                        ptsTo(colidx) := [colidx.f];
                        ptsTo(a) := [a.f];
                        ptsTo(rowstr) := [rowstr.f];
                        ptsTo(colidx.f) := [nullCell];
                        ]*/
                        acol[nnza] = jcol;
                        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                        ptsTo(_imopVarPre194) := [colidx.f];
                        ptsTo(_imopVarPre196) := [nzv];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(arow) := [arow.f];
                        ptsTo(v) := [v.f];
                        ptsTo(aelt) := [aelt.f];
                        ptsTo(acol) := [acol.f];
                        ptsTo(iv) := [iv.f];
                        ptsTo(colidx) := [colidx.f];
                        ptsTo(a) := [a.f];
                        ptsTo(rowstr) := [rowstr.f];
                        ptsTo(colidx.f) := [nullCell];
                        ]*/
                        arow[nnza] = irow;
                        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
                        ptsTo(_imopVarPre194) := [colidx.f];
                        ptsTo(_imopVarPre196) := [nzv];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(arow) := [arow.f];
                        ptsTo(v) := [v.f];
                        ptsTo(aelt) := [aelt.f];
                        ptsTo(acol) := [acol.f];
                        ptsTo(iv) := [iv.f];
                        ptsTo(colidx) := [colidx.f];
                        ptsTo(a) := [a.f];
                        ptsTo(rowstr) := [rowstr.f];
                        ptsTo(colidx.f) := [nullCell];
                        ]*/
                        aelt[nnza] = v[ivelt1] * scale;
                    }
                }
            }
        }
        /*OUT: [ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        size = size * ratio;
    }
    /*OUT: [ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    for (i = firstrow; i <= lastrow; i++) {
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        int _imopVarPre202;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre202 = i >= firstcol;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        if (_imopVarPre202) {
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(arow) := [arow.f];
            ptsTo(v) := [v.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(acol) := [acol.f];
            ptsTo(iv) := [iv.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            _imopVarPre202 = i <= lastcol;
        }
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(arow) := [arow.f];
        ptsTo(v) := [v.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(acol) := [acol.f];
        ptsTo(iv) := [iv.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        if (_imopVarPre202) {
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(arow) := [arow.f];
            ptsTo(v) := [v.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(acol) := [acol.f];
            ptsTo(iv) := [iv.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            iouter = n + i;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(arow) := [arow.f];
            ptsTo(v) := [v.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(acol) := [acol.f];
            ptsTo(iv) := [iv.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            nnza = nnza + 1;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(arow) := [arow.f];
            ptsTo(v) := [v.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(acol) := [acol.f];
            ptsTo(iv) := [iv.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            if (nnza > nz) {
                /*OUT: [ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(arow) := [arow.f];
                ptsTo(v) := [v.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(acol) := [acol.f];
                ptsTo(iv) := [iv.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                printf("Space for matrix elements exceeded in makea\n");
                /*OUT: [ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(arow) := [arow.f];
                ptsTo(v) := [v.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(acol) := [acol.f];
                ptsTo(iv) := [iv.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                /*OUT: [ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(arow) := [arow.f];
                ptsTo(v) := [v.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(acol) := [acol.f];
                ptsTo(iv) := [iv.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                printf("nnza, nzmax = %d, %d\n", nnza, nz);
                /*OUT: [ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(arow) := [arow.f];
                ptsTo(v) := [v.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(acol) := [acol.f];
                ptsTo(iv) := [iv.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                /*OUT: [ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(arow) := [arow.f];
                ptsTo(v) := [v.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(acol) := [acol.f];
                ptsTo(iv) := [iv.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                printf("iouter = %d\n", iouter);
                /*OUT: [ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(arow) := [arow.f];
                ptsTo(v) := [v.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(acol) := [acol.f];
                ptsTo(iv) := [iv.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                /*OUT: [ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(arow) := [arow.f];
                ptsTo(v) := [v.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(acol) := [acol.f];
                ptsTo(iv) := [iv.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                exit(1);
                /*OUT: [ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(arow) := [arow.f];
                ptsTo(v) := [v.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(acol) := [acol.f];
                ptsTo(iv) := [iv.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(colidx.f) := [nullCell];
                ]*/
            }
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(arow) := [arow.f];
            ptsTo(v) := [v.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(acol) := [acol.f];
            ptsTo(iv) := [iv.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            acol[nnza] = i;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(arow) := [arow.f];
            ptsTo(v) := [v.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(acol) := [acol.f];
            ptsTo(iv) := [iv.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            arow[nnza] = i;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(arow) := [arow.f];
            ptsTo(v) := [v.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(acol) := [acol.f];
            ptsTo(iv) := [iv.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            aelt[nnza] = rcond - shift;
        }
    }
    /*OUT: [ptsTo(_imopVarPre205) := [nullCell];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int *_imopVarPre205;
    /*OUT: [ptsTo(_imopVarPre205) := [nullCell];
    ptsTo(_imopVarPre206) := [nullCell];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int *_imopVarPre206;
    /*OUT: [ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [nullCell];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    _imopVarPre205 = &(iv[n]);
    /*OUT: [ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    _imopVarPre206 = &(iv[0]);
    /*OUT: [ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    sparse(a, colidx, rowstr, n, arow, acol, aelt, firstrow, lastrow, v, _imopVarPre206, _imopVarPre205, nnza);
    /*OUT: [ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(arow) := [arow.f];
    ptsTo(v) := [v.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(acol) := [acol.f];
    ptsTo(iv) := [iv.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
}
/*OUT: [ptsTo(a) := [a.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(colidx) := [colidx.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(colidx) := [colidx.f];
ptsTo(arow) := [arow.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(acol) := [acol.f];
ptsTo(colidx) := [colidx.f];
ptsTo(arow) := [arow.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(aelt) := [aelt.f];
ptsTo(acol) := [acol.f];
ptsTo(colidx) := [colidx.f];
ptsTo(arow) := [arow.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(aelt) := [aelt.f];
ptsTo(acol) := [acol.f];
ptsTo(colidx) := [colidx.f];
ptsTo(arow) := [arow.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(aelt) := [aelt.f];
ptsTo(acol) := [acol.f];
ptsTo(colidx) := [colidx.f];
ptsTo(arow) := [arow.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(aelt) := [aelt.f];
ptsTo(acol) := [acol.f];
ptsTo(colidx) := [colidx.f];
ptsTo(arow) := [arow.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
ptsTo(x) := [v.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(mark) := [iv.f];
ptsTo(aelt) := [aelt.f];
ptsTo(acol) := [acol.f];
ptsTo(colidx) := [colidx.f];
ptsTo(arow) := [arow.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
ptsTo(x) := [v.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(mark) := [iv.f];
ptsTo(aelt) := [aelt.f];
ptsTo(nzloc) := [iv.f];
ptsTo(acol) := [acol.f];
ptsTo(colidx) := [colidx.f];
ptsTo(arow) := [arow.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
ptsTo(x) := [v.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(mark) := [iv.f];
ptsTo(aelt) := [aelt.f];
ptsTo(nzloc) := [iv.f];
ptsTo(acol) := [acol.f];
ptsTo(colidx) := [colidx.f];
ptsTo(arow) := [arow.f];
ptsTo(a) := [a.f];
ptsTo(rowstr) := [rowstr.f];
ptsTo(x) := [v.f];
ptsTo(colidx.f) := [nullCell];
]*/
static void sparse(double a[], int colidx[] , int rowstr[] , int n , int arow[] , int acol[] , double aelt[] , int firstrow , int lastrow , double x[] , boolean mark[] , int nzloc[] , int nnza) {
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int nrows;
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int j;
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int jajp1;
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int nza;
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int k;
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int nzrow;
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    double xi;
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    nrows = lastrow - firstrow + 1;
#pragma omp parallel default(shared) private(j)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ]*/
        for (j = 1; j <= n; j++) {
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(rowstr.f) := [nullCell];
            ptsTo(iv.f) := [nullCell];
            ]*/
            rowstr[j] = 0;
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(rowstr.f) := [nullCell];
            ptsTo(iv.f) := [nullCell];
            ]*/
            mark[j] = 0;
        }
    }
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ]*/
    rowstr[n + 1] = 0;
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ]*/
    for (nza = 1; nza <= nnza; nza++) {
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ]*/
        j = (arow[nza] - firstrow + 1) + 1;
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ]*/
        rowstr[j] = rowstr[j] + 1;
    }
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ]*/
    rowstr[1] = 1;
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ]*/
    for (j = 2; j <= nrows + 1; j++) {
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ]*/
        rowstr[j] = rowstr[j] + rowstr[j - 1];
    }
#pragma omp parallel default(shared) private(k, j)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ]*/
        for (j = 0; j <= nrows - 1; j++) {
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(rowstr.f) := [nullCell];
            ptsTo(iv.f) := [nullCell];
            ]*/
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(rowstr.f) := [nullCell];
            ptsTo(iv.f) := [nullCell];
            ]*/
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(rowstr.f) := [nullCell];
            ptsTo(iv.f) := [nullCell];
            ]*/
            for (k = rowstr[j]; k <= rowstr[j + 1] - 1; k++) {
                /*OUT: [ptsTo(mark) := [iv.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(nzloc) := [iv.f];
                ptsTo(acol) := [acol.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(arow) := [arow.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(x) := [v.f];
                ptsTo(colidx.f) := [nullCell];
                ptsTo(rowstr.f) := [nullCell];
                ptsTo(iv.f) := [nullCell];
                ]*/
                a[k] = 0.0;
            }
        }
    }
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [acol.f];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
    for (nza = 1; nza <= nnza; nza++) {
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        j = arow[nza] - firstrow + 1;
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        k = rowstr[j];
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        a[k] = aelt[nza];
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [acol.f];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        colidx[k] = acol[nza];
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [acol.f];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        rowstr[j] = rowstr[j] + 1;
    }
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
    for (j = nrows; j >= 1; j--) {
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        rowstr[j + 1] = rowstr[j];
    }
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
    rowstr[1] = 1;
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
    nza = 0;
#pragma omp parallel default(shared) private(i)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        for (i = 1; i <= n; i++) {
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            x[i] = 0.0;
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            mark[i] = 0;
        }
    }
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
    jajp1 = rowstr[1];
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(mark) := [iv.f];
    ptsTo(aelt) := [aelt.f];
    ptsTo(nzloc) := [iv.f];
    ptsTo(acol) := [acol.f];
    ptsTo(colidx) := [colidx.f];
    ptsTo(arow) := [arow.f];
    ptsTo(a) := [a.f];
    ptsTo(rowstr) := [rowstr.f];
    ptsTo(x) := [v.f];
    ptsTo(colidx.f) := [nullCell, acol.f];
    ptsTo(rowstr.f) := [nullCell, rowstr.f];
    ptsTo(a.f) := [aelt.f];
    ptsTo(iv.f) := [nullCell];
    ]*/
    for (j = 1; j <= nrows; j++) {
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        nzrow = 0;
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        for (k = jajp1; k < rowstr[j + 1]; k++) {
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            i = colidx[k];
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            x[i] = x[i] + a[k];
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            int _imopVarPre208;
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            _imopVarPre208 = mark[i] == 0;
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            if (_imopVarPre208) {
                /*OUT: [ptsTo(mark) := [iv.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(nzloc) := [iv.f];
                ptsTo(acol) := [acol.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(arow) := [arow.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(x) := [v.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ]*/
                _imopVarPre208 = x[i] != 0.0;
            }
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            if (_imopVarPre208) {
                /*OUT: [ptsTo(mark) := [iv.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(nzloc) := [iv.f];
                ptsTo(acol) := [acol.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(arow) := [arow.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(x) := [v.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ]*/
                mark[i] = 1;
                /*OUT: [ptsTo(mark) := [iv.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(nzloc) := [iv.f];
                ptsTo(acol) := [acol.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(arow) := [arow.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(x) := [v.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ]*/
                nzrow = nzrow + 1;
                /*OUT: [ptsTo(mark) := [iv.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(nzloc) := [iv.f];
                ptsTo(acol) := [acol.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(arow) := [arow.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(x) := [v.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ]*/
                nzloc[nzrow] = i;
            }
        }
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        for (k = 1; k <= nzrow; k++) {
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            i = nzloc[k];
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            mark[i] = 0;
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            xi = x[i];
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            x[i] = 0.0;
            /*OUT: [ptsTo(mark) := [iv.f];
            ptsTo(aelt) := [aelt.f];
            ptsTo(nzloc) := [iv.f];
            ptsTo(acol) := [acol.f];
            ptsTo(colidx) := [colidx.f];
            ptsTo(arow) := [arow.f];
            ptsTo(a) := [a.f];
            ptsTo(rowstr) := [rowstr.f];
            ptsTo(x) := [v.f];
            ptsTo(colidx.f) := [nullCell, acol.f];
            ptsTo(rowstr.f) := [nullCell, rowstr.f];
            ptsTo(a.f) := [aelt.f];
            ptsTo(iv.f) := [nullCell];
            ]*/
            if (xi != 0.0) {
                /*OUT: [ptsTo(mark) := [iv.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(nzloc) := [iv.f];
                ptsTo(acol) := [acol.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(arow) := [arow.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(x) := [v.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ]*/
                nza = nza + 1;
                /*OUT: [ptsTo(mark) := [iv.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(nzloc) := [iv.f];
                ptsTo(acol) := [acol.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(arow) := [arow.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(x) := [v.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ]*/
                a[nza] = xi;
                /*OUT: [ptsTo(mark) := [iv.f];
                ptsTo(aelt) := [aelt.f];
                ptsTo(nzloc) := [iv.f];
                ptsTo(acol) := [acol.f];
                ptsTo(colidx) := [colidx.f];
                ptsTo(arow) := [arow.f];
                ptsTo(a) := [a.f];
                ptsTo(rowstr) := [rowstr.f];
                ptsTo(x) := [v.f];
                ptsTo(colidx.f) := [nullCell, acol.f];
                ptsTo(rowstr.f) := [nullCell, rowstr.f];
                ptsTo(a.f) := [aelt.f];
                ptsTo(iv.f) := [nullCell];
                ]*/
                colidx[nza] = i;
            }
        }
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        jajp1 = rowstr[j + 1];
        /*OUT: [ptsTo(mark) := [iv.f];
        ptsTo(aelt) := [aelt.f];
        ptsTo(nzloc) := [iv.f];
        ptsTo(acol) := [acol.f];
        ptsTo(colidx) := [colidx.f];
        ptsTo(arow) := [arow.f];
        ptsTo(a) := [a.f];
        ptsTo(rowstr) := [rowstr.f];
        ptsTo(x) := [v.f];
        ptsTo(colidx.f) := [nullCell, acol.f];
        ptsTo(rowstr.f) := [nullCell, rowstr.f];
        ptsTo(a.f) := [aelt.f];
        ptsTo(iv.f) := [nullCell];
        ]*/
        rowstr[j + 1] = nza + rowstr[1];
    }
}
/*OUT: [ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(v) := [v.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(v) := [v.f];
ptsTo(iv) := [iv.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(v) := [v.f];
ptsTo(iv) := [iv.f];
ptsTo(nzloc) := [colidx.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(v) := [v.f];
ptsTo(mark) := [colidx.f];
ptsTo(iv) := [iv.f];
ptsTo(nzloc) := [colidx.f];
ptsTo(colidx.f) := [nullCell];
]*/
static void sprnvc(int n, int nz , double v[] , int iv[] , int nzloc[] , int mark[]) {
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int nn1;
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int nzrow;
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int nzv;
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int ii;
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    double vecelt;
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    double vecloc;
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    nzv = 0;
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    nzrow = 0;
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    nn1 = 1;
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    do {
        /*OUT: [ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        nn1 = 2 * nn1;
    } while (nn1 < n);
    /*OUT: [ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    while (nzv < nz) {
        /*OUT: [ptsTo(_imopVarPre210) := [nullCell];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        double *_imopVarPre210;
        /*OUT: [ptsTo(_imopVarPre210) := [nullCell];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        double _imopVarPre211;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre210 = &tran;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre211 = randlc(_imopVarPre210, amult);
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        vecelt = _imopVarPre211;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [nullCell];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        double *_imopVarPre213;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [nullCell];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        double _imopVarPre214;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre213 = &tran;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre214 = randlc(_imopVarPre213, amult);
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        vecloc = _imopVarPre214;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        int _imopVarPre216;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre216 = icnvrt(vecloc, nn1);
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        i = _imopVarPre216 + 1;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        if (i > n) {
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(v) := [v.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(iv) := [iv.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            continue;
        }
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        if (mark[i] == 0) {
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(v) := [v.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(iv) := [iv.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            mark[i] = 1;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(v) := [v.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(iv) := [iv.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            nzrow = nzrow + 1;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(v) := [v.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(iv) := [iv.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            nzloc[nzrow] = i;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(v) := [v.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(iv) := [iv.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            nzv = nzv + 1;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(v) := [v.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(iv) := [iv.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            v[nzv] = vecelt;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(v) := [v.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(iv) := [iv.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            iv[nzv] = i;
        }
    }
    /*OUT: [ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(v) := [v.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    for (ii = 1; ii <= nzrow; ii++) {
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        i = nzloc[ii];
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(v) := [v.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        mark[i] = 0;
    }
}
/*OUT: [ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(colidx.f) := [nullCell];
]*/
static int icnvrt(double x, int ipwr2) {
    /*OUT: [ptsTo(colidx.f) := [nullCell];
    ]*/
    return ((int) (ipwr2 * x));
}
/*OUT: [ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(v) := [v.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(iv) := [iv.f];
ptsTo(v) := [v.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(iv) := [iv.f];
ptsTo(nzv) := [nzv];
ptsTo(v) := [v.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(iv) := [iv.f];
ptsTo(nzv) := [nzv];
ptsTo(v) := [v.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(iv) := [iv.f];
ptsTo(nzv) := [nzv];
ptsTo(v) := [v.f];
ptsTo(colidx.f) := [nullCell];
]*/
static void vecset(int n, double v[] , int iv[] , int *nzv , int i , double val) {
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv];
    ptsTo(v) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int k;
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv];
    ptsTo(v) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    boolean set;
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv];
    ptsTo(v) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    set = 0;
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv];
    ptsTo(v) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv];
    ptsTo(v) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv];
    ptsTo(v) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    for (k = 1; k <= *nzv; k++) {
        /*OUT: [ptsTo(iv) := [iv.f];
        ptsTo(nzv) := [nzv];
        ptsTo(v) := [v.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        if (iv[k] == i) {
            /*OUT: [ptsTo(iv) := [iv.f];
            ptsTo(nzv) := [nzv];
            ptsTo(v) := [v.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            v[k] = val;
            /*OUT: [ptsTo(iv) := [iv.f];
            ptsTo(nzv) := [nzv];
            ptsTo(v) := [v.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            set = 1;
        }
    }
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv];
    ptsTo(v) := [v.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    if (set == 0) {
        /*OUT: [ptsTo(iv) := [iv.f];
        ptsTo(nzv) := [nzv];
        ptsTo(v) := [v.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        *nzv = *nzv + 1;
        /*OUT: [ptsTo(iv) := [iv.f];
        ptsTo(nzv) := [nzv];
        ptsTo(v) := [v.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        v[*nzv] = val;
        /*OUT: [ptsTo(iv) := [iv.f];
        ptsTo(nzv) := [nzv];
        ptsTo(v) := [v.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        iv[*nzv] = i;
    }
}
