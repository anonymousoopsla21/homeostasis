struct __sFILEX ;
int printf(const char *restrict , ...);
extern double sqrt(double );
void free(void *);
extern char *suboptarg;
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
void initialize(int n, int m , double alpha , double *dx , double *dy , double *u , double *f) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int xx;
    /*OUT: {
    Reverse<--,>}*/
    int yy;
    /*OUT: {
    Reverse<--,>}*/
    *dx = 2.0 / (n - 1);
    /*OUT: {
    Reverse<--,>}*/
    *dy = 2.0 / (m - 1);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 16181_1; 16178_0;>}*/
    for (j = 0; j < m; j++) {
        /*OUT: {
        Reverse<--, 16178_0;>}*/
        /*OUT: {
        Reverse<--, 16178_0;>}*/
        /*OUT: {
        Reverse<--, 16181_0; 16178_0;>}*/
        for (i = 0; i < n; i++) {
            /*OUT: {
            Reverse<--, 16181_0; 16178_0;>}*/
            xx = -1.0 + *dx * (i - 1);
            /*OUT: {
            Reverse<--, 16181_0; 16178_0;>}*/
            yy = -1.0 + *dy * (j - 1);
            /*OUT: {
            Reverse<--, 16181_0; 16178_0;>}*/
            u[j * n + i] = 0.0;
            /*OUT: {
            Reverse<--, 16181_0; 16178_0;>}*/
            f[j * n + i] = -alpha * (1.0 - xx * xx) * (1.0 - yy * yy) - 2.0 * (1.0 - xx * xx) - 2.0 * (1.0 - yy * yy);
        }
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
/*OUT: {
Reverse<--,>}*/
void error_check(int n, int m , double alpha , double dx , double dy , double *u , double *f) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    double xx;
    /*OUT: {
    Reverse<--,>}*/
    double yy;
    /*OUT: {
    Reverse<--,>}*/
    double temp;
    /*OUT: {
    Reverse<--,>}*/
    double error;
    /*OUT: {
    Reverse<--,>}*/
    dx = 2.0 / (n - 1);
    /*OUT: {
    Reverse<--,>}*/
    dy = 2.0 / (n - 2);
    /*OUT: {
    Reverse<--,>}*/
    error = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 16224_1; 16221_0;>}*/
    for (j = 0; j < m; j++) {
        /*OUT: {
        Reverse<--, 16221_0;>}*/
        /*OUT: {
        Reverse<--, 16221_0;>}*/
        /*OUT: {
        Reverse<--, 16224_0; 16221_0;>}*/
        for (i = 0; i < n; i++) {
            /*OUT: {
            Reverse<--, 16224_0; 16221_0;>}*/
            xx = -1.0 + dx * (i - 1);
            /*OUT: {
            Reverse<--, 16224_0; 16221_0;>}*/
            yy = -1.0 + dy * (j - 1);
            /*OUT: {
            Reverse<--, 16224_0; 16221_0;>}*/
            temp = u[j * n + i] - (1.0 - xx * xx) * (1.0 - yy * yy);
            /*OUT: {
            Reverse<--, 16224_0; 16221_0;>}*/
            error += temp * temp;
        }
    }
    /*OUT: {
    Reverse<--, 16221_1;>}*/
    double _imopVarPre142;
    /*OUT: {
    Reverse<--, 16221_1;>}*/
    _imopVarPre142 = sqrt(error);
    /*OUT: {
    Reverse<--, 16221_1;>}*/
    /*OUT: {
    Reverse<--, 16221_1;>}*/
    error = _imopVarPre142 / (n * m);
    /*OUT: {
    Reverse<--, 16221_1;>}*/
    printf("Solution Error : %g\n", error);
    /*OUT: {
    Reverse<--, 16221_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
    double error_imopVarPre2;
    double error_imopVarPre1;
    /*OUT: {
    Reverse<--,>}*/
    double *u;
    /*OUT: {
    Reverse<--,>}*/
    double *f;
    /*OUT: {
    Reverse<--,>}*/
    double dx;
    /*OUT: {
    Reverse<--,>}*/
    double dy;
    /*OUT: {
    Reverse<--,>}*/
    double dt;
    /*OUT: {
    Reverse<--,>}*/
    double mflops;
    /*OUT: {
    Reverse<--,>}*/
    int NUMTHREADS;
    /*OUT: {
    Reverse<--,>}*/
    char *PARAM_NAMES[6] = {"Grid dimension: X dir =", "Grid dimension: Y dir =" , "Helmhotlz constant =" , "Successive over-relaxation parameter =" , "error tolerance for iterative solver =" , "Maximum iterations for solver ="};
    /*OUT: {
    Reverse<--,>}*/
    char *TIMERS_NAMES[1] = {"Total_time"};
    /*OUT: {
    Reverse<--,>}*/
    char *DEFAULT_VALUES[6] = {"5000", "5000" , "0.8" , "1.0" , "1e-7" , "1000"};
    /*OUT: {
    Reverse<--,>}*/
    NUMTHREADS = omp_get_max_threads();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    OSCR_init(NUMTHREADS, "Jacobi Solver v1", "Use 'jacobi01' <n> <m> <alpha> <relax> <tol> <mits>", 6, PARAM_NAMES, DEFAULT_VALUES, 1, 1, TIMERS_NAMES, argc, argv);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    n = OSCR_getarg_int(1);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    m = OSCR_getarg_int(2);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    alpha = OSCR_getarg_double(3);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    relax = OSCR_getarg_double(4);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    tol = OSCR_getarg_double(5);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    mits = OSCR_getarg_int(6);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("-> %d, %d, %g, %g, %g, %d\n", n, m, alpha, relax, tol, mits);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre145;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre146;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre145 = n * m * sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre146 = OSCR_malloc(_imopVarPre145);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    u = (double *) _imopVarPre146;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre149;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre150;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre149 = n * m * sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre150 = OSCR_malloc(_imopVarPre149);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    f = (double *) _imopVarPre150;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre153;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre154;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre153 = &dy;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre154 = &dx;
    /*OUT: {
    Reverse<--,>}*/
    initialize(n, m, alpha, _imopVarPre154, _imopVarPre153, u, f);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    OSCR_timer_start(0);
    /*OUT: {
    Reverse<--,>}*/
    double omega;
    int maxit;
    omega = relax;
    maxit = mits;
    int i;
    int j;
    int k;
    double error;
    double resid;
    double ax;
    double ay;
    double b;
    double *uold;
    unsigned long int _imopVarPre157;
    int _imopVarPre158;
    _imopVarPre157 = sizeof(double) * n * m;
    _imopVarPre158 = OSCR_malloc(_imopVarPre157);
    uold = (double *) _imopVarPre158;
    ax = 1.0 / (dx * dx);
    ay = 1.0 / (dy * dy);
    b = -2.0 / (dx * dx) - 2.0 / (dy * dy) - alpha;
    error = 10.0 * tol;
    k = 1;
    int _imopVarPre160;
    _imopVarPre160 = k <= maxit;
    if (_imopVarPre160) {
        _imopVarPre160 = error > tol;
    }
#pragma omp parallel private(i, resid)
    {
        int whilePred_imopVarPre0;
        whilePred_imopVarPre0 = _imopVarPre160;
        if (whilePred_imopVarPre0) {
            double _imopVarPre162;
            while (1) {
#pragma omp master
                {
                    error = 0.0;
                }
#pragma omp for nowait
                for (j = 0; j < m; j++) {
                    for (i = 0; i < n; i++) {
                        uold[i + m * j] = u[i + m * j];
                    }
                }
                ;
#pragma omp master
                {
                    error_imopVarPre1 = 0.0;
                }
                ;
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:error) nowait
                for (j = 1; j < m - 1; j++) {
                    for (i = 1; i < n - 1; i++) {
                        resid = (ax * (uold[i - 1 + m * j] + uold[i + 1 + m * j]) + ay * (uold[i + m * (j - 1)] + uold[i + m * (j + 1)]) + b * uold[i + m * j] - f[i + m * j]) / b;
                        u[i + m * j] = uold[i + m * j] - relax * resid;
                        error = error + resid * resid;
                    }
                }
#pragma omp master
                {
                    error_imopVarPre2 = 0.0;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    k++;
                    _imopVarPre162 = sqrt(error);
                    error = _imopVarPre162 / (n * m);
                    _imopVarPre160 = k <= mits;
                    if (_imopVarPre160) {
                        _imopVarPre160 = error > tol;
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                whilePred_imopVarPre0 = _imopVarPre160;
                if (!whilePred_imopVarPre0) {
                    break;
                }
#pragma omp for nowait
                for (j = 0; j < m; j++) {
                    for (i = 0; i < n; i++) {
                        uold[i + m * j] = u[i + m * j];
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:error) nowait
                for (j = 1; j < m - 1; j++) {
                    for (i = 1; i < n - 1; i++) {
                        resid = (ax * (uold[i - 1 + m * j] + uold[i + 1 + m * j]) + ay * (uold[i + m * (j - 1)] + uold[i + m * (j + 1)]) + b * uold[i + m * j] - f[i + m * j]) / b;
                        u[i + m * j] = uold[i + m * j] - relax * resid;
                        error_imopVarPre1 = error_imopVarPre1 + resid * resid;
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    k++;
                    _imopVarPre162 = sqrt(error_imopVarPre1);
                    error_imopVarPre1 = _imopVarPre162 / (n * m);
                    _imopVarPre160 = k <= mits;
                    if (_imopVarPre160) {
                        _imopVarPre160 = error_imopVarPre1 > tol;
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                whilePred_imopVarPre0 = _imopVarPre160;
                if (!whilePred_imopVarPre0) {
#pragma omp single nowait
                    {
                        error = error_imopVarPre1;
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                    break;
                }
#pragma omp for nowait
                for (j = 0; j < m; j++) {
                    for (i = 0; i < n; i++) {
                        uold[i + m * j] = u[i + m * j];
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:error) nowait
                for (j = 1; j < m - 1; j++) {
                    for (i = 1; i < n - 1; i++) {
                        resid = (ax * (uold[i - 1 + m * j] + uold[i + 1 + m * j]) + ay * (uold[i + m * (j - 1)] + uold[i + m * (j + 1)]) + b * uold[i + m * j] - f[i + m * j]) / b;
                        u[i + m * j] = uold[i + m * j] - relax * resid;
                        error_imopVarPre2 = error_imopVarPre2 + resid * resid;
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    k++;
                    _imopVarPre162 = sqrt(error_imopVarPre2);
                    error_imopVarPre2 = _imopVarPre162 / (n * m);
                    _imopVarPre160 = k <= mits;
                    if (_imopVarPre160) {
                        _imopVarPre160 = error_imopVarPre2 > tol;
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                whilePred_imopVarPre0 = _imopVarPre160;
                if (!whilePred_imopVarPre0) {
                    /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp single nowait
                    {
                        error = error_imopVarPre2;
                    }
// #pragma omp dummyFlush BARRIER_START
                    /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
                    break;
                }
            }
        }
    }
    printf("Total Number of Iterations %d\n", k);
    printf("Residual                   %.15f\n\n", error);
    free(uold);
    /*OUT: {
    Reverse<--,>}*/
    OSCR_timer_stop(0);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    dt = OSCR_timer_read(0);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf(" elapsed time : %12.6f\n", dt);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    mflops = (0.000001 * mits * (m - 2) * (n - 2) * 13) / dt;
    /*OUT: {
    Reverse<--,>}*/
    printf(" MFlops       : %12.6g (%d, %d, %d, %g)\n", mflops, mits, m, n, dt);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    error_check(n, m, alpha, dx, dy, u, f);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    OSCR_report(1, TIMERS_NAMES);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    return 0;
}
