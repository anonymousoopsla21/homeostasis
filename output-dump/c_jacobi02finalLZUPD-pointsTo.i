struct __sFILEX ;
int printf(const char *restrict , ...);
extern double sqrt(double );
void free(void *);
struct fssearchblock ;
struct searchstate ;
extern int omp_get_max_threads(void );
void OSCR_init(int numThreads, char *description , char *usage , int numArgs , char *argNames[] , char *defaultValues[] , int numTimers , int numReportedTimers , char *reportedTimerNames[] , int argc , char *argv[]);
extern int OSCR_getarg_int(int ind);
extern double OSCR_getarg_double(int ind);
extern void OSCR_timer_start(int );
extern void OSCR_timer_stop(int );
extern double OSCR_timer_read(int );
extern void OSCR_report();
int n;
int m;
int mits;
double tol;
double relax;
double alpha;
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(dx) := [dx];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(dy) := [dy];
ptsTo(dx) := [dx];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(dy) := [dy];
ptsTo(u) := [nullCell];
ptsTo(dx) := [dx];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(dy) := [dy];
ptsTo(u) := [nullCell];
ptsTo(dx) := [dx];
ptsTo(f) := [nullCell];
]*/
void initialize(int n, int m , double alpha , double *dx , double *dy , double *u , double *f) {
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(dy) := [dy];
    ptsTo(u) := [nullCell];
    ptsTo(dx) := [dx];
    ptsTo(f) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(dy) := [dy];
    ptsTo(u) := [nullCell];
    ptsTo(dx) := [dx];
    ptsTo(f) := [nullCell];
    ]*/
    int j;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(dy) := [dy];
    ptsTo(u) := [nullCell];
    ptsTo(dx) := [dx];
    ptsTo(f) := [nullCell];
    ]*/
    int xx;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(dy) := [dy];
    ptsTo(u) := [nullCell];
    ptsTo(dx) := [dx];
    ptsTo(f) := [nullCell];
    ]*/
    int yy;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(dy) := [dy];
    ptsTo(u) := [nullCell];
    ptsTo(dx) := [dx];
    ptsTo(f) := [nullCell];
    ]*/
    *dx = 2.0 / (n - 1);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(dy) := [dy];
    ptsTo(u) := [nullCell];
    ptsTo(dx) := [dx];
    ptsTo(f) := [nullCell];
    ]*/
    *dy = 2.0 / (m - 1);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(dy) := [dy];
    ptsTo(u) := [nullCell];
    ptsTo(dx) := [dx];
    ptsTo(f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(dy) := [dy];
    ptsTo(u) := [nullCell];
    ptsTo(dx) := [dx];
    ptsTo(f) := [nullCell];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(dy) := [dy];
    ptsTo(u) := [nullCell];
    ptsTo(dx) := [dx];
    ptsTo(f) := [nullCell];
    ]*/
    for (j = 0; j < m; j++) {
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(dy) := [dy];
        ptsTo(u) := [nullCell];
        ptsTo(dx) := [dx];
        ptsTo(f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(dy) := [dy];
        ptsTo(u) := [nullCell];
        ptsTo(dx) := [dx];
        ptsTo(f) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(dy) := [dy];
        ptsTo(u) := [nullCell];
        ptsTo(dx) := [dx];
        ptsTo(f) := [nullCell];
        ]*/
        for (i = 0; i < n; i++) {
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(dy) := [dy];
            ptsTo(u) := [nullCell];
            ptsTo(dx) := [dx];
            ptsTo(f) := [nullCell];
            ]*/
            xx = -1.0 + *dx * (i - 1);
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(dy) := [dy];
            ptsTo(u) := [nullCell];
            ptsTo(dx) := [dx];
            ptsTo(f) := [nullCell];
            ]*/
            yy = -1.0 + *dy * (j - 1);
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(dy) := [dy];
            ptsTo(u) := [nullCell];
            ptsTo(dx) := [dx];
            ptsTo(f) := [nullCell];
            ]*/
            u[j * n + i] = 0.0;
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(dy) := [dy];
            ptsTo(u) := [nullCell];
            ptsTo(dx) := [dx];
            ptsTo(f) := [nullCell];
            ]*/
            f[j * n + i] = -alpha * (1.0 - xx * xx) * (1.0 - yy * yy) - 2.0 * (1.0 - xx * xx) - 2.0 * (1.0 - yy * yy);
        }
    }
}
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(u) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(f) := [nullCell];
ptsTo(u) := [nullCell];
]*/
void error_check(int n, int m , double alpha , double dx , double dy , double *u , double *f) {
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    int j;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    double xx;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    double yy;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    double temp;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    double error;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    dx = 2.0 / (n - 1);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    dy = 2.0 / (n - 2);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    error = 0.0;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    for (j = 0; j < m; j++) {
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(f) := [nullCell];
        ptsTo(u) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(f) := [nullCell];
        ptsTo(u) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(f) := [nullCell];
        ptsTo(u) := [nullCell];
        ]*/
        for (i = 0; i < n; i++) {
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(u) := [nullCell];
            ]*/
            xx = -1.0 + dx * (i - 1);
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(u) := [nullCell];
            ]*/
            yy = -1.0 + dy * (j - 1);
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(u) := [nullCell];
            ]*/
            temp = u[j * n + i] - (1.0 - xx * xx) * (1.0 - yy * yy);
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(u) := [nullCell];
            ]*/
            error += temp * temp;
        }
    }
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    double _imopVarPre142;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    _imopVarPre142 = sqrt(error);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    error = _imopVarPre142 / (n * m);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
    printf("Solution Error : %g\n", error);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(u) := [nullCell];
    ]*/
}
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(argv) := [heapCell#0];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(argv) := [heapCell#0];
]*/
int main(int argc, char **argv) {
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double *u;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double *f;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double dx;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double dy;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double dt;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double mflops;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int NUMTHREADS;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    char *PARAM_NAMES[6] = {"Grid dimension: X dir =", "Grid dimension: Y dir =" , "Helmhotlz constant =" , "Successive over-relaxation parameter =" , "error tolerance for iterative solver =" , "Maximum iterations for solver ="};
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    char *TIMERS_NAMES[1] = {"Total_time"};
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    char *DEFAULT_VALUES[6] = {"5000", "5000" , "0.8" , "1.0" , "1e-7" , "1000"};
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    NUMTHREADS = omp_get_max_threads();
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    OSCR_init(NUMTHREADS, "Jacobi Solver v1", "Use 'jacobi02' <n> <m> <alpha> <relax> <tol> <mits>", 6, PARAM_NAMES, DEFAULT_VALUES, 1, 1, TIMERS_NAMES, argc, argv);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    n = OSCR_getarg_int(1);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    m = OSCR_getarg_int(2);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    alpha = OSCR_getarg_double(3);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    relax = OSCR_getarg_double(4);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    tol = OSCR_getarg_double(5);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    mits = OSCR_getarg_int(6);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    printf("-> %d, %d, %g, %g, %g, %d\n", n, m, alpha, relax, tol, mits);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre145;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre146;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre145 = n * m * sizeof(double);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre146 = OSCR_malloc(_imopVarPre145);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    u = (double *) _imopVarPre146;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre149;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre150;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre149 = n * m * sizeof(double);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre150 = OSCR_malloc(_imopVarPre149);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    f = (double *) _imopVarPre150;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double *_imopVarPre153;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [nullCell];
    ptsTo(_imopVarPre154) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double *_imopVarPre154;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre153 = &dy;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre154 = &dx;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    initialize(n, m, alpha, _imopVarPre154, _imopVarPre153, u, f);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    OSCR_timer_start(0);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double omega;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int maxit;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    omega = relax;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    maxit = mits;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int i;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int j;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int k;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double error;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double resid;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ax;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ay;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double b;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    double *uold;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    unsigned long int _imopVarPre157;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    int _imopVarPre158;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    _imopVarPre157 = sizeof(double) * n * m;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    _imopVarPre158 = OSCR_malloc(_imopVarPre157);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    uold = (double *) _imopVarPre158;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    ax = 1.0 / (dx * dx);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    ay = 1.0 / (dy * dy);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    b = -2.0 / (dx * dx) - 2.0 / (dy * dy) - alpha;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    error = 10.0 * tol;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    k = 1;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    int _imopVarPre160;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    _imopVarPre160 = k <= maxit;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    if (_imopVarPre160) {
        /*OUT: [ptsTo(u) := [nullCell];
        ptsTo(f) := [nullCell];
        ptsTo(_imopVarPre153) := [dy];
        ptsTo(_imopVarPre154) := [dx];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(uold) := [nullCell];
        ]*/
        _imopVarPre160 = error > tol;
    }
#pragma omp parallel private(resid, i)
    {
        /*OUT: [ptsTo(u) := [nullCell];
        ptsTo(f) := [nullCell];
        ptsTo(_imopVarPre153) := [dy];
        ptsTo(_imopVarPre154) := [dx];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(uold) := [nullCell];
        ]*/
        while (_imopVarPre160) {
#pragma omp master
            {
                /*OUT: [ptsTo(u) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(_imopVarPre153) := [dy];
                ptsTo(_imopVarPre154) := [dx];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(uold) := [nullCell];
                ]*/
                error = 0.0;
            }
            /*OUT: [ptsTo(u) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(_imopVarPre153) := [dy];
            ptsTo(_imopVarPre154) := [dx];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(uold) := [nullCell];
            ]*/
            double _imopVarPre162;
#pragma omp for nowait
            /*OUT: [ptsTo(u) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(_imopVarPre153) := [dy];
            ptsTo(_imopVarPre154) := [dx];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(uold) := [nullCell];
            ]*/
            /*OUT: [ptsTo(u) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(_imopVarPre153) := [dy];
            ptsTo(_imopVarPre154) := [dx];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(uold) := [nullCell];
            ]*/
            /*OUT: [ptsTo(u) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(_imopVarPre153) := [dy];
            ptsTo(_imopVarPre154) := [dx];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(uold) := [nullCell];
            ]*/
            for (j = 0; j < m; j++) {
                /*OUT: [ptsTo(u) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(_imopVarPre153) := [dy];
                ptsTo(_imopVarPre154) := [dx];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(uold) := [nullCell];
                ]*/
                /*OUT: [ptsTo(u) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(_imopVarPre153) := [dy];
                ptsTo(_imopVarPre154) := [dx];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(uold) := [nullCell];
                ]*/
                /*OUT: [ptsTo(u) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(_imopVarPre153) := [dy];
                ptsTo(_imopVarPre154) := [dx];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(uold) := [nullCell];
                ]*/
                for (i = 0; i < n; i++) {
                    /*OUT: [ptsTo(u) := [nullCell];
                    ptsTo(f) := [nullCell];
                    ptsTo(_imopVarPre153) := [dy];
                    ptsTo(_imopVarPre154) := [dx];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(uold) := [nullCell];
                    ]*/
                    uold[i + m * j] = u[i + m * j];
                }
            }
            /*OUT: [ptsTo(u) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(_imopVarPre153) := [dy];
            ptsTo(_imopVarPre154) := [dx];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(uold) := [nullCell];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(_imopVarPre153) := [dy];
            ptsTo(_imopVarPre154) := [dx];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(uold) := [nullCell];
            ]*/
#pragma omp barrier
#pragma omp for reduction(+:error) nowait
            /*OUT: [ptsTo(u) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(_imopVarPre153) := [dy];
            ptsTo(_imopVarPre154) := [dx];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(uold) := [nullCell];
            ]*/
            /*OUT: [ptsTo(u) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(_imopVarPre153) := [dy];
            ptsTo(_imopVarPre154) := [dx];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(uold) := [nullCell];
            ]*/
            /*OUT: [ptsTo(u) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(_imopVarPre153) := [dy];
            ptsTo(_imopVarPre154) := [dx];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(uold) := [nullCell];
            ]*/
            for (j = 1; j < m - 1; j++) {
                /*OUT: [ptsTo(u) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(_imopVarPre153) := [dy];
                ptsTo(_imopVarPre154) := [dx];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(uold) := [nullCell];
                ]*/
                /*OUT: [ptsTo(u) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(_imopVarPre153) := [dy];
                ptsTo(_imopVarPre154) := [dx];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(uold) := [nullCell];
                ]*/
                /*OUT: [ptsTo(u) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(_imopVarPre153) := [dy];
                ptsTo(_imopVarPre154) := [dx];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(uold) := [nullCell];
                ]*/
                for (i = 1; i < n - 1; i++) {
                    /*OUT: [ptsTo(u) := [nullCell];
                    ptsTo(f) := [nullCell];
                    ptsTo(_imopVarPre153) := [dy];
                    ptsTo(_imopVarPre154) := [dx];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(uold) := [nullCell];
                    ]*/
                    resid = (ax * (uold[i - 1 + m * j] + uold[i + 1 + m * j]) + ay * (uold[i + m * (j - 1)] + uold[i + m * (j + 1)]) + b * uold[i + m * j] - f[i + m * j]) / b;
                    /*OUT: [ptsTo(u) := [nullCell];
                    ptsTo(f) := [nullCell];
                    ptsTo(_imopVarPre153) := [dy];
                    ptsTo(_imopVarPre154) := [dx];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(uold) := [nullCell];
                    ]*/
                    u[i + m * j] = uold[i + m * j] - omega * resid;
                    /*OUT: [ptsTo(u) := [nullCell];
                    ptsTo(f) := [nullCell];
                    ptsTo(_imopVarPre153) := [dy];
                    ptsTo(_imopVarPre154) := [dx];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(uold) := [nullCell];
                    ]*/
                    error = error + resid * resid;
                }
            }
            /*OUT: [ptsTo(u) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(_imopVarPre153) := [dy];
            ptsTo(_imopVarPre154) := [dx];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(uold) := [nullCell];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(_imopVarPre153) := [dy];
            ptsTo(_imopVarPre154) := [dx];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(uold) := [nullCell];
            ]*/
#pragma omp barrier
#pragma omp master
            {
                /*OUT: [ptsTo(u) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(_imopVarPre153) := [dy];
                ptsTo(_imopVarPre154) := [dx];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(uold) := [nullCell];
                ]*/
                k++;
                /*OUT: [ptsTo(u) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(_imopVarPre153) := [dy];
                ptsTo(_imopVarPre154) := [dx];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(uold) := [nullCell];
                ]*/
                _imopVarPre162 = sqrt(error);
                /*OUT: [ptsTo(u) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(_imopVarPre153) := [dy];
                ptsTo(_imopVarPre154) := [dx];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(uold) := [nullCell];
                ]*/
                /*OUT: [ptsTo(u) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(_imopVarPre153) := [dy];
                ptsTo(_imopVarPre154) := [dx];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(uold) := [nullCell];
                ]*/
                error = _imopVarPre162 / (n * m);
                /*OUT: [ptsTo(u) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(_imopVarPre153) := [dy];
                ptsTo(_imopVarPre154) := [dx];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(uold) := [nullCell];
                ]*/
                _imopVarPre160 = k <= maxit;
                /*OUT: [ptsTo(u) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(_imopVarPre153) := [dy];
                ptsTo(_imopVarPre154) := [dx];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(uold) := [nullCell];
                ]*/
                if (_imopVarPre160) {
                    /*OUT: [ptsTo(u) := [nullCell];
                    ptsTo(f) := [nullCell];
                    ptsTo(_imopVarPre153) := [dy];
                    ptsTo(_imopVarPre154) := [dx];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(uold) := [nullCell];
                    ]*/
                    _imopVarPre160 = error > tol;
                }
            }
            /*OUT: [ptsTo(u) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(_imopVarPre153) := [dy];
            ptsTo(_imopVarPre154) := [dx];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(uold) := [nullCell];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(_imopVarPre153) := [dy];
            ptsTo(_imopVarPre154) := [dx];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(uold) := [nullCell];
            ]*/
#pragma omp barrier
        }
    }
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    printf("Total Number of Iteratuons %d\n", k);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    printf("Residual                   %.15f\n", error);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    free(uold);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    OSCR_timer_stop(0);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    dt = OSCR_timer_read(0);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    printf(" elapsed time : %12.6f\n", dt);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    mflops = (0.000001 * mits * (m - 2) * (n - 2) * 13) / dt;
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    printf(" MFlops       : %12.6g (%d, %d, %d, %g)\n", mflops, mits, m, n, dt);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    error_check(n, m, alpha, dx, dy, u, f);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    OSCR_report(1, TIMERS_NAMES);
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    /*OUT: [ptsTo(u) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(_imopVarPre153) := [dy];
    ptsTo(_imopVarPre154) := [dx];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(uold) := [nullCell];
    ]*/
    return 0;
}
