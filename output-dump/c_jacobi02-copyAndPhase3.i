
/*[]*/
struct __sFILEX ;
/*[]*/
int printf(const char *restrict , ...);
/*[]*/
extern double sqrt(double );
/*[]*/
void free(void *);
/*[]*/
struct fssearchblock ;
/*[]*/
struct searchstate ;
/*[]*/
extern int omp_get_max_threads(void );
/*[]*/
void OSCR_init(int numThreads, char *description , char *usage , int numArgs , char *argNames[] , char *defaultValues[] , int numTimers , int numReportedTimers , char *reportedTimerNames[] , int argc , char *argv[]);
/*[]*/
extern int OSCR_getarg_int(int ind);
/*[]*/
extern double OSCR_getarg_double(int ind);
/*[]*/
extern void OSCR_timer_start(int );
/*[]*/
extern void OSCR_timer_stop(int );
/*[]*/
extern double OSCR_timer_read(int );
/*[]*/
extern void OSCR_report();
/*[]*/
int n;
/*[]*/
int m;
/*[]*/
int mits;
/*[]*/
double tol;
/*[]*/
double relax;
/*[]*/
double alpha;
/*[]*/
/*n:n;*/
/*[]*/
/*m:m; n:n;*/
/*[]*/
/*alpha:alpha; m:m; n:n;*/
/*[]*/
/*alpha:alpha; m:m; n:n;*/
/*[]*/
/*alpha:alpha; m:m; n:n;*/
/*[]*/
/*alpha:alpha; m:m; n:n;*/
/*[]*/
/*[]*/
void initialize(int n, int m , double alpha , double *dx , double *dy , double *u , double *f) {
/*[]*/
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    int i;
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    int j;
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    int xx;
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    int yy;
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    *dx = 2.0 / (n - 1);
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    *dy = 2.0 / (m - 1);
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    /*[]*/
    for (j = 0; j < m; j++) {
    /*[]*/
        /*alpha:alpha; m:m; n:n;*/
        /*[]*/
        /*alpha:alpha; m:m; n:n;*/
        /*[]*/
        /*alpha:alpha; m:m; n:n;*/
        /*[]*/
        /*[]*/
        for (i = 0; i < n; i++) {
        /*[]*/
            /*alpha:alpha; m:m; n:n;*/
            /*[]*/
            xx = -1.0 + *dx * (i - 1);
            /*alpha:alpha; m:m; n:n;*/
            /*[]*/
            yy = -1.0 + *dy * (j - 1);
            /*alpha:alpha; m:m; n:n;*/
            /*[]*/
            u[j * n + i] = 0.0;
            /*alpha:alpha; m:m; n:n;*/
            /*[]*/
            f[j * n + i] = -alpha * (1.0 - xx * xx) * (1.0 - yy * yy) - 2.0 * (1.0 - xx * xx) - 2.0 * (1.0 - yy * yy);
        }
    }
}
/*[]*/
/*n:n;*/
/*[]*/
/*n:n; m:m;*/
/*[]*/
/*alpha:alpha; n:n; m:m;*/
/*[]*/
/*alpha:alpha; n:n; m:m;*/
/*[]*/
/*alpha:alpha; n:n; m:m;*/
/*[]*/
/*alpha:alpha; n:n; m:m;*/
/*[]*/
/*[]*/
void error_check(int n, int m , double alpha , double dx , double dy , double *u , double *f) {
/*[]*/
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    int i;
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    int j;
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    double xx;
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    double yy;
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    double temp;
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    double error;
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    dx = 2.0 / (n - 1);
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    dy = 2.0 / (n - 2);
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    error = 0.0;
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    /*[]*/
    for (j = 0; j < m; j++) {
    /*[]*/
        /*alpha:alpha; n:n; m:m;*/
        /*[]*/
        /*alpha:alpha; n:n; m:m;*/
        /*[]*/
        /*alpha:alpha; n:n; m:m;*/
        /*[]*/
        /*[]*/
        for (i = 0; i < n; i++) {
        /*[]*/
            /*alpha:alpha; n:n; m:m;*/
            /*[]*/
            xx = -1.0 + dx * (i - 1);
            /*alpha:alpha; n:n; m:m;*/
            /*[]*/
            yy = -1.0 + dy * (j - 1);
            /*alpha:alpha; n:n; m:m;*/
            /*[]*/
            temp = u[j * n + i] - (1.0 - xx * xx) * (1.0 - yy * yy);
            /*alpha:alpha; n:n; m:m;*/
            /*[]*/
            error += temp * temp;
        }
    }
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    double _imopVarPre142;
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    _imopVarPre142 = sqrt(error);
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    error = _imopVarPre142 / (n * m);
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
    printf("Solution Error : %g\n", error);
    /*alpha:alpha; n:n; m:m;*/
    /*[]*/
}
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char **argv) {
/*[]*/
    /*[]*/
    double error_imopVar77;
    /*[]*/
    double error_imopVar76;
    /*[]*/
    double *u;
    /*[]*/
    double *f;
    /*[]*/
    double dx;
    /*[]*/
    double dy;
    /*[]*/
    double dt;
    /*[]*/
    double mflops;
    /*[]*/
    int NUMTHREADS;
    /*[]*/
    char *PARAM_NAMES[6] = {"Grid dimension: X dir =", "Grid dimension: Y dir =" , "Helmhotlz constant =" , "Successive over-relaxation parameter =" , "error tolerance for iterative solver =" , "Maximum iterations for solver ="};
    /*[]*/
    char *TIMERS_NAMES[1] = {"Total_time"};
    /*[]*/
    char *DEFAULT_VALUES[6] = {"5000", "5000" , "0.8" , "1.0" , "1e-7" , "1000"};
    /*[]*/
    NUMTHREADS = omp_get_max_threads();
    /*[]*/
    /*[]*/
    OSCR_init(NUMTHREADS, "Jacobi Solver v1", "Use 'jacobi02' <n> <m> <alpha> <relax> <tol> <mits>", 6, PARAM_NAMES, DEFAULT_VALUES, 1, 1, TIMERS_NAMES, argc, argv);
    /*[]*/
    /*[]*/
    n = OSCR_getarg_int(1);
    /*[]*/
    /*[]*/
    m = OSCR_getarg_int(2);
    /*[]*/
    /*[]*/
    alpha = OSCR_getarg_double(3);
    /*[]*/
    /*[]*/
    relax = OSCR_getarg_double(4);
    /*[]*/
    /*[]*/
    tol = OSCR_getarg_double(5);
    /*[]*/
    /*[]*/
    mits = OSCR_getarg_int(6);
    /*[]*/
    /*[]*/
    printf("-> %d, %d, %g, %g, %g, %d\n", n, m, alpha, relax, tol, mits);
    /*[]*/
    /*[]*/
    unsigned long int _imopVarPre145;
    /*[]*/
    int _imopVarPre146;
    /*[]*/
    _imopVarPre145 = n * m * sizeof(double);
    /*[]*/
    _imopVarPre146 = OSCR_malloc(_imopVarPre145);
    /*[]*/
    /*[]*/
    u = (double *) _imopVarPre146;
    /*[]*/
    unsigned long int _imopVarPre149;
    /*[]*/
    int _imopVarPre150;
    /*[]*/
    _imopVarPre149 = n * m * sizeof(double);
    /*[]*/
    _imopVarPre150 = OSCR_malloc(_imopVarPre149);
    /*[]*/
    /*[]*/
    f = (double *) _imopVarPre150;
    /*[]*/
    double *_imopVarPre153;
    /*[]*/
    double *_imopVarPre154;
    /*[]*/
    _imopVarPre153 = &dy;
    /*[]*/
    _imopVarPre154 = &dx;
    /*[]*/
    initialize(n, m, alpha, _imopVarPre154, _imopVarPre153, u, f);
    /*[]*/
    /*[]*/
    OSCR_timer_start(0);
    /*[]*/
    /*[]*/
    double omega;
    /*[]*/
    int maxit;
    /*[]*/
    omega = relax;
    /*omega:relax;*/
    /*[]*/
    maxit = mits;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    int i;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    int j;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    int k;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    double error;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    double resid;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    double ax;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    double ay;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    double b;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    double *uold;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    unsigned long int _imopVarPre157;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    int _imopVarPre158;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    _imopVarPre157 = sizeof(double) * n * m;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    _imopVarPre158 = OSCR_malloc(_imopVarPre157);
    /*omega:relax; maxit:mits;*/
    /*[]*/
    /*omega:relax; maxit:mits;*/
    /*[]*/
    uold = (double *) _imopVarPre158;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    ax = 1.0 / (dx * dx);
    /*omega:relax; maxit:mits;*/
    /*[]*/
    ay = 1.0 / (dy * dy);
    /*omega:relax; maxit:mits;*/
    /*[]*/
    b = -2.0 / (dx * dx) - 2.0 / (dy * dy) - alpha;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    error = 10.0 * tol;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    k = 1;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    int _imopVarPre160;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    _imopVarPre160 = k <= maxit;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    /*[]*/
    if (_imopVarPre160) {
    /*[]*/
        /*omega:relax; maxit:mits;*/
        /*[]*/
        _imopVarPre160 = error > tol;
    }
    /*[21; ]*/
#pragma omp parallel private(resid, i)
    {
    /*[21; ]*/
        /*omega:relax; maxit:mits;*/
        /*[21; ]*/
        int whilePred_imopVar75;
        /*omega:relax; maxit:mits;*/
        /*[21; ]*/
        whilePred_imopVar75 = _imopVarPre160;
        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
        /*[21; ]*/
        /*[21; ]*/
        if (whilePred_imopVar75) {
        /*[21; ]*/
            /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
            /*[21; ]*/
            double _imopVarPre162;
            /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
            /*[21; 40; ]*/
            /*[21; ]*/
            while (1) {
            /*[21; 40; ]*/
                /*[21; 40; ]*/
#pragma omp master
                {
                /*[21; 40; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[21; 40; ]*/
                    error = 0.0;
                }
                /*[21; 40; ]*/
#pragma omp for nowait
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[21; 40; ]*/
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[21; 40; ]*/
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[21; 40; ]*/
                for (j = 0; j < m; j++) {
                /*[21; 40; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[21; 40; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[21; 40; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[21; 40; ]*/
                    /*[21; 40; ]*/
                    for (i = 0; i < n; i++) {
                    /*[21; 40; ]*/
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[21; 40; ]*/
                        uold[i + m * j] = u[i + m * j];
                    }
                }
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[21; 40; ]*/
                ;
                /*[21; 40; ]*/
#pragma omp master
                {
                /*[21; 40; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[21; 40; ]*/
                    error_imopVar76 = 0.0;
                }
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[21; 40; 41; 32; ]*/
                ;
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[21; 40; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[21; 40; ]*/
#pragma omp barrier
                /*[41; 32; ]*/
#pragma omp for reduction(+:error) nowait
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[41; 32; ]*/
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[41; 32; ]*/
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[41; 32; ]*/
                for (j = 1; j < m - 1; j++) {
                /*[41; 32; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[41; 32; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[41; 32; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[41; 32; ]*/
                    /*[41; 32; ]*/
                    for (i = 1; i < n - 1; i++) {
                    /*[41; 32; ]*/
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[41; 32; ]*/
                        resid = (ax * (uold[i - 1 + m * j] + uold[i + 1 + m * j]) + ay * (uold[i + m * (j - 1)] + uold[i + m * (j + 1)]) + b * uold[i + m * j] - f[i + m * j]) / b;
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[41; 32; ]*/
                        u[i + m * j] = uold[i + m * j] - relax * resid;
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[41; 32; ]*/
                        error = error + resid * resid;
                    }
                }
                /*[41; 32; ]*/
#pragma omp master
                {
                /*[41; 32; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[33; 34; 35; 36; 37; 41; 32; ]*/
                    error_imopVar77 = 0.0;
                }
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[41; 32; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[41; 32; ]*/
#pragma omp barrier
                /*[33; ]*/
#pragma omp master
                {
                /*[33; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[33; ]*/
                    k++;
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[33; ]*/
                    _imopVarPre162 = sqrt(error);
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[33; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[33; ]*/
                    error = _imopVarPre162 / (n * m);
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[33; ]*/
                    _imopVarPre160 = k <= mits;
                    /*omega:relax; maxit:mits;*/
                    /*[33; ]*/
                    /*[33; ]*/
                    if (_imopVarPre160) {
                    /*[33; ]*/
                        /*omega:relax; maxit:mits;*/
                        /*[33; ]*/
                        _imopVarPre160 = error > tol;
                    }
                }
                /*omega:relax; maxit:mits;*/
                /*[33; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*omega:relax; maxit:mits;*/
                /*[33; ]*/
#pragma omp barrier
                /*omega:relax; maxit:mits;*/
                /*[34; ]*/
                whilePred_imopVar75 = _imopVarPre160;
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[34; ]*/
                /*[34; ]*/
                if (!whilePred_imopVar75) {
                /*[34; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[34; ]*/
                    break;
                }
                /*[34; ]*/
#pragma omp for nowait
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[34; ]*/
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[34; ]*/
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[34; ]*/
                for (j = 0; j < m; j++) {
                /*[34; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[34; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[34; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[34; ]*/
                    /*[34; ]*/
                    for (i = 0; i < n; i++) {
                    /*[34; ]*/
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[34; ]*/
                        uold[i + m * j] = u[i + m * j];
                    }
                }
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[34; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[34; ]*/
#pragma omp barrier
                /*[35; ]*/
#pragma omp for reduction(+:error) nowait
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[35; ]*/
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[35; ]*/
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[35; ]*/
                for (j = 1; j < m - 1; j++) {
                /*[35; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[35; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[35; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[35; ]*/
                    /*[35; ]*/
                    for (i = 1; i < n - 1; i++) {
                    /*[35; ]*/
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[35; ]*/
                        resid = (ax * (uold[i - 1 + m * j] + uold[i + 1 + m * j]) + ay * (uold[i + m * (j - 1)] + uold[i + m * (j + 1)]) + b * uold[i + m * j] - f[i + m * j]) / b;
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[35; ]*/
                        u[i + m * j] = uold[i + m * j] - relax * resid;
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[35; ]*/
                        error_imopVar76 = error_imopVar76 + resid * resid;
                    }
                }
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[35; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[35; ]*/
#pragma omp barrier
                /*[36; ]*/
#pragma omp master
                {
                /*[36; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[36; ]*/
                    k++;
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[36; ]*/
                    _imopVarPre162 = sqrt(error_imopVar76);
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[36; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[36; ]*/
                    error_imopVar76 = _imopVarPre162 / (n * m);
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[36; ]*/
                    _imopVarPre160 = k <= mits;
                    /*omega:relax; maxit:mits;*/
                    /*[36; ]*/
                    /*[36; ]*/
                    if (_imopVarPre160) {
                    /*[36; ]*/
                        /*omega:relax; maxit:mits;*/
                        /*[36; ]*/
                        _imopVarPre160 = error_imopVar76 > tol;
                    }
                }
                /*omega:relax; maxit:mits;*/
                /*[36; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*omega:relax; maxit:mits;*/
                /*[36; ]*/
#pragma omp barrier
                /*omega:relax; maxit:mits;*/
                /*[37; ]*/
                whilePred_imopVar75 = _imopVarPre160;
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[37; ]*/
                /*[37; ]*/
                if (!whilePred_imopVar75) {
                /*[37; ]*/
                    /*[37; ]*/
#pragma omp single nowait
                    {
                    /*[37; ]*/
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[37; ]*/
                        error = error_imopVar76;
                    }
                    /*error:error_imopVar76; omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[37; ]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*error:error_imopVar76; omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[37; ]*/
#pragma omp barrier
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[38; ]*/
                    break;
                }
                /*[37; ]*/
#pragma omp for nowait
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[37; ]*/
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[37; ]*/
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[37; ]*/
                for (j = 0; j < m; j++) {
                /*[37; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[37; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[37; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[37; ]*/
                    /*[37; ]*/
                    for (i = 0; i < n; i++) {
                    /*[37; ]*/
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[37; ]*/
                        uold[i + m * j] = u[i + m * j];
                    }
                }
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[37; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[37; ]*/
#pragma omp barrier
                /*[38; ]*/
#pragma omp for reduction(+:error) nowait
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[38; ]*/
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[38; ]*/
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[38; ]*/
                for (j = 1; j < m - 1; j++) {
                /*[38; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[38; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[38; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[38; ]*/
                    /*[38; ]*/
                    for (i = 1; i < n - 1; i++) {
                    /*[38; ]*/
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[38; ]*/
                        resid = (ax * (uold[i - 1 + m * j] + uold[i + 1 + m * j]) + ay * (uold[i + m * (j - 1)] + uold[i + m * (j + 1)]) + b * uold[i + m * j] - f[i + m * j]) / b;
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[38; ]*/
                        u[i + m * j] = uold[i + m * j] - relax * resid;
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[38; ]*/
                        error_imopVar77 = error_imopVar77 + resid * resid;
                    }
                }
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[38; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[38; ]*/
#pragma omp barrier
                /*[39; ]*/
#pragma omp master
                {
                /*[39; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[39; ]*/
                    k++;
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[39; ]*/
                    _imopVarPre162 = sqrt(error_imopVar77);
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[39; ]*/
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[39; ]*/
                    error_imopVar77 = _imopVarPre162 / (n * m);
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[39; ]*/
                    _imopVarPre160 = k <= mits;
                    /*omega:relax; maxit:mits;*/
                    /*[39; ]*/
                    /*[39; ]*/
                    if (_imopVarPre160) {
                    /*[39; ]*/
                        /*omega:relax; maxit:mits;*/
                        /*[39; ]*/
                        _imopVarPre160 = error_imopVar77 > tol;
                    }
                }
                /*omega:relax; maxit:mits;*/
                /*[39; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*omega:relax; maxit:mits;*/
                /*[39; ]*/
#pragma omp barrier
                /*omega:relax; maxit:mits;*/
                /*[40; ]*/
                whilePred_imopVar75 = _imopVarPre160;
                /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                /*[40; ]*/
                /*[40; ]*/
                if (!whilePred_imopVar75) {
                /*[40; ]*/
                    /*[40; ]*/
                    /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp single nowait
                    {
                    /*[40; ]*/
                        /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                        /*[40; ]*/
                        error = error_imopVar77;
                    }
                    /*error:error_imopVar77; omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[40; ]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*error:error_imopVar77; omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[40; ]*/
                    /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
                    /*omega:relax; maxit:mits; whilePred_imopVar75:_imopVarPre160;*/
                    /*[41; ]*/
                    break;
                }
            }
        }
    }
    /*omega:relax; maxit:mits;*/
    /*[]*/
    printf("Total Number of Iteratuons %d\n", k);
    /*omega:relax; maxit:mits;*/
    /*[]*/
    /*omega:relax; maxit:mits;*/
    /*[]*/
    printf("Residual                   %.15f\n", error);
    /*omega:relax; maxit:mits;*/
    /*[]*/
    /*omega:relax; maxit:mits;*/
    /*[]*/
    free(uold);
    /*omega:relax; maxit:mits;*/
    /*[]*/
    /*omega:relax; maxit:mits;*/
    /*[]*/
    OSCR_timer_stop(0);
    /*omega:relax; maxit:mits;*/
    /*[]*/
    /*omega:relax; maxit:mits;*/
    /*[]*/
    dt = OSCR_timer_read(0);
    /*omega:relax; maxit:mits;*/
    /*[]*/
    /*omega:relax; maxit:mits;*/
    /*[]*/
    printf(" elapsed time : %12.6f\n", dt);
    /*omega:relax; maxit:mits;*/
    /*[]*/
    /*omega:relax; maxit:mits;*/
    /*[]*/
    mflops = (0.000001 * mits * (m - 2) * (n - 2) * 13) / dt;
    /*omega:relax; maxit:mits;*/
    /*[]*/
    printf(" MFlops       : %12.6g (%d, %d, %d, %g)\n", mflops, mits, m, n, dt);
    /*omega:relax; maxit:mits;*/
    /*[]*/
    /*omega:relax; maxit:mits;*/
    /*[]*/
    error_check(n, m, alpha, dx, dy, u, f);
    /*omega:relax; maxit:mits;*/
    /*[]*/
    /*omega:relax; maxit:mits;*/
    /*[]*/
    OSCR_report(1, TIMERS_NAMES);
    /*omega:relax; maxit:mits;*/
    /*[]*/
    /*omega:relax; maxit:mits;*/
    /*[]*/
    return 0;
}
