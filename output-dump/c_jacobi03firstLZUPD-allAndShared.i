
/*READ_S: []
WRITE_S: []*/
struct __sFILEX ;
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *restrict , ...);
/*READ_S: []
WRITE_S: [sqrt]*/
extern double sqrt(double );
/*READ_S: []
WRITE_S: [free]*/
void free(void *);
/*READ_S: []
WRITE_S: [suboptarg]*/
extern char *suboptarg;
/*READ_S: []
WRITE_S: []*/
struct fssearchblock ;
/*READ_S: []
WRITE_S: []*/
struct searchstate ;
/*READ_S: []
WRITE_S: [omp_get_max_threads]*/
extern int omp_get_max_threads(void );
/*READ_S: []
WRITE_S: [OSCR_init]*/
void OSCR_init(int numThreads, char *description , char *usage , int numArgs , char *argNames[] , char *defaultValues[] , int numTimers , int numReportedTimers , char *reportedTimerNames[] , int argc , char *argv[]);
/*READ_S: []
WRITE_S: [OSCR_getarg_int]*/
extern int OSCR_getarg_int(int ind);
/*READ_S: []
WRITE_S: [OSCR_getarg_double]*/
extern double OSCR_getarg_double(int ind);
/*READ_S: []
WRITE_S: [OSCR_timer_start]*/
extern void OSCR_timer_start(int );
/*READ_S: []
WRITE_S: [OSCR_timer_stop]*/
extern void OSCR_timer_stop(int );
/*READ_S: []
WRITE_S: [OSCR_timer_read]*/
extern double OSCR_timer_read(int );
/*READ_S: []
WRITE_S: [OSCR_report]*/
extern void OSCR_report();
/*READ_S: []
WRITE_S: [n]*/
int n;
/*READ_S: []
WRITE_S: [m]*/
int m;
/*READ_S: []
WRITE_S: [mits]*/
int mits;
/*READ_S: []
WRITE_S: [tol]*/
double tol;
/*READ_S: []
WRITE_S: [relax]*/
double relax;
/*READ_S: []
WRITE_S: [alpha]*/
double alpha;
/*READ_S: []
WRITE_S: [jacobi]*/
void jacobi(int n, int m , double dx , double dy , double alpha , double omega , double *u , double *f , double tol , int maxit);
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
void initialize(int n, int m , double alpha , double *dx , double *dy , double *u , double *f) {
/*READ_S: []
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int xx;
    /*READ_S: []
    WRITE_S: []*/
    int yy;
    /*READ_S: []
    WRITE_S: []*/
    *dx = 2.0 / (n - 1);
    /*READ_S: []
    WRITE_S: []*/
    *dy = 2.0 / (m - 1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (j = 0; j < m; j++) {
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
        for (i = 0; i < n; i++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            xx = -1.0 + *dx * (i - 1);
            /*READ_S: []
            WRITE_S: []*/
            yy = -1.0 + *dy * (j - 1);
            /*READ_S: []
            WRITE_S: []*/
            u[j * n + i] = 0.0;
            /*READ_S: []
            WRITE_S: []*/
            f[j * n + i] = -alpha * (1.0 - xx * xx) * (1.0 - yy * yy) - 2.0 * (1.0 - xx * xx) - 2.0 * (1.0 - yy * yy);
        }
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [printf, sqrt]
WRITE_S: []*/
void error_check(int n, int m , double alpha , double dx , double dy , double *u , double *f) {
/*READ_S: [printf, sqrt]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    double xx;
    /*READ_S: []
    WRITE_S: []*/
    double yy;
    /*READ_S: []
    WRITE_S: []*/
    double temp;
    /*READ_S: []
    WRITE_S: []*/
    double error;
    /*READ_S: []
    WRITE_S: []*/
    dx = 2.0 / (n - 1);
    /*READ_S: []
    WRITE_S: []*/
    dy = 2.0 / (n - 2);
    /*READ_S: []
    WRITE_S: []*/
    error = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (j = 0; j < m; j++) {
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
        for (i = 0; i < n; i++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            xx = -1.0 + dx * (i - 1);
            /*READ_S: []
            WRITE_S: []*/
            yy = -1.0 + dy * (j - 1);
            /*READ_S: []
            WRITE_S: []*/
            temp = u[j * n + i] - (1.0 - xx * xx) * (1.0 - yy * yy);
            /*READ_S: []
            WRITE_S: []*/
            error += temp * temp;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre142;
    /*READ_S: [sqrt]
    WRITE_S: []*/
    _imopVarPre142 = sqrt(error);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    error = _imopVarPre142 / (n * m);
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Solution Error : %g\n", error);
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [omega, omp_get_max_threads, u, OSCR_timer_start, tol, k, OSCR_init, i, relax, OSCR_timer_stop, jacobi, initialize, _imopVarPre160, m, mits, heapCell#0, ay, sqrt, uold, error, m, OSCR_timer_read, error_check, free, OSCR_getarg_int, j, maxit, b, tol, n, printf, f, alpha, OSCR_report, OSCR_getarg_double, ax, n]
WRITE_S: [heapCell#0, m, mits, n, k, tol, alpha, relax, error]*/
int main(int argc, char **argv) {
/*READ_S: [omega, omp_get_max_threads, u, OSCR_timer_start, tol, k, OSCR_init, i, relax, OSCR_timer_stop, jacobi, initialize, _imopVarPre160, m, mits, heapCell#0, ay, sqrt, uold, error, m, OSCR_timer_read, error_check, free, OSCR_getarg_int, j, maxit, b, tol, n, printf, f, alpha, OSCR_report, OSCR_getarg_double, ax, n]
WRITE_S: [heapCell#0, m, mits, n, k, tol, alpha, relax, error]*/
    /*READ_S: []
    WRITE_S: []*/
    double *u;
    /*READ_S: []
    WRITE_S: []*/
    double *f;
    /*READ_S: []
    WRITE_S: []*/
    double dx;
    /*READ_S: []
    WRITE_S: []*/
    double dy;
    /*READ_S: []
    WRITE_S: []*/
    double dt;
    /*READ_S: []
    WRITE_S: []*/
    double mflops;
    /*READ_S: []
    WRITE_S: []*/
    int NUMTHREADS;
    /*READ_S: []
    WRITE_S: []*/
    char *PARAM_NAMES[6] = {"Grid dimension: X dir =", "Grid dimension: Y dir =" , "Helmhotlz constant =" , "Successive over-relaxation parameter =" , "error tolerance for iterative solver =" , "Maximum iterations for solver ="};
    /*READ_S: []
    WRITE_S: []*/
    char *TIMERS_NAMES[1] = {"Total_time"};
    /*READ_S: []
    WRITE_S: []*/
    char *DEFAULT_VALUES[6] = {"5000", "5000" , "0.8" , "1.0" , "1e-7" , "1000"};
    /*READ_S: [omp_get_max_threads]
    WRITE_S: []*/
    NUMTHREADS = omp_get_max_threads();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#0, OSCR_init]
    WRITE_S: [heapCell#0]*/
    OSCR_init(NUMTHREADS, "Jacobi Solver v1", "Use 'jacoib03' <n> <m> <alpha> <relax> <tol> <mits>", 6, PARAM_NAMES, DEFAULT_VALUES, 1, 1, TIMERS_NAMES, argc, argv);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [OSCR_getarg_int]
    WRITE_S: []*/
    n = OSCR_getarg_int(1);
    /*READ_S: []
    WRITE_S: [n]*/
    /*READ_S: [OSCR_getarg_int]
    WRITE_S: []*/
    m = OSCR_getarg_int(2);
    /*READ_S: []
    WRITE_S: [m]*/
    /*READ_S: [OSCR_getarg_double]
    WRITE_S: []*/
    alpha = OSCR_getarg_double(3);
    /*READ_S: []
    WRITE_S: [alpha]*/
    /*READ_S: [OSCR_getarg_double]
    WRITE_S: []*/
    relax = OSCR_getarg_double(4);
    /*READ_S: []
    WRITE_S: [relax]*/
    /*READ_S: [OSCR_getarg_double]
    WRITE_S: []*/
    tol = OSCR_getarg_double(5);
    /*READ_S: []
    WRITE_S: [tol]*/
    /*READ_S: [OSCR_getarg_int]
    WRITE_S: []*/
    mits = OSCR_getarg_int(6);
    /*READ_S: []
    WRITE_S: [mits]*/
    /*READ_S: [m, mits, n, printf, tol, alpha, relax]
    WRITE_S: []*/
    printf("-> %d, %d, %g, %g, %g, %d\n", n, m, alpha, relax, tol, mits);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre145;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre146;
    /*READ_S: [m, n]
    WRITE_S: []*/
    _imopVarPre145 = n * m * sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre146 = OSCR_malloc(_imopVarPre145);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    u = (double *) _imopVarPre146;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre149;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre150;
    /*READ_S: [m, n]
    WRITE_S: []*/
    _imopVarPre149 = n * m * sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre150 = OSCR_malloc(_imopVarPre149);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    f = (double *) _imopVarPre150;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre153;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre154;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre153 = &dy;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre154 = &dx;
    /*READ_S: [m, n, alpha, initialize]
    WRITE_S: []*/
    initialize(n, m, alpha, _imopVarPre154, _imopVarPre153, u, f);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [OSCR_timer_start]
    WRITE_S: []*/
    OSCR_timer_start(0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [m, mits, n, tol, alpha, relax, jacobi]
    WRITE_S: []*/
    jacobi(n, m, dx, dy, alpha, relax, u, f, tol, mits);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [OSCR_timer_stop]
    WRITE_S: []*/
    OSCR_timer_stop(0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [OSCR_timer_read]
    WRITE_S: []*/
    dt = OSCR_timer_read(0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" elapsed time : %12.6f\n", dt);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [mits, m, n]
    WRITE_S: []*/
    mflops = (0.000001 * mits * (m - 2) * (n - 2) * 13) / dt;
    /*READ_S: [mits, m, n, printf]
    WRITE_S: []*/
    printf(" MFlops       : %12.6g (%d, %d, %d, %g)\n", mflops, mits, m, n, dt);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [m, n, alpha, error_check]
    WRITE_S: []*/
    error_check(n, m, alpha, dx, dy, u, f);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [OSCR_report]
    WRITE_S: []*/
    OSCR_report(1, TIMERS_NAMES);
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
/*READ_S: [omega, free, u, k, j, i, maxit, b, _imopVarPre160, tol, printf, f, ay, sqrt, uold, ax, m, error, n]
WRITE_S: [k, error]*/
void jacobi(const int n, const int m , double dx , double dy , double alpha , double omega , double *u , double *f , double tol , int maxit) {
/*READ_S: [omega, free, u, k, j, i, maxit, b, _imopVarPre160, tol, printf, f, ay, sqrt, uold, ax, m, error, n]
WRITE_S: [k, error]*/
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
    double error;
    /*READ_S: []
    WRITE_S: []*/
    double resid;
    /*READ_S: []
    WRITE_S: []*/
    double ax;
    /*READ_S: []
    WRITE_S: []*/
    double ay;
    /*READ_S: []
    WRITE_S: []*/
    double b;
    /*READ_S: []
    WRITE_S: []*/
    double *uold;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre157;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre158;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre157 = sizeof(double) * n * m;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre158 = OSCR_malloc(_imopVarPre157);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    uold = (double *) _imopVarPre158;
    /*READ_S: []
    WRITE_S: []*/
    ax = 1.0 / (dx * dx);
    /*READ_S: []
    WRITE_S: []*/
    ay = 1.0 / (dy * dy);
    /*READ_S: []
    WRITE_S: []*/
    b = -2.0 / (dx * dx) - 2.0 / (dy * dy) - alpha;
    /*READ_S: []
    WRITE_S: []*/
    error = 10.0 * tol;
    /*READ_S: []
    WRITE_S: []*/
    k = 1;
    /*READ_S: [omega, u, k, j, i, maxit, b, _imopVarPre160, tol, f, ay, sqrt, uold, ax, error, m, n]
    WRITE_S: [k, error]*/
#pragma omp parallel private(resid, i)
    {
    /*READ_S: [omega, u, k, j, i, maxit, b, _imopVarPre160, tol, f, ay, sqrt, uold, ax, error, m, n]
    WRITE_S: [k, error]*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre160;
        /*READ_S: [k, maxit]
        WRITE_S: []*/
        _imopVarPre160 = k <= maxit;
        /*READ_S: [_imopVarPre160]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre160, tol, error]
        WRITE_S: []*/
        if (_imopVarPre160) {
        /*READ_S: [tol, error]
        WRITE_S: []*/
            /*READ_S: [tol, error]
            WRITE_S: []*/
            _imopVarPre160 = error > tol;
        }
        /*READ_S: [_imopVarPre160]
        WRITE_S: []*/
        /*READ_S: [omega, u, k, j, i, maxit, b, _imopVarPre160, tol, f, ay, sqrt, uold, ax, m, error, n]
        WRITE_S: [k, error]*/
        while (_imopVarPre160) {
        /*READ_S: [omega, u, k, j, i, maxit, b, _imopVarPre160, tol, f, ay, sqrt, uold, ax, m, error, n]
        WRITE_S: [k, error]*/
            /*READ_S: [u, j, uold, m, n]
            WRITE_S: []*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [m]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 0; j < m; j++) {
            /*READ_S: [u, uold, m, n]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u, uold, m, n]
                WRITE_S: []*/
                for (i = 0; i < n; i++) {
                /*READ_S: [u, uold, m]
                WRITE_S: []*/
                    /*READ_S: [u, uold, m]
                    WRITE_S: []*/
                    uold[i + m * j] = u[i + m * j];
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [omega, u, j, f, ay, i, uold, ax, m, error, b, n]
            WRITE_S: [error]*/
#pragma omp for reduction(+:error) nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [n]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i < n - 1; i++) {
            /*READ_S: [omega, u, j, f, ay, uold, ax, m, error, b]
            WRITE_S: [error]*/
                /*READ_S: [j, f, ay, uold, ax, m, b]
                WRITE_S: []*/
                resid = (ax * (uold[i - 1 + m * j] + uold[i + 1 + m * j]) + ay * (uold[i + m * (j - 1)] + uold[i + m * (j + 1)]) + b * uold[i + m * j] - f[i + m * j]) / b;
                /*READ_S: [omega, u, j, uold, m]
                WRITE_S: []*/
                u[i + m * j] = uold[i + m * j] - omega * resid;
                /*READ_S: [error]
                WRITE_S: [error]*/
                error = error + resid * resid;
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [k, sqrt, m, error, n]
            WRITE_S: [k, error]*/
#pragma omp master
            {
            /*READ_S: [k, sqrt, m, error, n]
            WRITE_S: [k, error]*/
                /*READ_S: [k]
                WRITE_S: [k]*/
                k++;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre162;
                /*READ_S: [sqrt, error]
                WRITE_S: []*/
                _imopVarPre162 = sqrt(error);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [m, n]
                WRITE_S: [error]*/
                error = _imopVarPre162 / (n * m);
            }
            /*READ_S: [k, maxit]
            WRITE_S: []*/
            _imopVarPre160 = k <= maxit;
            /*READ_S: [_imopVarPre160]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre160, tol, error]
            WRITE_S: []*/
            if (_imopVarPre160) {
            /*READ_S: [tol, error]
            WRITE_S: []*/
                /*READ_S: [tol, error]
                WRITE_S: []*/
                _imopVarPre160 = error > tol;
            }
        }
    }
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Total Number of Iteratuons %d\n", k);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Residual                   %.15f\n", error);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [free]
    WRITE_S: []*/
    free(uold);
    /*READ_S: []
    WRITE_S: []*/
}
