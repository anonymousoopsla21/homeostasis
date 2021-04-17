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
static void sprnvc(int n, int nz , double v[] , int iv[] , int nzloc[] , int mark[]);
static int icnvrt(double x, int ipwr2);
static void vecset(int n, double v[] , int iv[] , int *nzv , int i , double val);
static int callcount = 0;
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
    int n;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int nz;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int nonzer;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double rcond;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double shift;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    n = naa;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    nz = nzz;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    nonzer = 7;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    rcond = 1.0e-1;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    shift = 10.0;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int i_imopVar83;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int nnza;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int iouter;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int ivelt;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int ivelt1;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int irow;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int nzv;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double size;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ratio;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double scale;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int jcol;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    size = 1.0;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double _imopVarPre189;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double _imopVarPre190;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre189 = (1.0 / (double) n);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre190 = pow(rcond, _imopVarPre189);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ratio = _imopVarPre190;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ]*/
    nnza = 0;
#pragma omp parallel default(shared) private(i_imopVar83)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        for (i_imopVar83 = 1; i_imopVar83 <= n; i_imopVar83++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            colidx[n + i_imopVar83] = 0;
        }
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    for (iouter = 1; iouter <= n; iouter++) {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        nzv = nonzer;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [nullCell];
        ]*/
        int *_imopVarPre193;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [nullCell];
        ptsTo(_imopVarPre194) := [nullCell];
        ]*/
        int *_imopVarPre194;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [nullCell];
        ]*/
        _imopVarPre193 = &(colidx[n]);
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ]*/
        _imopVarPre194 = &(colidx[0]);
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ]*/
        sprnvc(n, nzv, v, iv, _imopVarPre194, _imopVarPre193);
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nullCell];
        ]*/
        int *_imopVarPre196;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ]*/
        _imopVarPre196 = &nzv;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ]*/
        vecset(n, v, iv, _imopVarPre196, iouter, 0.5);
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ]*/
        for (ivelt = 1; ivelt <= nzv; ivelt++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(_imopVarPre193) := [colidx.f];
            ptsTo(_imopVarPre194) := [colidx.f];
            ptsTo(_imopVarPre196) := [nzv];
            ]*/
            jcol = iv[ivelt];
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(_imopVarPre193) := [colidx.f];
            ptsTo(_imopVarPre194) := [colidx.f];
            ptsTo(_imopVarPre196) := [nzv];
            ]*/
            int _imopVarPre198;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(_imopVarPre193) := [colidx.f];
            ptsTo(_imopVarPre194) := [colidx.f];
            ptsTo(_imopVarPre196) := [nzv];
            ]*/
            _imopVarPre198 = jcol >= firstcol;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(_imopVarPre193) := [colidx.f];
            ptsTo(_imopVarPre194) := [colidx.f];
            ptsTo(_imopVarPre196) := [nzv];
            ]*/
            if (_imopVarPre198) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ptsTo(_imopVarPre193) := [colidx.f];
                ptsTo(_imopVarPre194) := [colidx.f];
                ptsTo(_imopVarPre196) := [nzv];
                ]*/
                _imopVarPre198 = jcol <= lastcol;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(_imopVarPre193) := [colidx.f];
            ptsTo(_imopVarPre194) := [colidx.f];
            ptsTo(_imopVarPre196) := [nzv];
            ]*/
            if (_imopVarPre198) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ptsTo(_imopVarPre193) := [colidx.f];
                ptsTo(_imopVarPre194) := [colidx.f];
                ptsTo(_imopVarPre196) := [nzv];
                ]*/
                scale = size * v[ivelt];
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ptsTo(_imopVarPre193) := [colidx.f];
                ptsTo(_imopVarPre194) := [colidx.f];
                ptsTo(_imopVarPre196) := [nzv];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ptsTo(_imopVarPre193) := [colidx.f];
                ptsTo(_imopVarPre194) := [colidx.f];
                ptsTo(_imopVarPre196) := [nzv];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ptsTo(_imopVarPre193) := [colidx.f];
                ptsTo(_imopVarPre194) := [colidx.f];
                ptsTo(_imopVarPre196) := [nzv];
                ]*/
                for (ivelt1 = 1; ivelt1 <= nzv; ivelt1++) {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(colidx.f) := [nullCell];
                    ptsTo(_imopVarPre193) := [colidx.f];
                    ptsTo(_imopVarPre194) := [colidx.f];
                    ptsTo(_imopVarPre196) := [nzv];
                    ]*/
                    irow = iv[ivelt1];
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(colidx.f) := [nullCell];
                    ptsTo(_imopVarPre193) := [colidx.f];
                    ptsTo(_imopVarPre194) := [colidx.f];
                    ptsTo(_imopVarPre196) := [nzv];
                    ]*/
                    int _imopVarPre200;
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(colidx.f) := [nullCell];
                    ptsTo(_imopVarPre193) := [colidx.f];
                    ptsTo(_imopVarPre194) := [colidx.f];
                    ptsTo(_imopVarPre196) := [nzv];
                    ]*/
                    _imopVarPre200 = irow >= firstrow;
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(colidx.f) := [nullCell];
                    ptsTo(_imopVarPre193) := [colidx.f];
                    ptsTo(_imopVarPre194) := [colidx.f];
                    ptsTo(_imopVarPre196) := [nzv];
                    ]*/
                    if (_imopVarPre200) {
                        /*OUT: [ptsTo(_imopVarPre171) := [tran];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(colidx.f) := [nullCell];
                        ptsTo(_imopVarPre193) := [colidx.f];
                        ptsTo(_imopVarPre194) := [colidx.f];
                        ptsTo(_imopVarPre196) := [nzv];
                        ]*/
                        _imopVarPre200 = irow <= lastrow;
                    }
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(colidx.f) := [nullCell];
                    ptsTo(_imopVarPre193) := [colidx.f];
                    ptsTo(_imopVarPre194) := [colidx.f];
                    ptsTo(_imopVarPre196) := [nzv];
                    ]*/
                    if (_imopVarPre200) {
                        /*OUT: [ptsTo(_imopVarPre171) := [tran];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(colidx.f) := [nullCell];
                        ptsTo(_imopVarPre193) := [colidx.f];
                        ptsTo(_imopVarPre194) := [colidx.f];
                        ptsTo(_imopVarPre196) := [nzv];
                        ]*/
                        nnza = nnza + 1;
                        /*OUT: [ptsTo(_imopVarPre171) := [tran];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(colidx.f) := [nullCell];
                        ptsTo(_imopVarPre193) := [colidx.f];
                        ptsTo(_imopVarPre194) := [colidx.f];
                        ptsTo(_imopVarPre196) := [nzv];
                        ]*/
                        if (nnza > nz) {
                            /*OUT: [ptsTo(_imopVarPre171) := [tran];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(argv) := [heapCell#0];
                            ptsTo(colidx.f) := [nullCell];
                            ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ]*/
                            printf("Space for matrix elements exceeded in" " makea\n");
                            /*OUT: [ptsTo(_imopVarPre171) := [tran];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(argv) := [heapCell#0];
                            ptsTo(colidx.f) := [nullCell];
                            ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ]*/
                            /*OUT: [ptsTo(_imopVarPre171) := [tran];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(argv) := [heapCell#0];
                            ptsTo(colidx.f) := [nullCell];
                            ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ]*/
                            printf("nnza, nzmax = %d, %d\n", nnza, nz);
                            /*OUT: [ptsTo(_imopVarPre171) := [tran];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(argv) := [heapCell#0];
                            ptsTo(colidx.f) := [nullCell];
                            ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ]*/
                            /*OUT: [ptsTo(_imopVarPre171) := [tran];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(argv) := [heapCell#0];
                            ptsTo(colidx.f) := [nullCell];
                            ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ]*/
                            printf("iouter = %d\n", iouter);
                            /*OUT: [ptsTo(_imopVarPre171) := [tran];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(argv) := [heapCell#0];
                            ptsTo(colidx.f) := [nullCell];
                            ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ]*/
                            /*OUT: [ptsTo(_imopVarPre171) := [tran];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(argv) := [heapCell#0];
                            ptsTo(colidx.f) := [nullCell];
                            ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ]*/
                            exit(1);
                            /*OUT: [ptsTo(_imopVarPre171) := [tran];
                            ptsTo(_imopVarPre210) := [tran];
                            ptsTo(_imopVarPre213) := [tran];
                            ptsTo(argv) := [heapCell#0];
                            ptsTo(colidx.f) := [nullCell];
                            ptsTo(_imopVarPre193) := [colidx.f];
                            ptsTo(_imopVarPre194) := [colidx.f];
                            ptsTo(_imopVarPre196) := [nzv];
                            ]*/
                        }
                        /*OUT: [ptsTo(_imopVarPre171) := [tran];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(colidx.f) := [nullCell];
                        ptsTo(_imopVarPre193) := [colidx.f];
                        ptsTo(_imopVarPre194) := [colidx.f];
                        ptsTo(_imopVarPre196) := [nzv];
                        ]*/
                        acol[nnza] = jcol;
                        /*OUT: [ptsTo(_imopVarPre171) := [tran];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(colidx.f) := [nullCell];
                        ptsTo(_imopVarPre193) := [colidx.f];
                        ptsTo(_imopVarPre194) := [colidx.f];
                        ptsTo(_imopVarPre196) := [nzv];
                        ]*/
                        arow[nnza] = irow;
                        /*OUT: [ptsTo(_imopVarPre171) := [tran];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(colidx.f) := [nullCell];
                        ptsTo(_imopVarPre193) := [colidx.f];
                        ptsTo(_imopVarPre194) := [colidx.f];
                        ptsTo(_imopVarPre196) := [nzv];
                        ]*/
                        aelt[nnza] = v[ivelt1] * scale;
                    }
                }
            }
        }
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre193) := [colidx.f];
        ptsTo(_imopVarPre194) := [colidx.f];
        ptsTo(_imopVarPre196) := [nzv];
        ]*/
        size = size * ratio;
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    for (i_imopVar83 = firstrow; i_imopVar83 <= lastrow; i_imopVar83++) {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        int _imopVarPre202;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre202 = i_imopVar83 >= firstcol;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        if (_imopVarPre202) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            _imopVarPre202 = i_imopVar83 <= lastcol;
        }
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        if (_imopVarPre202) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            iouter = n + i_imopVar83;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            nnza = nnza + 1;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            if (nnza > nz) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                printf("Space for matrix elements exceeded in makea\n");
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                printf("nnza, nzmax = %d, %d\n", nnza, nz);
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                printf("iouter = %d\n", iouter);
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ]*/
                exit(1);
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ]*/
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            acol[nnza] = i_imopVar83;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            arow[nnza] = i_imopVar83;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            aelt[nnza] = rcond - shift;
        }
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [nullCell];
    ]*/
    int *_imopVarPre205;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [nullCell];
    ptsTo(_imopVarPre206) := [nullCell];
    ]*/
    int *_imopVarPre206;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [nullCell];
    ]*/
    _imopVarPre205 = &(iv[n]);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ]*/
    _imopVarPre206 = &(iv[0]);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [nullCell];
    ]*/
    double *x_imopVar75;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [nullCell];
    ptsTo(mark) := [nullCell];
    ]*/
    int *mark;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [nullCell];
    ptsTo(mark) := [nullCell];
    ptsTo(nzloc) := [nullCell];
    ]*/
    int *nzloc;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [nullCell];
    ptsTo(nzloc) := [nullCell];
    ]*/
    x_imopVar75 = v;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [nullCell];
    ]*/
    mark = _imopVarPre206;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    nzloc = _imopVarPre205;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    int nrows;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    int i_imopVar76;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    int j_imopVar84;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    int jajp1;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    int nza;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    int k_imopVar85;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    int nzrow;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    double xi;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    nrows = lastrow - firstrow + 1;
#pragma omp parallel default(shared) private(j_imopVar84)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        for (j_imopVar84 = 1; j_imopVar84 <= n; j_imopVar84++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(rowstr.f) := [nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            rowstr[j_imopVar84] = 0;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(rowstr.f) := [nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            mark[j_imopVar84] = 0;
        }
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    rowstr[n + 1] = 0;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    for (nza = 1; nza <= nnza; nza++) {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        j_imopVar84 = (arow[nza] - firstrow + 1) + 1;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        rowstr[j_imopVar84] = rowstr[j_imopVar84] + 1;
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    rowstr[1] = 1;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    for (j_imopVar84 = 2; j_imopVar84 <= nrows + 1; j_imopVar84++) {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        rowstr[j_imopVar84] = rowstr[j_imopVar84] + rowstr[j_imopVar84 - 1];
    }
#pragma omp parallel default(shared) private(k_imopVar85, j_imopVar84)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(colidx.f) := [nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        for (j_imopVar84 = 0; j_imopVar84 <= nrows - 1; j_imopVar84++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(rowstr.f) := [nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(rowstr.f) := [nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(colidx.f) := [nullCell];
            ptsTo(rowstr.f) := [nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (k_imopVar85 = rowstr[j_imopVar84]; k_imopVar85 <= rowstr[j_imopVar84 + 1] - 1; k_imopVar85++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(colidx.f) := [nullCell];
                ptsTo(rowstr.f) := [nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                a[k_imopVar85] = 0.0;
            }
        }
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(colidx.f) := [nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    for (nza = 1; nza <= nnza; nza++) {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        j_imopVar84 = arow[nza] - firstrow + 1;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        k_imopVar85 = rowstr[j_imopVar84];
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        a[k_imopVar85] = aelt[nza];
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        colidx[k_imopVar85] = acol[nza];
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f];
        ptsTo(rowstr.f) := [nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        rowstr[j_imopVar84] = rowstr[j_imopVar84] + 1;
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    for (j_imopVar84 = nrows; j_imopVar84 >= 1; j_imopVar84--) {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        rowstr[j_imopVar84 + 1] = rowstr[j_imopVar84];
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    rowstr[1] = 1;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    nza = 0;
#pragma omp parallel default(shared) private(i_imopVar76)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        for (i_imopVar76 = 1; i_imopVar76 <= n; i_imopVar76++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            x_imopVar75[i_imopVar76] = 0.0;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            mark[i_imopVar76] = 0;
        }
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    jajp1 = rowstr[1];
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    for (j_imopVar84 = 1; j_imopVar84 <= nrows; j_imopVar84++) {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        nzrow = 0;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        for (k_imopVar85 = jajp1; k_imopVar85 < rowstr[j_imopVar84 + 1]; k_imopVar85++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            i_imopVar76 = colidx[k_imopVar85];
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            x_imopVar75[i_imopVar76] = x_imopVar75[i_imopVar76] + a[k_imopVar85];
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            int _imopVarPre208;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            _imopVarPre208 = mark[i_imopVar76] == 0;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            if (_imopVarPre208) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                _imopVarPre208 = x_imopVar75[i_imopVar76] != 0.0;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            if (_imopVarPre208) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                mark[i_imopVar76] = 1;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                nzrow = nzrow + 1;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                nzloc[nzrow] = i_imopVar76;
            }
        }
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        for (k_imopVar85 = 1; k_imopVar85 <= nzrow; k_imopVar85++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            i_imopVar76 = nzloc[k_imopVar85];
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            mark[i_imopVar76] = 0;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            xi = x_imopVar75[i_imopVar76];
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            x_imopVar75[i_imopVar76] = 0.0;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            if (xi != 0.0) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                nza = nza + 1;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                a[nza] = xi;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                colidx[nza] = i_imopVar76;
            }
        }
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        jajp1 = rowstr[j_imopVar84 + 1];
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        rowstr[j_imopVar84 + 1] = nza + rowstr[1];
    }
#pragma omp parallel default(shared) private(i, j, k)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        for (j = 1; j <= lastrow - firstrow + 1; j++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (k = rowstr[j]; k < rowstr[j + 1]; k++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                colidx[k] = colidx[k] - firstcol + 1;
            }
        }
#pragma omp for nowait
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        for (i = 1; i <= 1400 + 1; i++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            x[i] = 1.0;
        }
#pragma omp for nowait
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        for (j = 1; j <= lastcol - firstcol + 1; j++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            q[j] = 0.0;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            z[j] = 0.0;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            r[j] = 0.0;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            p[j] = 0.0;
        }
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    zeta = 0.0;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    for (it = 1; it <= 1; it++) {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double sum;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double rho;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double rho0;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double alpha;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double beta;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar77) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double *rnorm_imopVar77;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar77) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        int j_imopVar78;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar77) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        int k_imopVar79;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar77) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        int cgit;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar77) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        int cgitmax = 25;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar77) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double d;
#pragma omp parallel default(shared) private(j_imopVar78, sum) shared(rho, naa)
        {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [nullCell];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            double *_imopVarPre174;
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                _imopVarPre174 = &rnorm;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                rnorm_imopVar77 = _imopVarPre174;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                rho = 0.0;
            }
#pragma omp for nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (j_imopVar78 = 1; j_imopVar78 <= naa + 1; j_imopVar78++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                q[j_imopVar78] = 0.0;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                z[j_imopVar78] = 0.0;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                r[j_imopVar78] = x[j_imopVar78];
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                p[j_imopVar78] = r[j_imopVar78];
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
#pragma omp barrier
#pragma omp for reduction(+:rho) nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (j_imopVar78 = 1; j_imopVar78 <= lastcol - firstcol + 1; j_imopVar78++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                rho = rho + r[j_imopVar78] * r[j_imopVar78];
            }
        }
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        for (cgit = 1; cgit <= cgitmax; cgit++) {
#pragma omp parallel default(shared) private(j_imopVar78, k_imopVar79, sum, alpha, beta) shared(d, rho0, rho)
            {
#pragma omp master
                {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    rho0 = rho;
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    d = 0.0;
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    rho = 0.0;
                }
#pragma omp for nowait
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                for (j_imopVar78 = 1; j_imopVar78 <= lastrow - firstrow + 1; j_imopVar78++) {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    sum = 0.0;
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    for (k_imopVar79 = rowstr[j_imopVar78]; k_imopVar79 < rowstr[j_imopVar78 + 1]; k_imopVar79++) {
                        /*OUT: [ptsTo(_imopVarPre171) := [tran];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(_imopVarPre174) := [rnorm];
                        ptsTo(a.f) := [aelt.f];
                        ptsTo(colidx.f) := [acol.f, nullCell];
                        ptsTo(rowstr.f) := [rowstr.f, nullCell];
                        ptsTo(iv.f) := [nullCell];
                        ptsTo(r.f) := [x.f];
                        ptsTo(p.f) := [r.f];
                        ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                        ptsTo(_imopVarPre205) := [iv.f];
                        ptsTo(_imopVarPre206) := [iv.f];
                        ptsTo(x_imopVar75) := [v.f];
                        ptsTo(mark) := [iv.f];
                        ptsTo(nzloc) := [iv.f];
                        ]*/
                        sum = sum + a[k_imopVar79] * p[colidx[k_imopVar79]];
                    }
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    q[j_imopVar78] = sum;
                }
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
#pragma omp barrier
#pragma omp for reduction(+:d) nowait
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                for (j_imopVar78 = 1; j_imopVar78 <= lastcol - firstcol + 1; j_imopVar78++) {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    d = d + p[j_imopVar78] * q[j_imopVar78];
                }
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
#pragma omp barrier
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                alpha = rho0 / d;
#pragma omp for reduction(+:rho) nowait
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                for (j_imopVar78 = 1; j_imopVar78 <= lastcol - firstcol + 1; j_imopVar78++) {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    z[j_imopVar78] = z[j_imopVar78] + alpha * p[j_imopVar78];
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    r[j_imopVar78] = r[j_imopVar78] - alpha * q[j_imopVar78];
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    rho = rho + r[j_imopVar78] * r[j_imopVar78];
                }
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
#pragma omp barrier
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                beta = rho / rho0;
#pragma omp for nowait
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                for (j_imopVar78 = 1; j_imopVar78 <= lastcol - firstcol + 1; j_imopVar78++) {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    p[j_imopVar78] = r[j_imopVar78] + beta * p[j_imopVar78];
                }
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                callcount++;
            }
        }
#pragma omp parallel default(shared) private(j_imopVar78, d, j) shared(sum)
        {
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                sum = 0.0;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            double _imopVarPre187;
#pragma omp for nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (j_imopVar78 = 1; j_imopVar78 <= lastrow - firstrow + 1; j_imopVar78++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                d = 0.0;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                for (k_imopVar79 = rowstr[j_imopVar78]; k_imopVar79 <= rowstr[j_imopVar78 + 1] - 1; k_imopVar79++) {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    d = d + a[k_imopVar79] * z[colidx[k_imopVar79]];
                }
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                r[j_imopVar78] = d;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
#pragma omp barrier
#pragma omp for reduction(+:sum) nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (j_imopVar78 = 1; j_imopVar78 <= lastcol - firstcol + 1; j_imopVar78++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                d = x[j_imopVar78] - r[j_imopVar78];
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                sum = sum + d * d;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
#pragma omp barrier
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                _imopVarPre187 = sqrt(sum);
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                (*rnorm_imopVar77) = _imopVarPre187;
            }
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                norm_temp11 = 0.0;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                norm_temp12 = 0.0;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            double _imopVarPre176;
#pragma omp for reduction(+:norm_temp11, norm_temp12) nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                norm_temp11 = norm_temp11 + x[j] * z[j];
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                norm_temp12 = norm_temp12 + z[j] * z[j];
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
#pragma omp barrier
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                _imopVarPre176 = sqrt(norm_temp12);
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                norm_temp12 = 1.0 / _imopVarPre176;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar77) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
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
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        for (i = 1; i <= 1400 + 1; i++) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            x[i] = 1.0;
        }
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    zeta = 0.0;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    timer_clear(1);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    timer_start(1);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre178) := [rnorm];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre178) := [rnorm];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    for (it = 1; it <= 15; it++) {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double rho0;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double alpha;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double beta;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar80) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double *rnorm_imopVar80;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar80) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        int j_imopVar81;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar80) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        int k_imopVar82;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar80) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        int cgit;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar80) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        int cgitmax = 25;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar80) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double d;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar80) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double sum;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar80) := [nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double rho;
#pragma omp parallel default(shared) private(j_imopVar81, sum) shared(rho, naa)
        {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [nullCell];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            double *_imopVarPre178;
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                _imopVarPre178 = &rnorm;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                rnorm_imopVar80 = _imopVarPre178;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                rho = 0.0;
            }
#pragma omp for nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (j_imopVar81 = 1; j_imopVar81 <= naa + 1; j_imopVar81++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                q[j_imopVar81] = 0.0;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                z[j_imopVar81] = 0.0;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                r[j_imopVar81] = x[j_imopVar81];
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                p[j_imopVar81] = r[j_imopVar81];
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
#pragma omp barrier
#pragma omp for reduction(+:rho) nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (j_imopVar81 = 1; j_imopVar81 <= lastcol - firstcol + 1; j_imopVar81++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                rho = rho + r[j_imopVar81] * r[j_imopVar81];
            }
        }
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        for (cgit = 1; cgit <= cgitmax; cgit++) {
#pragma omp parallel default(shared) private(j_imopVar81, k_imopVar82, sum, alpha, beta) shared(d, rho0, rho)
            {
#pragma omp master
                {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    rho0 = rho;
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    d = 0.0;
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    rho = 0.0;
                }
#pragma omp for nowait
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                for (j_imopVar81 = 1; j_imopVar81 <= lastrow - firstrow + 1; j_imopVar81++) {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    sum = 0.0;
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    for (k_imopVar82 = rowstr[j_imopVar81]; k_imopVar82 < rowstr[j_imopVar81 + 1]; k_imopVar82++) {
                        /*OUT: [ptsTo(_imopVarPre171) := [tran];
                        ptsTo(_imopVarPre178) := [rnorm];
                        ptsTo(_imopVarPre210) := [tran];
                        ptsTo(_imopVarPre213) := [tran];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(_imopVarPre174) := [rnorm];
                        ptsTo(a.f) := [aelt.f];
                        ptsTo(colidx.f) := [acol.f, nullCell];
                        ptsTo(rowstr.f) := [rowstr.f, nullCell];
                        ptsTo(iv.f) := [nullCell];
                        ptsTo(r.f) := [x.f];
                        ptsTo(p.f) := [r.f];
                        ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                        ptsTo(_imopVarPre205) := [iv.f];
                        ptsTo(_imopVarPre206) := [iv.f];
                        ptsTo(x_imopVar75) := [v.f];
                        ptsTo(mark) := [iv.f];
                        ptsTo(nzloc) := [iv.f];
                        ]*/
                        sum = sum + a[k_imopVar82] * p[colidx[k_imopVar82]];
                    }
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    q[j_imopVar81] = sum;
                }
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
#pragma omp barrier
#pragma omp for reduction(+:d) nowait
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                for (j_imopVar81 = 1; j_imopVar81 <= lastcol - firstcol + 1; j_imopVar81++) {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    d = d + p[j_imopVar81] * q[j_imopVar81];
                }
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
#pragma omp barrier
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                alpha = rho0 / d;
#pragma omp for reduction(+:rho) nowait
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                for (j_imopVar81 = 1; j_imopVar81 <= lastcol - firstcol + 1; j_imopVar81++) {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    z[j_imopVar81] = z[j_imopVar81] + alpha * p[j_imopVar81];
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    r[j_imopVar81] = r[j_imopVar81] - alpha * q[j_imopVar81];
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    rho = rho + r[j_imopVar81] * r[j_imopVar81];
                }
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
#pragma omp barrier
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                beta = rho / rho0;
#pragma omp for nowait
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                for (j_imopVar81 = 1; j_imopVar81 <= lastcol - firstcol + 1; j_imopVar81++) {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    p[j_imopVar81] = r[j_imopVar81] + beta * p[j_imopVar81];
                }
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                callcount++;
            }
        }
#pragma omp parallel default(shared) private(j_imopVar81, d, j) shared(sum)
        {
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                sum = 0.0;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            double _imopVarPre187;
#pragma omp for nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (j_imopVar81 = 1; j_imopVar81 <= lastrow - firstrow + 1; j_imopVar81++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                d = 0.0;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                for (k_imopVar82 = rowstr[j_imopVar81]; k_imopVar82 <= rowstr[j_imopVar81 + 1] - 1; k_imopVar82++) {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    d = d + a[k_imopVar82] * z[colidx[k_imopVar82]];
                }
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                r[j_imopVar81] = d;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
#pragma omp barrier
#pragma omp for reduction(+:sum) nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (j_imopVar81 = 1; j_imopVar81 <= lastcol - firstcol + 1; j_imopVar81++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                d = x[j_imopVar81] - r[j_imopVar81];
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                sum = sum + d * d;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
#pragma omp barrier
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                _imopVarPre187 = sqrt(sum);
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                (*rnorm_imopVar80) = _imopVarPre187;
            }
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                norm_temp11 = 0.0;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                norm_temp12 = 0.0;
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            double _imopVarPre180;
#pragma omp for reduction(+:norm_temp11, norm_temp12) nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                norm_temp11 = norm_temp11 + x[j] * z[j];
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                norm_temp12 = norm_temp12 + z[j] * z[j];
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
#pragma omp barrier
#pragma omp master
            {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                _imopVarPre180 = sqrt(norm_temp12);
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                norm_temp12 = 1.0 / _imopVarPre180;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                zeta = 10.0 + 1.0 / norm_temp11;
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                if (it == 1) {
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                    printf("   iteration           ||r||                 zeta\n");
                    /*OUT: [ptsTo(_imopVarPre171) := [tran];
                    ptsTo(_imopVarPre178) := [rnorm];
                    ptsTo(_imopVarPre210) := [tran];
                    ptsTo(_imopVarPre213) := [tran];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre174) := [rnorm];
                    ptsTo(a.f) := [aelt.f];
                    ptsTo(colidx.f) := [acol.f, nullCell];
                    ptsTo(rowstr.f) := [rowstr.f, nullCell];
                    ptsTo(iv.f) := [nullCell];
                    ptsTo(r.f) := [x.f];
                    ptsTo(p.f) := [r.f];
                    ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                    ptsTo(_imopVarPre205) := [iv.f];
                    ptsTo(_imopVarPre206) := [iv.f];
                    ptsTo(x_imopVar75) := [v.f];
                    ptsTo(mark) := [iv.f];
                    ptsTo(nzloc) := [iv.f];
                    ]*/
                }
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                printf("    %5d       %20.14e%20.13e\n", it, rnorm, zeta);
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
            }
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                /*OUT: [ptsTo(_imopVarPre171) := [tran];
                ptsTo(_imopVarPre178) := [rnorm];
                ptsTo(_imopVarPre210) := [tran];
                ptsTo(_imopVarPre213) := [tran];
                ptsTo(argv) := [heapCell#0];
                ptsTo(_imopVarPre174) := [rnorm];
                ptsTo(a.f) := [aelt.f];
                ptsTo(colidx.f) := [acol.f, nullCell];
                ptsTo(rowstr.f) := [rowstr.f, nullCell];
                ptsTo(iv.f) := [nullCell];
                ptsTo(r.f) := [x.f];
                ptsTo(p.f) := [r.f];
                ptsTo(rnorm_imopVar80) := [rnorm, nullCell];
                ptsTo(_imopVarPre205) := [iv.f];
                ptsTo(_imopVarPre206) := [iv.f];
                ptsTo(x_imopVar75) := [v.f];
                ptsTo(mark) := [iv.f];
                ptsTo(nzloc) := [iv.f];
                ]*/
                x[j] = norm_temp12 * z[j];
            }
        }
    }
#pragma omp parallel
    {
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre178) := [rnorm];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    timer_stop(1);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre178) := [rnorm];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre178) := [rnorm];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    t = timer_read(1);
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre178) := [rnorm];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre178) := [rnorm];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    printf(" Benchmark completed\n");
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre178) := [rnorm];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre178) := [rnorm];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    epsilon = 1.0e-10;
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre178) := [rnorm];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    if (class != 'U') {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double _imopVarPre183;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        double _imopVarPre184;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        _imopVarPre183 = zeta - zeta_verify_value;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        _imopVarPre184 = fabs(_imopVarPre183);
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        if (_imopVarPre184 <= epsilon) {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            verified = 1;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            printf(" VERIFICATION SUCCESSFUL\n");
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            printf(" Zeta is    %20.12e\n", zeta);
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            double _imopVarPre186;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            _imopVarPre186 = zeta - zeta_verify_value;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            printf(" Error is   %20.12e\n", _imopVarPre186);
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
        } else {
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            verified = 0;
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            printf(" VERIFICATION FAILED\n");
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            printf(" Zeta                %20.12e\n", zeta);
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
            printf(" The correct zeta is %20.12e\n", zeta_verify_value);
            /*OUT: [ptsTo(_imopVarPre171) := [tran];
            ptsTo(_imopVarPre178) := [rnorm];
            ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(argv) := [heapCell#0];
            ptsTo(_imopVarPre174) := [rnorm];
            ptsTo(a.f) := [aelt.f];
            ptsTo(colidx.f) := [acol.f, nullCell];
            ptsTo(rowstr.f) := [rowstr.f, nullCell];
            ptsTo(iv.f) := [nullCell];
            ptsTo(r.f) := [x.f];
            ptsTo(p.f) := [r.f];
            ptsTo(_imopVarPre205) := [iv.f];
            ptsTo(_imopVarPre206) := [iv.f];
            ptsTo(x_imopVar75) := [v.f];
            ptsTo(mark) := [iv.f];
            ptsTo(nzloc) := [iv.f];
            ]*/
        }
    } else {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        verified = 0;
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        printf(" Problem size unknown\n");
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        printf(" NO VERIFICATION PERFORMED\n");
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre178) := [rnorm];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    if (t != 0.0) {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        mflops = (2.0 * 15 * 1400) * (3.0 + (7 * (7 + 1)) + 25.0 * (5.0 + (7 * (7 + 1))) + 3.0) / t / 1000000.0;
    } else {
        /*OUT: [ptsTo(_imopVarPre171) := [tran];
        ptsTo(_imopVarPre178) := [rnorm];
        ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre174) := [rnorm];
        ptsTo(a.f) := [aelt.f];
        ptsTo(colidx.f) := [acol.f, nullCell];
        ptsTo(rowstr.f) := [rowstr.f, nullCell];
        ptsTo(iv.f) := [nullCell];
        ptsTo(r.f) := [x.f];
        ptsTo(p.f) := [r.f];
        ptsTo(_imopVarPre205) := [iv.f];
        ptsTo(_imopVarPre206) := [iv.f];
        ptsTo(x_imopVar75) := [v.f];
        ptsTo(mark) := [iv.f];
        ptsTo(nzloc) := [iv.f];
        ]*/
        mflops = 0.0;
    }
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre178) := [rnorm];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
    c_print_results("CG", class, 1400, 0, 0, 15, nthreads, t, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
    /*OUT: [ptsTo(_imopVarPre171) := [tran];
    ptsTo(_imopVarPre178) := [rnorm];
    ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(argv) := [heapCell#0];
    ptsTo(_imopVarPre174) := [rnorm];
    ptsTo(a.f) := [aelt.f];
    ptsTo(colidx.f) := [acol.f, nullCell];
    ptsTo(rowstr.f) := [rowstr.f, nullCell];
    ptsTo(iv.f) := [nullCell];
    ptsTo(r.f) := [x.f];
    ptsTo(p.f) := [r.f];
    ptsTo(_imopVarPre205) := [iv.f];
    ptsTo(_imopVarPre206) := [iv.f];
    ptsTo(x_imopVar75) := [v.f];
    ptsTo(mark) := [iv.f];
    ptsTo(nzloc) := [iv.f];
    ]*/
}
/*OUT: [ptsTo(colidx.f) := [nullCell];
]*/
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
ptsTo(v) := [v.f];
ptsTo(nzloc) := [colidx.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(iv) := [iv.f];
ptsTo(mark) := [colidx.f];
ptsTo(v) := [v.f];
ptsTo(nzloc) := [colidx.f];
ptsTo(colidx.f) := [nullCell];
]*/
static void sprnvc(int n, int nz , double v[] , int iv[] , int nzloc[] , int mark[]) {
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int nn1;
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int nzrow;
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int nzv;
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int ii;
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    double vecelt;
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    double vecloc;
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    nzv = 0;
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    nzrow = 0;
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    nn1 = 1;
    /*OUT: [ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    do {
        /*OUT: [ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        nn1 = 2 * nn1;
    } while (nn1 < n);
    /*OUT: [ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    while (nzv < nz) {
        /*OUT: [ptsTo(_imopVarPre210) := [nullCell];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        double *_imopVarPre210;
        /*OUT: [ptsTo(_imopVarPre210) := [nullCell];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        double _imopVarPre211;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre210 = &tran;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre211 = randlc(_imopVarPre210, amult);
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        vecelt = _imopVarPre211;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [nullCell];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        double *_imopVarPre213;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [nullCell];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        double _imopVarPre214;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre213 = &tran;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre214 = randlc(_imopVarPre213, amult);
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        vecloc = _imopVarPre214;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        int _imopVarPre216;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        _imopVarPre216 = icnvrt(vecloc, nn1);
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        i = _imopVarPre216 + 1;
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        if (i > n) {
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(iv) := [iv.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(v) := [v.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            continue;
        }
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        if (mark[i] == 0) {
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(iv) := [iv.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(v) := [v.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            mark[i] = 1;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(iv) := [iv.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(v) := [v.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            nzrow = nzrow + 1;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(iv) := [iv.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(v) := [v.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            nzloc[nzrow] = i;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(iv) := [iv.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(v) := [v.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            nzv = nzv + 1;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(iv) := [iv.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(v) := [v.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            v[nzv] = vecelt;
            /*OUT: [ptsTo(_imopVarPre210) := [tran];
            ptsTo(_imopVarPre213) := [tran];
            ptsTo(iv) := [iv.f];
            ptsTo(mark) := [colidx.f];
            ptsTo(v) := [v.f];
            ptsTo(nzloc) := [colidx.f];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            iv[nzv] = i;
        }
    }
    /*OUT: [ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(_imopVarPre210) := [tran];
    ptsTo(_imopVarPre213) := [tran];
    ptsTo(iv) := [iv.f];
    ptsTo(mark) := [colidx.f];
    ptsTo(v) := [v.f];
    ptsTo(nzloc) := [colidx.f];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    for (ii = 1; ii <= nzrow; ii++) {
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
        ptsTo(nzloc) := [colidx.f];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        i = nzloc[ii];
        /*OUT: [ptsTo(_imopVarPre210) := [tran];
        ptsTo(_imopVarPre213) := [tran];
        ptsTo(iv) := [iv.f];
        ptsTo(mark) := [colidx.f];
        ptsTo(v) := [v.f];
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
/*OUT: [ptsTo(v) := [v.f];
ptsTo(iv) := [iv.f];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(v) := [v.f];
ptsTo(iv) := [iv.f];
ptsTo(nzv) := [nzv, nzv];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(v) := [v.f];
ptsTo(iv) := [iv.f];
ptsTo(nzv) := [nzv, nzv];
ptsTo(colidx.f) := [nullCell];
]*/
/*OUT: [ptsTo(v) := [v.f];
ptsTo(iv) := [iv.f];
ptsTo(nzv) := [nzv, nzv];
ptsTo(colidx.f) := [nullCell];
]*/
static void vecset(int n, double v[] , int iv[] , int *nzv , int i , double val) {
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv, nzv];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    int k;
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv, nzv];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    boolean set;
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv, nzv];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    set = 0;
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv, nzv];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv, nzv];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv, nzv];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    for (k = 1; k <= *nzv; k++) {
        /*OUT: [ptsTo(v) := [v.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzv) := [nzv, nzv];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        if (iv[k] == i) {
            /*OUT: [ptsTo(v) := [v.f];
            ptsTo(iv) := [iv.f];
            ptsTo(nzv) := [nzv, nzv];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            v[k] = val;
            /*OUT: [ptsTo(v) := [v.f];
            ptsTo(iv) := [iv.f];
            ptsTo(nzv) := [nzv, nzv];
            ptsTo(colidx.f) := [nullCell];
            ]*/
            set = 1;
        }
    }
    /*OUT: [ptsTo(v) := [v.f];
    ptsTo(iv) := [iv.f];
    ptsTo(nzv) := [nzv, nzv];
    ptsTo(colidx.f) := [nullCell];
    ]*/
    if (set == 0) {
        /*OUT: [ptsTo(v) := [v.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzv) := [nzv, nzv];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        *nzv = *nzv + 1;
        /*OUT: [ptsTo(v) := [v.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzv) := [nzv, nzv];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        v[*nzv] = val;
        /*OUT: [ptsTo(v) := [v.f];
        ptsTo(iv) := [iv.f];
        ptsTo(nzv) := [nzv, nzv];
        ptsTo(colidx.f) := [nullCell];
        ]*/
        iv[*nzv] = i;
    }
}
