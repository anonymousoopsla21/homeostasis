typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __darwin_size_t size_t;
struct __sFILEX ;
int printf(const char *, ...);
extern double sin(double );
extern double sqrt(double );
typedef __darwin_time_t time_t;
struct tm *localtime(const time_t *);
size_t strftime(char *, size_t  , const char * , const struct tm *);
time_t time(time_t *);
extern int omp_get_num_threads(void );
extern int omp_get_thread_num(void );
extern int omp_get_num_procs(void );
extern double omp_get_wtime(void );
int main(int argc, char *argv[]);
double r8mat_rms(int nx, int ny , double a[161][161]);
void rhs(int nx, int ny , double f[161][161]);
void sweep(int nx, int ny , double dx , double dy , double f[161][161] , int itold , int itnew , double u[161][161] , double unew[161][161]);
void timestamp(void );
double u_exact(double x, double y);
double uxxyy_exact(double x, double y);
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char *argv[]) {
    /*OUT: {
    Reverse<--,>}*/
    int converged;
    /*OUT: {
    Reverse<--,>}*/
    double diff;
    /*OUT: {
    Reverse<--,>}*/
    double dx;
    /*OUT: {
    Reverse<--,>}*/
    double dy;
    /*OUT: {
    Reverse<--,>}*/
    double error;
    /*OUT: {
    Reverse<--,>}*/
    double f[161][161];
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int id;
    /*OUT: {
    Reverse<--,>}*/
    int itnew;
    /*OUT: {
    Reverse<--,>}*/
    int itold;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    20;
    /*OUT: {
    Reverse<--,>}*/
    int nx = 161;
    /*OUT: {
    Reverse<--,>}*/
    int ny = 161;
    /*OUT: {
    Reverse<--,>}*/
    double tolerance = 0.000001;
    /*OUT: {
    Reverse<--,>}*/
    double u[161][161];
    /*OUT: {
    Reverse<--,>}*/
    double u_norm;
    /*OUT: {
    Reverse<--,>}*/
    double udiff[161][161];
    /*OUT: {
    Reverse<--,>}*/
    double uexact[161][161];
    /*OUT: {
    Reverse<--,>}*/
    double unew[161][161];
    /*OUT: {
    Reverse<--,>}*/
    double unew_norm;
    /*OUT: {
    Reverse<--,>}*/
    double wtime;
    /*OUT: {
    Reverse<--,>}*/
    double x;
    /*OUT: {
    Reverse<--,>}*/
    double y;
    /*OUT: {
    Reverse<--,>}*/
    dx = 1.0 / (double) (nx - 1);
    /*OUT: {
    Reverse<--,>}*/
    dy = 1.0 / (double) (ny - 1);
    /*OUT: {
    Reverse<--,>}*/
    timestamp();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("POISSON_OPENMP:\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  C version\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  A program for solving the Poisson equation.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Use OpenMP for parallel execution.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre143;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre143 = omp_get_num_procs();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  The number of processors is %d\n", _imopVarPre143);
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel
    {
        /*OUT: {
        Reverse<733,>}*/
        id = omp_get_thread_num();
        /*OUT: {
        Reverse<733,>}*/
        /*OUT: {
        Reverse<733,>}*/
        if (id == 0) {
            /*OUT: {
            Reverse<733, 143_0;>}*/
            int _imopVarPre145;
            /*OUT: {
            Reverse<733, 143_0;>}*/
            _imopVarPre145 = omp_get_num_threads();
            /*OUT: {
            Reverse<733, 143_0;>}*/
            /*OUT: {
            Reverse<733, 143_0;>}*/
            printf("  The maximum number of threads is %d\n", _imopVarPre145);
            /*OUT: {
            Reverse<733, 143_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  -DEL^2 U = F(X,Y)\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  on the rectangle 0 <= X <= 1, 0 <= Y <= 1.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  F(X,Y) = pi^2 * ( x^2 + y^2 ) * sin ( pi * x * y )\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  The number of interior X grid points is %d\n", nx);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  The number of interior Y grid points is %d\n", ny);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  The X grid spacing is %f\n", dx);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  The Y grid spacing is %f\n", dy);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    rhs(nx, ny, f);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 220_1; 217_0;>}*/
    for (j = 0; j < ny; j++) {
        /*OUT: {
        Reverse<--, 217_0;>}*/
        /*OUT: {
        Reverse<--, 217_0;>}*/
        /*OUT: {
        Reverse<--, 220_0; 217_0;>}*/
        for (i = 0; i < nx; i++) {
            /*OUT: {
            Reverse<--, 220_0; 217_0;>}*/
            int _imopVarPre146;
            /*OUT: {
            Reverse<--, 220_0; 217_0;>}*/
            int _imopVarPre147;
            /*OUT: {
            Reverse<--, 220_0; 217_0;>}*/
            int _imopVarPre148;
            /*OUT: {
            Reverse<--, 220_0; 217_0;>}*/
            _imopVarPre146 = i == 0;
            /*OUT: {
            Reverse<--, 220_0; 217_0;>}*/
            if (!_imopVarPre146) {
                /*OUT: {
                Reverse<--, 227_0; 220_0; 217_0;>}*/
                _imopVarPre147 = i == nx - 1;
                /*OUT: {
                Reverse<--, 227_0; 220_0; 217_0;>}*/
                if (!_imopVarPre147) {
                    /*OUT: {
                    Reverse<--, 230_0; 227_0; 220_0; 217_0;>}*/
                    _imopVarPre148 = j == 0;
                    /*OUT: {
                    Reverse<--, 230_0; 227_0; 220_0; 217_0;>}*/
                    if (!_imopVarPre148) {
                        /*OUT: {
                        Reverse<--, 233_0; 230_0; 227_0; 220_0; 217_0;>}*/
                        _imopVarPre148 = j == ny - 1;
                    }
                    /*OUT: {
                    Reverse<--, 230_0; 227_0; 220_0; 217_0;>}*/
                    _imopVarPre147 = _imopVarPre148;
                }
                /*OUT: {
                Reverse<--, 227_0; 220_0; 217_0;>}*/
                _imopVarPre146 = _imopVarPre147;
            }
            /*OUT: {
            Reverse<--, 220_0; 217_0;>}*/
            if (_imopVarPre146) {
                /*OUT: {
                Reverse<--, 240_0; 220_0; 217_0;>}*/
                unew[i][j] = f[i][j];
            } else {
                /*OUT: {
                Reverse<--, 240_1; 220_0; 217_0;>}*/
                unew[i][j] = 0.0;
            }
        }
    }
    /*OUT: {
    Reverse<--, 217_1;>}*/
    unew_norm = r8mat_rms(nx, ny, unew);
    /*OUT: {
    Reverse<--, 217_1;>}*/
    /*OUT: {
    Reverse<--, 217_1;>}*/
    /*OUT: {
    Reverse<--, 217_1;>}*/
    /*OUT: {
    Reverse<--, 264_1; 258_0; 217_1;>}*/
    for (j = 0; j < ny; j++) {
        /*OUT: {
        Reverse<--, 258_0; 217_1;>}*/
        y = (double) j / (double) (ny - 1);
        /*OUT: {
        Reverse<--, 258_0; 217_1;>}*/
        /*OUT: {
        Reverse<--, 258_0; 217_1;>}*/
        /*OUT: {
        Reverse<--, 264_0; 258_0; 217_1;>}*/
        for (i = 0; i < nx; i++) {
            /*OUT: {
            Reverse<--, 264_0; 258_0; 217_1;>}*/
            x = (double) i / (double) (nx - 1);
            /*OUT: {
            Reverse<--, 264_0; 258_0; 217_1;>}*/
            double _imopVarPre149;
            /*OUT: {
            Reverse<--, 264_0; 258_0; 217_1;>}*/
            _imopVarPre149 = u_exact(x, y);
            /*OUT: {
            Reverse<--, 264_0; 258_0; 217_1;>}*/
            /*OUT: {
            Reverse<--, 264_0; 258_0; 217_1;>}*/
            uexact[i][j] = _imopVarPre149;
        }
    }
    /*OUT: {
    Reverse<--, 258_1; 217_1;>}*/
    u_norm = r8mat_rms(nx, ny, uexact);
    /*OUT: {
    Reverse<--, 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 258_1; 217_1;>}*/
    printf("  RMS of exact solution = %g\n", u_norm);
    /*OUT: {
    Reverse<--, 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 258_1; 217_1;>}*/
    converged = 0;
    /*OUT: {
    Reverse<--, 258_1; 217_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 258_1; 217_1;>}*/
    printf("  Step    ||Unew||     ||Unew-U||     ||Unew-Exact||\n");
    /*OUT: {
    Reverse<--, 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 258_1; 217_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 312_1; 309_0; 258_1; 217_1;>}*/
    for (j = 0; j < ny; j++) {
        /*OUT: {
        Reverse<--, 309_0; 258_1; 217_1;>}*/
        /*OUT: {
        Reverse<--, 309_0; 258_1; 217_1;>}*/
        /*OUT: {
        Reverse<--, 312_0; 309_0; 258_1; 217_1;>}*/
        for (i = 0; i < nx; i++) {
            /*OUT: {
            Reverse<--, 312_0; 309_0; 258_1; 217_1;>}*/
            udiff[i][j] = unew[i][j] - uexact[i][j];
        }
    }
    /*OUT: {
    Reverse<--, 309_1; 258_1; 217_1;>}*/
    error = r8mat_rms(nx, ny, udiff);
    /*OUT: {
    Reverse<--, 309_1; 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 309_1; 258_1; 217_1;>}*/
    printf("  %4d  %14g                  %14g\n", 0, unew_norm, error);
    /*OUT: {
    Reverse<--, 309_1; 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 309_1; 258_1; 217_1;>}*/
    wtime = omp_get_wtime();
    /*OUT: {
    Reverse<--, 309_1; 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 309_1; 258_1; 217_1;>}*/
    itnew = 0;
    for (; ; ) {
        /*OUT: {
        Reverse<--, 309_1; 258_1; 217_1;>}*/
        itold = itnew;
        /*OUT: {
        Reverse<--, 309_1; 258_1; 217_1;>}*/
        itnew = itold + 500;
        /*OUT: {
        Reverse<--, 309_1; 258_1; 217_1;>}*/
        sweep(nx, ny, dx, dy, f, itold, itnew, u, unew);
        /*OUT: {
        Reverse<--, 309_1; 258_1; 217_1;>}*/
        /*OUT: {
        Reverse<--, 309_1; 258_1; 217_1;>}*/
        u_norm = unew_norm;
        /*OUT: {
        Reverse<--, 309_1; 258_1; 217_1;>}*/
        unew_norm = r8mat_rms(nx, ny, unew);
        /*OUT: {
        Reverse<--, 309_1; 258_1; 217_1;>}*/
        /*OUT: {
        Reverse<--, 309_1; 258_1; 217_1;>}*/
        /*OUT: {
        Reverse<--, 309_1; 258_1; 217_1;>}*/
        /*OUT: {
        Reverse<--, 362_1; 359_0; 309_1; 258_1; 217_1;>}*/
        for (j = 0; j < ny; j++) {
            /*OUT: {
            Reverse<--, 359_0; 309_1; 258_1; 217_1;>}*/
            /*OUT: {
            Reverse<--, 359_0; 309_1; 258_1; 217_1;>}*/
            /*OUT: {
            Reverse<--, 362_0; 359_0; 309_1; 258_1; 217_1;>}*/
            for (i = 0; i < nx; i++) {
                /*OUT: {
                Reverse<--, 362_0; 359_0; 309_1; 258_1; 217_1;>}*/
                udiff[i][j] = unew[i][j] - u[i][j];
            }
        }
        /*OUT: {
        Reverse<--, 359_1; 309_1; 258_1; 217_1;>}*/
        diff = r8mat_rms(nx, ny, udiff);
        /*OUT: {
        Reverse<--, 359_1; 309_1; 258_1; 217_1;>}*/
        /*OUT: {
        Reverse<--, 359_1; 309_1; 258_1; 217_1;>}*/
        /*OUT: {
        Reverse<--, 359_1; 309_1; 258_1; 217_1;>}*/
        /*OUT: {
        Reverse<--, 382_1; 379_0; 359_1; 309_1; 258_1; 217_1;>}*/
        for (j = 0; j < ny; j++) {
            /*OUT: {
            Reverse<--, 379_0; 359_1; 309_1; 258_1; 217_1;>}*/
            /*OUT: {
            Reverse<--, 379_0; 359_1; 309_1; 258_1; 217_1;>}*/
            /*OUT: {
            Reverse<--, 382_0; 379_0; 359_1; 309_1; 258_1; 217_1;>}*/
            for (i = 0; i < nx; i++) {
                /*OUT: {
                Reverse<--, 382_0; 379_0; 359_1; 309_1; 258_1; 217_1;>}*/
                udiff[i][j] = unew[i][j] - uexact[i][j];
            }
        }
        /*OUT: {
        Reverse<--, 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
        error = r8mat_rms(nx, ny, udiff);
        /*OUT: {
        Reverse<--, 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
        /*OUT: {
        Reverse<--, 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
        printf("  %4d  %14g  %14g  %14g\n", itnew, unew_norm, diff, error);
        /*OUT: {
        Reverse<--, 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
        /*OUT: {
        Reverse<--, 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
        if (diff <= tolerance) {
            /*OUT: {
            Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
            converged = 1;
            /*OUT: {
            Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
            break;
        }
    }
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    if (converged) {
        /*OUT: {
        Reverse<--, 407_0; 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
        printf("  The iteration has converged.\n");
        /*OUT: {
        Reverse<--, 407_0; 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 407_1; 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
        printf("  The iteration has NOT converged.\n");
        /*OUT: {
        Reverse<--, 407_1; 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    }
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    double _imopVarPre151;
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    _imopVarPre151 = omp_get_wtime();
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    wtime = _imopVarPre151 - wtime;
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    printf("  Elapsed seconds = %g\n", wtime);
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    printf("POISSON_OPENMP:\n");
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    printf("  Normal end of execution.\n");
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    timestamp();
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    /*OUT: {
    Reverse<--, 403_0; 379_1; 359_1; 309_1; 258_1; 217_1;>}*/
    return 0;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
double r8mat_rms(int nx, int ny , double a[161][161]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    double v;
    /*OUT: {
    Reverse<--,>}*/
    v = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 476_1; 473_0;>}*/
    for (j = 0; j < ny; j++) {
        /*OUT: {
        Reverse<--, 473_0;>}*/
        /*OUT: {
        Reverse<--, 473_0;>}*/
        /*OUT: {
        Reverse<--, 476_0; 473_0;>}*/
        for (i = 0; i < nx; i++) {
            /*OUT: {
            Reverse<--, 476_0; 473_0;>}*/
            v = v + a[i][j] * a[i][j];
        }
    }
    /*OUT: {
    Reverse<--, 473_1;>}*/
    double _imopVarPre153;
    /*OUT: {
    Reverse<--, 473_1;>}*/
    double _imopVarPre154;
    /*OUT: {
    Reverse<--, 473_1;>}*/
    _imopVarPre153 = v / (double) (nx * ny);
    /*OUT: {
    Reverse<--, 473_1;>}*/
    _imopVarPre154 = sqrt(_imopVarPre153);
    /*OUT: {
    Reverse<--, 473_1;>}*/
    /*OUT: {
    Reverse<--, 473_1;>}*/
    v = _imopVarPre154;
    /*OUT: {
    Reverse<--, 473_1;>}*/
    return v;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void rhs(int nx, int ny , double f[161][161]) {
    /*OUT: {
    Reverse<--,>}*/
    double fnorm;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    double x;
    /*OUT: {
    Reverse<--,>}*/
    double y;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 514_1; 508_0;>}*/
    for (j = 0; j < ny; j++) {
        /*OUT: {
        Reverse<--, 508_0;>}*/
        y = (double) j / (double) (ny - 1);
        /*OUT: {
        Reverse<--, 508_0;>}*/
        /*OUT: {
        Reverse<--, 508_0;>}*/
        /*OUT: {
        Reverse<--, 514_0; 508_0;>}*/
        for (i = 0; i < nx; i++) {
            /*OUT: {
            Reverse<--, 514_0; 508_0;>}*/
            x = (double) i / (double) (nx - 1);
            /*OUT: {
            Reverse<--, 514_0; 508_0;>}*/
            int _imopVarPre155;
            /*OUT: {
            Reverse<--, 514_0; 508_0;>}*/
            int _imopVarPre156;
            /*OUT: {
            Reverse<--, 514_0; 508_0;>}*/
            int _imopVarPre157;
            /*OUT: {
            Reverse<--, 514_0; 508_0;>}*/
            _imopVarPre155 = i == 0;
            /*OUT: {
            Reverse<--, 514_0; 508_0;>}*/
            if (!_imopVarPre155) {
                /*OUT: {
                Reverse<--, 524_0; 514_0; 508_0;>}*/
                _imopVarPre156 = i == nx - 1;
                /*OUT: {
                Reverse<--, 524_0; 514_0; 508_0;>}*/
                if (!_imopVarPre156) {
                    /*OUT: {
                    Reverse<--, 527_0; 524_0; 514_0; 508_0;>}*/
                    _imopVarPre157 = j == 0;
                    /*OUT: {
                    Reverse<--, 527_0; 524_0; 514_0; 508_0;>}*/
                    if (!_imopVarPre157) {
                        /*OUT: {
                        Reverse<--, 530_0; 527_0; 524_0; 514_0; 508_0;>}*/
                        _imopVarPre157 = j == ny - 1;
                    }
                    /*OUT: {
                    Reverse<--, 527_0; 524_0; 514_0; 508_0;>}*/
                    _imopVarPre156 = _imopVarPre157;
                }
                /*OUT: {
                Reverse<--, 524_0; 514_0; 508_0;>}*/
                _imopVarPre155 = _imopVarPre156;
            }
            /*OUT: {
            Reverse<--, 514_0; 508_0;>}*/
            if (_imopVarPre155) {
                /*OUT: {
                Reverse<--, 537_0; 514_0; 508_0;>}*/
                double _imopVarPre158;
                /*OUT: {
                Reverse<--, 537_0; 514_0; 508_0;>}*/
                _imopVarPre158 = u_exact(x, y);
                /*OUT: {
                Reverse<--, 537_0; 514_0; 508_0;>}*/
                /*OUT: {
                Reverse<--, 537_0; 514_0; 508_0;>}*/
                f[i][j] = _imopVarPre158;
            } else {
                /*OUT: {
                Reverse<--, 537_1; 514_0; 508_0;>}*/
                double _imopVarPre160;
                /*OUT: {
                Reverse<--, 537_1; 514_0; 508_0;>}*/
                _imopVarPre160 = uxxyy_exact(x, y);
                /*OUT: {
                Reverse<--, 537_1; 514_0; 508_0;>}*/
                /*OUT: {
                Reverse<--, 537_1; 514_0; 508_0;>}*/
                f[i][j] = -_imopVarPre160;
            }
        }
    }
    /*OUT: {
    Reverse<--, 508_1;>}*/
    fnorm = r8mat_rms(nx, ny, f);
    /*OUT: {
    Reverse<--, 508_1;>}*/
    /*OUT: {
    Reverse<--, 508_1;>}*/
    printf("  RMS of F = %g\n", fnorm);
    /*OUT: {
    Reverse<--, 508_1;>}*/
    /*OUT: {
    Reverse<--, 508_1;>}*/
    return;
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
void sweep(int nx, int ny , double dx , double dy , double f[161][161] , int itold , int itnew , double u[161][161] , double unew[161][161]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int it;
    /*OUT: {
    Reverse<--,>}*/
    int j;
#pragma omp parallel shared(dx, dy, f, itnew, itold, nx, ny, u, unew) private(i, it, j)
    {
        /*OUT: {
        Reverse<862,>}*/
        /*OUT: {
        Reverse<862,>
        Reverse<650,>}*/
        /*OUT: {
        Reverse<650,>}*/
        for (it = itold + 1; it <= itnew; it++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<862, 585_0;>
            Reverse<650, 585_0;>}*/
            /*OUT: {
            Reverse<862, 585_0;>
            Reverse<650, 585_0;>}*/
            /*OUT: {
            Reverse<862, 593_1; 585_0;>
            Reverse<650, 593_1; 585_0;>}*/
            for (j = 0; j < ny; j++) {
                /*OUT: {
                Reverse<862, 585_0;>
                Reverse<650, 585_0;>}*/
                /*OUT: {
                Reverse<862, 585_0;>
                Reverse<650, 585_0;>}*/
                /*OUT: {
                Reverse<862, 593_0; 585_0;>
                Reverse<650, 593_0; 585_0;>}*/
                for (i = 0; i < nx; i++) {
                    /*OUT: {
                    Reverse<862, 593_0; 585_0;>
                    Reverse<650, 593_0; 585_0;>}*/
                    u[i][j] = unew[i][j];
                }
            }
            /*OUT: {
            Reverse<862, 585_0;>
            Reverse<650, 585_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<601,>}*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: {
            Reverse<601,>}*/
            /*OUT: {
            Reverse<601,>}*/
            /*OUT: {
            Reverse<601, 608_1;>}*/
            for (j = 0; j < ny; j++) {
                /*OUT: {
                Reverse<601,>}*/
                /*OUT: {
                Reverse<601,>}*/
                /*OUT: {
                Reverse<601, 608_0;>}*/
                for (i = 0; i < nx; i++) {
                    /*OUT: {
                    Reverse<601, 608_0;>}*/
                    int _imopVarPre161;
                    /*OUT: {
                    Reverse<601, 608_0;>}*/
                    int _imopVarPre162;
                    /*OUT: {
                    Reverse<601, 608_0;>}*/
                    int _imopVarPre163;
                    /*OUT: {
                    Reverse<601, 608_0;>}*/
                    _imopVarPre161 = i == 0;
                    /*OUT: {
                    Reverse<601, 608_0;>}*/
                    if (!_imopVarPre161) {
                        /*OUT: {
                        Reverse<601, 615_0; 608_0;>}*/
                        _imopVarPre162 = j == 0;
                        /*OUT: {
                        Reverse<601, 615_0; 608_0;>}*/
                        if (!_imopVarPre162) {
                            /*OUT: {
                            Reverse<601, 618_0; 615_0; 608_0;>}*/
                            _imopVarPre163 = i == nx - 1;
                            /*OUT: {
                            Reverse<601, 618_0; 615_0; 608_0;>}*/
                            if (!_imopVarPre163) {
                                /*OUT: {
                                Reverse<601, 621_0; 618_0; 615_0; 608_0;>}*/
                                _imopVarPre163 = j == ny - 1;
                            }
                            /*OUT: {
                            Reverse<601, 618_0; 615_0; 608_0;>}*/
                            _imopVarPre162 = _imopVarPre163;
                        }
                        /*OUT: {
                        Reverse<601, 615_0; 608_0;>}*/
                        _imopVarPre161 = _imopVarPre162;
                    }
                    /*OUT: {
                    Reverse<601, 608_0;>}*/
                    if (_imopVarPre161) {
                        /*OUT: {
                        Reverse<601, 628_0; 608_0;>}*/
                        unew[i][j] = f[i][j];
                    } else {
                        /*OUT: {
                        Reverse<601, 628_1; 608_0;>}*/
                        unew[i][j] = 0.25 * (u[i - 1][j] + u[i][j + 1] + u[i][j - 1] + u[i + 1][j] + f[i][j] * dx * dy);
                    }
                }
            }
            /*OUT: {
            Reverse<601,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<650,>}*/
#pragma omp barrier
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    return;
}
void timestamp() {
    /*OUT: {
    Reverse<--,>}*/
    static char time_buffer[40];
    /*OUT: {
    Reverse<--,>}*/
    const struct tm *tm;
    /*OUT: {
    Reverse<--,>}*/
    time_t now;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre165;
    /*OUT: {
    Reverse<--,>}*/
    signed long int _imopVarPre166;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre165 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre166 = time(_imopVarPre165);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    now = _imopVarPre166;
    /*OUT: {
    Reverse<--,>}*/
    signed long int *_imopVarPre168;
    /*OUT: {
    Reverse<--,>}*/
    struct tm *_imopVarPre169;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre168 = &now;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre169 = localtime(_imopVarPre168);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    tm = _imopVarPre169;
    /*OUT: {
    Reverse<--,>}*/
    strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("%s\n", time_buffer);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    return;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
double u_exact(double x, double y) {
    /*OUT: {
    Reverse<--,>}*/
    double pi = 3.141592653589793;
    /*OUT: {
    Reverse<--,>}*/
    double value;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre171;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre172;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre171 = pi * x * y;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre172 = sin(_imopVarPre171);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    value = _imopVarPre172;
    /*OUT: {
    Reverse<--,>}*/
    return value;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
double uxxyy_exact(double x, double y) {
    /*OUT: {
    Reverse<--,>}*/
    double pi = 3.141592653589793;
    /*OUT: {
    Reverse<--,>}*/
    double value;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre175;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre176;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre175 = pi * x * y;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre176 = sin(_imopVarPre175);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    value = -pi * pi * (x * x + y * y) * _imopVarPre176;
    /*OUT: {
    Reverse<--,>}*/
    return value;
}
