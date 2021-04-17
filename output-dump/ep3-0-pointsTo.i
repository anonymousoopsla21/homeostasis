struct __sFILEX ;
int printf(const char *restrict , ...);
extern double log(double );
extern double fabs(double );
extern double pow(double , double );
extern double sqrt(double );
typedef int boolean;
extern double randlc(double *, double );
extern void vranlc(int , double * , double  , double *);
extern void timer_clear(int );
extern void timer_start(int );
extern void timer_stop(int );
extern double timer_read(int );
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
static double x[2 * (1 << 16)];
#pragma omp threadprivate(x)
static double q[10];
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
int main(int argc, char **argv) {
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double Mops;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double t1;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double t2;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double sx;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double sy;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double tm;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double an;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double tt;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double gc;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double dum[3] = {1.0, 1.0 , 1.0};
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int np;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int i;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int k;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int nit;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int k_offset;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int j;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int nthreads = 1;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    boolean verified;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    char size[13 + 1];
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - EP Benchmark\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre149;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double _imopVarPre150;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre153;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre154;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned int _imopVarPre155;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre149 = 24 + 1;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre150 = pow(2.0, _imopVarPre149);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre153 = 2 > 1;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    if (_imopVarPre153) {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre154 = 1;
    } else {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre154 = 0;
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre155 = __builtin_object_size(size, _imopVarPre154);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    __builtin___sprintf_chk(size, 0, _imopVarPre155, "%12.0f", _imopVarPre150);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    for (j = 13; j >= 1; j--) {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ]*/
        if (size[j] == '.') {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ]*/
            size[j] = ' ';
        }
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    printf(" Number of random numbers generated: %13s\n", size);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    verified = 0;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    np = (1 << (24 - 16));
    /*OUT: [ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double *_imopVarPre159;
    /*OUT: [ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double _imopVarPre160;
    /*OUT: [ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre161) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double *_imopVarPre161;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre159 = &(dum[2]);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre160 = dum[1];
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre161 = &(dum[0]);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    vranlc(0, _imopVarPre161, _imopVarPre160, _imopVarPre159);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double _imopVarPre164;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double *_imopVarPre165;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double _imopVarPre166;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre164 = dum[2];
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre165 = &(dum[1]);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre166 = randlc(_imopVarPre165, _imopVarPre164);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    dum[0] = _imopVarPre166;
#pragma omp parallel default(shared) private(i)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(argv) := [heapCell#0];
        ]*/
        for (i = 0; i < 2 * (1 << 16); i++) {
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(argv) := [heapCell#0];
            ]*/
            x[i] = -1.0e99;
        }
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(argv) := [heapCell#0];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(argv) := [heapCell#0];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre201;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double _imopVarPre202;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double _imopVarPre203;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double _imopVarPre204;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double _imopVarPre205;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre201 = (1.0 > 1.0);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    if (_imopVarPre201) {
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre202 = 1.0;
    } else {
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre202 = 1.0;
    }
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre203 = fabs(_imopVarPre202);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre204 = sqrt(_imopVarPre203);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre205 = log(_imopVarPre204);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    Mops = _imopVarPre205;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    timer_clear(1);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    timer_clear(2);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    timer_clear(3);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    timer_start(1);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double *_imopVarPre207;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre207 = &t1;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    vranlc(0, _imopVarPre207, 1220703125.0, x);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    t1 = 1220703125.0;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    for (i = 1; i <= 16 + 1; i++) {
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre209) := [nullCell];
        ]*/
        double *_imopVarPre209;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre209) := [nullCell];
        ]*/
        double _imopVarPre210;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre209) := [t1];
        ]*/
        _imopVarPre209 = &t1;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre209) := [t1];
        ]*/
        _imopVarPre210 = randlc(_imopVarPre209, t1);
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre209) := [t1];
        ]*/
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre209) := [t1];
        ]*/
        t2 = _imopVarPre210;
    }
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    an = t1;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    tt = 271828183.0;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    gc = 0.0;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    sx = 0.0;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    sy = 0.0;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    for (i = 0; i <= 10 - 1; i++) {
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        q[i] = 0.0;
    }
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    k_offset = -1;
#pragma omp parallel copyin(x)
    {
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        double t1;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        double t2;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        double t3;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        double t4;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        double x1;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        double x2;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        int kk;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        int i;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        int ik;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        int l;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        double qq[10];
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        for (i = 0; i < 10; i++) {
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            qq[i] = 0.0;
        }
#pragma omp for reduction(+:sx, sy) schedule(static) nowait
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        for (k = 1; k <= np; k++) {
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            kk = k_offset + k;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            t1 = 271828183.0;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            t2 = an;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            for (i = 1; i <= 100; i++) {
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
                ik = kk / 2;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
                if (2 * ik != kk) {
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre212) := [nullCell];
                    ]*/
                    double *_imopVarPre212;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre212) := [nullCell];
                    ]*/
                    double _imopVarPre213;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre212) := [t1];
                    ]*/
                    _imopVarPre212 = &t1;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre212) := [t1];
                    ]*/
                    _imopVarPre213 = randlc(_imopVarPre212, t2);
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre212) := [t1];
                    ]*/
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(_imopVarPre212) := [t1];
                    ]*/
                    t3 = _imopVarPre213;
                }
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
                if (ik == 0) {
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    break;
                }
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre215) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ]*/
                double *_imopVarPre215;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre215) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ]*/
                double _imopVarPre216;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre215) := [t2];
                ptsTo(argv) := [heapCell#0];
                ]*/
                _imopVarPre215 = &t2;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre215) := [t2];
                ptsTo(argv) := [heapCell#0];
                ]*/
                _imopVarPre216 = randlc(_imopVarPre215, t2);
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre215) := [t2];
                ptsTo(argv) := [heapCell#0];
                ]*/
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre215) := [t2];
                ptsTo(argv) := [heapCell#0];
                ]*/
                t3 = _imopVarPre216;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre215) := [t2];
                ptsTo(argv) := [heapCell#0];
                ]*/
                kk = ik;
            }
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            if (0 == 1) {
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
                timer_start(3);
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
            }
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ]*/
            double *_imopVarPre220;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [nullCell];
            ptsTo(_imopVarPre221) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ]*/
            double *_imopVarPre221;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [nullCell];
            ptsTo(_imopVarPre221) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ]*/
            int _imopVarPre222;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [x.f];
            ptsTo(_imopVarPre221) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ]*/
            _imopVarPre220 = x - 1;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [x.f];
            ptsTo(_imopVarPre221) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            _imopVarPre221 = &t1;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [x.f];
            ptsTo(_imopVarPre221) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            _imopVarPre222 = 2 * (1 << 16);
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [x.f];
            ptsTo(_imopVarPre221) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            vranlc(_imopVarPre222, _imopVarPre221, 1220703125.0, _imopVarPre220);
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [x.f];
            ptsTo(_imopVarPre221) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [x.f];
            ptsTo(_imopVarPre221) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            if (0 == 1) {
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre220) := [x.f];
                ptsTo(_imopVarPre221) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
                timer_stop(3);
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre220) := [x.f];
                ptsTo(_imopVarPre221) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
            }
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [x.f];
            ptsTo(_imopVarPre221) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            if (0 == 1) {
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre220) := [x.f];
                ptsTo(_imopVarPre221) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
                timer_start(2);
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre220) := [x.f];
                ptsTo(_imopVarPre221) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
            }
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [x.f];
            ptsTo(_imopVarPre221) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [x.f];
            ptsTo(_imopVarPre221) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [x.f];
            ptsTo(_imopVarPre221) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            for (i = 0; i < (1 << 16); i++) {
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre220) := [x.f];
                ptsTo(_imopVarPre221) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
                x1 = 2.0 * x[2 * i] - 1.0;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre220) := [x.f];
                ptsTo(_imopVarPre221) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
                x2 = 2.0 * x[2 * i + 1] - 1.0;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre220) := [x.f];
                ptsTo(_imopVarPre221) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
                t1 = (x1 * x1) + (x2 * x2);
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre220) := [x.f];
                ptsTo(_imopVarPre221) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
                if (t1 <= 1.0) {
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    double _imopVarPre227;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    double _imopVarPre228;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    double _imopVarPre229;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    _imopVarPre227 = log(t1);
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    _imopVarPre228 = -2.0 * _imopVarPre227 / t1;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    _imopVarPre229 = sqrt(_imopVarPre228);
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    t2 = _imopVarPre229;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    t3 = (x1 * t2);
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    t4 = (x2 * t2);
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    double _imopVarPre250;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    double _imopVarPre251;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    int _imopVarPre252;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    double _imopVarPre253;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    double _imopVarPre255;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    double _imopVarPre257;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    _imopVarPre250 = fabs(t3);
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    _imopVarPre251 = fabs(t4);
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    _imopVarPre252 = (_imopVarPre250 > _imopVarPre251);
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    if (_imopVarPre252) {
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(_imopVarPre220) := [x.f];
                        ptsTo(_imopVarPre221) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ]*/
                        _imopVarPre255 = fabs(t3);
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(_imopVarPre220) := [x.f];
                        ptsTo(_imopVarPre221) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ]*/
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(_imopVarPre220) := [x.f];
                        ptsTo(_imopVarPre221) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ]*/
                        _imopVarPre253 = _imopVarPre255;
                    } else {
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(_imopVarPre220) := [x.f];
                        ptsTo(_imopVarPre221) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ]*/
                        _imopVarPre257 = fabs(t4);
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(_imopVarPre220) := [x.f];
                        ptsTo(_imopVarPre221) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ]*/
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(_imopVarPre220) := [x.f];
                        ptsTo(_imopVarPre221) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ]*/
                        _imopVarPre253 = _imopVarPre257;
                    }
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    l = _imopVarPre253;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    qq[l] += 1.0;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    sx = sx + t3;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(_imopVarPre220) := [x.f];
                    ptsTo(_imopVarPre221) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ]*/
                    sy = sy + t4;
                }
            }
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(_imopVarPre220) := [x.f];
            ptsTo(_imopVarPre221) := [t1];
            ptsTo(argv) := [heapCell#0];
            ]*/
            if (0 == 1) {
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre220) := [x.f];
                ptsTo(_imopVarPre221) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
                timer_stop(2);
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(_imopVarPre220) := [x.f];
                ptsTo(_imopVarPre221) := [t1];
                ptsTo(argv) := [heapCell#0];
                ]*/
            }
        }
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ]*/
#pragma omp barrier
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        // #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
        {
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            for (i = 0; i <= 10 - 1; i++) {
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                q[i] += qq[i];
            }
        }
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        // #pragma omp dummyFlush CRITICAL_END
    }
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    for (i = 0; i <= 10 - 1; i++) {
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        gc = gc + q[i];
    }
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    timer_stop(1);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    tm = timer_read(1);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    nit = 0;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    if (24 == 24) {
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        double _imopVarPre269;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        double _imopVarPre270;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        int _imopVarPre271;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        double _imopVarPre274;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        double _imopVarPre275;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        _imopVarPre269 = (sx - (-3.247834652034740e3)) / sx;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        _imopVarPre270 = fabs(_imopVarPre269);
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        _imopVarPre271 = (_imopVarPre270 <= 1.0e-8);
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        if (_imopVarPre271) {
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            _imopVarPre274 = (sy - (-6.958407078382297e3)) / sy;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            _imopVarPre275 = fabs(_imopVarPre274);
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            _imopVarPre271 = (_imopVarPre275 <= 1.0e-8);
        }
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        if (_imopVarPre271) {
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            verified = 1;
        }
    } else {
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        if (24 == 25) {
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            double _imopVarPre287;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            double _imopVarPre288;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            int _imopVarPre289;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            double _imopVarPre292;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            double _imopVarPre293;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            _imopVarPre287 = (sx - (-2.863319731645753e3)) / sx;
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            _imopVarPre288 = fabs(_imopVarPre287);
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            _imopVarPre289 = (_imopVarPre288 <= 1.0e-8);
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            if (_imopVarPre289) {
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                _imopVarPre292 = (sy - (-6.320053679109499e3)) / sy;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                _imopVarPre293 = fabs(_imopVarPre292);
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                _imopVarPre289 = (_imopVarPre293 <= 1.0e-8);
            }
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            if (_imopVarPre289) {
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                verified = 1;
            }
        } else {
            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
            ptsTo(_imopVarPre161) := [dum.f];
            ptsTo(_imopVarPre165) := [dum.f];
            ptsTo(_imopVarPre207) := [t1];
            ptsTo(argv) := [heapCell#0];
            ptsTo(q.f) := [qq.f];
            ]*/
            if (24 == 28) {
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                double _imopVarPre305;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                double _imopVarPre306;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                int _imopVarPre307;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                double _imopVarPre310;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                double _imopVarPre311;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                _imopVarPre305 = (sx - (-4.295875165629892e3)) / sx;
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                _imopVarPre306 = fabs(_imopVarPre305);
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                _imopVarPre307 = (_imopVarPre306 <= 1.0e-8);
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                if (_imopVarPre307) {
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    _imopVarPre310 = (sy - (-1.580732573678431e4)) / sy;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    _imopVarPre311 = fabs(_imopVarPre310);
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    _imopVarPre307 = (_imopVarPre311 <= 1.0e-8);
                }
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                if (_imopVarPre307) {
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    verified = 1;
                }
            } else {
                /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                ptsTo(_imopVarPre161) := [dum.f];
                ptsTo(_imopVarPre165) := [dum.f];
                ptsTo(_imopVarPre207) := [t1];
                ptsTo(argv) := [heapCell#0];
                ptsTo(q.f) := [qq.f];
                ]*/
                if (24 == 30) {
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    double _imopVarPre323;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    double _imopVarPre324;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    int _imopVarPre325;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    double _imopVarPre328;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    double _imopVarPre329;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    _imopVarPre323 = (sx - 4.033815542441498e4) / sx;
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    _imopVarPre324 = fabs(_imopVarPre323);
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    _imopVarPre325 = (_imopVarPre324 <= 1.0e-8);
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    if (_imopVarPre325) {
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        _imopVarPre328 = (sy - (-2.660669192809235e4)) / sy;
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        _imopVarPre329 = fabs(_imopVarPre328);
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        _imopVarPre325 = (_imopVarPre329 <= 1.0e-8);
                    }
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    if (_imopVarPre325) {
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        verified = 1;
                    }
                } else {
                    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                    ptsTo(_imopVarPre161) := [dum.f];
                    ptsTo(_imopVarPre165) := [dum.f];
                    ptsTo(_imopVarPre207) := [t1];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(q.f) := [qq.f];
                    ]*/
                    if (24 == 32) {
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        double _imopVarPre341;
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        double _imopVarPre342;
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        int _imopVarPre343;
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        double _imopVarPre346;
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        double _imopVarPre347;
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        _imopVarPre341 = (sx - 4.764367927995374e4) / sx;
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        _imopVarPre342 = fabs(_imopVarPre341);
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        _imopVarPre343 = (_imopVarPre342 <= 1.0e-8);
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        if (_imopVarPre343) {
                            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                            ptsTo(_imopVarPre161) := [dum.f];
                            ptsTo(_imopVarPre165) := [dum.f];
                            ptsTo(_imopVarPre207) := [t1];
                            ptsTo(argv) := [heapCell#0];
                            ptsTo(q.f) := [qq.f];
                            ]*/
                            _imopVarPre346 = (sy - (-8.084072988043731e4)) / sy;
                            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                            ptsTo(_imopVarPre161) := [dum.f];
                            ptsTo(_imopVarPre165) := [dum.f];
                            ptsTo(_imopVarPre207) := [t1];
                            ptsTo(argv) := [heapCell#0];
                            ptsTo(q.f) := [qq.f];
                            ]*/
                            _imopVarPre347 = fabs(_imopVarPre346);
                            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                            ptsTo(_imopVarPre161) := [dum.f];
                            ptsTo(_imopVarPre165) := [dum.f];
                            ptsTo(_imopVarPre207) := [t1];
                            ptsTo(argv) := [heapCell#0];
                            ptsTo(q.f) := [qq.f];
                            ]*/
                            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                            ptsTo(_imopVarPre161) := [dum.f];
                            ptsTo(_imopVarPre165) := [dum.f];
                            ptsTo(_imopVarPre207) := [t1];
                            ptsTo(argv) := [heapCell#0];
                            ptsTo(q.f) := [qq.f];
                            ]*/
                            _imopVarPre343 = (_imopVarPre347 <= 1.0e-8);
                        }
                        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                        ptsTo(_imopVarPre161) := [dum.f];
                        ptsTo(_imopVarPre165) := [dum.f];
                        ptsTo(_imopVarPre207) := [t1];
                        ptsTo(argv) := [heapCell#0];
                        ptsTo(q.f) := [qq.f];
                        ]*/
                        if (_imopVarPre343) {
                            /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
                            ptsTo(_imopVarPre161) := [dum.f];
                            ptsTo(_imopVarPre165) := [dum.f];
                            ptsTo(_imopVarPre207) := [t1];
                            ptsTo(argv) := [heapCell#0];
                            ptsTo(q.f) := [qq.f];
                            ]*/
                            verified = 1;
                        }
                    }
                }
            }
        }
    }
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    int _imopVarPre350;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    double _imopVarPre351;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    _imopVarPre350 = 24 + 1;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    _imopVarPre351 = pow(2.0, _imopVarPre350);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    Mops = _imopVarPre351 / tm / 1000000.0;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    printf("EP Benchmark Results: \n" "CPU Time = %10.4f\n" "N = 2^%5d\n" "No. Gaussian Pairs = %15.0f\n" "Sums = %25.15e %25.15e\n" "Counts:\n", tm, 24, gc, sx, sy);
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    for (i = 0; i <= 10 - 1; i++) {
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        double _imopVarPre353;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        _imopVarPre353 = q[i];
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        printf("%3d %15.0f\n", i, _imopVarPre353);
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
    }
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    int _imopVarPre355;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    _imopVarPre355 = 24 + 1;
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    c_print_results("EP", 'S', _imopVarPre355, 0, 0, nit, nthreads, tm, Mops, "Random numbers generated", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
    ptsTo(_imopVarPre161) := [dum.f];
    ptsTo(_imopVarPre165) := [dum.f];
    ptsTo(_imopVarPre207) := [t1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(q.f) := [qq.f];
    ]*/
    if (0 == 1) {
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        double _imopVarPre357;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        _imopVarPre357 = timer_read(1);
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        printf("Total time:     %f", _imopVarPre357);
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        double _imopVarPre359;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        _imopVarPre359 = timer_read(2);
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        printf("Gaussian pairs: %f", _imopVarPre359);
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        double _imopVarPre361;
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        _imopVarPre361 = timer_read(3);
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
        printf("Random numbers: %f", _imopVarPre361);
        /*OUT: [ptsTo(_imopVarPre159) := [dum.f];
        ptsTo(_imopVarPre161) := [dum.f];
        ptsTo(_imopVarPre165) := [dum.f];
        ptsTo(_imopVarPre207) := [t1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(q.f) := [qq.f];
        ]*/
    }
}
