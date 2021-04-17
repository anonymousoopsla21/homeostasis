
/*[]*/
typedef long unsigned int __darwin_size_t;
/*[]*/
typedef long __darwin_time_t;
/*[]*/
typedef __darwin_size_t size_t;
/*[]*/
struct __sFILEX ;
/*[]*/
int printf(const char *, ...);
/*[]*/
extern double sin(double );
/*[]*/
extern double sqrt(double );
/*[]*/
typedef __darwin_time_t time_t;
/*[]*/
struct tm *localtime(const time_t *);
/*[]*/
size_t strftime(char *, size_t  , const char * , const struct tm *);
/*[]*/
time_t time(time_t *);
/*[]*/
extern int omp_get_num_threads(void );
/*[]*/
extern int omp_get_thread_num(void );
/*[]*/
extern int omp_get_num_procs(void );
/*[]*/
extern double omp_get_wtime(void );
/*[]*/
int main(int argc, char *argv[]);
/*[]*/
double r8mat_rms(int nx, int ny , double a[161][161]);
/*[]*/
void rhs(int nx, int ny , double f[161][161]);
/*[]*/
void sweep(int nx, int ny , double dx , double dy , double f[161][161] , int itold , int itnew , double u[161][161] , double unew[161][161]);
/*[]*/
void timestamp(void );
/*[]*/
double u_exact(double x, double y);
/*[]*/
double uxxyy_exact(double x, double y);
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char *argv[]) {
/*[]*/
    /*[]*/
    int converged;
    /*[]*/
    double diff;
    /*[]*/
    double dx;
    /*[]*/
    double dy;
    /*[]*/
    double error;
    /*[]*/
    double f[161][161];
    /*[]*/
    int i;
    /*[]*/
    int id;
    /*[]*/
    int itnew;
    /*[]*/
    int itold;
    /*[]*/
    int j;
    /*[]*/
    20;
    /*[]*/
    int nx = 161;
    /*[]*/
    int ny = 161;
    /*[]*/
    double tolerance = 0.000001;
    /*[]*/
    double u[161][161];
    /*[]*/
    double u_norm;
    /*[]*/
    double udiff[161][161];
    /*[]*/
    double uexact[161][161];
    /*[]*/
    double unew[161][161];
    /*[]*/
    double unew_norm;
    /*[]*/
    double wtime;
    /*[]*/
    double x;
    /*[]*/
    double y;
    /*[]*/
    dx = 1.0 / (double) (nx - 1);
    /*[]*/
    dy = 1.0 / (double) (ny - 1);
    /*[]*/
    timestamp();
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("POISSON_OPENMP:\n");
    /*[]*/
    /*[]*/
    printf("  C version\n");
    /*[]*/
    /*[]*/
    printf("  A program for solving the Poisson equation.\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  Use OpenMP for parallel execution.\n");
    /*[]*/
    /*[]*/
    int _imopVarPre143;
    /*[]*/
    _imopVarPre143 = omp_get_num_procs();
    /*[]*/
    /*[]*/
    printf("  The number of processors is %d\n", _imopVarPre143);
    /*[]*/
    /*[1]*/
#pragma omp parallel
    {
    /*[1]*/
        /*[1]*/
        id = omp_get_thread_num();
        /*[1]*/
        /*[1]*/
        /*[1]*/
        if (id == 0) {
        /*[1]*/
            /*[1]*/
            int _imopVarPre145;
            /*[1]*/
            _imopVarPre145 = omp_get_num_threads();
            /*[1]*/
            /*[1]*/
            printf("  The maximum number of threads is %d\n", _imopVarPre145);
            /*[1]*/
        }
    }
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  -DEL^2 U = F(X,Y)\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  on the rectangle 0 <= X <= 1, 0 <= Y <= 1.\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  F(X,Y) = pi^2 * ( x^2 + y^2 ) * sin ( pi * x * y )\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  The number of interior X grid points is %d\n", nx);
    /*[]*/
    /*[]*/
    printf("  The number of interior Y grid points is %d\n", ny);
    /*[]*/
    /*[]*/
    printf("  The X grid spacing is %f\n", dx);
    /*[]*/
    /*[]*/
    printf("  The Y grid spacing is %f\n", dy);
    /*[]*/
    /*[]*/
    rhs(nx, ny, f);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 0; j < ny; j++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < nx; i++) {
        /*[]*/
            /*[]*/
            int _imopVarPre146;
            /*[]*/
            int _imopVarPre147;
            /*[]*/
            int _imopVarPre148;
            /*[]*/
            _imopVarPre146 = i == 0;
            /*[]*/
            /*[]*/
            if (!_imopVarPre146) {
            /*[]*/
                /*[]*/
                _imopVarPre147 = i == nx - 1;
                /*[]*/
                /*[]*/
                if (!_imopVarPre147) {
                /*[]*/
                    /*[]*/
                    _imopVarPre148 = j == 0;
                    /*[]*/
                    /*[]*/
                    if (!_imopVarPre148) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre148 = j == ny - 1;
                    }
                    /*[]*/
                    _imopVarPre147 = _imopVarPre148;
                }
                /*[]*/
                _imopVarPre146 = _imopVarPre147;
            }
            /*[]*/
            /*[]*/
            if (_imopVarPre146) {
            /*[]*/
                /*[]*/
                unew[i][j] = f[i][j];
            } else {
            /*[]*/
                /*[]*/
                unew[i][j] = 0.0;
            }
        }
    }
    /*[]*/
    unew_norm = r8mat_rms(nx, ny, unew);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 0; j < ny; j++) {
    /*[]*/
        /*[]*/
        y = (double) j / (double) (ny - 1);
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < nx; i++) {
        /*[]*/
            /*[]*/
            x = (double) i / (double) (nx - 1);
            /*[]*/
            double _imopVarPre149;
            /*[]*/
            _imopVarPre149 = u_exact(x, y);
            /*[]*/
            /*[]*/
            uexact[i][j] = _imopVarPre149;
        }
    }
    /*[]*/
    u_norm = r8mat_rms(nx, ny, uexact);
    /*[]*/
    /*[]*/
    printf("  RMS of exact solution = %g\n", u_norm);
    /*[]*/
    /*[]*/
    converged = 0;
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  Step    ||Unew||     ||Unew-U||     ||Unew-Exact||\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 0; j < ny; j++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < nx; i++) {
        /*[]*/
            /*[]*/
            udiff[i][j] = unew[i][j] - uexact[i][j];
        }
    }
    /*[]*/
    error = r8mat_rms(nx, ny, udiff);
    /*[]*/
    /*[]*/
    printf("  %4d  %14g                  %14g\n", 0, unew_norm, error);
    /*[]*/
    /*[]*/
    wtime = omp_get_wtime();
    /*[]*/
    /*[]*/
    itnew = 0;
    /*[]*/
    for (; ; ) {
    /*[]*/
        /*[2]*/
#pragma omp parallel
        {
        /*[2]*/
            /*[2]*/
#pragma omp master
            {
            /*[2]*/
                /*[2]*/
                itold = itnew;
                /*[2]*/
                itnew = itold + 500;
            }
            /*[2]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[2]*/
#pragma omp barrier
            /*[3]*/
            sweep(nx, ny, dx, dy, f, itold, itnew, u, unew);
            /*[3]*/
            /*[3]*/
#pragma omp master
            {
            /*[3]*/
                /*[3]*/
                u_norm = unew_norm;
                /*[3]*/
                unew_norm = r8mat_rms(nx, ny, unew);
                /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                for (j = 0; j < ny; j++) {
                /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    for (i = 0; i < nx; i++) {
                    /*[3]*/
                        /*[3]*/
                        udiff[i][j] = unew[i][j] - u[i][j];
                    }
                }
                /*[3]*/
                diff = r8mat_rms(nx, ny, udiff);
                /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                for (j = 0; j < ny; j++) {
                /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    for (i = 0; i < nx; i++) {
                    /*[3]*/
                        /*[3]*/
                        udiff[i][j] = unew[i][j] - uexact[i][j];
                    }
                }
                /*[3]*/
                error = r8mat_rms(nx, ny, udiff);
                /*[3]*/
                /*[3]*/
                printf("  %4d  %14g  %14g  %14g\n", itnew, unew_norm, diff, error);
                /*[3]*/
            }
        }
        /*[]*/
        /*[]*/
        if (diff <= tolerance) {
        /*[]*/
            /*[]*/
            converged = 1;
            /*[]*/
            break;
        }
    }
    /*[]*/
    /*[]*/
    if (converged) {
    /*[]*/
        /*[]*/
        printf("  The iteration has converged.\n");
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        printf("  The iteration has NOT converged.\n");
        /*[]*/
    }
    /*[]*/
    double _imopVarPre151;
    /*[]*/
    _imopVarPre151 = omp_get_wtime();
    /*[]*/
    /*[]*/
    wtime = _imopVarPre151 - wtime;
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  Elapsed seconds = %g\n", wtime);
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("POISSON_OPENMP:\n");
    /*[]*/
    /*[]*/
    printf("  Normal end of execution.\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    timestamp();
    /*[]*/
    /*[]*/
    return 0;
}
/*[3]*/
/*[3]*/
/*[3]*/
/*[3]*/
double r8mat_rms(int nx, int ny , double a[161][161]) {
/*[3]*/
    /*[3]*/
    int i;
    /*[3]*/
    int j;
    /*[3]*/
    double v;
    /*[3]*/
    v = 0.0;
    /*[3]*/
    /*[3]*/
    /*[3]*/
    /*[3]*/
    for (j = 0; j < ny; j++) {
    /*[3]*/
        /*[3]*/
        /*[3]*/
        /*[3]*/
        /*[3]*/
        for (i = 0; i < nx; i++) {
        /*[3]*/
            /*[3]*/
            v = v + a[i][j] * a[i][j];
        }
    }
    /*[3]*/
    double _imopVarPre153;
    /*[3]*/
    double _imopVarPre154;
    /*[3]*/
    _imopVarPre153 = v / (double) (nx * ny);
    /*[3]*/
    _imopVarPre154 = sqrt(_imopVarPre153);
    /*[3]*/
    /*[3]*/
    v = _imopVarPre154;
    /*[3]*/
    return v;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void rhs(int nx, int ny , double f[161][161]) {
/*[]*/
    /*[]*/
    double fnorm;
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    double x;
    /*[]*/
    double y;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 0; j < ny; j++) {
    /*[]*/
        /*[]*/
        y = (double) j / (double) (ny - 1);
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < nx; i++) {
        /*[]*/
            /*[]*/
            x = (double) i / (double) (nx - 1);
            /*[]*/
            int _imopVarPre155;
            /*[]*/
            int _imopVarPre156;
            /*[]*/
            int _imopVarPre157;
            /*[]*/
            _imopVarPre155 = i == 0;
            /*[]*/
            /*[]*/
            if (!_imopVarPre155) {
            /*[]*/
                /*[]*/
                _imopVarPre156 = i == nx - 1;
                /*[]*/
                /*[]*/
                if (!_imopVarPre156) {
                /*[]*/
                    /*[]*/
                    _imopVarPre157 = j == 0;
                    /*[]*/
                    /*[]*/
                    if (!_imopVarPre157) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre157 = j == ny - 1;
                    }
                    /*[]*/
                    _imopVarPre156 = _imopVarPre157;
                }
                /*[]*/
                _imopVarPre155 = _imopVarPre156;
            }
            /*[]*/
            /*[]*/
            if (_imopVarPre155) {
            /*[]*/
                /*[]*/
                double _imopVarPre158;
                /*[]*/
                _imopVarPre158 = u_exact(x, y);
                /*[]*/
                /*[]*/
                f[i][j] = _imopVarPre158;
            } else {
            /*[]*/
                /*[]*/
                double _imopVarPre160;
                /*[]*/
                _imopVarPre160 = uxxyy_exact(x, y);
                /*[]*/
                /*[]*/
                f[i][j] = -_imopVarPre160;
            }
        }
    }
    /*[]*/
    fnorm = r8mat_rms(nx, ny, f);
    /*[]*/
    /*[]*/
    printf("  RMS of F = %g\n", fnorm);
    /*[]*/
    /*[]*/
    return;
}
/*[3]*/
/*[3]*/
/*[3]*/
/*[3]*/
/*[3]*/
/*[3]*/
/*[3]*/
/*[3]*/
/*[3]*/
/*[3]*/
void sweep(int nx, int ny , double dx , double dy , double f[161][161] , int itold , int itnew , double u[161][161] , double unew[161][161]) {
/*[3]*/
    {
    /*[3]*/
        /*[3]*/
        int i;
        /*[3]*/
        int it;
        /*[3]*/
        int j;
        /*[3]*/
        /*[3]*/
        /*[3]*/
        /*[3]*/
        for (it = itold + 1; it <= itnew; it++) {
        /*[3]*/
            /*[3]*/
#pragma omp for nowait
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (j = 0; j < ny; j++) {
            /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                for (i = 0; i < nx; i++) {
                /*[3]*/
                    /*[3]*/
                    u[i][j] = unew[i][j];
                }
            }
            /*[3]*/
#pragma omp for nowait
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (j = 0; j < ny; j++) {
            /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                for (i = 0; i < nx; i++) {
                /*[3]*/
                    /*[3]*/
                    int _imopVarPre161;
                    /*[3]*/
                    int _imopVarPre162;
                    /*[3]*/
                    int _imopVarPre163;
                    /*[3]*/
                    _imopVarPre161 = i == 0;
                    /*[3]*/
                    /*[3]*/
                    if (!_imopVarPre161) {
                    /*[3]*/
                        /*[3]*/
                        _imopVarPre162 = j == 0;
                        /*[3]*/
                        /*[3]*/
                        if (!_imopVarPre162) {
                        /*[3]*/
                            /*[3]*/
                            _imopVarPre163 = i == nx - 1;
                            /*[3]*/
                            /*[3]*/
                            if (!_imopVarPre163) {
                            /*[3]*/
                                /*[3]*/
                                _imopVarPre163 = j == ny - 1;
                            }
                            /*[3]*/
                            _imopVarPre162 = _imopVarPre163;
                        }
                        /*[3]*/
                        _imopVarPre161 = _imopVarPre162;
                    }
                    /*[3]*/
                    /*[3]*/
                    if (_imopVarPre161) {
                    /*[3]*/
                        /*[3]*/
                        unew[i][j] = f[i][j];
                    } else {
                    /*[3]*/
                        /*[3]*/
                        unew[i][j] = 0.25 * (u[i - 1][j] + u[i][j + 1] + u[i][j - 1] + u[i + 1][j] + f[i][j] * dx * dy);
                    }
                }
            }
        }
    }
    /*[3]*/
    return;
}
/*[]*/
void timestamp() {
/*[]*/
    /*[]*/
    static char time_buffer[40];
    /*[]*/
    const struct tm *tm;
    /*[]*/
    time_t now;
    /*[]*/
    void *_imopVarPre165;
    /*[]*/
    signed long int _imopVarPre166;
    /*[]*/
    _imopVarPre165 = ((void *) 0);
    /*[]*/
    _imopVarPre166 = time(_imopVarPre165);
    /*[]*/
    /*[]*/
    now = _imopVarPre166;
    /*[]*/
    signed long int *_imopVarPre168;
    /*[]*/
    struct tm *_imopVarPre169;
    /*[]*/
    _imopVarPre168 = &now;
    /*[]*/
    _imopVarPre169 = localtime(_imopVarPre168);
    /*[]*/
    /*[]*/
    tm = _imopVarPre169;
    /*[]*/
    strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    /*[]*/
    /*[]*/
    printf("%s\n", time_buffer);
    /*[]*/
    /*[]*/
    return;
}
/*[]*/
/*[]*/
/*[]*/
double u_exact(double x, double y) {
/*[]*/
    /*[]*/
    double pi = 3.141592653589793;
    /*[]*/
    double value;
    /*[]*/
    double _imopVarPre171;
    /*[]*/
    double _imopVarPre172;
    /*[]*/
    _imopVarPre171 = pi * x * y;
    /*[]*/
    _imopVarPre172 = sin(_imopVarPre171);
    /*[]*/
    /*[]*/
    value = _imopVarPre172;
    /*[]*/
    return value;
}
/*[]*/
/*[]*/
/*[]*/
double uxxyy_exact(double x, double y) {
/*[]*/
    /*[]*/
    double pi = 3.141592653589793;
    /*[]*/
    double value;
    /*[]*/
    double _imopVarPre175;
    /*[]*/
    double _imopVarPre176;
    /*[]*/
    _imopVarPre175 = pi * x * y;
    /*[]*/
    _imopVarPre176 = sin(_imopVarPre175);
    /*[]*/
    /*[]*/
    value = -pi * pi * (x * x + y * y) * _imopVarPre176;
    /*[]*/
    return value;
}
