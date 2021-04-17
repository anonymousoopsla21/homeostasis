
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
void error_check(int n, int m , double alpha , double dx , double dy , double *u , double *f) {
/*[]*/
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    int i;
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    int j;
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    double xx;
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    double yy;
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    double temp;
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    double error;
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    dx = 2.0 / (n - 1);
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    dy = 2.0 / (n - 2);
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    error = 0.0;
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
            xx = -1.0 + dx * (i - 1);
            /*alpha:alpha; m:m; n:n;*/
            /*[]*/
            yy = -1.0 + dy * (j - 1);
            /*alpha:alpha; m:m; n:n;*/
            /*[]*/
            temp = u[j * n + i] - (1.0 - xx * xx) * (1.0 - yy * yy);
            /*alpha:alpha; m:m; n:n;*/
            /*[]*/
            error += temp * temp;
        }
    }
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    double _imopVarPre142;
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    _imopVarPre142 = sqrt(error);
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    error = _imopVarPre142 / (n * m);
    /*alpha:alpha; m:m; n:n;*/
    /*[]*/
    printf("Solution Error : %g\n", error);
    /*alpha:alpha; m:m; n:n;*/
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
    OSCR_init(NUMTHREADS, "Jacobi Solver v1", "Use 'jacobi01' <n> <m> <alpha> <relax> <tol> <mits>", 6, PARAM_NAMES, DEFAULT_VALUES, 1, 1, TIMERS_NAMES, argc, argv);
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
    /*maxit:mits; omega:relax;*/
    /*[]*/
    int i;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    int j;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    int k;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    double error;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    double resid;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    double ax;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    double ay;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    double b;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    double *uold;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    unsigned long int _imopVarPre157;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    int _imopVarPre158;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    _imopVarPre157 = sizeof(double) * n * m;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    _imopVarPre158 = OSCR_malloc(_imopVarPre157);
    /*maxit:mits; omega:relax;*/
    /*[]*/
    /*maxit:mits; omega:relax;*/
    /*[]*/
    uold = (double *) _imopVarPre158;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    ax = 1.0 / (dx * dx);
    /*maxit:mits; omega:relax;*/
    /*[]*/
    ay = 1.0 / (dy * dy);
    /*maxit:mits; omega:relax;*/
    /*[]*/
    b = -2.0 / (dx * dx) - 2.0 / (dy * dy) - alpha;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    error = 10.0 * tol;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    k = 1;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    int _imopVarPre160;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    _imopVarPre160 = k <= maxit;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    /*[]*/
    if (_imopVarPre160) {
    /*[]*/
        /*maxit:mits; omega:relax;*/
        /*[]*/
        _imopVarPre160 = error > tol;
    }
    /*[31; ]*/
#pragma omp parallel private(i, resid)
    {
    /*[31; ]*/
        /*maxit:mits; omega:relax;*/
        /*[31; ]*/
        int whilePred_imopVar75;
        /*maxit:mits; omega:relax;*/
        /*[31; ]*/
        whilePred_imopVar75 = _imopVarPre160;
        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
        /*[31; ]*/
        /*[31; ]*/
        if (whilePred_imopVar75) {
        /*[31; ]*/
            /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
            /*[31; ]*/
            double _imopVarPre162;
            /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
            /*[50; 31; ]*/
            /*[31; ]*/
            while (1) {
            /*[50; 31; ]*/
                /*[50; 31; ]*/
#pragma omp master
                {
                /*[50; 31; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[50; 31; ]*/
                    error = 0.0;
                }
                /*[50; 31; ]*/
#pragma omp for nowait
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[50; 31; ]*/
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[50; 31; ]*/
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[50; 31; ]*/
                for (j = 0; j < m; j++) {
                /*[50; 31; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[50; 31; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[50; 31; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[50; 31; ]*/
                    /*[50; 31; ]*/
                    for (i = 0; i < n; i++) {
                    /*[50; 31; ]*/
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[50; 31; ]*/
                        uold[i + m * j] = u[i + m * j];
                    }
                }
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[50; 31; ]*/
                ;
                /*[50; 31; ]*/
#pragma omp master
                {
                /*[50; 51; 42; 31; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[50; 51; 42; 31; ]*/
                    error_imopVar76 = 0.0;
                }
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[50; 51; 42; 31; ]*/
                ;
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[50; 31; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[50; 31; ]*/
#pragma omp barrier
                /*[51; 42; ]*/
#pragma omp for reduction(+:error) nowait
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[51; 42; ]*/
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[51; 42; ]*/
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[51; 42; ]*/
                for (j = 1; j < m - 1; j++) {
                /*[51; 42; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[51; 42; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[51; 42; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[51; 42; ]*/
                    /*[51; 42; ]*/
                    for (i = 1; i < n - 1; i++) {
                    /*[51; 42; ]*/
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[51; 42; ]*/
                        resid = (ax * (uold[i - 1 + m * j] + uold[i + 1 + m * j]) + ay * (uold[i + m * (j - 1)] + uold[i + m * (j + 1)]) + b * uold[i + m * j] - f[i + m * j]) / b;
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[51; 42; ]*/
                        u[i + m * j] = uold[i + m * j] - omega * resid;
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[51; 42; ]*/
                        error = error + resid * resid;
                    }
                }
                /*[51; 42; ]*/
#pragma omp master
                {
                /*[51; 42; 43; 44; 45; 46; 47; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[51; 42; 43; 44; 45; 46; 47; ]*/
                    error_imopVar77 = 0.0;
                }
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[51; 42; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[51; 42; ]*/
#pragma omp barrier
                /*[43; ]*/
#pragma omp master
                {
                /*[43; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[43; ]*/
                    k++;
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[43; ]*/
                    _imopVarPre162 = sqrt(error);
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[43; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[43; ]*/
                    error = _imopVarPre162 / (n * m);
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[43; ]*/
                    _imopVarPre160 = k <= maxit;
                    /*maxit:mits; omega:relax;*/
                    /*[43; ]*/
                    /*[43; ]*/
                    if (_imopVarPre160) {
                    /*[43; ]*/
                        /*maxit:mits; omega:relax;*/
                        /*[43; ]*/
                        _imopVarPre160 = error > tol;
                    }
                }
                /*maxit:mits; omega:relax;*/
                /*[43; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*maxit:mits; omega:relax;*/
                /*[43; ]*/
#pragma omp barrier
                /*maxit:mits; omega:relax;*/
                /*[44; ]*/
                whilePred_imopVar75 = _imopVarPre160;
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[44; ]*/
                /*[44; ]*/
                if (!whilePred_imopVar75) {
                /*[44; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[44; ]*/
                    break;
                }
                /*[44; ]*/
#pragma omp for nowait
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[44; ]*/
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[44; ]*/
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[44; ]*/
                for (j = 0; j < m; j++) {
                /*[44; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[44; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[44; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[44; ]*/
                    /*[44; ]*/
                    for (i = 0; i < n; i++) {
                    /*[44; ]*/
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[44; ]*/
                        uold[i + m * j] = u[i + m * j];
                    }
                }
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[44; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[44; ]*/
#pragma omp barrier
                /*[45; ]*/
#pragma omp for reduction(+:error) nowait
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[45; ]*/
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[45; ]*/
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[45; ]*/
                for (j = 1; j < m - 1; j++) {
                /*[45; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[45; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[45; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[45; ]*/
                    /*[45; ]*/
                    for (i = 1; i < n - 1; i++) {
                    /*[45; ]*/
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[45; ]*/
                        resid = (ax * (uold[i - 1 + m * j] + uold[i + 1 + m * j]) + ay * (uold[i + m * (j - 1)] + uold[i + m * (j + 1)]) + b * uold[i + m * j] - f[i + m * j]) / b;
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[45; ]*/
                        u[i + m * j] = uold[i + m * j] - omega * resid;
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[45; ]*/
                        error_imopVar76 = error_imopVar76 + resid * resid;
                    }
                }
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[45; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[45; ]*/
#pragma omp barrier
                /*[46; ]*/
#pragma omp master
                {
                /*[46; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[46; ]*/
                    k++;
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[46; ]*/
                    _imopVarPre162 = sqrt(error_imopVar76);
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[46; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[46; ]*/
                    error_imopVar76 = _imopVarPre162 / (n * m);
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[46; ]*/
                    _imopVarPre160 = k <= maxit;
                    /*maxit:mits; omega:relax;*/
                    /*[46; ]*/
                    /*[46; ]*/
                    if (_imopVarPre160) {
                    /*[46; ]*/
                        /*maxit:mits; omega:relax;*/
                        /*[46; ]*/
                        _imopVarPre160 = error_imopVar76 > tol;
                    }
                }
                /*maxit:mits; omega:relax;*/
                /*[46; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*maxit:mits; omega:relax;*/
                /*[46; ]*/
#pragma omp barrier
                /*maxit:mits; omega:relax;*/
                /*[47; ]*/
                whilePred_imopVar75 = _imopVarPre160;
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[47; ]*/
                /*[47; ]*/
                if (!whilePred_imopVar75) {
                /*[47; ]*/
                    /*[47; ]*/
#pragma omp single nowait
                    {
                    /*[47; ]*/
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[47; ]*/
                        error = error_imopVar76;
                    }
                    /*error:error_imopVar76; whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[47; ]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*error:error_imopVar76; whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[47; ]*/
#pragma omp barrier
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[48; ]*/
                    break;
                }
                /*[47; ]*/
#pragma omp for nowait
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[47; ]*/
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[47; ]*/
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[47; ]*/
                for (j = 0; j < m; j++) {
                /*[47; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[47; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[47; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[47; ]*/
                    /*[47; ]*/
                    for (i = 0; i < n; i++) {
                    /*[47; ]*/
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[47; ]*/
                        uold[i + m * j] = u[i + m * j];
                    }
                }
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[47; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[47; ]*/
#pragma omp barrier
                /*[48; ]*/
#pragma omp for reduction(+:error) nowait
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[48; ]*/
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[48; ]*/
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[48; ]*/
                for (j = 1; j < m - 1; j++) {
                /*[48; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[48; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[48; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[48; ]*/
                    /*[48; ]*/
                    for (i = 1; i < n - 1; i++) {
                    /*[48; ]*/
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[48; ]*/
                        resid = (ax * (uold[i - 1 + m * j] + uold[i + 1 + m * j]) + ay * (uold[i + m * (j - 1)] + uold[i + m * (j + 1)]) + b * uold[i + m * j] - f[i + m * j]) / b;
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[48; ]*/
                        u[i + m * j] = uold[i + m * j] - omega * resid;
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[48; ]*/
                        error_imopVar77 = error_imopVar77 + resid * resid;
                    }
                }
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[48; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[48; ]*/
#pragma omp barrier
                /*[49; ]*/
#pragma omp master
                {
                /*[49; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[49; ]*/
                    k++;
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[49; ]*/
                    _imopVarPre162 = sqrt(error_imopVar77);
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[49; ]*/
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[49; ]*/
                    error_imopVar77 = _imopVarPre162 / (n * m);
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[49; ]*/
                    _imopVarPre160 = k <= maxit;
                    /*maxit:mits; omega:relax;*/
                    /*[49; ]*/
                    /*[49; ]*/
                    if (_imopVarPre160) {
                    /*[49; ]*/
                        /*maxit:mits; omega:relax;*/
                        /*[49; ]*/
                        _imopVarPre160 = error_imopVar77 > tol;
                    }
                }
                /*maxit:mits; omega:relax;*/
                /*[49; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*maxit:mits; omega:relax;*/
                /*[49; ]*/
#pragma omp barrier
                /*maxit:mits; omega:relax;*/
                /*[50; ]*/
                whilePred_imopVar75 = _imopVarPre160;
                /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                /*[50; ]*/
                /*[50; ]*/
                if (!whilePred_imopVar75) {
                /*[50; ]*/
                    /*[50; ]*/
                    /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp single nowait
                    {
                    /*[50; ]*/
                        /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                        /*[50; ]*/
                        error = error_imopVar77;
                    }
                    /*error:error_imopVar77; whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[50; ]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*error:error_imopVar77; whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[50; ]*/
                    /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
                    /*whilePred_imopVar75:_imopVarPre160; maxit:mits; omega:relax;*/
                    /*[51; ]*/
                    break;
                }
            }
        }
    }
    /*maxit:mits; omega:relax;*/
    /*[]*/
    printf("Total Number of Iterations %d\n", k);
    /*maxit:mits; omega:relax;*/
    /*[]*/
    /*maxit:mits; omega:relax;*/
    /*[]*/
    printf("Residual                   %.15f\n\n", error);
    /*maxit:mits; omega:relax;*/
    /*[]*/
    /*maxit:mits; omega:relax;*/
    /*[]*/
    free(uold);
    /*maxit:mits; omega:relax;*/
    /*[]*/
    /*maxit:mits; omega:relax;*/
    /*[]*/
    OSCR_timer_stop(0);
    /*maxit:mits; omega:relax;*/
    /*[]*/
    /*maxit:mits; omega:relax;*/
    /*[]*/
    dt = OSCR_timer_read(0);
    /*maxit:mits; omega:relax;*/
    /*[]*/
    /*maxit:mits; omega:relax;*/
    /*[]*/
    printf(" elapsed time : %12.6f\n", dt);
    /*maxit:mits; omega:relax;*/
    /*[]*/
    /*maxit:mits; omega:relax;*/
    /*[]*/
    mflops = (0.000001 * mits * (m - 2) * (n - 2) * 13) / dt;
    /*maxit:mits; omega:relax;*/
    /*[]*/
    printf(" MFlops       : %12.6g (%d, %d, %d, %g)\n", mflops, mits, m, n, dt);
    /*maxit:mits; omega:relax;*/
    /*[]*/
    /*maxit:mits; omega:relax;*/
    /*[]*/
    error_check(n, m, alpha, dx, dy, u, f);
    /*maxit:mits; omega:relax;*/
    /*[]*/
    /*maxit:mits; omega:relax;*/
    /*[]*/
    OSCR_report(1, TIMERS_NAMES);
    /*maxit:mits; omega:relax;*/
    /*[]*/
    /*maxit:mits; omega:relax;*/
    /*[]*/
    return 0;
}
