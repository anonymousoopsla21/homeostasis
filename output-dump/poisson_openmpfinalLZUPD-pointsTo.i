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
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
int main(int argc, char *argv[]) {
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int converged;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double diff;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double dx;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double dy;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double error;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double f[161][161];
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int i;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int id;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int itnew;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int itold;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int j;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    20;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int nx = 161;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int ny = 161;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double tolerance = 0.000001;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double u[161][161];
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double u_norm;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double udiff[161][161];
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double uexact[161][161];
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double unew[161][161];
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double unew_norm;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double wtime;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double x;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double y;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    dx = 1.0 / (double) (nx - 1);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    dy = 1.0 / (double) (ny - 1);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    timestamp();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("POISSON_OPENMP:\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  C version\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  A program for solving the Poisson equation.\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  Use OpenMP for parallel execution.\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    int _imopVarPre143;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    _imopVarPre143 = omp_get_num_procs();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  The number of processors is %d\n", _imopVarPre143);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
#pragma omp parallel
    {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        id = omp_get_thread_num();
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        if (id == 0) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            int _imopVarPre145;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            _imopVarPre145 = omp_get_num_threads();
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            printf("  The maximum number of threads is %d\n", _imopVarPre145);
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
        }
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  -DEL^2 U = F(X,Y)\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  on the rectangle 0 <= X <= 1, 0 <= Y <= 1.\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  F(X,Y) = pi^2 * ( x^2 + y^2 ) * sin ( pi * x * y )\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  The number of interior X grid points is %d\n", nx);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  The number of interior Y grid points is %d\n", ny);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  The X grid spacing is %f\n", dx);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  The Y grid spacing is %f\n", dy);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    rhs(nx, ny, f);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    for (j = 0; j < ny; j++) {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        for (i = 0; i < nx; i++) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            int _imopVarPre146;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            int _imopVarPre147;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            int _imopVarPre148;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            _imopVarPre146 = i == 0;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            if (!_imopVarPre146) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                _imopVarPre147 = i == nx - 1;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                if (!_imopVarPre147) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ]*/
                    _imopVarPre148 = j == 0;
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ]*/
                    if (!_imopVarPre148) {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(tm) := [nullCell];
                        ptsTo(_imopVarPre165) := [nullCell];
                        ptsTo(_imopVarPre168) := [now];
                        ptsTo(_imopVarPre169) := [nullCell];
                        ptsTo(unew.f) := [f.f];
                        ptsTo(u.f) := [unew.f];
                        ]*/
                        _imopVarPre148 = j == ny - 1;
                    }
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ]*/
                    _imopVarPre147 = _imopVarPre148;
                }
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                _imopVarPre146 = _imopVarPre147;
            }
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            if (_imopVarPre146) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                unew[i][j] = f[i][j];
            } else {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                unew[i][j] = 0.0;
            }
        }
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    unew_norm = r8mat_rms(nx, ny, unew);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    for (j = 0; j < ny; j++) {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        y = (double) j / (double) (ny - 1);
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        for (i = 0; i < nx; i++) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            x = (double) i / (double) (nx - 1);
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            double _imopVarPre149;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            _imopVarPre149 = u_exact(x, y);
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            uexact[i][j] = _imopVarPre149;
        }
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    u_norm = r8mat_rms(nx, ny, uexact);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  RMS of exact solution = %g\n", u_norm);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    converged = 0;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  Step    ||Unew||     ||Unew-U||     ||Unew-Exact||\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    for (j = 0; j < ny; j++) {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        for (i = 0; i < nx; i++) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            udiff[i][j] = unew[i][j] - uexact[i][j];
        }
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    error = r8mat_rms(nx, ny, udiff);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  %4d  %14g                  %14g\n", 0, unew_norm, error);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    wtime = omp_get_wtime();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    itnew = 0;
    for (; ; ) {
#pragma omp parallel
        {
#pragma omp master
            {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                itold = itnew;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                itnew = itold + 500;
            }
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ptsTo(unew) := [unew.f];
            ptsTo(u) := [u.f];
            ptsTo(f) := [f.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ptsTo(unew) := [unew.f];
            ptsTo(u) := [u.f];
            ptsTo(f) := [f.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ptsTo(unew) := [unew.f];
            ptsTo(u) := [u.f];
            ptsTo(f) := [f.f];
            ]*/
            sweep(nx, ny, dx, dy, f, itold, itnew, u, unew);
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ptsTo(unew) := [unew.f];
            ptsTo(u) := [u.f];
            ptsTo(f) := [f.f];
            ]*/
#pragma omp master
            {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                u_norm = unew_norm;
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                unew_norm = r8mat_rms(nx, ny, unew);
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                for (j = 0; j < ny; j++) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ptsTo(unew) := [unew.f];
                    ptsTo(u) := [u.f];
                    ptsTo(f) := [f.f];
                    ]*/
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ptsTo(unew) := [unew.f];
                    ptsTo(u) := [u.f];
                    ptsTo(f) := [f.f];
                    ]*/
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ptsTo(unew) := [unew.f];
                    ptsTo(u) := [u.f];
                    ptsTo(f) := [f.f];
                    ]*/
                    for (i = 0; i < nx; i++) {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(tm) := [nullCell];
                        ptsTo(_imopVarPre165) := [nullCell];
                        ptsTo(_imopVarPre168) := [now];
                        ptsTo(_imopVarPre169) := [nullCell];
                        ptsTo(unew.f) := [f.f];
                        ptsTo(u.f) := [unew.f];
                        ptsTo(unew) := [unew.f];
                        ptsTo(u) := [u.f];
                        ptsTo(f) := [f.f];
                        ]*/
                        udiff[i][j] = unew[i][j] - u[i][j];
                    }
                }
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                diff = r8mat_rms(nx, ny, udiff);
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                for (j = 0; j < ny; j++) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ptsTo(unew) := [unew.f];
                    ptsTo(u) := [u.f];
                    ptsTo(f) := [f.f];
                    ]*/
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ptsTo(unew) := [unew.f];
                    ptsTo(u) := [u.f];
                    ptsTo(f) := [f.f];
                    ]*/
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ptsTo(unew) := [unew.f];
                    ptsTo(u) := [u.f];
                    ptsTo(f) := [f.f];
                    ]*/
                    for (i = 0; i < nx; i++) {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(tm) := [nullCell];
                        ptsTo(_imopVarPre165) := [nullCell];
                        ptsTo(_imopVarPre168) := [now];
                        ptsTo(_imopVarPre169) := [nullCell];
                        ptsTo(unew.f) := [f.f];
                        ptsTo(u.f) := [unew.f];
                        ptsTo(unew) := [unew.f];
                        ptsTo(u) := [u.f];
                        ptsTo(f) := [f.f];
                        ]*/
                        udiff[i][j] = unew[i][j] - uexact[i][j];
                    }
                }
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                error = r8mat_rms(nx, ny, udiff);
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                printf("  %4d  %14g  %14g  %14g\n", itnew, unew_norm, diff, error);
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
            }
        }
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ptsTo(unew) := [unew.f];
        ptsTo(u) := [u.f];
        ptsTo(f) := [f.f];
        ]*/
        if (diff <= tolerance) {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ptsTo(unew) := [unew.f];
            ptsTo(u) := [u.f];
            ptsTo(f) := [f.f];
            ]*/
            converged = 1;
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ptsTo(unew) := [unew.f];
            ptsTo(u) := [u.f];
            ptsTo(f) := [f.f];
            ]*/
            break;
        }
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    if (converged) {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ptsTo(unew) := [unew.f];
        ptsTo(u) := [u.f];
        ptsTo(f) := [f.f];
        ]*/
        printf("  The iteration has converged.\n");
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ptsTo(unew) := [unew.f];
        ptsTo(u) := [u.f];
        ptsTo(f) := [f.f];
        ]*/
    } else {
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ptsTo(unew) := [unew.f];
        ptsTo(u) := [u.f];
        ptsTo(f) := [f.f];
        ]*/
        printf("  The iteration has NOT converged.\n");
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ptsTo(unew) := [unew.f];
        ptsTo(u) := [u.f];
        ptsTo(f) := [f.f];
        ]*/
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    double _imopVarPre151;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    _imopVarPre151 = omp_get_wtime();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    wtime = _imopVarPre151 - wtime;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    printf("  Elapsed seconds = %g\n", wtime);
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    printf("POISSON_OPENMP:\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    printf("  Normal end of execution.\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    timestamp();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    return 0;
}
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
]*/
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
]*/
/*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
]*/
double r8mat_rms(int nx, int ny , double a[161][161]) {
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    int i;
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    int j;
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double v;
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    v = 0.0;
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    for (j = 0; j < ny; j++) {
        /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        for (i = 0; i < nx; i++) {
            /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            v = v + a[i][j] * a[i][j];
        }
    }
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double _imopVarPre153;
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double _imopVarPre154;
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    _imopVarPre153 = v / (double) (nx * ny);
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    _imopVarPre154 = sqrt(_imopVarPre153);
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    v = _imopVarPre154;
    /*OUT: [ptsTo(a) := [uexact.f, udiff.f, f.f, unew.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    return v;
}
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
]*/
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
]*/
/*OUT: [ptsTo(f) := [f.f];
ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
]*/
void rhs(int nx, int ny , double f[161][161]) {
    /*OUT: [ptsTo(f) := [f.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double fnorm;
    /*OUT: [ptsTo(f) := [f.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    int i;
    /*OUT: [ptsTo(f) := [f.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    int j;
    /*OUT: [ptsTo(f) := [f.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double x;
    /*OUT: [ptsTo(f) := [f.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double y;
    /*OUT: [ptsTo(f) := [f.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(f) := [f.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(f) := [f.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    for (j = 0; j < ny; j++) {
        /*OUT: [ptsTo(f) := [f.f];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        y = (double) j / (double) (ny - 1);
        /*OUT: [ptsTo(f) := [f.f];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        /*OUT: [ptsTo(f) := [f.f];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        /*OUT: [ptsTo(f) := [f.f];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ]*/
        for (i = 0; i < nx; i++) {
            /*OUT: [ptsTo(f) := [f.f];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            x = (double) i / (double) (nx - 1);
            /*OUT: [ptsTo(f) := [f.f];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            int _imopVarPre155;
            /*OUT: [ptsTo(f) := [f.f];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            int _imopVarPre156;
            /*OUT: [ptsTo(f) := [f.f];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            int _imopVarPre157;
            /*OUT: [ptsTo(f) := [f.f];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            _imopVarPre155 = i == 0;
            /*OUT: [ptsTo(f) := [f.f];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            if (!_imopVarPre155) {
                /*OUT: [ptsTo(f) := [f.f];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                _imopVarPre156 = i == nx - 1;
                /*OUT: [ptsTo(f) := [f.f];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                if (!_imopVarPre156) {
                    /*OUT: [ptsTo(f) := [f.f];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ]*/
                    _imopVarPre157 = j == 0;
                    /*OUT: [ptsTo(f) := [f.f];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ]*/
                    if (!_imopVarPre157) {
                        /*OUT: [ptsTo(f) := [f.f];
                        ptsTo(unew.f) := [f.f];
                        ptsTo(u.f) := [unew.f];
                        ]*/
                        _imopVarPre157 = j == ny - 1;
                    }
                    /*OUT: [ptsTo(f) := [f.f];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ]*/
                    _imopVarPre156 = _imopVarPre157;
                }
                /*OUT: [ptsTo(f) := [f.f];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                _imopVarPre155 = _imopVarPre156;
            }
            /*OUT: [ptsTo(f) := [f.f];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ]*/
            if (_imopVarPre155) {
                /*OUT: [ptsTo(f) := [f.f];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                double _imopVarPre158;
                /*OUT: [ptsTo(f) := [f.f];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                _imopVarPre158 = u_exact(x, y);
                /*OUT: [ptsTo(f) := [f.f];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                /*OUT: [ptsTo(f) := [f.f];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                f[i][j] = _imopVarPre158;
            } else {
                /*OUT: [ptsTo(f) := [f.f];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                double _imopVarPre160;
                /*OUT: [ptsTo(f) := [f.f];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                _imopVarPre160 = uxxyy_exact(x, y);
                /*OUT: [ptsTo(f) := [f.f];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                /*OUT: [ptsTo(f) := [f.f];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ]*/
                f[i][j] = -_imopVarPre160;
            }
        }
    }
    /*OUT: [ptsTo(f) := [f.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    fnorm = r8mat_rms(nx, ny, f);
    /*OUT: [ptsTo(f) := [f.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(f) := [f.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("  RMS of F = %g\n", fnorm);
    /*OUT: [ptsTo(f) := [f.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(f) := [f.f];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    return;
}
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
ptsTo(unew) := [unew.f];
ptsTo(u) := [u.f];
ptsTo(f) := [f.f];
]*/
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
ptsTo(unew) := [unew.f];
ptsTo(u) := [u.f];
ptsTo(f) := [f.f];
]*/
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
ptsTo(unew) := [unew.f];
ptsTo(u) := [u.f];
ptsTo(f) := [f.f];
]*/
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
ptsTo(unew) := [unew.f];
ptsTo(u) := [u.f];
ptsTo(f) := [f.f];
]*/
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
ptsTo(unew) := [unew.f];
ptsTo(u) := [u.f];
ptsTo(f) := [f.f];
]*/
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
ptsTo(unew) := [unew.f];
ptsTo(u) := [u.f];
ptsTo(f) := [f.f];
]*/
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
ptsTo(unew) := [unew.f];
ptsTo(u) := [u.f];
ptsTo(f) := [f.f];
]*/
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
ptsTo(unew) := [unew.f];
ptsTo(u) := [u.f];
ptsTo(f) := [f.f];
]*/
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
ptsTo(unew) := [unew.f];
ptsTo(u) := [u.f];
ptsTo(f) := [f.f];
]*/
void sweep(int nx, int ny , double dx , double dy , double f[161][161] , int itold , int itnew , double u[161][161] , double unew[161][161]) {
    {
        /*OUT: [ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ptsTo(unew) := [unew.f];
        ptsTo(u) := [u.f];
        ptsTo(f) := [f.f];
        ]*/
        int i;
        /*OUT: [ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ptsTo(unew) := [unew.f];
        ptsTo(u) := [u.f];
        ptsTo(f) := [f.f];
        ]*/
        int it;
        /*OUT: [ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ptsTo(unew) := [unew.f];
        ptsTo(u) := [u.f];
        ptsTo(f) := [f.f];
        ]*/
        int j;
        /*OUT: [ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ptsTo(unew) := [unew.f];
        ptsTo(u) := [u.f];
        ptsTo(f) := [f.f];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ptsTo(unew) := [unew.f];
        ptsTo(u) := [u.f];
        ptsTo(f) := [f.f];
        ]*/
        /*OUT: [ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(_imopVarPre168) := [now];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(unew.f) := [f.f];
        ptsTo(u.f) := [unew.f];
        ptsTo(unew) := [unew.f];
        ptsTo(u) := [u.f];
        ptsTo(f) := [f.f];
        ]*/
        for (it = itold + 1; it <= itnew; it++) {
#pragma omp for nowait
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ptsTo(unew) := [unew.f];
            ptsTo(u) := [u.f];
            ptsTo(f) := [f.f];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ptsTo(unew) := [unew.f];
            ptsTo(u) := [u.f];
            ptsTo(f) := [f.f];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ptsTo(unew) := [unew.f];
            ptsTo(u) := [u.f];
            ptsTo(f) := [f.f];
            ]*/
            for (j = 0; j < ny; j++) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                for (i = 0; i < nx; i++) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ptsTo(unew) := [unew.f];
                    ptsTo(u) := [u.f];
                    ptsTo(f) := [f.f];
                    ]*/
                    u[i][j] = unew[i][j];
                }
            }
#pragma omp for nowait
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ptsTo(unew) := [unew.f];
            ptsTo(u) := [u.f];
            ptsTo(f) := [f.f];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ptsTo(unew) := [unew.f];
            ptsTo(u) := [u.f];
            ptsTo(f) := [f.f];
            ]*/
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre165) := [nullCell];
            ptsTo(_imopVarPre168) := [now];
            ptsTo(_imopVarPre169) := [nullCell];
            ptsTo(unew.f) := [f.f];
            ptsTo(u.f) := [unew.f];
            ptsTo(unew) := [unew.f];
            ptsTo(u) := [u.f];
            ptsTo(f) := [f.f];
            ]*/
            for (j = 0; j < ny; j++) {
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                /*OUT: [ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre165) := [nullCell];
                ptsTo(_imopVarPre168) := [now];
                ptsTo(_imopVarPre169) := [nullCell];
                ptsTo(unew.f) := [f.f];
                ptsTo(u.f) := [unew.f];
                ptsTo(unew) := [unew.f];
                ptsTo(u) := [u.f];
                ptsTo(f) := [f.f];
                ]*/
                for (i = 0; i < nx; i++) {
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ptsTo(unew) := [unew.f];
                    ptsTo(u) := [u.f];
                    ptsTo(f) := [f.f];
                    ]*/
                    int _imopVarPre161;
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ptsTo(unew) := [unew.f];
                    ptsTo(u) := [u.f];
                    ptsTo(f) := [f.f];
                    ]*/
                    int _imopVarPre162;
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ptsTo(unew) := [unew.f];
                    ptsTo(u) := [u.f];
                    ptsTo(f) := [f.f];
                    ]*/
                    int _imopVarPre163;
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ptsTo(unew) := [unew.f];
                    ptsTo(u) := [u.f];
                    ptsTo(f) := [f.f];
                    ]*/
                    _imopVarPre161 = i == 0;
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ptsTo(unew) := [unew.f];
                    ptsTo(u) := [u.f];
                    ptsTo(f) := [f.f];
                    ]*/
                    if (!_imopVarPre161) {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(tm) := [nullCell];
                        ptsTo(_imopVarPre165) := [nullCell];
                        ptsTo(_imopVarPre168) := [now];
                        ptsTo(_imopVarPre169) := [nullCell];
                        ptsTo(unew.f) := [f.f];
                        ptsTo(u.f) := [unew.f];
                        ptsTo(unew) := [unew.f];
                        ptsTo(u) := [u.f];
                        ptsTo(f) := [f.f];
                        ]*/
                        _imopVarPre162 = j == 0;
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(tm) := [nullCell];
                        ptsTo(_imopVarPre165) := [nullCell];
                        ptsTo(_imopVarPre168) := [now];
                        ptsTo(_imopVarPre169) := [nullCell];
                        ptsTo(unew.f) := [f.f];
                        ptsTo(u.f) := [unew.f];
                        ptsTo(unew) := [unew.f];
                        ptsTo(u) := [u.f];
                        ptsTo(f) := [f.f];
                        ]*/
                        if (!_imopVarPre162) {
                            /*OUT: [ptsTo(argv) := [heapCell#0];
                            ptsTo(tm) := [nullCell];
                            ptsTo(_imopVarPre165) := [nullCell];
                            ptsTo(_imopVarPre168) := [now];
                            ptsTo(_imopVarPre169) := [nullCell];
                            ptsTo(unew.f) := [f.f];
                            ptsTo(u.f) := [unew.f];
                            ptsTo(unew) := [unew.f];
                            ptsTo(u) := [u.f];
                            ptsTo(f) := [f.f];
                            ]*/
                            _imopVarPre163 = i == nx - 1;
                            /*OUT: [ptsTo(argv) := [heapCell#0];
                            ptsTo(tm) := [nullCell];
                            ptsTo(_imopVarPre165) := [nullCell];
                            ptsTo(_imopVarPre168) := [now];
                            ptsTo(_imopVarPre169) := [nullCell];
                            ptsTo(unew.f) := [f.f];
                            ptsTo(u.f) := [unew.f];
                            ptsTo(unew) := [unew.f];
                            ptsTo(u) := [u.f];
                            ptsTo(f) := [f.f];
                            ]*/
                            if (!_imopVarPre163) {
                                /*OUT: [ptsTo(argv) := [heapCell#0];
                                ptsTo(tm) := [nullCell];
                                ptsTo(_imopVarPre165) := [nullCell];
                                ptsTo(_imopVarPre168) := [now];
                                ptsTo(_imopVarPre169) := [nullCell];
                                ptsTo(unew.f) := [f.f];
                                ptsTo(u.f) := [unew.f];
                                ptsTo(unew) := [unew.f];
                                ptsTo(u) := [u.f];
                                ptsTo(f) := [f.f];
                                ]*/
                                _imopVarPre163 = j == ny - 1;
                            }
                            /*OUT: [ptsTo(argv) := [heapCell#0];
                            ptsTo(tm) := [nullCell];
                            ptsTo(_imopVarPre165) := [nullCell];
                            ptsTo(_imopVarPre168) := [now];
                            ptsTo(_imopVarPre169) := [nullCell];
                            ptsTo(unew.f) := [f.f];
                            ptsTo(u.f) := [unew.f];
                            ptsTo(unew) := [unew.f];
                            ptsTo(u) := [u.f];
                            ptsTo(f) := [f.f];
                            ]*/
                            _imopVarPre162 = _imopVarPre163;
                        }
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(tm) := [nullCell];
                        ptsTo(_imopVarPre165) := [nullCell];
                        ptsTo(_imopVarPre168) := [now];
                        ptsTo(_imopVarPre169) := [nullCell];
                        ptsTo(unew.f) := [f.f];
                        ptsTo(u.f) := [unew.f];
                        ptsTo(unew) := [unew.f];
                        ptsTo(u) := [u.f];
                        ptsTo(f) := [f.f];
                        ]*/
                        _imopVarPre161 = _imopVarPre162;
                    }
                    /*OUT: [ptsTo(argv) := [heapCell#0];
                    ptsTo(tm) := [nullCell];
                    ptsTo(_imopVarPre165) := [nullCell];
                    ptsTo(_imopVarPre168) := [now];
                    ptsTo(_imopVarPre169) := [nullCell];
                    ptsTo(unew.f) := [f.f];
                    ptsTo(u.f) := [unew.f];
                    ptsTo(unew) := [unew.f];
                    ptsTo(u) := [u.f];
                    ptsTo(f) := [f.f];
                    ]*/
                    if (_imopVarPre161) {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(tm) := [nullCell];
                        ptsTo(_imopVarPre165) := [nullCell];
                        ptsTo(_imopVarPre168) := [now];
                        ptsTo(_imopVarPre169) := [nullCell];
                        ptsTo(unew.f) := [f.f];
                        ptsTo(u.f) := [unew.f];
                        ptsTo(unew) := [unew.f];
                        ptsTo(u) := [u.f];
                        ptsTo(f) := [f.f];
                        ]*/
                        unew[i][j] = f[i][j];
                    } else {
                        /*OUT: [ptsTo(argv) := [heapCell#0];
                        ptsTo(tm) := [nullCell];
                        ptsTo(_imopVarPre165) := [nullCell];
                        ptsTo(_imopVarPre168) := [now];
                        ptsTo(_imopVarPre169) := [nullCell];
                        ptsTo(unew.f) := [f.f];
                        ptsTo(u.f) := [unew.f];
                        ptsTo(unew) := [unew.f];
                        ptsTo(u) := [u.f];
                        ptsTo(f) := [f.f];
                        ]*/
                        unew[i][j] = 0.25 * (u[i - 1][j] + u[i][j + 1] + u[i][j - 1] + u[i + 1][j] + f[i][j] * dx * dy);
                    }
                }
            }
        }
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ptsTo(unew) := [unew.f];
    ptsTo(u) := [u.f];
    ptsTo(f) := [f.f];
    ]*/
    return;
}
void timestamp() {
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    static char time_buffer[40];
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    const struct tm *tm;
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    time_t now;
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    void *_imopVarPre165;
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    signed long int _imopVarPre166;
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    _imopVarPre165 = ((void *) 0);
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    _imopVarPre166 = time(_imopVarPre165);
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    now = _imopVarPre166;
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    signed long int *_imopVarPre168;
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    struct tm *_imopVarPre169;
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    _imopVarPre168 = &now;
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    _imopVarPre169 = localtime(_imopVarPre168);
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    tm = _imopVarPre169;
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    printf("%s\n", time_buffer);
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre168) := [now];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    return;
}
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
]*/
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
]*/
double u_exact(double x, double y) {
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double pi = 3.141592653589793;
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double value;
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double _imopVarPre171;
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double _imopVarPre172;
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    _imopVarPre171 = pi * x * y;
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    _imopVarPre172 = sin(_imopVarPre171);
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    value = _imopVarPre172;
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    return value;
}
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
]*/
/*OUT: [ptsTo(unew.f) := [f.f];
ptsTo(u.f) := [unew.f];
]*/
double uxxyy_exact(double x, double y) {
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double pi = 3.141592653589793;
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double value;
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double _imopVarPre175;
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    double _imopVarPre176;
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    _imopVarPre175 = pi * x * y;
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    _imopVarPre176 = sin(_imopVarPre175);
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    value = -pi * pi * (x * x + y * y) * _imopVarPre176;
    /*OUT: [ptsTo(unew.f) := [f.f];
    ptsTo(u.f) := [unew.f];
    ]*/
    return value;
}
