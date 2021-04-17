
/*[]*/
typedef long long __int64_t;
/*[]*/
typedef __int64_t __darwin_off_t;
/*[]*/
typedef __darwin_off_t fpos_t;
/*[]*/
struct __sbuf {
    unsigned char *_base;
    int _size;
} ;
/*[]*/
struct __sFILEX ;
/*[]*/
struct __sFILE {
    unsigned char *_p;
    int _r;
    int _w;
    short _flags;
    short _file;
    struct __sbuf _bf;
    int _lbfsize;
    void *_cookie;
    int ( *_close )(void *);
    int ( *_read )(void *, char * , int );
    fpos_t ( *_seek )(void *, fpos_t  , int );
    int ( *_write )(void *, const char * , int );
    struct __sbuf _ub;
    struct __sFILEX *_extra;
    int _ur;
    unsigned char _ubuf[3];
    unsigned char _nbuf[1];
    struct __sbuf _lb;
    int _blksize;
    fpos_t _offset;
} ;
/*[]*/
typedef struct __sFILE FILE;
/*[]*/
int fclose(FILE *);
/*[]*/
int fgetc(FILE *);
/*[]*/
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
/*[]*/
int fscanf(FILE *restrict , const char *restrict , ...);
/*[]*/
int printf(const char *restrict , ...);
/*[]*/
void exit(int );
/*[]*/
extern double fabs(double );
/*[]*/
extern double sqrt(double );
/*[]*/
typedef int boolean;
/*[]*/
extern void timer_clear(int );
/*[]*/
extern void timer_start(int );
/*[]*/
extern void timer_stop(int );
/*[]*/
extern double timer_read(int );
/*[]*/
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
/*[]*/
static int grid_points[3];
/*[]*/
static double tx1;
/*[]*/
static double tx2;
/*[]*/
static double tx3;
/*[]*/
static double ty1;
/*[]*/
static double ty2;
/*[]*/
static double ty3;
/*[]*/
static double tz1;
/*[]*/
static double tz2;
/*[]*/
static double tz3;
/*[]*/
static double dx1;
/*[]*/
static double dx2;
/*[]*/
static double dx3;
/*[]*/
static double dx4;
/*[]*/
static double dx5;
/*[]*/
static double dy1;
/*[]*/
static double dy2;
/*[]*/
static double dy3;
/*[]*/
static double dy4;
/*[]*/
static double dy5;
/*[]*/
static double dz1;
/*[]*/
static double dz2;
/*[]*/
static double dz3;
/*[]*/
static double dz4;
/*[]*/
static double dz5;
/*[]*/
static double dssp;
/*[]*/
static double dt;
/*[]*/
static double ce[5][13];
/*[]*/
static double dxmax;
/*[]*/
static double dymax;
/*[]*/
static double dzmax;
/*[]*/
static double xxcon1;
/*[]*/
static double xxcon2;
/*[]*/
static double xxcon3;
/*[]*/
static double xxcon4;
/*[]*/
static double xxcon5;
/*[]*/
static double dx1tx1;
/*[]*/
static double dx2tx1;
/*[]*/
static double dx3tx1;
/*[]*/
static double dx4tx1;
/*[]*/
static double dx5tx1;
/*[]*/
static double yycon1;
/*[]*/
static double yycon2;
/*[]*/
static double yycon3;
/*[]*/
static double yycon4;
/*[]*/
static double yycon5;
/*[]*/
static double dy1ty1;
/*[]*/
static double dy2ty1;
/*[]*/
static double dy3ty1;
/*[]*/
static double dy4ty1;
/*[]*/
static double dy5ty1;
/*[]*/
static double zzcon1;
/*[]*/
static double zzcon2;
/*[]*/
static double zzcon3;
/*[]*/
static double zzcon4;
/*[]*/
static double zzcon5;
/*[]*/
static double dz1tz1;
/*[]*/
static double dz2tz1;
/*[]*/
static double dz3tz1;
/*[]*/
static double dz4tz1;
/*[]*/
static double dz5tz1;
/*[]*/
static double dnxm1;
/*[]*/
static double dnym1;
/*[]*/
static double dnzm1;
/*[]*/
static double c1c2;
/*[]*/
static double c1c5;
/*[]*/
static double c3c4;
/*[]*/
static double c1345;
/*[]*/
static double conz1;
/*[]*/
static double c1;
/*[]*/
static double c2;
/*[]*/
static double c3;
/*[]*/
static double c4;
/*[]*/
static double c5;
/*[]*/
static double c4dssp;
/*[]*/
static double c5dssp;
/*[]*/
static double dtdssp;
/*[]*/
static double dttx1;
/*[]*/
static double dttx2;
/*[]*/
static double dtty1;
/*[]*/
static double dtty2;
/*[]*/
static double dttz1;
/*[]*/
static double dttz2;
/*[]*/
static double c2dttx1;
/*[]*/
static double c2dtty1;
/*[]*/
static double c2dttz1;
/*[]*/
static double comz1;
/*[]*/
static double comz4;
/*[]*/
static double comz5;
/*[]*/
static double comz6;
/*[]*/
static double c3c4tx3;
/*[]*/
static double c3c4ty3;
/*[]*/
static double c3c4tz3;
/*[]*/
static double c2iv;
/*[]*/
static double con43;
/*[]*/
static double con16;
/*[]*/
static double us[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double vs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double ws[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double qs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double rho_i[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double square[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double forcing[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5 + 1];
/*[]*/
static double u[(12 + 1) / 2 * 2 + 1][(12 + 1) / 2 * 2 + 1][(12 + 1) / 2 * 2 + 1][5];
/*[]*/
static double rhs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
/*[]*/
static double lhs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1][3][5][5];
/*[]*/
static double cuf[12];
/*[]*/
static double q[12];
/*[]*/
static double ue[12][5];
/*[]*/
static double buf[12][5];
#pragma omp threadprivate(cuf, q, ue, buf)
/*[]*/
static double fjac[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 - 1 + 1][5][5];
/*[]*/
static double njac[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 - 1 + 1][5][5];
/*[]*/
static double tmp1;
/*[]*/
static double tmp2;
/*[]*/
static double tmp3;
/*[]*/
static void add(void );
/*[]*/
static void error_norm(double rms[5]);
/*[]*/
static void rhs_norm(double rms[5]);
/*[]*/
static void exact_solution(double xi, double eta , double zeta , double dtemp[5]);
/*[]*/
static void set_constants(void );
/*[]*/
static void matvec_sub(double ablock[5][5], double avec[5] , double bvec[5]);
/*[]*/
static void matmul_sub(double ablock[5][5], double bblock[5][5] , double cblock[5][5]);
/*[]*/
static void binvcrhs(double lhs[5][5], double c[5][5] , double r[5]);
/*[]*/
static void binvrhs(double lhs[5][5], double r[5]);
/*[]*/
static void z_backsubstitute(void );
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char **argv) {
/*[]*/
    /*[]*/
    int niter;
    /*[]*/
    int step;
    /*[]*/
    int n3;
    /*[]*/
    int nthreads = 1;
    /*[]*/
    double navg;
    /*[]*/
    double mflops;
    /*[]*/
    double tmax;
    /*[]*/
    boolean verified;
    /*[]*/
    char class;
    /*[]*/
    FILE *fp;
    /*[]*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - BT Benchmark\n\n");
    /*[]*/
    /*[]*/
    fp = fopen("inputbt.data", "r");
    /*[]*/
    /*[]*/
    /*[]*/
    if (fp != ((void *) 0)) {
    /*[]*/
        /*[]*/
        printf(" Reading from input file inputbt.data");
        /*[]*/
        /*[]*/
        int *_imopVarPre141;
        /*[]*/
        _imopVarPre141 = &niter;
        /*[]*/
        fscanf(fp, "%d", _imopVarPre141);
        /*[]*/
        /*[]*/
        int _imopVarPre143;
        /*[]*/
        _imopVarPre143 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre143 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre143 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        double *_imopVarPre145;
        /*[]*/
        _imopVarPre145 = &dt;
        /*[]*/
        fscanf(fp, "%lg", _imopVarPre145);
        /*[]*/
        /*[]*/
        int _imopVarPre147;
        /*[]*/
        _imopVarPre147 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre147 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre147 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int *_imopVarPre151;
        /*[]*/
        int *_imopVarPre152;
        /*[]*/
        int *_imopVarPre153;
        /*[]*/
        _imopVarPre151 = &grid_points[2];
        /*[]*/
        _imopVarPre152 = &grid_points[1];
        /*[]*/
        _imopVarPre153 = &grid_points[0];
        /*[]*/
        fscanf(fp, "%d%d%d", _imopVarPre153, _imopVarPre152, _imopVarPre151);
        /*[]*/
        /*[]*/
        fclose(fp);
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        printf(" No input file inputbt.data. Using compiled defaults\n");
        /*[]*/
        /*[]*/
        niter = 60;
        /*[]*/
        dt = 0.010;
        /*[]*/
        grid_points[0] = 12;
        /*[]*/
        grid_points[1] = 12;
        /*[]*/
        grid_points[2] = 12;
    }
    /*[]*/
    int _imopVarPre157;
    /*[]*/
    int _imopVarPre158;
    /*[]*/
    int _imopVarPre159;
    /*[]*/
    _imopVarPre157 = grid_points[2];
    /*[]*/
    _imopVarPre158 = grid_points[1];
    /*[]*/
    _imopVarPre159 = grid_points[0];
    /*[]*/
    printf(" Size: %3dx%3dx%3d\n", _imopVarPre159, _imopVarPre158, _imopVarPre157);
    /*[]*/
    /*[]*/
    printf(" Iterations: %3d   dt: %10.6f\n", niter, dt);
    /*[]*/
    /*[]*/
    int _imopVarPre160;
    /*[]*/
    int _imopVarPre161;
    /*[]*/
    _imopVarPre160 = grid_points[0] > 12;
    /*[]*/
    /*[]*/
    if (!_imopVarPre160) {
    /*[]*/
        /*[]*/
        _imopVarPre161 = grid_points[1] > 12;
        /*[]*/
        /*[]*/
        if (!_imopVarPre161) {
        /*[]*/
            /*[]*/
            _imopVarPre161 = grid_points[2] > 12;
        }
        /*[]*/
        _imopVarPre160 = _imopVarPre161;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre160) {
    /*[]*/
        /*[]*/
        int _imopVarPre165;
        /*[]*/
        int _imopVarPre166;
        /*[]*/
        int _imopVarPre167;
        /*[]*/
        _imopVarPre165 = grid_points[2];
        /*[]*/
        _imopVarPre166 = grid_points[1];
        /*[]*/
        _imopVarPre167 = grid_points[0];
        /*[]*/
        printf(" %dx%dx%d\n", _imopVarPre167, _imopVarPre166, _imopVarPre165);
        /*[]*/
        /*[]*/
        printf(" Problem size too big for compiled array sizes\n");
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
    /*[]*/
    set_constants();
    /*[]*/
    /*[1]*/
#pragma omp parallel
    {
    /*[1]*/
        /*[1]*/
        int i;
        /*[1]*/
        int j;
        /*[1]*/
        int k;
        /*[1]*/
        int m;
        /*[1]*/
        int ix;
        /*[1]*/
        int iy;
        /*[1]*/
        int iz;
        /*[1]*/
        double xi;
        /*[1]*/
        double eta;
        /*[1]*/
        double zeta;
        /*[1]*/
        double Pface[2][3][5];
        /*[1]*/
        double Pxi;
        /*[1]*/
        double Peta;
        /*[1]*/
        double Pzeta;
        /*[1]*/
        double temp[5];
        /*[1]*/
#pragma omp for nowait
        /*[1]*/
        /*[1]*/
        /*[1]*/
        for (i = 0; i < 12; i++) {
        /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            for (j = 0; j < 12; j++) {
            /*[1]*/
                /*[1]*/
                /*[1]*/
                /*[1]*/
                /*[1]*/
                for (k = 0; k < 12; k++) {
                /*[1]*/
                    /*[1]*/
                    /*[1]*/
                    /*[1]*/
                    /*[1]*/
                    for (m = 0; m < 5; m++) {
                    /*[1]*/
                        /*[1]*/
                        u[i][j][k][m] = 1.0;
                    }
                }
            }
        }
        /*[1]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[1]*/
#pragma omp barrier
        /*[2]*/
#pragma omp for nowait
        /*[2]*/
        /*[2]*/
        /*[2]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[2]*/
            /*[2]*/
            xi = (double) i * dnxm1;
            /*[2]*/
            /*[2]*/
            /*[2]*/
            /*[2]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[2]*/
                /*[2]*/
                eta = (double) j * dnym1;
                /*[2]*/
                /*[2]*/
                /*[2]*/
                /*[2]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*[2]*/
                    /*[2]*/
                    zeta = (double) k * dnzm1;
                    /*[2]*/
                    /*[2]*/
                    /*[2]*/
                    /*[2]*/
                    for (ix = 0; ix < 2; ix++) {
                    /*[2]*/
                        /*[2]*/
                        double *_imopVarPre187;
                        /*[2]*/
                        double _imopVarPre188;
                        /*[2]*/
                        _imopVarPre187 = &(Pface[ix][0][0]);
                        /*[2]*/
                        _imopVarPre188 = (double) ix;
                        /*[2]*/
                        exact_solution(_imopVarPre188, eta, zeta, _imopVarPre187);
                        /*[2]*/
                    }
                    /*[2]*/
                    /*[2]*/
                    /*[2]*/
                    /*[2]*/
                    for (iy = 0; iy < 2; iy++) {
                    /*[2]*/
                        /*[2]*/
                        double *_imopVarPre191;
                        /*[2]*/
                        double _imopVarPre192;
                        /*[2]*/
                        _imopVarPre191 = &Pface[iy][1][0];
                        /*[2]*/
                        _imopVarPre192 = (double) iy;
                        /*[2]*/
                        exact_solution(xi, _imopVarPre192, zeta, _imopVarPre191);
                        /*[2]*/
                    }
                    /*[2]*/
                    /*[2]*/
                    /*[2]*/
                    /*[2]*/
                    for (iz = 0; iz < 2; iz++) {
                    /*[2]*/
                        /*[2]*/
                        double *_imopVarPre195;
                        /*[2]*/
                        double _imopVarPre196;
                        /*[2]*/
                        _imopVarPre195 = &Pface[iz][2][0];
                        /*[2]*/
                        _imopVarPre196 = (double) iz;
                        /*[2]*/
                        exact_solution(xi, eta, _imopVarPre196, _imopVarPre195);
                        /*[2]*/
                    }
                    /*[2]*/
                    /*[2]*/
                    /*[2]*/
                    /*[2]*/
                    for (m = 0; m < 5; m++) {
                    /*[2]*/
                        /*[2]*/
                        Pxi = xi * Pface[1][0][m] + (1.0 - xi) * Pface[0][0][m];
                        /*[2]*/
                        Peta = eta * Pface[1][1][m] + (1.0 - eta) * Pface[0][1][m];
                        /*[2]*/
                        Pzeta = zeta * Pface[1][2][m] + (1.0 - zeta) * Pface[0][2][m];
                        /*[2]*/
                        u[i][j][k][m] = Pxi + Peta + Pzeta - Pxi * Peta - Pxi * Pzeta - Peta * Pzeta + Pxi * Peta * Pzeta;
                    }
                }
            }
        }
        /*[2]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[2]*/
#pragma omp barrier
        /*[3]*/
        i = 0;
        /*[3]*/
        xi = 0.0;
        /*[3]*/
#pragma omp for nowait
        /*[3]*/
        /*[3]*/
        /*[3]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[3]*/
            /*[3]*/
            eta = (double) j * dnym1;
            /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[3]*/
                /*[3]*/
                zeta = (double) k * dnzm1;
                /*[3]*/
                exact_solution(xi, eta, zeta, temp);
                /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                for (m = 0; m < 5; m++) {
                /*[3]*/
                    /*[3]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[3]*/
        i = grid_points[0] - 1;
        /*[3]*/
        xi = 1.0;
        /*[3]*/
#pragma omp for nowait
        /*[3]*/
        /*[3]*/
        /*[3]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[3]*/
            /*[3]*/
            eta = (double) j * dnym1;
            /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[3]*/
                /*[3]*/
                zeta = (double) k * dnzm1;
                /*[3]*/
                exact_solution(xi, eta, zeta, temp);
                /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                for (m = 0; m < 5; m++) {
                /*[3]*/
                    /*[3]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[3]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3]*/
#pragma omp barrier
        /*[4]*/
        j = 0;
        /*[4]*/
        eta = 0.0;
        /*[4]*/
#pragma omp for nowait
        /*[4]*/
        /*[4]*/
        /*[4]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[4]*/
            /*[4]*/
            xi = (double) i * dnxm1;
            /*[4]*/
            /*[4]*/
            /*[4]*/
            /*[4]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[4]*/
                /*[4]*/
                zeta = (double) k * dnzm1;
                /*[4]*/
                exact_solution(xi, eta, zeta, temp);
                /*[4]*/
                /*[4]*/
                /*[4]*/
                /*[4]*/
                /*[4]*/
                for (m = 0; m < 5; m++) {
                /*[4]*/
                    /*[4]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[4]*/
        j = grid_points[1] - 1;
        /*[4]*/
        eta = 1.0;
        /*[4]*/
#pragma omp for nowait
        /*[4]*/
        /*[4]*/
        /*[4]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[4]*/
            /*[4]*/
            xi = (double) i * dnxm1;
            /*[4]*/
            /*[4]*/
            /*[4]*/
            /*[4]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[4]*/
                /*[4]*/
                zeta = (double) k * dnzm1;
                /*[4]*/
                exact_solution(xi, eta, zeta, temp);
                /*[4]*/
                /*[4]*/
                /*[4]*/
                /*[4]*/
                /*[4]*/
                for (m = 0; m < 5; m++) {
                /*[4]*/
                    /*[4]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[4]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[4]*/
#pragma omp barrier
        /*[5]*/
        k = 0;
        /*[5]*/
        zeta = 0.0;
        /*[5]*/
#pragma omp for nowait
        /*[5]*/
        /*[5]*/
        /*[5]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[5]*/
            /*[5]*/
            xi = (double) i * dnxm1;
            /*[5]*/
            /*[5]*/
            /*[5]*/
            /*[5]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[5]*/
                /*[5]*/
                eta = (double) j * dnym1;
                /*[5]*/
                exact_solution(xi, eta, zeta, temp);
                /*[5]*/
                /*[5]*/
                /*[5]*/
                /*[5]*/
                /*[5]*/
                for (m = 0; m < 5; m++) {
                /*[5]*/
                    /*[5]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[5]*/
        k = grid_points[2] - 1;
        /*[5]*/
        zeta = 1.0;
        /*[5]*/
#pragma omp for nowait
        /*[5]*/
        /*[5]*/
        /*[5]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[5]*/
            /*[5]*/
            xi = (double) i * dnxm1;
            /*[5]*/
            /*[5]*/
            /*[5]*/
            /*[5]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[5]*/
                /*[5]*/
                eta = (double) j * dnym1;
                /*[5]*/
                exact_solution(xi, eta, zeta, temp);
                /*[5]*/
                /*[5]*/
                /*[5]*/
                /*[5]*/
                /*[5]*/
                for (m = 0; m < 5; m++) {
                /*[5]*/
                    /*[5]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
    }
    /*[6]*/
#pragma omp parallel
    {
    /*[6]*/
        /*[6]*/
        int i;
        /*[6]*/
        int j;
        /*[6]*/
        int k;
        /*[6]*/
        int m;
        /*[6]*/
        int n;
        /*[6]*/
#pragma omp for nowait
        /*[6]*/
        /*[6]*/
        /*[6]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[6]*/
            /*[6]*/
            /*[6]*/
            /*[6]*/
            /*[6]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[6]*/
                /*[6]*/
                /*[6]*/
                /*[6]*/
                /*[6]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*[6]*/
                    /*[6]*/
                    /*[6]*/
                    /*[6]*/
                    /*[6]*/
                    for (m = 0; m < 5; m++) {
                    /*[6]*/
                        /*[6]*/
                        /*[6]*/
                        /*[6]*/
                        /*[6]*/
                        for (n = 0; n < 5; n++) {
                        /*[6]*/
                            /*[6]*/
                            lhs[i][j][k][0][m][n] = 0.0;
                            /*[6]*/
                            lhs[i][j][k][1][m][n] = 0.0;
                            /*[6]*/
                            lhs[i][j][k][2][m][n] = 0.0;
                        }
                    }
                }
            }
        }
        /*[6]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6]*/
#pragma omp barrier
        /*[7]*/
#pragma omp for nowait
        /*[7]*/
        /*[7]*/
        /*[7]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[7]*/
            /*[7]*/
            /*[7]*/
            /*[7]*/
            /*[7]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[7]*/
                /*[7]*/
                /*[7]*/
                /*[7]*/
                /*[7]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    for (m = 0; m < 5; m++) {
                    /*[7]*/
                        /*[7]*/
                        lhs[i][j][k][1][m][m] = 1.0;
                    }
                }
            }
        }
    }
    /*[8]*/
#pragma omp parallel
    {
    /*[8]*/
        /*[8]*/
        double dtemp[5];
        /*[8]*/
        double xi;
        /*[8]*/
        double eta;
        /*[8]*/
        double zeta;
        /*[8]*/
        double dtpp;
        /*[8]*/
        int m;
        /*[8]*/
        int i;
        /*[8]*/
        int j;
        /*[8]*/
        int k;
        /*[8]*/
        int ip1;
        /*[8]*/
        int im1;
        /*[8]*/
        int jp1;
        /*[8]*/
        int jm1;
        /*[8]*/
        int km1;
        /*[8]*/
        int kp1;
        /*[8]*/
#pragma omp for nowait
        /*[8]*/
        /*[8]*/
        /*[8]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[8]*/
            /*[8]*/
            /*[8]*/
            /*[8]*/
            /*[8]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*[8]*/
                    /*[8]*/
                    /*[8]*/
                    /*[8]*/
                    /*[8]*/
                    for (m = 0; m < 5; m++) {
                    /*[8]*/
                        /*[8]*/
                        forcing[i][j][k][m] = 0.0;
                    }
                }
            }
        }
        /*[8]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[8]*/
#pragma omp barrier
        /*[9]*/
#pragma omp for nowait
        /*[9]*/
        /*[9]*/
        /*[9]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[9]*/
            /*[9]*/
            eta = (double) j * dnym1;
            /*[9]*/
            /*[9]*/
            /*[9]*/
            /*[9]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[9]*/
                /*[9]*/
                zeta = (double) k * dnzm1;
                /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                for (i = 0; i < grid_points[0]; i++) {
                /*[9]*/
                    /*[9]*/
                    xi = (double) i * dnxm1;
                    /*[9]*/
                    exact_solution(xi, eta, zeta, dtemp);
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    for (m = 0; m < 5; m++) {
                    /*[9]*/
                        /*[9]*/
                        ue[i][m] = dtemp[m];
                    }
                    /*[9]*/
                    dtpp = 1.0 / dtemp[0];
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    for (m = 1; m <= 4; m++) {
                    /*[9]*/
                        /*[9]*/
                        buf[i][m] = dtpp * dtemp[m];
                    }
                    /*[9]*/
                    cuf[i] = buf[i][1] * buf[i][1];
                    /*[9]*/
                    buf[i][0] = cuf[i] + buf[i][2] * buf[i][2] + buf[i][3] * buf[i][3];
                    /*[9]*/
                    q[i] = 0.5 * (buf[i][1] * ue[i][1] + buf[i][2] * ue[i][2] + buf[i][3] * ue[i][3]);
                }
                /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                for (i = 1; i < grid_points[0] - 1; i++) {
                /*[9]*/
                    /*[9]*/
                    im1 = i - 1;
                    /*[9]*/
                    ip1 = i + 1;
                    /*[9]*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - tx2 * (ue[ip1][1] - ue[im1][1]) + dx1tx1 * (ue[ip1][0] - 2.0 * ue[i][0] + ue[im1][0]);
                    /*[9]*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - tx2 * ((ue[ip1][1] * buf[ip1][1] + c2 * (ue[ip1][4] - q[ip1])) - (ue[im1][1] * buf[im1][1] + c2 * (ue[im1][4] - q[im1]))) + xxcon1 * (buf[ip1][1] - 2.0 * buf[i][1] + buf[im1][1]) + dx2tx1 * (ue[ip1][1] - 2.0 * ue[i][1] + ue[im1][1]);
                    /*[9]*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - tx2 * (ue[ip1][2] * buf[ip1][1] - ue[im1][2] * buf[im1][1]) + xxcon2 * (buf[ip1][2] - 2.0 * buf[i][2] + buf[im1][2]) + dx3tx1 * (ue[ip1][2] - 2.0 * ue[i][2] + ue[im1][2]);
                    /*[9]*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - tx2 * (ue[ip1][3] * buf[ip1][1] - ue[im1][3] * buf[im1][1]) + xxcon2 * (buf[ip1][3] - 2.0 * buf[i][3] + buf[im1][3]) + dx4tx1 * (ue[ip1][3] - 2.0 * ue[i][3] + ue[im1][3]);
                    /*[9]*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - tx2 * (buf[ip1][1] * (c1 * ue[ip1][4] - c2 * q[ip1]) - buf[im1][1] * (c1 * ue[im1][4] - c2 * q[im1])) + 0.5 * xxcon3 * (buf[ip1][0] - 2.0 * buf[i][0] + buf[im1][0]) + xxcon4 * (cuf[ip1] - 2.0 * cuf[i] + cuf[im1]) + xxcon5 * (buf[ip1][4] - 2.0 * buf[i][4] + buf[im1][4]) + dx5tx1 * (ue[ip1][4] - 2.0 * ue[i][4] + ue[im1][4]);
                }
                /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                for (m = 0; m < 5; m++) {
                /*[9]*/
                    /*[9]*/
                    i = 1;
                    /*[9]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                    /*[9]*/
                    i = 2;
                    /*[9]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                }
                /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                for (m = 0; m < 5; m++) {
                /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    for (i = 1 * 3; i <= grid_points[0] - 3 * 1 - 1; i++) {
                    /*[9]*/
                        /*[9]*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                    }
                }
                /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                for (m = 0; m < 5; m++) {
                /*[9]*/
                    /*[9]*/
                    i = grid_points[0] - 3;
                    /*[9]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m]);
                    /*[9]*/
                    i = grid_points[0] - 2;
                    /*[9]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 5.0 * ue[i][m]);
                }
            }
        }
        /*[9]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[9]*/
#pragma omp barrier
        /*[10]*/
#pragma omp for nowait
        /*[10]*/
        /*[10]*/
        /*[10]*/
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*[10]*/
            /*[10]*/
            xi = (double) i * dnxm1;
            /*[10]*/
            /*[10]*/
            /*[10]*/
            /*[10]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[10]*/
                /*[10]*/
                zeta = (double) k * dnzm1;
                /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                for (j = 0; j < grid_points[1]; j++) {
                /*[10]*/
                    /*[10]*/
                    eta = (double) j * dnym1;
                    /*[10]*/
                    exact_solution(xi, eta, zeta, dtemp);
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    for (m = 0; m < 5; m++) {
                    /*[10]*/
                        /*[10]*/
                        ue[j][m] = dtemp[m];
                    }
                    /*[10]*/
                    dtpp = 1.0 / dtemp[0];
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    for (m = 1; m <= 4; m++) {
                    /*[10]*/
                        /*[10]*/
                        buf[j][m] = dtpp * dtemp[m];
                    }
                    /*[10]*/
                    cuf[j] = buf[j][2] * buf[j][2];
                    /*[10]*/
                    buf[j][0] = cuf[j] + buf[j][1] * buf[j][1] + buf[j][3] * buf[j][3];
                    /*[10]*/
                    q[j] = 0.5 * (buf[j][1] * ue[j][1] + buf[j][2] * ue[j][2] + buf[j][3] * ue[j][3]);
                }
                /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                /*[10]*/
                    /*[10]*/
                    jm1 = j - 1;
                    /*[10]*/
                    jp1 = j + 1;
                    /*[10]*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - ty2 * (ue[jp1][2] - ue[jm1][2]) + dy1ty1 * (ue[jp1][0] - 2.0 * ue[j][0] + ue[jm1][0]);
                    /*[10]*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - ty2 * (ue[jp1][1] * buf[jp1][2] - ue[jm1][1] * buf[jm1][2]) + yycon2 * (buf[jp1][1] - 2.0 * buf[j][1] + buf[jm1][1]) + dy2ty1 * (ue[jp1][1] - 2.0 * ue[j][1] + ue[jm1][1]);
                    /*[10]*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - ty2 * ((ue[jp1][2] * buf[jp1][2] + c2 * (ue[jp1][4] - q[jp1])) - (ue[jm1][2] * buf[jm1][2] + c2 * (ue[jm1][4] - q[jm1]))) + yycon1 * (buf[jp1][2] - 2.0 * buf[j][2] + buf[jm1][2]) + dy3ty1 * (ue[jp1][2] - 2.0 * ue[j][2] + ue[jm1][2]);
                    /*[10]*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - ty2 * (ue[jp1][3] * buf[jp1][2] - ue[jm1][3] * buf[jm1][2]) + yycon2 * (buf[jp1][3] - 2.0 * buf[j][3] + buf[jm1][3]) + dy4ty1 * (ue[jp1][3] - 2.0 * ue[j][3] + ue[jm1][3]);
                    /*[10]*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - ty2 * (buf[jp1][2] * (c1 * ue[jp1][4] - c2 * q[jp1]) - buf[jm1][2] * (c1 * ue[jm1][4] - c2 * q[jm1])) + 0.5 * yycon3 * (buf[jp1][0] - 2.0 * buf[j][0] + buf[jm1][0]) + yycon4 * (cuf[jp1] - 2.0 * cuf[j] + cuf[jm1]) + yycon5 * (buf[jp1][4] - 2.0 * buf[j][4] + buf[jm1][4]) + dy5ty1 * (ue[jp1][4] - 2.0 * ue[j][4] + ue[jm1][4]);
                }
                /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                for (m = 0; m < 5; m++) {
                /*[10]*/
                    /*[10]*/
                    j = 1;
                    /*[10]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                    /*[10]*/
                    j = 2;
                    /*[10]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                }
                /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                for (m = 0; m < 5; m++) {
                /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    for (j = 1 * 3; j <= grid_points[1] - 3 * 1 - 1; j++) {
                    /*[10]*/
                        /*[10]*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                    }
                }
                /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                for (m = 0; m < 5; m++) {
                /*[10]*/
                    /*[10]*/
                    j = grid_points[1] - 3;
                    /*[10]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m]);
                    /*[10]*/
                    j = grid_points[1] - 2;
                    /*[10]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 5.0 * ue[j][m]);
                }
            }
        }
        /*[10]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[10]*/
#pragma omp barrier
        /*[11]*/
#pragma omp for nowait
        /*[11]*/
        /*[11]*/
        /*[11]*/
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*[11]*/
            /*[11]*/
            xi = (double) i * dnxm1;
            /*[11]*/
            /*[11]*/
            /*[11]*/
            /*[11]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
            /*[11]*/
                /*[11]*/
                eta = (double) j * dnym1;
                /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*[11]*/
                    /*[11]*/
                    zeta = (double) k * dnzm1;
                    /*[11]*/
                    exact_solution(xi, eta, zeta, dtemp);
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    for (m = 0; m < 5; m++) {
                    /*[11]*/
                        /*[11]*/
                        ue[k][m] = dtemp[m];
                    }
                    /*[11]*/
                    dtpp = 1.0 / dtemp[0];
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    for (m = 1; m <= 4; m++) {
                    /*[11]*/
                        /*[11]*/
                        buf[k][m] = dtpp * dtemp[m];
                    }
                    /*[11]*/
                    cuf[k] = buf[k][3] * buf[k][3];
                    /*[11]*/
                    buf[k][0] = cuf[k] + buf[k][1] * buf[k][1] + buf[k][2] * buf[k][2];
                    /*[11]*/
                    q[k] = 0.5 * (buf[k][1] * ue[k][1] + buf[k][2] * ue[k][2] + buf[k][3] * ue[k][3]);
                }
                /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*[11]*/
                    /*[11]*/
                    km1 = k - 1;
                    /*[11]*/
                    kp1 = k + 1;
                    /*[11]*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - tz2 * (ue[kp1][3] - ue[km1][3]) + dz1tz1 * (ue[kp1][0] - 2.0 * ue[k][0] + ue[km1][0]);
                    /*[11]*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - tz2 * (ue[kp1][1] * buf[kp1][3] - ue[km1][1] * buf[km1][3]) + zzcon2 * (buf[kp1][1] - 2.0 * buf[k][1] + buf[km1][1]) + dz2tz1 * (ue[kp1][1] - 2.0 * ue[k][1] + ue[km1][1]);
                    /*[11]*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - tz2 * (ue[kp1][2] * buf[kp1][3] - ue[km1][2] * buf[km1][3]) + zzcon2 * (buf[kp1][2] - 2.0 * buf[k][2] + buf[km1][2]) + dz3tz1 * (ue[kp1][2] - 2.0 * ue[k][2] + ue[km1][2]);
                    /*[11]*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - tz2 * ((ue[kp1][3] * buf[kp1][3] + c2 * (ue[kp1][4] - q[kp1])) - (ue[km1][3] * buf[km1][3] + c2 * (ue[km1][4] - q[km1]))) + zzcon1 * (buf[kp1][3] - 2.0 * buf[k][3] + buf[km1][3]) + dz4tz1 * (ue[kp1][3] - 2.0 * ue[k][3] + ue[km1][3]);
                    /*[11]*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - tz2 * (buf[kp1][3] * (c1 * ue[kp1][4] - c2 * q[kp1]) - buf[km1][3] * (c1 * ue[km1][4] - c2 * q[km1])) + 0.5 * zzcon3 * (buf[kp1][0] - 2.0 * buf[k][0] + buf[km1][0]) + zzcon4 * (cuf[kp1] - 2.0 * cuf[k] + cuf[km1]) + zzcon5 * (buf[kp1][4] - 2.0 * buf[k][4] + buf[km1][4]) + dz5tz1 * (ue[kp1][4] - 2.0 * ue[k][4] + ue[km1][4]);
                }
                /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (m = 0; m < 5; m++) {
                /*[11]*/
                    /*[11]*/
                    k = 1;
                    /*[11]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                    /*[11]*/
                    k = 2;
                    /*[11]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                }
                /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (m = 0; m < 5; m++) {
                /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    for (k = 1 * 3; k <= grid_points[2] - 3 * 1 - 1; k++) {
                    /*[11]*/
                        /*[11]*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                    }
                }
                /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (m = 0; m < 5; m++) {
                /*[11]*/
                    /*[11]*/
                    k = grid_points[2] - 3;
                    /*[11]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m]);
                    /*[11]*/
                    k = grid_points[2] - 2;
                    /*[11]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 5.0 * ue[k][m]);
                }
            }
        }
        /*[11]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[11]*/
#pragma omp barrier
        /*[12]*/
#pragma omp for nowait
        /*[12]*/
        /*[12]*/
        /*[12]*/
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*[12]*/
            /*[12]*/
            /*[12]*/
            /*[12]*/
            /*[12]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
            /*[12]*/
                /*[12]*/
                /*[12]*/
                /*[12]*/
                /*[12]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    for (m = 0; m < 5; m++) {
                    /*[12]*/
                        /*[12]*/
                        forcing[i][j][k][m] = -1.0 * forcing[i][j][k][m];
                    }
                }
            }
        }
    }
    /*[13]*/
#pragma omp parallel
    {
    /*[13]*/
        /*[13]*/
        int i_imopVar92;
        /*[13]*/
        int j_imopVar93;
        /*[13]*/
        int k_imopVar94;
        /*[13]*/
        int m_imopVar95;
        /*[13]*/
        double rho_inv_imopVar119;
        /*[13]*/
        double uijk_imopVar120;
        /*[13]*/
        double up1_imopVar121;
        /*[13]*/
        double um1_imopVar122;
        /*[13]*/
        double vijk_imopVar123;
        /*[13]*/
        double vp1_imopVar124;
        /*[13]*/
        double vm1_imopVar125;
        /*[13]*/
        double wijk_imopVar126;
        /*[13]*/
        double wp1_imopVar127;
        /*[13]*/
        double wm1_imopVar128;
        /*[13]*/
#pragma omp for nowait
        /*[13]*/
        /*[13]*/
        /*[13]*/
        for (i_imopVar92 = 0; i_imopVar92 < grid_points[0]; i_imopVar92++) {
        /*[13]*/
            /*[13]*/
            /*[13]*/
            /*[13]*/
            /*[13]*/
            for (j_imopVar93 = 0; j_imopVar93 < grid_points[1]; j_imopVar93++) {
            /*[13]*/
                /*[13]*/
                /*[13]*/
                /*[13]*/
                /*[13]*/
                for (k_imopVar94 = 0; k_imopVar94 < grid_points[2]; k_imopVar94++) {
                /*[13]*/
                    /*[13]*/
                    rho_inv_imopVar119 = 1.0 / u[i_imopVar92][j_imopVar93][k_imopVar94][0];
                    /*[13]*/
                    rho_i[i_imopVar92][j_imopVar93][k_imopVar94] = rho_inv_imopVar119;
                    /*[13]*/
                    us[i_imopVar92][j_imopVar93][k_imopVar94] = u[i_imopVar92][j_imopVar93][k_imopVar94][1] * rho_inv_imopVar119;
                    /*[13]*/
                    vs[i_imopVar92][j_imopVar93][k_imopVar94] = u[i_imopVar92][j_imopVar93][k_imopVar94][2] * rho_inv_imopVar119;
                    /*[13]*/
                    ws[i_imopVar92][j_imopVar93][k_imopVar94] = u[i_imopVar92][j_imopVar93][k_imopVar94][3] * rho_inv_imopVar119;
                    /*[13]*/
                    square[i_imopVar92][j_imopVar93][k_imopVar94] = 0.5 * (u[i_imopVar92][j_imopVar93][k_imopVar94][1] * u[i_imopVar92][j_imopVar93][k_imopVar94][1] + u[i_imopVar92][j_imopVar93][k_imopVar94][2] * u[i_imopVar92][j_imopVar93][k_imopVar94][2] + u[i_imopVar92][j_imopVar93][k_imopVar94][3] * u[i_imopVar92][j_imopVar93][k_imopVar94][3]) * rho_inv_imopVar119;
                    /*[13]*/
                    qs[i_imopVar92][j_imopVar93][k_imopVar94] = square[i_imopVar92][j_imopVar93][k_imopVar94] * rho_inv_imopVar119;
                }
            }
        }
        /*[13]*/
#pragma omp for nowait
        /*[13]*/
        /*[13]*/
        /*[13]*/
        for (i_imopVar92 = 0; i_imopVar92 < grid_points[0]; i_imopVar92++) {
        /*[13]*/
            /*[13]*/
            /*[13]*/
            /*[13]*/
            /*[13]*/
            for (j_imopVar93 = 0; j_imopVar93 < grid_points[1]; j_imopVar93++) {
            /*[13]*/
                /*[13]*/
                /*[13]*/
                /*[13]*/
                /*[13]*/
                for (k_imopVar94 = 0; k_imopVar94 < grid_points[2]; k_imopVar94++) {
                /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[13]*/
                        /*[13]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = forcing[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95];
                    }
                }
            }
        }
        /*[13]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[13]*/
#pragma omp barrier
        /*[14]*/
#pragma omp for nowait
        /*[14]*/
        /*[14]*/
        /*[14]*/
        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
        /*[14]*/
            /*[14]*/
            /*[14]*/
            /*[14]*/
            /*[14]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[14]*/
                /*[14]*/
                /*[14]*/
                /*[14]*/
                /*[14]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[14]*/
                    /*[14]*/
                    uijk_imopVar120 = us[i_imopVar92][j_imopVar93][k_imopVar94];
                    /*[14]*/
                    up1_imopVar121 = us[i_imopVar92 + 1][j_imopVar93][k_imopVar94];
                    /*[14]*/
                    um1_imopVar122 = us[i_imopVar92 - 1][j_imopVar93][k_imopVar94];
                    /*[14]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][0] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][0] + dx1tx1 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][0] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][0] + u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][0]) - tx2 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][1] - u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][1]);
                    /*[14]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][1] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][1] + dx2tx1 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][1] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][1] + u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][1]) + xxcon2 * con43 * (up1_imopVar121 - 2.0 * uijk_imopVar120 + um1_imopVar122) - tx2 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][1] * up1_imopVar121 - u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][1] * um1_imopVar122 + (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][4] - square[i_imopVar92 + 1][j_imopVar93][k_imopVar94] - u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][4] + square[i_imopVar92 - 1][j_imopVar93][k_imopVar94]) * c2);
                    /*[14]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][2] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][2] + dx3tx1 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][2] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][2] + u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][2]) + xxcon2 * (vs[i_imopVar92 + 1][j_imopVar93][k_imopVar94] - 2.0 * vs[i_imopVar92][j_imopVar93][k_imopVar94] + vs[i_imopVar92 - 1][j_imopVar93][k_imopVar94]) - tx2 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][2] * up1_imopVar121 - u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][2] * um1_imopVar122);
                    /*[14]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][3] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][3] + dx4tx1 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][3] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][3] + u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][3]) + xxcon2 * (ws[i_imopVar92 + 1][j_imopVar93][k_imopVar94] - 2.0 * ws[i_imopVar92][j_imopVar93][k_imopVar94] + ws[i_imopVar92 - 1][j_imopVar93][k_imopVar94]) - tx2 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][3] * up1_imopVar121 - u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][3] * um1_imopVar122);
                    /*[14]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][4] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][4] + dx5tx1 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][4] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][4] + u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][4]) + xxcon3 * (qs[i_imopVar92 + 1][j_imopVar93][k_imopVar94] - 2.0 * qs[i_imopVar92][j_imopVar93][k_imopVar94] + qs[i_imopVar92 - 1][j_imopVar93][k_imopVar94]) + xxcon4 * (up1_imopVar121 * up1_imopVar121 - 2.0 * uijk_imopVar120 * uijk_imopVar120 + um1_imopVar122 * um1_imopVar122) + xxcon5 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][4] * rho_i[i_imopVar92 + 1][j_imopVar93][k_imopVar94] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][4] * rho_i[i_imopVar92][j_imopVar93][k_imopVar94] + u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][4] * rho_i[i_imopVar92 - 1][j_imopVar93][k_imopVar94]) - tx2 * ((c1 * u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][4] - c2 * square[i_imopVar92 + 1][j_imopVar93][k_imopVar94]) * up1_imopVar121 - (c1 * u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][4] - c2 * square[i_imopVar92 - 1][j_imopVar93][k_imopVar94]) * um1_imopVar122);
                }
            }
        }
        /*[14]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[14]*/
#pragma omp barrier
        /*[15]*/
        i_imopVar92 = 1;
        /*[15]*/
#pragma omp for nowait
        /*[15]*/
        /*[15]*/
        /*[15]*/
        for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
        /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
            /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                /*[15]*/
                    /*[15]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (5.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][m_imopVar95] + u[i_imopVar92 + 2][j_imopVar93][k_imopVar94][m_imopVar95]);
                }
            }
        }
        /*[15]*/
        i_imopVar92 = 2;
        /*[15]*/
#pragma omp for nowait
        /*[15]*/
        /*[15]*/
        /*[15]*/
        for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
        /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
            /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                /*[15]*/
                    /*[15]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (-4.0 * u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][m_imopVar95] + u[i_imopVar92 + 2][j_imopVar93][k_imopVar94][m_imopVar95]);
                }
            }
        }
        /*[15]*/
#pragma omp for nowait
        /*[15]*/
        /*[15]*/
        /*[15]*/
        for (i_imopVar92 = 3; i_imopVar92 < grid_points[0] - 3; i_imopVar92++) {
        /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[15]*/
                        /*[15]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92 - 2][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][m_imopVar95] + u[i_imopVar92 + 2][j_imopVar93][k_imopVar94][m_imopVar95]);
                    }
                }
            }
        }
        /*[15]*/
        i_imopVar92 = grid_points[0] - 3;
        /*[15]*/
#pragma omp for nowait
        /*[15]*/
        /*[15]*/
        /*[15]*/
        for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
        /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
            /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                /*[15]*/
                    /*[15]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92 - 2][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][m_imopVar95]);
                }
            }
        }
        /*[15]*/
        i_imopVar92 = grid_points[0] - 2;
        /*[15]*/
#pragma omp for nowait
        /*[15]*/
        /*[15]*/
        /*[15]*/
        for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
        /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
            /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                /*[15]*/
                    /*[15]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92 - 2][j_imopVar93][k_imopVar94][m_imopVar95] - 4. * u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][m_imopVar95] + 5.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95]);
                }
            }
        }
        /*[15]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[15]*/
#pragma omp barrier
        /*[16]*/
#pragma omp for nowait
        /*[16]*/
        /*[16]*/
        /*[16]*/
        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
        /*[16]*/
            /*[16]*/
            /*[16]*/
            /*[16]*/
            /*[16]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[16]*/
                    /*[16]*/
                    vijk_imopVar123 = vs[i_imopVar92][j_imopVar93][k_imopVar94];
                    /*[16]*/
                    vp1_imopVar124 = vs[i_imopVar92][j_imopVar93 + 1][k_imopVar94];
                    /*[16]*/
                    vm1_imopVar125 = vs[i_imopVar92][j_imopVar93 - 1][k_imopVar94];
                    /*[16]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][0] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][0] + dy1ty1 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][0] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][0] + u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][0]) - ty2 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][2] - u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][2]);
                    /*[16]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][1] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][1] + dy2ty1 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][1] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][1] + u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][1]) + yycon2 * (us[i_imopVar92][j_imopVar93 + 1][k_imopVar94] - 2.0 * us[i_imopVar92][j_imopVar93][k_imopVar94] + us[i_imopVar92][j_imopVar93 - 1][k_imopVar94]) - ty2 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][1] * vp1_imopVar124 - u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][1] * vm1_imopVar125);
                    /*[16]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][2] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][2] + dy3ty1 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][2] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][2] + u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][2]) + yycon2 * con43 * (vp1_imopVar124 - 2.0 * vijk_imopVar123 + vm1_imopVar125) - ty2 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][2] * vp1_imopVar124 - u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][2] * vm1_imopVar125 + (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][4] - square[i_imopVar92][j_imopVar93 + 1][k_imopVar94] - u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][4] + square[i_imopVar92][j_imopVar93 - 1][k_imopVar94]) * c2);
                    /*[16]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][3] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][3] + dy4ty1 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][3] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][3] + u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][3]) + yycon2 * (ws[i_imopVar92][j_imopVar93 + 1][k_imopVar94] - 2.0 * ws[i_imopVar92][j_imopVar93][k_imopVar94] + ws[i_imopVar92][j_imopVar93 - 1][k_imopVar94]) - ty2 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][3] * vp1_imopVar124 - u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][3] * vm1_imopVar125);
                    /*[16]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][4] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][4] + dy5ty1 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][4] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][4] + u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][4]) + yycon3 * (qs[i_imopVar92][j_imopVar93 + 1][k_imopVar94] - 2.0 * qs[i_imopVar92][j_imopVar93][k_imopVar94] + qs[i_imopVar92][j_imopVar93 - 1][k_imopVar94]) + yycon4 * (vp1_imopVar124 * vp1_imopVar124 - 2.0 * vijk_imopVar123 * vijk_imopVar123 + vm1_imopVar125 * vm1_imopVar125) + yycon5 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][4] * rho_i[i_imopVar92][j_imopVar93 + 1][k_imopVar94] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][4] * rho_i[i_imopVar92][j_imopVar93][k_imopVar94] + u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][4] * rho_i[i_imopVar92][j_imopVar93 - 1][k_imopVar94]) - ty2 * ((c1 * u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][4] - c2 * square[i_imopVar92][j_imopVar93 + 1][k_imopVar94]) * vp1_imopVar124 - (c1 * u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][4] - c2 * square[i_imopVar92][j_imopVar93 - 1][k_imopVar94]) * vm1_imopVar125);
                }
            }
        }
        /*[16]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[16]*/
#pragma omp barrier
        /*[17]*/
        j_imopVar93 = 1;
        /*[17]*/
#pragma omp for nowait
        /*[17]*/
        /*[17]*/
        /*[17]*/
        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
        /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
            /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                /*[17]*/
                    /*[17]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (5.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][m_imopVar95] + u[i_imopVar92][j_imopVar93 + 2][k_imopVar94][m_imopVar95]);
                }
            }
        }
        /*[17]*/
        j_imopVar93 = 2;
        /*[17]*/
#pragma omp for nowait
        /*[17]*/
        /*[17]*/
        /*[17]*/
        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
        /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
            /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                /*[17]*/
                    /*[17]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (-4.0 * u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][m_imopVar95] + u[i_imopVar92][j_imopVar93 + 2][k_imopVar94][m_imopVar95]);
                }
            }
        }
        /*[17]*/
#pragma omp for nowait
        /*[17]*/
        /*[17]*/
        /*[17]*/
        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
        /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            for (j_imopVar93 = 3; j_imopVar93 < grid_points[1] - 3; j_imopVar93++) {
            /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[17]*/
                        /*[17]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92][j_imopVar93 - 2][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][m_imopVar95] + u[i_imopVar92][j_imopVar93 + 2][k_imopVar94][m_imopVar95]);
                    }
                }
            }
        }
        /*[17]*/
        j_imopVar93 = grid_points[1] - 3;
        /*[17]*/
#pragma omp for nowait
        /*[17]*/
        /*[17]*/
        /*[17]*/
        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
        /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
            /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                /*[17]*/
                    /*[17]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92][j_imopVar93 - 2][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][m_imopVar95]);
                }
            }
        }
        /*[17]*/
        j_imopVar93 = grid_points[1] - 2;
        /*[17]*/
#pragma omp for nowait
        /*[17]*/
        /*[17]*/
        /*[17]*/
        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
        /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
            /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                /*[17]*/
                    /*[17]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92][j_imopVar93 - 2][k_imopVar94][m_imopVar95] - 4. * u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][m_imopVar95] + 5. * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95]);
                }
            }
        }
        /*[17]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[17]*/
#pragma omp barrier
        /*[18]*/
#pragma omp for nowait
        /*[18]*/
        /*[18]*/
        /*[18]*/
        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
        /*[18]*/
            /*[18]*/
            /*[18]*/
            /*[18]*/
            /*[18]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[18]*/
                    /*[18]*/
                    wijk_imopVar126 = ws[i_imopVar92][j_imopVar93][k_imopVar94];
                    /*[18]*/
                    wp1_imopVar127 = ws[i_imopVar92][j_imopVar93][k_imopVar94 + 1];
                    /*[18]*/
                    wm1_imopVar128 = ws[i_imopVar92][j_imopVar93][k_imopVar94 - 1];
                    /*[18]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][0] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][0] + dz1tz1 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][0] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][0] + u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][0]) - tz2 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][3] - u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][3]);
                    /*[18]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][1] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][1] + dz2tz1 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][1] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][1] + u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][1]) + zzcon2 * (us[i_imopVar92][j_imopVar93][k_imopVar94 + 1] - 2.0 * us[i_imopVar92][j_imopVar93][k_imopVar94] + us[i_imopVar92][j_imopVar93][k_imopVar94 - 1]) - tz2 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][1] * wp1_imopVar127 - u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][1] * wm1_imopVar128);
                    /*[18]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][2] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][2] + dz3tz1 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][2] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][2] + u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][2]) + zzcon2 * (vs[i_imopVar92][j_imopVar93][k_imopVar94 + 1] - 2.0 * vs[i_imopVar92][j_imopVar93][k_imopVar94] + vs[i_imopVar92][j_imopVar93][k_imopVar94 - 1]) - tz2 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][2] * wp1_imopVar127 - u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][2] * wm1_imopVar128);
                    /*[18]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][3] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][3] + dz4tz1 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][3] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][3] + u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][3]) + zzcon2 * con43 * (wp1_imopVar127 - 2.0 * wijk_imopVar126 + wm1_imopVar128) - tz2 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][3] * wp1_imopVar127 - u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][3] * wm1_imopVar128 + (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][4] - square[i_imopVar92][j_imopVar93][k_imopVar94 + 1] - u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][4] + square[i_imopVar92][j_imopVar93][k_imopVar94 - 1]) * c2);
                    /*[18]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][4] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][4] + dz5tz1 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][4] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][4] + u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][4]) + zzcon3 * (qs[i_imopVar92][j_imopVar93][k_imopVar94 + 1] - 2.0 * qs[i_imopVar92][j_imopVar93][k_imopVar94] + qs[i_imopVar92][j_imopVar93][k_imopVar94 - 1]) + zzcon4 * (wp1_imopVar127 * wp1_imopVar127 - 2.0 * wijk_imopVar126 * wijk_imopVar126 + wm1_imopVar128 * wm1_imopVar128) + zzcon5 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][4] * rho_i[i_imopVar92][j_imopVar93][k_imopVar94 + 1] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][4] * rho_i[i_imopVar92][j_imopVar93][k_imopVar94] + u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][4] * rho_i[i_imopVar92][j_imopVar93][k_imopVar94 - 1]) - tz2 * ((c1 * u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][4] - c2 * square[i_imopVar92][j_imopVar93][k_imopVar94 + 1]) * wp1_imopVar127 - (c1 * u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][4] - c2 * square[i_imopVar92][j_imopVar93][k_imopVar94 - 1]) * wm1_imopVar128);
                }
            }
        }
        /*[18]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[18]*/
#pragma omp barrier
        /*[19]*/
        k_imopVar94 = 1;
        /*[19]*/
#pragma omp for nowait
        /*[19]*/
        /*[19]*/
        /*[19]*/
        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
        /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                /*[19]*/
                    /*[19]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (5.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][m_imopVar95] + u[i_imopVar92][j_imopVar93][k_imopVar94 + 2][m_imopVar95]);
                }
            }
        }
        /*[19]*/
        k_imopVar94 = 2;
        /*[19]*/
#pragma omp for nowait
        /*[19]*/
        /*[19]*/
        /*[19]*/
        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
        /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                /*[19]*/
                    /*[19]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (-4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][m_imopVar95] + u[i_imopVar92][j_imopVar93][k_imopVar94 + 2][m_imopVar95]);
                }
            }
        }
        /*[19]*/
#pragma omp for nowait
        /*[19]*/
        /*[19]*/
        /*[19]*/
        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
        /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (k_imopVar94 = 3; k_imopVar94 < grid_points[2] - 3; k_imopVar94++) {
                /*[19]*/
                    /*[19]*/
                    /*[19]*/
                    /*[19]*/
                    /*[19]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[19]*/
                        /*[19]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92][j_imopVar93][k_imopVar94 - 2][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][m_imopVar95] + u[i_imopVar92][j_imopVar93][k_imopVar94 + 2][m_imopVar95]);
                    }
                }
            }
        }
        /*[19]*/
        k_imopVar94 = grid_points[2] - 3;
        /*[19]*/
#pragma omp for nowait
        /*[19]*/
        /*[19]*/
        /*[19]*/
        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
        /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                /*[19]*/
                    /*[19]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92][j_imopVar93][k_imopVar94 - 2][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][m_imopVar95]);
                }
            }
        }
        /*[19]*/
        k_imopVar94 = grid_points[2] - 2;
        /*[19]*/
#pragma omp for nowait
        /*[19]*/
        /*[19]*/
        /*[19]*/
        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
        /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                /*[19]*/
                    /*[19]*/
                    rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92][j_imopVar93][k_imopVar94 - 2][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][m_imopVar95] + 5.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95]);
                }
            }
        }
        /*[19]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[19]*/
#pragma omp barrier
        /*[20]*/
#pragma omp for nowait
        /*[20]*/
        /*[20]*/
        /*[20]*/
        for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
        /*[20]*/
            /*[20]*/
            /*[20]*/
            /*[20]*/
            /*[20]*/
            for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
            /*[20]*/
                /*[20]*/
                /*[20]*/
                /*[20]*/
                /*[20]*/
                for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
                    /*[20]*/
                        /*[20]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] * dt;
                    }
                }
            }
        }
        /*[20]*/
        int i_imopVar75;
        /*[20]*/
        int j_imopVar76;
        /*[20]*/
        int k_imopVar77;
        /*[20]*/
#pragma omp for nowait
        /*[20]*/
        /*[20]*/
        /*[20]*/
        for (j_imopVar76 = 1; j_imopVar76 < grid_points[1] - 1; j_imopVar76++) {
        /*[20]*/
            /*[20]*/
            /*[20]*/
            /*[20]*/
            /*[20]*/
            for (k_imopVar77 = 1; k_imopVar77 < grid_points[2] - 1; k_imopVar77++) {
            /*[20]*/
                /*[20]*/
                /*[20]*/
                /*[20]*/
                /*[20]*/
                for (i_imopVar75 = 0; i_imopVar75 < grid_points[0]; i_imopVar75++) {
                /*[20]*/
                    /*[20]*/
                    tmp1 = 1.0 / u[i_imopVar75][j_imopVar76][k_imopVar77][0];
                    /*[20]*/
                    tmp2 = tmp1 * tmp1;
                    /*[20]*/
                    tmp3 = tmp1 * tmp2;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][0][0] = 0.0;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][0][1] = 1.0;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][0][2] = 0.0;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][0][3] = 0.0;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][0][4] = 0.0;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][1][0] = -(u[i_imopVar75][j_imopVar76][k_imopVar77][1] * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][1]) + c2 * 0.50 * (u[i_imopVar75][j_imopVar76][k_imopVar77][1] * u[i_imopVar75][j_imopVar76][k_imopVar77][1] + u[i_imopVar75][j_imopVar76][k_imopVar77][2] * u[i_imopVar75][j_imopVar76][k_imopVar77][2] + u[i_imopVar75][j_imopVar76][k_imopVar77][3] * u[i_imopVar75][j_imopVar76][k_imopVar77][3]) * tmp2;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][1][1] = (2.0 - c2) * (u[i_imopVar75][j_imopVar76][k_imopVar77][1] / u[i_imopVar75][j_imopVar76][k_imopVar77][0]);
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][1][2] = -c2 * (u[i_imopVar75][j_imopVar76][k_imopVar77][2] * tmp1);
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][1][3] = -c2 * (u[i_imopVar75][j_imopVar76][k_imopVar77][3] * tmp1);
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][1][4] = c2;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][2][0] = -(u[i_imopVar75][j_imopVar76][k_imopVar77][1] * u[i_imopVar75][j_imopVar76][k_imopVar77][2]) * tmp2;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][2][1] = u[i_imopVar75][j_imopVar76][k_imopVar77][2] * tmp1;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][2][2] = u[i_imopVar75][j_imopVar76][k_imopVar77][1] * tmp1;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][2][3] = 0.0;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][2][4] = 0.0;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][3][0] = -(u[i_imopVar75][j_imopVar76][k_imopVar77][1] * u[i_imopVar75][j_imopVar76][k_imopVar77][3]) * tmp2;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][3][1] = u[i_imopVar75][j_imopVar76][k_imopVar77][3] * tmp1;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][3][2] = 0.0;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][3][3] = u[i_imopVar75][j_imopVar76][k_imopVar77][1] * tmp1;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][3][4] = 0.0;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][4][0] = (c2 * (u[i_imopVar75][j_imopVar76][k_imopVar77][1] * u[i_imopVar75][j_imopVar76][k_imopVar77][1] + u[i_imopVar75][j_imopVar76][k_imopVar77][2] * u[i_imopVar75][j_imopVar76][k_imopVar77][2] + u[i_imopVar75][j_imopVar76][k_imopVar77][3] * u[i_imopVar75][j_imopVar76][k_imopVar77][3]) * tmp2 - c1 * (u[i_imopVar75][j_imopVar76][k_imopVar77][4] * tmp1)) * (u[i_imopVar75][j_imopVar76][k_imopVar77][1] * tmp1);
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][4][1] = c1 * u[i_imopVar75][j_imopVar76][k_imopVar77][4] * tmp1 - 0.50 * c2 * (3.0 * u[i_imopVar75][j_imopVar76][k_imopVar77][1] * u[i_imopVar75][j_imopVar76][k_imopVar77][1] + u[i_imopVar75][j_imopVar76][k_imopVar77][2] * u[i_imopVar75][j_imopVar76][k_imopVar77][2] + u[i_imopVar75][j_imopVar76][k_imopVar77][3] * u[i_imopVar75][j_imopVar76][k_imopVar77][3]) * tmp2;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][4][2] = -c2 * (u[i_imopVar75][j_imopVar76][k_imopVar77][2] * u[i_imopVar75][j_imopVar76][k_imopVar77][1]) * tmp2;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][4][3] = -c2 * (u[i_imopVar75][j_imopVar76][k_imopVar77][3] * u[i_imopVar75][j_imopVar76][k_imopVar77][1]) * tmp2;
                    /*[20]*/
                    fjac[i_imopVar75][j_imopVar76][k_imopVar77][4][4] = c1 * (u[i_imopVar75][j_imopVar76][k_imopVar77][1] * tmp1);
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][0][0] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][0][1] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][0][2] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][0][3] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][0][4] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][1][0] = -con43 * c3c4 * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][1];
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][1][1] = con43 * c3c4 * tmp1;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][1][2] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][1][3] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][1][4] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][2][0] = -c3c4 * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][2];
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][2][1] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][2][2] = c3c4 * tmp1;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][2][3] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][2][4] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][3][0] = -c3c4 * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][3];
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][3][1] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][3][2] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][3][3] = c3c4 * tmp1;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][3][4] = 0.0;
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][4][0] = -(con43 * c3c4 - c1345) * tmp3 * (((u[i_imopVar75][j_imopVar76][k_imopVar77][1]) * (u[i_imopVar75][j_imopVar76][k_imopVar77][1]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVar75][j_imopVar76][k_imopVar77][2]) * (u[i_imopVar75][j_imopVar76][k_imopVar77][2]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVar75][j_imopVar76][k_imopVar77][3]) * (u[i_imopVar75][j_imopVar76][k_imopVar77][3]))) - c1345 * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][4];
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][4][1] = (con43 * c3c4 - c1345) * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][1];
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][4][2] = (c3c4 - c1345) * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][2];
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][4][3] = (c3c4 - c1345) * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][3];
                    /*[20]*/
                    njac[i_imopVar75][j_imopVar76][k_imopVar77][4][4] = c1345 * tmp1;
                }
                /*[20]*/
                /*[20]*/
                /*[20]*/
                /*[20]*/
                for (i_imopVar75 = 1; i_imopVar75 < grid_points[0] - 1; i_imopVar75++) {
                /*[20]*/
                    /*[20]*/
                    tmp1 = dt * tx1;
                    /*[20]*/
                    tmp2 = dt * tx2;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][0][0] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][0] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][0] - tmp1 * dx1;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][0][1] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][1] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][1];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][0][2] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][2] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][2];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][0][3] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][3] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][3];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][0][4] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][4] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][4];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][1][0] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][0] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][0];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][1][1] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][1] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][1] - tmp1 * dx2;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][1][2] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][2] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][2];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][1][3] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][3] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][3];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][1][4] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][4] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][4];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][2][0] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][0] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][0];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][2][1] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][1] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][1];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][2][2] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][2] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][2] - tmp1 * dx3;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][2][3] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][3] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][3];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][2][4] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][4] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][4];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][3][0] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][0] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][0];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][3][1] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][1] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][1];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][3][2] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][2] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][2];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][3][3] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][3] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][3] - tmp1 * dx4;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][3][4] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][4] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][4];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][4][0] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][0] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][0];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][4][1] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][1] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][1];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][4][2] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][2] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][2];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][4][3] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][3] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][3];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][4][4] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][4] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][4] - tmp1 * dx5;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][0][0] + tmp1 * 2.0 * dx1;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][0][1] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][0][1];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][0][2] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][0][2];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][0][3] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][0][3];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][0][4] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][0][4];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][1][0] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][1][0];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][1][1] + tmp1 * 2.0 * dx2;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][1][2] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][1][2];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][1][3] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][1][3];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][1][4] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][1][4];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][2][0] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][2][0];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][2][1] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][2][1];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][2][2] + tmp1 * 2.0 * dx3;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][2][3] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][2][3];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][2][4] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][2][4];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][3][0] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][3][0];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][3][1] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][3][1];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][3][2] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][3][2];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][3][3] + tmp1 * 2.0 * dx4;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][3][4] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][3][4];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][4][0] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][4][0];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][4][1] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][4][1];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][4][2] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][4][2];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][4][3] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][4][3];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][4][4] + tmp1 * 2.0 * dx5;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][0][0] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][0] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][0] - tmp1 * dx1;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][0][1] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][1] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][1];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][0][2] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][2] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][2];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][0][3] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][3] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][3];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][0][4] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][4] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][4];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][1][0] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][0] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][0];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][1][1] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][1] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][1] - tmp1 * dx2;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][1][2] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][2] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][2];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][1][3] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][3] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][3];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][1][4] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][4] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][4];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][2][0] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][0] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][0];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][2][1] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][1] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][1];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][2][2] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][2] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][2] - tmp1 * dx3;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][2][3] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][3] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][3];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][2][4] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][4] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][4];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][3][0] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][0] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][0];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][3][1] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][1] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][1];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][3][2] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][2] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][2];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][3][3] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][3] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][3] - tmp1 * dx4;
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][3][4] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][4] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][4];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][4][0] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][0] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][0];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][4][1] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][1] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][1];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][4][2] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][2] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][2];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][4][3] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][3] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][3];
                    /*[20]*/
                    lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][4][4] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][4] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][4] - tmp1 * dx5;
                }
            }
        }
        /*[20]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[20]*/
#pragma omp barrier
        /*[21]*/
        int i_imopVar78;
        /*[21]*/
        int j_imopVar79;
        /*[21]*/
        int k_imopVar80;
        /*[21]*/
        int isize;
        /*[21]*/
        isize = grid_points[0] - 1;
        /*[21]*/
#pragma omp for nowait
        /*[21]*/
        /*[21]*/
        /*[21]*/
        for (j_imopVar79 = 1; j_imopVar79 < grid_points[1] - 1; j_imopVar79++) {
        /*[21]*/
            /*[21]*/
            /*[21]*/
            /*[21]*/
            /*[21]*/
            for (k_imopVar80 = 1; k_imopVar80 < grid_points[2] - 1; k_imopVar80++) {
            /*[21]*/
                /*[21]*/
                double *_imopVarPre334;
                /*[21]*/
                double ( *_imopVarPre335 )[5];
                /*[21]*/
                double ( *_imopVarPre336 )[5];
                /*[21]*/
                _imopVarPre334 = rhs[0][j_imopVar79][k_imopVar80];
                /*[21]*/
                _imopVarPre335 = lhs[0][j_imopVar79][k_imopVar80][2];
                /*[21]*/
                _imopVarPre336 = lhs[0][j_imopVar79][k_imopVar80][1];
                /*[21]*/
                binvcrhs(_imopVarPre336, _imopVarPre335, _imopVarPre334);
                /*[21]*/
            }
        }
        /*[21]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[21]*/
#pragma omp barrier
        /*[22]*/
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[22]*/
        for (i_imopVar78 = 1; i_imopVar78 < isize; i_imopVar78++) {
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            for (j_imopVar79 = 1; j_imopVar79 < grid_points[1] - 1; j_imopVar79++) {
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                for (k_imopVar80 = 1; k_imopVar80 < grid_points[2] - 1; k_imopVar80++) {
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    double *_imopVarPre340;
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    double *_imopVarPre341;
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    double ( *_imopVarPre342 )[5];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre340 = rhs[i_imopVar78][j_imopVar79][k_imopVar80];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre341 = rhs[i_imopVar78 - 1][j_imopVar79][k_imopVar80];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre342 = lhs[i_imopVar78][j_imopVar79][k_imopVar80][0];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    matvec_sub(_imopVarPre342, _imopVarPre341, _imopVarPre340);
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    double ( *_imopVarPre346 )[5];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    double ( *_imopVarPre347 )[5];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    double ( *_imopVarPre348 )[5];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre346 = lhs[i_imopVar78][j_imopVar79][k_imopVar80][1];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre347 = lhs[i_imopVar78 - 1][j_imopVar79][k_imopVar80][2];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre348 = lhs[i_imopVar78][j_imopVar79][k_imopVar80][0];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    matmul_sub(_imopVarPre348, _imopVarPre347, _imopVarPre346);
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    double *_imopVarPre352;
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    double ( *_imopVarPre353 )[5];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    double ( *_imopVarPre354 )[5];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre352 = rhs[i_imopVar78][j_imopVar79][k_imopVar80];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre353 = lhs[i_imopVar78][j_imopVar79][k_imopVar80][2];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre354 = lhs[i_imopVar78][j_imopVar79][k_imopVar80][1];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    binvcrhs(_imopVarPre354, _imopVarPre353, _imopVarPre352);
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                }
            }
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
        }
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        for (j_imopVar79 = 1; j_imopVar79 < grid_points[1] - 1; j_imopVar79++) {
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            for (k_imopVar80 = 1; k_imopVar80 < grid_points[2] - 1; k_imopVar80++) {
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                double *_imopVarPre358;
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                double *_imopVarPre359;
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                double ( *_imopVarPre360 )[5];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre358 = rhs[isize][j_imopVar79][k_imopVar80];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre359 = rhs[isize - 1][j_imopVar79][k_imopVar80];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre360 = lhs[isize][j_imopVar79][k_imopVar80][0];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                matvec_sub(_imopVarPre360, _imopVarPre359, _imopVarPre358);
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                double ( *_imopVarPre364 )[5];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                double ( *_imopVarPre365 )[5];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                double ( *_imopVarPre366 )[5];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre364 = lhs[isize][j_imopVar79][k_imopVar80][1];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre365 = lhs[isize - 1][j_imopVar79][k_imopVar80][2];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre366 = lhs[isize][j_imopVar79][k_imopVar80][0];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                matmul_sub(_imopVarPre366, _imopVarPre365, _imopVarPre364);
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                double *_imopVarPre369;
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                double ( *_imopVarPre370 )[5];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre369 = rhs[i_imopVar78][j_imopVar79][k_imopVar80];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre370 = lhs[i_imopVar78][j_imopVar79][k_imopVar80][1];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                binvrhs(_imopVarPre370, _imopVarPre369);
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            }
        }
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        int i_imopVar129;
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        int j_imopVar130;
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        int k_imopVar131;
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        int m_imopVar132;
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        int n;
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        for (i_imopVar129 = grid_points[0] - 2; i_imopVar129 >= 0; i_imopVar129--) {
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            for (j_imopVar130 = 1; j_imopVar130 < grid_points[1] - 1; j_imopVar130++) {
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                for (k_imopVar131 = 1; k_imopVar131 < grid_points[2] - 1; k_imopVar131++) {
                /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    for (m_imopVar132 = 0; m_imopVar132 < 5; m_imopVar132++) {
                    /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                        for (n = 0; n < 5; n++) {
                        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                            rhs[i_imopVar129][j_imopVar130][k_imopVar131][m_imopVar132] = rhs[i_imopVar129][j_imopVar130][k_imopVar131][m_imopVar132] - lhs[i_imopVar129][j_imopVar130][k_imopVar131][2][m_imopVar132][n] * rhs[i_imopVar129 + 1][j_imopVar130][k_imopVar131][n];
                        }
                    }
                }
            }
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
        }
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        int i_imopVar87;
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        int j_imopVar88;
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        int k_imopVar89;
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        for (i_imopVar87 = 1; i_imopVar87 < grid_points[0] - 1; i_imopVar87++) {
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            for (j_imopVar88 = 0; j_imopVar88 < grid_points[1]; j_imopVar88++) {
            /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                for (k_imopVar89 = 1; k_imopVar89 < grid_points[2] - 1; k_imopVar89++) {
                /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    tmp1 = 1.0 / u[i_imopVar87][j_imopVar88][k_imopVar89][0];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    tmp2 = tmp1 * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    tmp3 = tmp1 * tmp2;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][0][0] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][0][1] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][0][2] = 1.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][0][3] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][0][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][1][0] = -(u[i_imopVar87][j_imopVar88][k_imopVar89][1] * u[i_imopVar87][j_imopVar88][k_imopVar89][2]) * tmp2;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][1][1] = u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][1][2] = u[i_imopVar87][j_imopVar88][k_imopVar89][1] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][1][3] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][1][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][2][0] = -(u[i_imopVar87][j_imopVar88][k_imopVar89][2] * u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp2) + 0.50 * c2 * ((u[i_imopVar87][j_imopVar88][k_imopVar89][1] * u[i_imopVar87][j_imopVar88][k_imopVar89][1] + u[i_imopVar87][j_imopVar88][k_imopVar89][2] * u[i_imopVar87][j_imopVar88][k_imopVar89][2] + u[i_imopVar87][j_imopVar88][k_imopVar89][3] * u[i_imopVar87][j_imopVar88][k_imopVar89][3]) * tmp2);
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][2][1] = -c2 * u[i_imopVar87][j_imopVar88][k_imopVar89][1] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][2][2] = (2.0 - c2) * u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][2][3] = -c2 * u[i_imopVar87][j_imopVar88][k_imopVar89][3] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][2][4] = c2;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][3][0] = -(u[i_imopVar87][j_imopVar88][k_imopVar89][2] * u[i_imopVar87][j_imopVar88][k_imopVar89][3]) * tmp2;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][3][1] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][3][2] = u[i_imopVar87][j_imopVar88][k_imopVar89][3] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][3][3] = u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][3][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][4][0] = (c2 * (u[i_imopVar87][j_imopVar88][k_imopVar89][1] * u[i_imopVar87][j_imopVar88][k_imopVar89][1] + u[i_imopVar87][j_imopVar88][k_imopVar89][2] * u[i_imopVar87][j_imopVar88][k_imopVar89][2] + u[i_imopVar87][j_imopVar88][k_imopVar89][3] * u[i_imopVar87][j_imopVar88][k_imopVar89][3]) * tmp2 - c1 * u[i_imopVar87][j_imopVar88][k_imopVar89][4] * tmp1) * u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][4][1] = -c2 * u[i_imopVar87][j_imopVar88][k_imopVar89][1] * u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp2;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][4][2] = c1 * u[i_imopVar87][j_imopVar88][k_imopVar89][4] * tmp1 - 0.50 * c2 * ((u[i_imopVar87][j_imopVar88][k_imopVar89][1] * u[i_imopVar87][j_imopVar88][k_imopVar89][1] + 3.0 * u[i_imopVar87][j_imopVar88][k_imopVar89][2] * u[i_imopVar87][j_imopVar88][k_imopVar89][2] + u[i_imopVar87][j_imopVar88][k_imopVar89][3] * u[i_imopVar87][j_imopVar88][k_imopVar89][3]) * tmp2);
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][4][3] = -c2 * (u[i_imopVar87][j_imopVar88][k_imopVar89][2] * u[i_imopVar87][j_imopVar88][k_imopVar89][3]) * tmp2;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar87][j_imopVar88][k_imopVar89][4][4] = c1 * u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][0][0] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][0][1] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][0][2] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][0][3] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][0][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][1][0] = -c3c4 * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][1];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][1][1] = c3c4 * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][1][2] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][1][3] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][1][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][2][0] = -con43 * c3c4 * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][2];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][2][1] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][2][2] = con43 * c3c4 * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][2][3] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][2][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][3][0] = -c3c4 * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][3];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][3][1] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][3][2] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][3][3] = c3c4 * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][3][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i_imopVar87][j_imopVar88][k_imopVar89][1]) * (u[i_imopVar87][j_imopVar88][k_imopVar89][1]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i_imopVar87][j_imopVar88][k_imopVar89][2]) * (u[i_imopVar87][j_imopVar88][k_imopVar89][2]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVar87][j_imopVar88][k_imopVar89][3]) * (u[i_imopVar87][j_imopVar88][k_imopVar89][3]))) - c1345 * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][4];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][4][1] = (c3c4 - c1345) * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][1];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][4][2] = (con43 * c3c4 - c1345) * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][2];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][4][3] = (c3c4 - c1345) * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][3];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar87][j_imopVar88][k_imopVar89][4][4] = c1345 * tmp1;
                }
            }
        }
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        for (i_imopVar87 = 1; i_imopVar87 < grid_points[0] - 1; i_imopVar87++) {
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            for (j_imopVar88 = 1; j_imopVar88 < grid_points[1] - 1; j_imopVar88++) {
            /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                for (k_imopVar89 = 1; k_imopVar89 < grid_points[2] - 1; k_imopVar89++) {
                /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    tmp1 = dt * ty1;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    tmp2 = dt * ty2;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][0][0] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][0] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][0] - tmp1 * dy1;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][0][1] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][1] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][0][2] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][2] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][0][3] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][3] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][0][4] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][4] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][1][0] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][0] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][1][1] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][1] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][1] - tmp1 * dy2;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][1][2] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][2] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][1][3] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][3] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][1][4] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][4] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][2][0] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][0] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][2][1] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][1] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][2][2] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][2] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][2] - tmp1 * dy3;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][2][3] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][3] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][2][4] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][4] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][3][0] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][0] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][3][1] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][1] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][3][2] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][2] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][3][3] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][3] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][3] - tmp1 * dy4;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][3][4] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][4] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][4][0] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][0] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][4][1] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][1] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][4][2] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][2] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][4][3] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][3] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][4][4] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][4] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][4] - tmp1 * dy5;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][0][0] + tmp1 * 2.0 * dy1;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][0][1] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][0][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][0][2] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][0][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][0][3] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][0][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][0][4] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][0][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][1][0] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][1][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][1][1] + tmp1 * 2.0 * dy2;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][1][2] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][1][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][1][3] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][1][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][1][4] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][1][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][2][0] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][2][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][2][1] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][2][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][2][2] + tmp1 * 2.0 * dy3;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][2][3] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][2][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][2][4] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][2][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][3][0] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][3][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][3][1] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][3][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][3][2] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][3][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][3][3] + tmp1 * 2.0 * dy4;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][3][4] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][3][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][4][0] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][4][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][4][1] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][4][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][4][2] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][4][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][4][3] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][4][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][4][4] + tmp1 * 2.0 * dy5;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][0][0] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][0] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][0] - tmp1 * dy1;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][0][1] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][1] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][0][2] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][2] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][0][3] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][3] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][0][4] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][4] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][1][0] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][0] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][1][1] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][1] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][1] - tmp1 * dy2;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][1][2] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][2] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][1][3] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][3] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][1][4] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][4] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][2][0] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][0] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][2][1] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][1] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][2][2] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][2] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][2] - tmp1 * dy3;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][2][3] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][3] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][2][4] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][4] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][3][0] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][0] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][3][1] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][1] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][3][2] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][2] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][3][3] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][3] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][3] - tmp1 * dy4;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][3][4] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][4] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][4][0] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][0] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][4][1] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][1] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][4][2] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][2] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][4][3] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][3] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                    lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][4][4] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][4] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][4] - tmp1 * dy5;
                }
            }
        }
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        int i_imopVar81;
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        int j_imopVar82;
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        int k_imopVar83;
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        int jsize;
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        jsize = grid_points[1] - 1;
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        for (i_imopVar81 = 1; i_imopVar81 < grid_points[0] - 1; i_imopVar81++) {
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            for (k_imopVar83 = 1; k_imopVar83 < grid_points[2] - 1; k_imopVar83++) {
            /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                double *_imopVarPre374;
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                double ( *_imopVarPre375 )[5];
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                double ( *_imopVarPre376 )[5];
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre374 = rhs[i_imopVar81][0][k_imopVar83];
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre375 = lhs[i_imopVar81][0][k_imopVar83][2];
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre376 = lhs[i_imopVar81][0][k_imopVar83][1];
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
                binvcrhs(_imopVarPre376, _imopVarPre375, _imopVarPre374);
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
            }
        }
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
        /*[27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[28, 29, 30, 31, 32, 33, 34]*/
        /*[27, 28, 29, 30, 31, 32, 33, 34]*/
        for (j_imopVar82 = 1; j_imopVar82 < jsize; j_imopVar82++) {
        /*[27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
            /*[27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34]*/
            for (i_imopVar81 = 1; i_imopVar81 < grid_points[0] - 1; i_imopVar81++) {
            /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                for (k_imopVar83 = 1; k_imopVar83 < grid_points[2] - 1; k_imopVar83++) {
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    double *_imopVarPre380;
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    double *_imopVarPre381;
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    double ( *_imopVarPre382 )[5];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre380 = rhs[i_imopVar81][j_imopVar82][k_imopVar83];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre381 = rhs[i_imopVar81][j_imopVar82 - 1][k_imopVar83];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre382 = lhs[i_imopVar81][j_imopVar82][k_imopVar83][0];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    matvec_sub(_imopVarPre382, _imopVarPre381, _imopVarPre380);
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    double ( *_imopVarPre386 )[5];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    double ( *_imopVarPre387 )[5];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    double ( *_imopVarPre388 )[5];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre386 = lhs[i_imopVar81][j_imopVar82][k_imopVar83][1];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre387 = lhs[i_imopVar81][j_imopVar82 - 1][k_imopVar83][2];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre388 = lhs[i_imopVar81][j_imopVar82][k_imopVar83][0];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    matmul_sub(_imopVarPre388, _imopVarPre387, _imopVarPre386);
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    double *_imopVarPre392;
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    double ( *_imopVarPre393 )[5];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    double ( *_imopVarPre394 )[5];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre392 = rhs[i_imopVar81][j_imopVar82][k_imopVar83];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre393 = lhs[i_imopVar81][j_imopVar82][k_imopVar83][2];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    _imopVarPre394 = lhs[i_imopVar81][j_imopVar82][k_imopVar83][1];
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                    binvcrhs(_imopVarPre394, _imopVarPre393, _imopVarPre392);
                    /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                }
            }
            /*[27, 28, 29, 30, 31, 32, 33, 34]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
        }
        /*[27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
        /*[27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[27, 28, 29, 30, 31, 32, 33, 34]*/
        /*[27, 28, 29, 30, 31, 32, 33, 34]*/
        for (i_imopVar81 = 1; i_imopVar81 < grid_points[0] - 1; i_imopVar81++) {
        /*[27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34]*/
            for (k_imopVar83 = 1; k_imopVar83 < grid_points[2] - 1; k_imopVar83++) {
            /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                double *_imopVarPre398;
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                double *_imopVarPre399;
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                double ( *_imopVarPre400 )[5];
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre398 = rhs[i_imopVar81][jsize][k_imopVar83];
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre399 = rhs[i_imopVar81][jsize - 1][k_imopVar83];
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre400 = lhs[i_imopVar81][jsize][k_imopVar83][0];
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                matvec_sub(_imopVarPre400, _imopVarPre399, _imopVarPre398);
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                double ( *_imopVarPre404 )[5];
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                double ( *_imopVarPre405 )[5];
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                double ( *_imopVarPre406 )[5];
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre404 = lhs[i_imopVar81][jsize][k_imopVar83][1];
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre405 = lhs[i_imopVar81][jsize - 1][k_imopVar83][2];
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre406 = lhs[i_imopVar81][jsize][k_imopVar83][0];
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                matmul_sub(_imopVarPre406, _imopVarPre405, _imopVarPre404);
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                double *_imopVarPre409;
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                double ( *_imopVarPre410 )[5];
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre409 = rhs[i_imopVar81][jsize][k_imopVar83];
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                _imopVarPre410 = lhs[i_imopVar81][jsize][k_imopVar83][1];
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
                binvrhs(_imopVarPre410, _imopVarPre409);
                /*[27, 28, 29, 30, 31, 32, 33, 34]*/
            }
        }
        /*[27, 28, 29, 30, 31, 32, 33, 34]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[27, 28, 29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
        /*[28, 29, 30, 31, 32, 33, 34]*/
        int i_imopVar84;
        /*[28, 29, 30, 31, 32, 33, 34]*/
        int j_imopVar85;
        /*[28, 29, 30, 31, 32, 33, 34]*/
        int k_imopVar86;
        /*[28, 29, 30, 31, 32, 33, 34]*/
        int m_imopVar90;
        /*[28, 29, 30, 31, 32, 33, 34]*/
        int n_imopVar91;
        /*[28, 29, 30, 31, 32, 33, 34]*/
        /*[28, 29, 30, 31, 32, 33, 34]*/
        /*[29, 30, 31, 32, 33, 34]*/
        /*[28, 29, 30, 31, 32, 33, 34]*/
        for (j_imopVar85 = grid_points[1] - 2; j_imopVar85 >= 0; j_imopVar85--) {
        /*[28, 29, 30, 31, 32, 33, 34]*/
            /*[28, 29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
            /*[28, 29, 30, 31, 32, 33, 34]*/
            /*[28, 29, 30, 31, 32, 33, 34]*/
            /*[28, 29, 30, 31, 32, 33, 34]*/
            for (i_imopVar84 = 1; i_imopVar84 < grid_points[0] - 1; i_imopVar84++) {
            /*[28, 29, 30, 31, 32, 33, 34]*/
                /*[28, 29, 30, 31, 32, 33, 34]*/
                /*[28, 29, 30, 31, 32, 33, 34]*/
                /*[28, 29, 30, 31, 32, 33, 34]*/
                /*[28, 29, 30, 31, 32, 33, 34]*/
                for (k_imopVar86 = 1; k_imopVar86 < grid_points[2] - 1; k_imopVar86++) {
                /*[28, 29, 30, 31, 32, 33, 34]*/
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                    for (m_imopVar90 = 0; m_imopVar90 < 5; m_imopVar90++) {
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        for (n_imopVar91 = 0; n_imopVar91 < 5; n_imopVar91++) {
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                            /*[28, 29, 30, 31, 32, 33, 34]*/
                            rhs[i_imopVar84][j_imopVar85][k_imopVar86][m_imopVar90] = rhs[i_imopVar84][j_imopVar85][k_imopVar86][m_imopVar90] - lhs[i_imopVar84][j_imopVar85][k_imopVar86][2][m_imopVar90][n_imopVar91] * rhs[i_imopVar84][j_imopVar85 + 1][k_imopVar86][n_imopVar91];
                        }
                    }
                }
            }
            /*[28, 29, 30, 31, 32, 33, 34]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[28, 29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
        }
        /*[28, 29, 30, 31, 32, 33, 34]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[28, 29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
        /*[29, 30, 31, 32, 33, 34]*/
        int i_imopVar99;
        /*[29, 30, 31, 32, 33, 34]*/
        int j_imopVar100;
        /*[29, 30, 31, 32, 33, 34]*/
        int k_imopVar101;
        /*[29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
        /*[29, 30, 31, 32, 33, 34]*/
        /*[29, 30, 31, 32, 33, 34]*/
        /*[29, 30, 31, 32, 33, 34]*/
        for (i_imopVar99 = 1; i_imopVar99 < grid_points[0] - 1; i_imopVar99++) {
        /*[29, 30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            for (j_imopVar100 = 1; j_imopVar100 < grid_points[1] - 1; j_imopVar100++) {
            /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                for (k_imopVar101 = 0; k_imopVar101 < grid_points[2]; k_imopVar101++) {
                /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    tmp1 = 1.0 / u[i_imopVar99][j_imopVar100][k_imopVar101][0];
                    /*[29, 30, 31, 32, 33, 34]*/
                    tmp2 = tmp1 * tmp1;
                    /*[29, 30, 31, 32, 33, 34]*/
                    tmp3 = tmp1 * tmp2;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][0][0] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][0][1] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][0][2] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][0][3] = 1.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][0][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][1][0] = -(u[i_imopVar99][j_imopVar100][k_imopVar101][1] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][1][1] = u[i_imopVar99][j_imopVar100][k_imopVar101][3] * tmp1;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][1][2] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][1][3] = u[i_imopVar99][j_imopVar100][k_imopVar101][1] * tmp1;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][1][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][2][0] = -(u[i_imopVar99][j_imopVar100][k_imopVar101][2] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][2][1] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][2][2] = u[i_imopVar99][j_imopVar100][k_imopVar101][3] * tmp1;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][2][3] = u[i_imopVar99][j_imopVar100][k_imopVar101][2] * tmp1;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][2][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][3][0] = -(u[i_imopVar99][j_imopVar100][k_imopVar101][3] * u[i_imopVar99][j_imopVar100][k_imopVar101][3] * tmp2) + 0.50 * c2 * ((u[i_imopVar99][j_imopVar100][k_imopVar101][1] * u[i_imopVar99][j_imopVar100][k_imopVar101][1] + u[i_imopVar99][j_imopVar100][k_imopVar101][2] * u[i_imopVar99][j_imopVar100][k_imopVar101][2] + u[i_imopVar99][j_imopVar100][k_imopVar101][3] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2);
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][3][1] = -c2 * u[i_imopVar99][j_imopVar100][k_imopVar101][1] * tmp1;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][3][2] = -c2 * u[i_imopVar99][j_imopVar100][k_imopVar101][2] * tmp1;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][3][3] = (2.0 - c2) * u[i_imopVar99][j_imopVar100][k_imopVar101][3] * tmp1;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][3][4] = c2;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][4][0] = (c2 * (u[i_imopVar99][j_imopVar100][k_imopVar101][1] * u[i_imopVar99][j_imopVar100][k_imopVar101][1] + u[i_imopVar99][j_imopVar100][k_imopVar101][2] * u[i_imopVar99][j_imopVar100][k_imopVar101][2] + u[i_imopVar99][j_imopVar100][k_imopVar101][3] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2 - c1 * (u[i_imopVar99][j_imopVar100][k_imopVar101][4] * tmp1)) * (u[i_imopVar99][j_imopVar100][k_imopVar101][3] * tmp1);
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][4][1] = -c2 * (u[i_imopVar99][j_imopVar100][k_imopVar101][1] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][4][2] = -c2 * (u[i_imopVar99][j_imopVar100][k_imopVar101][2] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2;
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][4][3] = c1 * (u[i_imopVar99][j_imopVar100][k_imopVar101][4] * tmp1) - 0.50 * c2 * ((u[i_imopVar99][j_imopVar100][k_imopVar101][1] * u[i_imopVar99][j_imopVar100][k_imopVar101][1] + u[i_imopVar99][j_imopVar100][k_imopVar101][2] * u[i_imopVar99][j_imopVar100][k_imopVar101][2] + 3.0 * u[i_imopVar99][j_imopVar100][k_imopVar101][3] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2);
                    /*[29, 30, 31, 32, 33, 34]*/
                    fjac[i_imopVar99][j_imopVar100][k_imopVar101][4][4] = c1 * u[i_imopVar99][j_imopVar100][k_imopVar101][3] * tmp1;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][0][0] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][0][1] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][0][2] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][0][3] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][0][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][1][0] = -c3c4 * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][1];
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][1][1] = c3c4 * tmp1;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][1][2] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][1][3] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][1][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][2][0] = -c3c4 * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][2];
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][2][1] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][2][2] = c3c4 * tmp1;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][2][3] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][2][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][3][0] = -con43 * c3c4 * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][3];
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][3][1] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][3][2] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][3][3] = con43 * c3 * c4 * tmp1;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][3][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i_imopVar99][j_imopVar100][k_imopVar101][1]) * (u[i_imopVar99][j_imopVar100][k_imopVar101][1]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVar99][j_imopVar100][k_imopVar101][2]) * (u[i_imopVar99][j_imopVar100][k_imopVar101][2]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * (u[i_imopVar99][j_imopVar100][k_imopVar101][3]))) - c1345 * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][4];
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][4][1] = (c3c4 - c1345) * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][1];
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][4][2] = (c3c4 - c1345) * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][2];
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][4][3] = (con43 * c3c4 - c1345) * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][3];
                    /*[29, 30, 31, 32, 33, 34]*/
                    njac[i_imopVar99][j_imopVar100][k_imopVar101][4][4] = c1345 * tmp1;
                }
            }
        }
        /*[29, 30, 31, 32, 33, 34]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
        /*[30, 31, 32, 33, 34]*/
#pragma omp for nowait
        /*[30, 31, 32, 33, 34]*/
        /*[30, 31, 32, 33, 34]*/
        /*[30, 31, 32, 33, 34]*/
        for (i_imopVar99 = 1; i_imopVar99 < grid_points[0] - 1; i_imopVar99++) {
        /*[30, 31, 32, 33, 34]*/
            /*[30, 31, 32, 33, 34]*/
            /*[30, 31, 32, 33, 34]*/
            /*[30, 31, 32, 33, 34]*/
            /*[30, 31, 32, 33, 34]*/
            for (j_imopVar100 = 1; j_imopVar100 < grid_points[1] - 1; j_imopVar100++) {
            /*[30, 31, 32, 33, 34]*/
                /*[30, 31, 32, 33, 34]*/
                /*[30, 31, 32, 33, 34]*/
                /*[30, 31, 32, 33, 34]*/
                /*[30, 31, 32, 33, 34]*/
                for (k_imopVar101 = 1; k_imopVar101 < grid_points[2] - 1; k_imopVar101++) {
                /*[30, 31, 32, 33, 34]*/
                    /*[30, 31, 32, 33, 34]*/
                    tmp1 = dt * tz1;
                    /*[30, 31, 32, 33, 34]*/
                    tmp2 = dt * tz2;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][0][0] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][0] - tmp1 * dz1;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][0][1] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][1];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][0][2] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][2];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][0][3] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][3];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][0][4] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][4];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][1][0] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][0];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][1][1] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][1] - tmp1 * dz2;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][1][2] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][2];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][1][3] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][3];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][1][4] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][4];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][2][0] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][0];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][2][1] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][1];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][2][2] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][2] - tmp1 * dz3;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][2][3] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][3];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][2][4] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][4];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][3][0] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][0];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][3][1] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][1];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][3][2] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][2];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][3][3] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][3] - tmp1 * dz4;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][3][4] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][4];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][4][0] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][0];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][4][1] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][1];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][4][2] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][2];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][4][3] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][3];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][4][4] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][4] - tmp1 * dz5;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][0][0] + tmp1 * 2.0 * dz1;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][0][1] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][0][1];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][0][2] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][0][2];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][0][3] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][0][3];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][0][4] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][0][4];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][1][0] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][1][0];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][1][1] + tmp1 * 2.0 * dz2;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][1][2] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][1][2];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][1][3] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][1][3];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][1][4] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][1][4];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][2][0] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][2][0];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][2][1] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][2][1];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][2][2] + tmp1 * 2.0 * dz3;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][2][3] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][2][3];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][2][4] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][2][4];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][3][0] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][3][0];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][3][1] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][3][1];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][3][2] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][3][2];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][3][3] + tmp1 * 2.0 * dz4;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][3][4] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][3][4];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][4][0] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][4][0];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][4][1] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][4][1];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][4][2] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][4][2];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][4][3] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][4][3];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][4][4] + tmp1 * 2.0 * dz5;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][0][0] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][0] - tmp1 * dz1;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][0][1] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][1];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][0][2] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][2];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][0][3] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][3];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][0][4] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][4];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][1][0] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][0];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][1][1] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][1] - tmp1 * dz2;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][1][2] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][2];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][1][3] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][3];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][1][4] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][4];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][2][0] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][0];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][2][1] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][1];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][2][2] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][2] - tmp1 * dz3;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][2][3] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][3];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][2][4] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][4];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][3][0] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][0];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][3][1] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][1];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][3][2] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][2];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][3][3] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][3] - tmp1 * dz4;
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][3][4] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][4];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][4][0] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][0];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][4][1] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][1];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][4][2] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][2];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][4][3] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][3];
                    /*[30, 31, 32, 33, 34]*/
                    lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][4][4] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][4] - tmp1 * dz5;
                }
            }
        }
        /*[30, 31, 32, 33, 34]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[30, 31, 32, 33, 34]*/
#pragma omp barrier
        /*[31, 32, 33, 34]*/
        int i_imopVar102;
        /*[31, 32, 33, 34]*/
        int j_imopVar103;
        /*[31, 32, 33, 34]*/
        int k_imopVar104;
        /*[31, 32, 33, 34]*/
        int ksize;
        /*[31, 32, 33, 34]*/
        ksize = grid_points[2] - 1;
        /*[31, 32, 33, 34]*/
#pragma omp for nowait
        /*[31, 32, 33, 34]*/
        /*[31, 32, 33, 34]*/
        /*[31, 32, 33, 34]*/
        for (i_imopVar102 = 1; i_imopVar102 < grid_points[0] - 1; i_imopVar102++) {
        /*[31, 32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            for (j_imopVar103 = 1; j_imopVar103 < grid_points[1] - 1; j_imopVar103++) {
            /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
                double *_imopVarPre414;
                /*[31, 32, 33, 34]*/
                double ( *_imopVarPre415 )[5];
                /*[31, 32, 33, 34]*/
                double ( *_imopVarPre416 )[5];
                /*[31, 32, 33, 34]*/
                _imopVarPre414 = rhs[i_imopVar102][j_imopVar103][0];
                /*[31, 32, 33, 34]*/
                _imopVarPre415 = lhs[i_imopVar102][j_imopVar103][0][2];
                /*[31, 32, 33, 34]*/
                _imopVarPre416 = lhs[i_imopVar102][j_imopVar103][0][1];
                /*[31, 32, 33, 34]*/
                binvcrhs(_imopVarPre416, _imopVarPre415, _imopVarPre414);
                /*[31, 32, 33, 34]*/
            }
        }
        /*[31, 32, 33, 34]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[31, 32, 33, 34]*/
#pragma omp barrier
        /*[32, 33, 34]*/
        /*[32, 33, 34]*/
        /*[33, 34]*/
        /*[32, 33, 34]*/
        for (k_imopVar104 = 1; k_imopVar104 < ksize; k_imopVar104++) {
        /*[32, 33, 34]*/
            /*[32, 33, 34]*/
#pragma omp for nowait
            /*[32, 33, 34]*/
            /*[32, 33, 34]*/
            /*[32, 33, 34]*/
            for (i_imopVar102 = 1; i_imopVar102 < grid_points[0] - 1; i_imopVar102++) {
            /*[32, 33, 34]*/
                /*[32, 33, 34]*/
                /*[32, 33, 34]*/
                /*[32, 33, 34]*/
                /*[32, 33, 34]*/
                for (j_imopVar103 = 1; j_imopVar103 < grid_points[1] - 1; j_imopVar103++) {
                /*[32, 33, 34]*/
                    /*[32, 33, 34]*/
                    double *_imopVarPre420;
                    /*[32, 33, 34]*/
                    double *_imopVarPre421;
                    /*[32, 33, 34]*/
                    double ( *_imopVarPre422 )[5];
                    /*[32, 33, 34]*/
                    _imopVarPre420 = rhs[i_imopVar102][j_imopVar103][k_imopVar104];
                    /*[32, 33, 34]*/
                    _imopVarPre421 = rhs[i_imopVar102][j_imopVar103][k_imopVar104 - 1];
                    /*[32, 33, 34]*/
                    _imopVarPre422 = lhs[i_imopVar102][j_imopVar103][k_imopVar104][0];
                    /*[32, 33, 34]*/
                    matvec_sub(_imopVarPre422, _imopVarPre421, _imopVarPre420);
                    /*[32, 33, 34]*/
                    /*[32, 33, 34]*/
                    double ( *_imopVarPre426 )[5];
                    /*[32, 33, 34]*/
                    double ( *_imopVarPre427 )[5];
                    /*[32, 33, 34]*/
                    double ( *_imopVarPre428 )[5];
                    /*[32, 33, 34]*/
                    _imopVarPre426 = lhs[i_imopVar102][j_imopVar103][k_imopVar104][1];
                    /*[32, 33, 34]*/
                    _imopVarPre427 = lhs[i_imopVar102][j_imopVar103][k_imopVar104 - 1][2];
                    /*[32, 33, 34]*/
                    _imopVarPre428 = lhs[i_imopVar102][j_imopVar103][k_imopVar104][0];
                    /*[32, 33, 34]*/
                    matmul_sub(_imopVarPre428, _imopVarPre427, _imopVarPre426);
                    /*[32, 33, 34]*/
                    /*[32, 33, 34]*/
                    double *_imopVarPre432;
                    /*[32, 33, 34]*/
                    double ( *_imopVarPre433 )[5];
                    /*[32, 33, 34]*/
                    double ( *_imopVarPre434 )[5];
                    /*[32, 33, 34]*/
                    _imopVarPre432 = rhs[i_imopVar102][j_imopVar103][k_imopVar104];
                    /*[32, 33, 34]*/
                    _imopVarPre433 = lhs[i_imopVar102][j_imopVar103][k_imopVar104][2];
                    /*[32, 33, 34]*/
                    _imopVarPre434 = lhs[i_imopVar102][j_imopVar103][k_imopVar104][1];
                    /*[32, 33, 34]*/
                    binvcrhs(_imopVarPre434, _imopVarPre433, _imopVarPre432);
                    /*[32, 33, 34]*/
                }
            }
            /*[32, 33, 34]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[32, 33, 34]*/
#pragma omp barrier
        }
        /*[32, 33, 34]*/
#pragma omp for nowait
        /*[32, 33, 34]*/
        /*[32, 33, 34]*/
        /*[32, 33, 34]*/
        for (i_imopVar102 = 1; i_imopVar102 < grid_points[0] - 1; i_imopVar102++) {
        /*[32, 33, 34]*/
            /*[32, 33, 34]*/
            /*[32, 33, 34]*/
            /*[32, 33, 34]*/
            /*[32, 33, 34]*/
            for (j_imopVar103 = 1; j_imopVar103 < grid_points[1] - 1; j_imopVar103++) {
            /*[32, 33, 34]*/
                /*[32, 33, 34]*/
                double *_imopVarPre438;
                /*[32, 33, 34]*/
                double *_imopVarPre439;
                /*[32, 33, 34]*/
                double ( *_imopVarPre440 )[5];
                /*[32, 33, 34]*/
                _imopVarPre438 = rhs[i_imopVar102][j_imopVar103][ksize];
                /*[32, 33, 34]*/
                _imopVarPre439 = rhs[i_imopVar102][j_imopVar103][ksize - 1];
                /*[32, 33, 34]*/
                _imopVarPre440 = lhs[i_imopVar102][j_imopVar103][ksize][0];
                /*[32, 33, 34]*/
                matvec_sub(_imopVarPre440, _imopVarPre439, _imopVarPre438);
                /*[32, 33, 34]*/
                /*[32, 33, 34]*/
                double ( *_imopVarPre444 )[5];
                /*[32, 33, 34]*/
                double ( *_imopVarPre445 )[5];
                /*[32, 33, 34]*/
                double ( *_imopVarPre446 )[5];
                /*[32, 33, 34]*/
                _imopVarPre444 = lhs[i_imopVar102][j_imopVar103][ksize][1];
                /*[32, 33, 34]*/
                _imopVarPre445 = lhs[i_imopVar102][j_imopVar103][ksize - 1][2];
                /*[32, 33, 34]*/
                _imopVarPre446 = lhs[i_imopVar102][j_imopVar103][ksize][0];
                /*[32, 33, 34]*/
                matmul_sub(_imopVarPre446, _imopVarPre445, _imopVarPre444);
                /*[32, 33, 34]*/
                /*[32, 33, 34]*/
                double *_imopVarPre449;
                /*[32, 33, 34]*/
                double ( *_imopVarPre450 )[5];
                /*[32, 33, 34]*/
                _imopVarPre449 = rhs[i_imopVar102][j_imopVar103][ksize];
                /*[32, 33, 34]*/
                _imopVarPre450 = lhs[i_imopVar102][j_imopVar103][ksize][1];
                /*[32, 33, 34]*/
                binvrhs(_imopVarPre450, _imopVarPre449);
                /*[32, 33, 34]*/
            }
        }
        /*[32, 33, 34]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[32, 33, 34]*/
#pragma omp barrier
        /*[33, 34]*/
        z_backsubstitute();
        /*[33, 34]*/
        /*[33, 34]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[33, 34]*/
#pragma omp barrier
        /*[34]*/
        add();
        /*[34]*/
    }
    /*[35]*/
#pragma omp parallel
    {
    /*[35]*/
        /*[35]*/
        int i;
        /*[35]*/
        int j;
        /*[35]*/
        int k;
        /*[35]*/
        int m;
        /*[35]*/
        int ix;
        /*[35]*/
        int iy;
        /*[35]*/
        int iz;
        /*[35]*/
        double xi;
        /*[35]*/
        double eta;
        /*[35]*/
        double zeta;
        /*[35]*/
        double Pface[2][3][5];
        /*[35]*/
        double Pxi;
        /*[35]*/
        double Peta;
        /*[35]*/
        double Pzeta;
        /*[35]*/
        double temp[5];
        /*[35]*/
#pragma omp for nowait
        /*[35]*/
        /*[35]*/
        /*[35]*/
        for (i = 0; i < 12; i++) {
        /*[35]*/
            /*[35]*/
            /*[35]*/
            /*[35]*/
            /*[35]*/
            for (j = 0; j < 12; j++) {
            /*[35]*/
                /*[35]*/
                /*[35]*/
                /*[35]*/
                /*[35]*/
                for (k = 0; k < 12; k++) {
                /*[35]*/
                    /*[35]*/
                    /*[35]*/
                    /*[35]*/
                    /*[35]*/
                    for (m = 0; m < 5; m++) {
                    /*[35]*/
                        /*[35]*/
                        u[i][j][k][m] = 1.0;
                    }
                }
            }
        }
        /*[35]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[35]*/
#pragma omp barrier
        /*[36]*/
#pragma omp for nowait
        /*[36]*/
        /*[36]*/
        /*[36]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[36]*/
            /*[36]*/
            xi = (double) i * dnxm1;
            /*[36]*/
            /*[36]*/
            /*[36]*/
            /*[36]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[36]*/
                /*[36]*/
                eta = (double) j * dnym1;
                /*[36]*/
                /*[36]*/
                /*[36]*/
                /*[36]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*[36]*/
                    /*[36]*/
                    zeta = (double) k * dnzm1;
                    /*[36]*/
                    /*[36]*/
                    /*[36]*/
                    /*[36]*/
                    for (ix = 0; ix < 2; ix++) {
                    /*[36]*/
                        /*[36]*/
                        double *_imopVarPre187;
                        /*[36]*/
                        double _imopVarPre188;
                        /*[36]*/
                        _imopVarPre187 = &(Pface[ix][0][0]);
                        /*[36]*/
                        _imopVarPre188 = (double) ix;
                        /*[36]*/
                        exact_solution(_imopVarPre188, eta, zeta, _imopVarPre187);
                        /*[36]*/
                    }
                    /*[36]*/
                    /*[36]*/
                    /*[36]*/
                    /*[36]*/
                    for (iy = 0; iy < 2; iy++) {
                    /*[36]*/
                        /*[36]*/
                        double *_imopVarPre191;
                        /*[36]*/
                        double _imopVarPre192;
                        /*[36]*/
                        _imopVarPre191 = &Pface[iy][1][0];
                        /*[36]*/
                        _imopVarPre192 = (double) iy;
                        /*[36]*/
                        exact_solution(xi, _imopVarPre192, zeta, _imopVarPre191);
                        /*[36]*/
                    }
                    /*[36]*/
                    /*[36]*/
                    /*[36]*/
                    /*[36]*/
                    for (iz = 0; iz < 2; iz++) {
                    /*[36]*/
                        /*[36]*/
                        double *_imopVarPre195;
                        /*[36]*/
                        double _imopVarPre196;
                        /*[36]*/
                        _imopVarPre195 = &Pface[iz][2][0];
                        /*[36]*/
                        _imopVarPre196 = (double) iz;
                        /*[36]*/
                        exact_solution(xi, eta, _imopVarPre196, _imopVarPre195);
                        /*[36]*/
                    }
                    /*[36]*/
                    /*[36]*/
                    /*[36]*/
                    /*[36]*/
                    for (m = 0; m < 5; m++) {
                    /*[36]*/
                        /*[36]*/
                        Pxi = xi * Pface[1][0][m] + (1.0 - xi) * Pface[0][0][m];
                        /*[36]*/
                        Peta = eta * Pface[1][1][m] + (1.0 - eta) * Pface[0][1][m];
                        /*[36]*/
                        Pzeta = zeta * Pface[1][2][m] + (1.0 - zeta) * Pface[0][2][m];
                        /*[36]*/
                        u[i][j][k][m] = Pxi + Peta + Pzeta - Pxi * Peta - Pxi * Pzeta - Peta * Pzeta + Pxi * Peta * Pzeta;
                    }
                }
            }
        }
        /*[36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[36]*/
#pragma omp barrier
        /*[37]*/
        i = 0;
        /*[37]*/
        xi = 0.0;
        /*[37]*/
#pragma omp for nowait
        /*[37]*/
        /*[37]*/
        /*[37]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[37]*/
            /*[37]*/
            eta = (double) j * dnym1;
            /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[37]*/
                /*[37]*/
                zeta = (double) k * dnzm1;
                /*[37]*/
                exact_solution(xi, eta, zeta, temp);
                /*[37]*/
                /*[37]*/
                /*[37]*/
                /*[37]*/
                /*[37]*/
                for (m = 0; m < 5; m++) {
                /*[37]*/
                    /*[37]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[37]*/
        i = grid_points[0] - 1;
        /*[37]*/
        xi = 1.0;
        /*[37]*/
#pragma omp for nowait
        /*[37]*/
        /*[37]*/
        /*[37]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[37]*/
            /*[37]*/
            eta = (double) j * dnym1;
            /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[37]*/
                /*[37]*/
                zeta = (double) k * dnzm1;
                /*[37]*/
                exact_solution(xi, eta, zeta, temp);
                /*[37]*/
                /*[37]*/
                /*[37]*/
                /*[37]*/
                /*[37]*/
                for (m = 0; m < 5; m++) {
                /*[37]*/
                    /*[37]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[37]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[37]*/
#pragma omp barrier
        /*[38]*/
        j = 0;
        /*[38]*/
        eta = 0.0;
        /*[38]*/
#pragma omp for nowait
        /*[38]*/
        /*[38]*/
        /*[38]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[38]*/
            /*[38]*/
            xi = (double) i * dnxm1;
            /*[38]*/
            /*[38]*/
            /*[38]*/
            /*[38]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[38]*/
                /*[38]*/
                zeta = (double) k * dnzm1;
                /*[38]*/
                exact_solution(xi, eta, zeta, temp);
                /*[38]*/
                /*[38]*/
                /*[38]*/
                /*[38]*/
                /*[38]*/
                for (m = 0; m < 5; m++) {
                /*[38]*/
                    /*[38]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[38]*/
        j = grid_points[1] - 1;
        /*[38]*/
        eta = 1.0;
        /*[38]*/
#pragma omp for nowait
        /*[38]*/
        /*[38]*/
        /*[38]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[38]*/
            /*[38]*/
            xi = (double) i * dnxm1;
            /*[38]*/
            /*[38]*/
            /*[38]*/
            /*[38]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[38]*/
                /*[38]*/
                zeta = (double) k * dnzm1;
                /*[38]*/
                exact_solution(xi, eta, zeta, temp);
                /*[38]*/
                /*[38]*/
                /*[38]*/
                /*[38]*/
                /*[38]*/
                for (m = 0; m < 5; m++) {
                /*[38]*/
                    /*[38]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[38]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[38]*/
#pragma omp barrier
        /*[39]*/
        k = 0;
        /*[39]*/
        zeta = 0.0;
        /*[39]*/
#pragma omp for nowait
        /*[39]*/
        /*[39]*/
        /*[39]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[39]*/
            /*[39]*/
            xi = (double) i * dnxm1;
            /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[39]*/
                /*[39]*/
                eta = (double) j * dnym1;
                /*[39]*/
                exact_solution(xi, eta, zeta, temp);
                /*[39]*/
                /*[39]*/
                /*[39]*/
                /*[39]*/
                /*[39]*/
                for (m = 0; m < 5; m++) {
                /*[39]*/
                    /*[39]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[39]*/
        k = grid_points[2] - 1;
        /*[39]*/
        zeta = 1.0;
        /*[39]*/
#pragma omp for nowait
        /*[39]*/
        /*[39]*/
        /*[39]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[39]*/
            /*[39]*/
            xi = (double) i * dnxm1;
            /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[39]*/
                /*[39]*/
                eta = (double) j * dnym1;
                /*[39]*/
                exact_solution(xi, eta, zeta, temp);
                /*[39]*/
                /*[39]*/
                /*[39]*/
                /*[39]*/
                /*[39]*/
                for (m = 0; m < 5; m++) {
                /*[39]*/
                    /*[39]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
    }
    /*[]*/
    timer_clear(1);
    /*[]*/
    /*[]*/
    timer_start(1);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (step = 1; step <= niter; step++) {
    /*[]*/
        /*[40]*/
#pragma omp parallel
        {
        /*[40]*/
            /*[40]*/
            int _imopVarPre168;
            /*[40]*/
#pragma omp master
            {
            /*[40]*/
                /*[40]*/
                _imopVarPre168 = step % 20 == 0;
                /*[40]*/
                /*[40]*/
                if (!_imopVarPre168) {
                /*[40]*/
                    /*[40]*/
                    _imopVarPre168 = step == 1;
                }
                /*[40]*/
                /*[40]*/
                if (_imopVarPre168) {
                /*[40]*/
                    /*[40]*/
                    printf(" Time step %4d\n", step);
                    /*[40]*/
                }
            }
            /*[40]*/
            int i_imopVar92;
            /*[40]*/
            int j_imopVar93;
            /*[40]*/
            int k_imopVar94;
            /*[40]*/
            int m_imopVar95;
            /*[40]*/
            double rho_inv_imopVar105;
            /*[40]*/
            double uijk_imopVar106;
            /*[40]*/
            double up1_imopVar107;
            /*[40]*/
            double um1_imopVar108;
            /*[40]*/
            double vijk_imopVar109;
            /*[40]*/
            double vp1_imopVar110;
            /*[40]*/
            double vm1_imopVar111;
            /*[40]*/
            double wijk_imopVar112;
            /*[40]*/
            double wp1_imopVar113;
            /*[40]*/
            double wm1_imopVar114;
            /*[40]*/
#pragma omp for nowait
            /*[40]*/
            /*[40]*/
            /*[40]*/
            for (i_imopVar92 = 0; i_imopVar92 < grid_points[0]; i_imopVar92++) {
            /*[40]*/
                /*[40]*/
                /*[40]*/
                /*[40]*/
                /*[40]*/
                for (j_imopVar93 = 0; j_imopVar93 < grid_points[1]; j_imopVar93++) {
                /*[40]*/
                    /*[40]*/
                    /*[40]*/
                    /*[40]*/
                    /*[40]*/
                    for (k_imopVar94 = 0; k_imopVar94 < grid_points[2]; k_imopVar94++) {
                    /*[40]*/
                        /*[40]*/
                        rho_inv_imopVar105 = 1.0 / u[i_imopVar92][j_imopVar93][k_imopVar94][0];
                        /*[40]*/
                        rho_i[i_imopVar92][j_imopVar93][k_imopVar94] = rho_inv_imopVar105;
                        /*[40]*/
                        us[i_imopVar92][j_imopVar93][k_imopVar94] = u[i_imopVar92][j_imopVar93][k_imopVar94][1] * rho_inv_imopVar105;
                        /*[40]*/
                        vs[i_imopVar92][j_imopVar93][k_imopVar94] = u[i_imopVar92][j_imopVar93][k_imopVar94][2] * rho_inv_imopVar105;
                        /*[40]*/
                        ws[i_imopVar92][j_imopVar93][k_imopVar94] = u[i_imopVar92][j_imopVar93][k_imopVar94][3] * rho_inv_imopVar105;
                        /*[40]*/
                        square[i_imopVar92][j_imopVar93][k_imopVar94] = 0.5 * (u[i_imopVar92][j_imopVar93][k_imopVar94][1] * u[i_imopVar92][j_imopVar93][k_imopVar94][1] + u[i_imopVar92][j_imopVar93][k_imopVar94][2] * u[i_imopVar92][j_imopVar93][k_imopVar94][2] + u[i_imopVar92][j_imopVar93][k_imopVar94][3] * u[i_imopVar92][j_imopVar93][k_imopVar94][3]) * rho_inv_imopVar105;
                        /*[40]*/
                        qs[i_imopVar92][j_imopVar93][k_imopVar94] = square[i_imopVar92][j_imopVar93][k_imopVar94] * rho_inv_imopVar105;
                    }
                }
            }
            /*[40]*/
#pragma omp for nowait
            /*[40]*/
            /*[40]*/
            /*[40]*/
            for (i_imopVar92 = 0; i_imopVar92 < grid_points[0]; i_imopVar92++) {
            /*[40]*/
                /*[40]*/
                /*[40]*/
                /*[40]*/
                /*[40]*/
                for (j_imopVar93 = 0; j_imopVar93 < grid_points[1]; j_imopVar93++) {
                /*[40]*/
                    /*[40]*/
                    /*[40]*/
                    /*[40]*/
                    /*[40]*/
                    for (k_imopVar94 = 0; k_imopVar94 < grid_points[2]; k_imopVar94++) {
                    /*[40]*/
                        /*[40]*/
                        /*[40]*/
                        /*[40]*/
                        /*[40]*/
                        for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                        /*[40]*/
                            /*[40]*/
                            rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = forcing[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95];
                        }
                    }
                }
            }
            /*[40]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[40]*/
#pragma omp barrier
            /*[41]*/
#pragma omp for nowait
            /*[41]*/
            /*[41]*/
            /*[41]*/
            for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
            /*[41]*/
                /*[41]*/
                /*[41]*/
                /*[41]*/
                /*[41]*/
                for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
                /*[41]*/
                    /*[41]*/
                    /*[41]*/
                    /*[41]*/
                    /*[41]*/
                    for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                    /*[41]*/
                        /*[41]*/
                        uijk_imopVar106 = us[i_imopVar92][j_imopVar93][k_imopVar94];
                        /*[41]*/
                        up1_imopVar107 = us[i_imopVar92 + 1][j_imopVar93][k_imopVar94];
                        /*[41]*/
                        um1_imopVar108 = us[i_imopVar92 - 1][j_imopVar93][k_imopVar94];
                        /*[41]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][0] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][0] + dx1tx1 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][0] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][0] + u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][0]) - tx2 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][1] - u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][1]);
                        /*[41]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][1] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][1] + dx2tx1 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][1] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][1] + u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][1]) + xxcon2 * con43 * (up1_imopVar107 - 2.0 * uijk_imopVar106 + um1_imopVar108) - tx2 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][1] * up1_imopVar107 - u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][1] * um1_imopVar108 + (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][4] - square[i_imopVar92 + 1][j_imopVar93][k_imopVar94] - u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][4] + square[i_imopVar92 - 1][j_imopVar93][k_imopVar94]) * c2);
                        /*[41]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][2] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][2] + dx3tx1 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][2] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][2] + u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][2]) + xxcon2 * (vs[i_imopVar92 + 1][j_imopVar93][k_imopVar94] - 2.0 * vs[i_imopVar92][j_imopVar93][k_imopVar94] + vs[i_imopVar92 - 1][j_imopVar93][k_imopVar94]) - tx2 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][2] * up1_imopVar107 - u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][2] * um1_imopVar108);
                        /*[41]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][3] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][3] + dx4tx1 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][3] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][3] + u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][3]) + xxcon2 * (ws[i_imopVar92 + 1][j_imopVar93][k_imopVar94] - 2.0 * ws[i_imopVar92][j_imopVar93][k_imopVar94] + ws[i_imopVar92 - 1][j_imopVar93][k_imopVar94]) - tx2 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][3] * up1_imopVar107 - u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][3] * um1_imopVar108);
                        /*[41]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][4] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][4] + dx5tx1 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][4] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][4] + u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][4]) + xxcon3 * (qs[i_imopVar92 + 1][j_imopVar93][k_imopVar94] - 2.0 * qs[i_imopVar92][j_imopVar93][k_imopVar94] + qs[i_imopVar92 - 1][j_imopVar93][k_imopVar94]) + xxcon4 * (up1_imopVar107 * up1_imopVar107 - 2.0 * uijk_imopVar106 * uijk_imopVar106 + um1_imopVar108 * um1_imopVar108) + xxcon5 * (u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][4] * rho_i[i_imopVar92 + 1][j_imopVar93][k_imopVar94] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][4] * rho_i[i_imopVar92][j_imopVar93][k_imopVar94] + u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][4] * rho_i[i_imopVar92 - 1][j_imopVar93][k_imopVar94]) - tx2 * ((c1 * u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][4] - c2 * square[i_imopVar92 + 1][j_imopVar93][k_imopVar94]) * up1_imopVar107 - (c1 * u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][4] - c2 * square[i_imopVar92 - 1][j_imopVar93][k_imopVar94]) * um1_imopVar108);
                    }
                }
            }
            /*[41]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[41]*/
#pragma omp barrier
            /*[42]*/
            i_imopVar92 = 1;
            /*[42]*/
#pragma omp for nowait
            /*[42]*/
            /*[42]*/
            /*[42]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[42]*/
                        /*[42]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (5.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][m_imopVar95] + u[i_imopVar92 + 2][j_imopVar93][k_imopVar94][m_imopVar95]);
                    }
                }
            }
            /*[42]*/
            i_imopVar92 = 2;
            /*[42]*/
#pragma omp for nowait
            /*[42]*/
            /*[42]*/
            /*[42]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[42]*/
                        /*[42]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (-4.0 * u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][m_imopVar95] + u[i_imopVar92 + 2][j_imopVar93][k_imopVar94][m_imopVar95]);
                    }
                }
            }
            /*[42]*/
#pragma omp for nowait
            /*[42]*/
            /*[42]*/
            /*[42]*/
            for (i_imopVar92 = 3; i_imopVar92 < grid_points[0] - 3; i_imopVar92++) {
            /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
                /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                    /*[42]*/
                        /*[42]*/
                        /*[42]*/
                        /*[42]*/
                        /*[42]*/
                        for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                        /*[42]*/
                            /*[42]*/
                            rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92 - 2][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][m_imopVar95] + u[i_imopVar92 + 2][j_imopVar93][k_imopVar94][m_imopVar95]);
                        }
                    }
                }
            }
            /*[42]*/
            i_imopVar92 = grid_points[0] - 3;
            /*[42]*/
#pragma omp for nowait
            /*[42]*/
            /*[42]*/
            /*[42]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[42]*/
                        /*[42]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92 - 2][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92 + 1][j_imopVar93][k_imopVar94][m_imopVar95]);
                    }
                }
            }
            /*[42]*/
            i_imopVar92 = grid_points[0] - 2;
            /*[42]*/
#pragma omp for nowait
            /*[42]*/
            /*[42]*/
            /*[42]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[42]*/
                        /*[42]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92 - 2][j_imopVar93][k_imopVar94][m_imopVar95] - 4. * u[i_imopVar92 - 1][j_imopVar93][k_imopVar94][m_imopVar95] + 5.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95]);
                    }
                }
            }
            /*[42]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[42]*/
#pragma omp barrier
            /*[43]*/
#pragma omp for nowait
            /*[43]*/
            /*[43]*/
            /*[43]*/
            for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
            /*[43]*/
                /*[43]*/
                /*[43]*/
                /*[43]*/
                /*[43]*/
                for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
                /*[43]*/
                    /*[43]*/
                    /*[43]*/
                    /*[43]*/
                    /*[43]*/
                    for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                    /*[43]*/
                        /*[43]*/
                        vijk_imopVar109 = vs[i_imopVar92][j_imopVar93][k_imopVar94];
                        /*[43]*/
                        vp1_imopVar110 = vs[i_imopVar92][j_imopVar93 + 1][k_imopVar94];
                        /*[43]*/
                        vm1_imopVar111 = vs[i_imopVar92][j_imopVar93 - 1][k_imopVar94];
                        /*[43]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][0] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][0] + dy1ty1 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][0] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][0] + u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][0]) - ty2 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][2] - u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][2]);
                        /*[43]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][1] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][1] + dy2ty1 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][1] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][1] + u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][1]) + yycon2 * (us[i_imopVar92][j_imopVar93 + 1][k_imopVar94] - 2.0 * us[i_imopVar92][j_imopVar93][k_imopVar94] + us[i_imopVar92][j_imopVar93 - 1][k_imopVar94]) - ty2 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][1] * vp1_imopVar110 - u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][1] * vm1_imopVar111);
                        /*[43]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][2] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][2] + dy3ty1 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][2] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][2] + u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][2]) + yycon2 * con43 * (vp1_imopVar110 - 2.0 * vijk_imopVar109 + vm1_imopVar111) - ty2 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][2] * vp1_imopVar110 - u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][2] * vm1_imopVar111 + (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][4] - square[i_imopVar92][j_imopVar93 + 1][k_imopVar94] - u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][4] + square[i_imopVar92][j_imopVar93 - 1][k_imopVar94]) * c2);
                        /*[43]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][3] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][3] + dy4ty1 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][3] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][3] + u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][3]) + yycon2 * (ws[i_imopVar92][j_imopVar93 + 1][k_imopVar94] - 2.0 * ws[i_imopVar92][j_imopVar93][k_imopVar94] + ws[i_imopVar92][j_imopVar93 - 1][k_imopVar94]) - ty2 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][3] * vp1_imopVar110 - u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][3] * vm1_imopVar111);
                        /*[43]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][4] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][4] + dy5ty1 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][4] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][4] + u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][4]) + yycon3 * (qs[i_imopVar92][j_imopVar93 + 1][k_imopVar94] - 2.0 * qs[i_imopVar92][j_imopVar93][k_imopVar94] + qs[i_imopVar92][j_imopVar93 - 1][k_imopVar94]) + yycon4 * (vp1_imopVar110 * vp1_imopVar110 - 2.0 * vijk_imopVar109 * vijk_imopVar109 + vm1_imopVar111 * vm1_imopVar111) + yycon5 * (u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][4] * rho_i[i_imopVar92][j_imopVar93 + 1][k_imopVar94] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][4] * rho_i[i_imopVar92][j_imopVar93][k_imopVar94] + u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][4] * rho_i[i_imopVar92][j_imopVar93 - 1][k_imopVar94]) - ty2 * ((c1 * u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][4] - c2 * square[i_imopVar92][j_imopVar93 + 1][k_imopVar94]) * vp1_imopVar110 - (c1 * u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][4] - c2 * square[i_imopVar92][j_imopVar93 - 1][k_imopVar94]) * vm1_imopVar111);
                    }
                }
            }
            /*[43]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[43]*/
#pragma omp barrier
            /*[44]*/
            j_imopVar93 = 1;
            /*[44]*/
#pragma omp for nowait
            /*[44]*/
            /*[44]*/
            /*[44]*/
            for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
            /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[44]*/
                        /*[44]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (5.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][m_imopVar95] + u[i_imopVar92][j_imopVar93 + 2][k_imopVar94][m_imopVar95]);
                    }
                }
            }
            /*[44]*/
            j_imopVar93 = 2;
            /*[44]*/
#pragma omp for nowait
            /*[44]*/
            /*[44]*/
            /*[44]*/
            for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
            /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[44]*/
                        /*[44]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (-4.0 * u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][m_imopVar95] + u[i_imopVar92][j_imopVar93 + 2][k_imopVar94][m_imopVar95]);
                    }
                }
            }
            /*[44]*/
#pragma omp for nowait
            /*[44]*/
            /*[44]*/
            /*[44]*/
            for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
            /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                for (j_imopVar93 = 3; j_imopVar93 < grid_points[1] - 3; j_imopVar93++) {
                /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                    /*[44]*/
                        /*[44]*/
                        /*[44]*/
                        /*[44]*/
                        /*[44]*/
                        for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                        /*[44]*/
                            /*[44]*/
                            rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92][j_imopVar93 - 2][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][m_imopVar95] + u[i_imopVar92][j_imopVar93 + 2][k_imopVar94][m_imopVar95]);
                        }
                    }
                }
            }
            /*[44]*/
            j_imopVar93 = grid_points[1] - 3;
            /*[44]*/
#pragma omp for nowait
            /*[44]*/
            /*[44]*/
            /*[44]*/
            for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
            /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[44]*/
                        /*[44]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92][j_imopVar93 - 2][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93 + 1][k_imopVar94][m_imopVar95]);
                    }
                }
            }
            /*[44]*/
            j_imopVar93 = grid_points[1] - 2;
            /*[44]*/
#pragma omp for nowait
            /*[44]*/
            /*[44]*/
            /*[44]*/
            for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
            /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[44]*/
                        /*[44]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92][j_imopVar93 - 2][k_imopVar94][m_imopVar95] - 4. * u[i_imopVar92][j_imopVar93 - 1][k_imopVar94][m_imopVar95] + 5. * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95]);
                    }
                }
            }
            /*[44]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[44]*/
#pragma omp barrier
            /*[45]*/
#pragma omp for nowait
            /*[45]*/
            /*[45]*/
            /*[45]*/
            for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
            /*[45]*/
                /*[45]*/
                /*[45]*/
                /*[45]*/
                /*[45]*/
                for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
                /*[45]*/
                    /*[45]*/
                    /*[45]*/
                    /*[45]*/
                    /*[45]*/
                    for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                    /*[45]*/
                        /*[45]*/
                        wijk_imopVar112 = ws[i_imopVar92][j_imopVar93][k_imopVar94];
                        /*[45]*/
                        wp1_imopVar113 = ws[i_imopVar92][j_imopVar93][k_imopVar94 + 1];
                        /*[45]*/
                        wm1_imopVar114 = ws[i_imopVar92][j_imopVar93][k_imopVar94 - 1];
                        /*[45]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][0] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][0] + dz1tz1 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][0] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][0] + u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][0]) - tz2 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][3] - u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][3]);
                        /*[45]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][1] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][1] + dz2tz1 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][1] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][1] + u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][1]) + zzcon2 * (us[i_imopVar92][j_imopVar93][k_imopVar94 + 1] - 2.0 * us[i_imopVar92][j_imopVar93][k_imopVar94] + us[i_imopVar92][j_imopVar93][k_imopVar94 - 1]) - tz2 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][1] * wp1_imopVar113 - u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][1] * wm1_imopVar114);
                        /*[45]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][2] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][2] + dz3tz1 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][2] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][2] + u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][2]) + zzcon2 * (vs[i_imopVar92][j_imopVar93][k_imopVar94 + 1] - 2.0 * vs[i_imopVar92][j_imopVar93][k_imopVar94] + vs[i_imopVar92][j_imopVar93][k_imopVar94 - 1]) - tz2 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][2] * wp1_imopVar113 - u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][2] * wm1_imopVar114);
                        /*[45]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][3] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][3] + dz4tz1 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][3] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][3] + u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][3]) + zzcon2 * con43 * (wp1_imopVar113 - 2.0 * wijk_imopVar112 + wm1_imopVar114) - tz2 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][3] * wp1_imopVar113 - u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][3] * wm1_imopVar114 + (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][4] - square[i_imopVar92][j_imopVar93][k_imopVar94 + 1] - u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][4] + square[i_imopVar92][j_imopVar93][k_imopVar94 - 1]) * c2);
                        /*[45]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][4] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][4] + dz5tz1 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][4] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][4] + u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][4]) + zzcon3 * (qs[i_imopVar92][j_imopVar93][k_imopVar94 + 1] - 2.0 * qs[i_imopVar92][j_imopVar93][k_imopVar94] + qs[i_imopVar92][j_imopVar93][k_imopVar94 - 1]) + zzcon4 * (wp1_imopVar113 * wp1_imopVar113 - 2.0 * wijk_imopVar112 * wijk_imopVar112 + wm1_imopVar114 * wm1_imopVar114) + zzcon5 * (u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][4] * rho_i[i_imopVar92][j_imopVar93][k_imopVar94 + 1] - 2.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][4] * rho_i[i_imopVar92][j_imopVar93][k_imopVar94] + u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][4] * rho_i[i_imopVar92][j_imopVar93][k_imopVar94 - 1]) - tz2 * ((c1 * u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][4] - c2 * square[i_imopVar92][j_imopVar93][k_imopVar94 + 1]) * wp1_imopVar113 - (c1 * u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][4] - c2 * square[i_imopVar92][j_imopVar93][k_imopVar94 - 1]) * wm1_imopVar114);
                    }
                }
            }
            /*[45]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[45]*/
#pragma omp barrier
            /*[46]*/
            k_imopVar94 = 1;
            /*[46]*/
#pragma omp for nowait
            /*[46]*/
            /*[46]*/
            /*[46]*/
            for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
            /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
                /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[46]*/
                        /*[46]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (5.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][m_imopVar95] + u[i_imopVar92][j_imopVar93][k_imopVar94 + 2][m_imopVar95]);
                    }
                }
            }
            /*[46]*/
            k_imopVar94 = 2;
            /*[46]*/
#pragma omp for nowait
            /*[46]*/
            /*[46]*/
            /*[46]*/
            for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
            /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
                /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[46]*/
                        /*[46]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (-4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][m_imopVar95] + u[i_imopVar92][j_imopVar93][k_imopVar94 + 2][m_imopVar95]);
                    }
                }
            }
            /*[46]*/
#pragma omp for nowait
            /*[46]*/
            /*[46]*/
            /*[46]*/
            for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
            /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
                /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    for (k_imopVar94 = 3; k_imopVar94 < grid_points[2] - 3; k_imopVar94++) {
                    /*[46]*/
                        /*[46]*/
                        /*[46]*/
                        /*[46]*/
                        /*[46]*/
                        for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                        /*[46]*/
                            /*[46]*/
                            rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92][j_imopVar93][k_imopVar94 - 2][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][m_imopVar95] + u[i_imopVar92][j_imopVar93][k_imopVar94 + 2][m_imopVar95]);
                        }
                    }
                }
            }
            /*[46]*/
            k_imopVar94 = grid_points[2] - 3;
            /*[46]*/
#pragma omp for nowait
            /*[46]*/
            /*[46]*/
            /*[46]*/
            for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
            /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
                /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[46]*/
                        /*[46]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92][j_imopVar93][k_imopVar94 - 2][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][m_imopVar95] + 6.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 + 1][m_imopVar95]);
                    }
                }
            }
            /*[46]*/
            k_imopVar94 = grid_points[2] - 2;
            /*[46]*/
#pragma omp for nowait
            /*[46]*/
            /*[46]*/
            /*[46]*/
            for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
            /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
                /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[46]*/
                        /*[46]*/
                        rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] - dssp * (u[i_imopVar92][j_imopVar93][k_imopVar94 - 2][m_imopVar95] - 4.0 * u[i_imopVar92][j_imopVar93][k_imopVar94 - 1][m_imopVar95] + 5.0 * u[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95]);
                    }
                }
            }
            /*[46]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[46]*/
#pragma omp barrier
            /*[47]*/
#pragma omp for nowait
            /*[47]*/
            /*[47]*/
            /*[47]*/
            for (j_imopVar93 = 1; j_imopVar93 < grid_points[1] - 1; j_imopVar93++) {
            /*[47]*/
                /*[47]*/
                /*[47]*/
                /*[47]*/
                /*[47]*/
                for (k_imopVar94 = 1; k_imopVar94 < grid_points[2] - 1; k_imopVar94++) {
                /*[47]*/
                    /*[47]*/
                    /*[47]*/
                    /*[47]*/
                    /*[47]*/
                    for (m_imopVar95 = 0; m_imopVar95 < 5; m_imopVar95++) {
                    /*[47]*/
                        /*[47]*/
                        /*[47]*/
                        /*[47]*/
                        /*[47]*/
                        for (i_imopVar92 = 1; i_imopVar92 < grid_points[0] - 1; i_imopVar92++) {
                        /*[47]*/
                            /*[47]*/
                            rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] = rhs[i_imopVar92][j_imopVar93][k_imopVar94][m_imopVar95] * dt;
                        }
                    }
                }
            }
            /*[47]*/
            int i_imopVar75;
            /*[47]*/
            int j_imopVar76;
            /*[47]*/
            int k_imopVar77;
            /*[47]*/
#pragma omp for nowait
            /*[47]*/
            /*[47]*/
            /*[47]*/
            for (j_imopVar76 = 1; j_imopVar76 < grid_points[1] - 1; j_imopVar76++) {
            /*[47]*/
                /*[47]*/
                /*[47]*/
                /*[47]*/
                /*[47]*/
                for (k_imopVar77 = 1; k_imopVar77 < grid_points[2] - 1; k_imopVar77++) {
                /*[47]*/
                    /*[47]*/
                    /*[47]*/
                    /*[47]*/
                    /*[47]*/
                    for (i_imopVar75 = 0; i_imopVar75 < grid_points[0]; i_imopVar75++) {
                    /*[47]*/
                        /*[47]*/
                        tmp1 = 1.0 / u[i_imopVar75][j_imopVar76][k_imopVar77][0];
                        /*[47]*/
                        tmp2 = tmp1 * tmp1;
                        /*[47]*/
                        tmp3 = tmp1 * tmp2;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][0][0] = 0.0;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][0][1] = 1.0;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][0][2] = 0.0;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][0][3] = 0.0;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][0][4] = 0.0;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][1][0] = -(u[i_imopVar75][j_imopVar76][k_imopVar77][1] * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][1]) + c2 * 0.50 * (u[i_imopVar75][j_imopVar76][k_imopVar77][1] * u[i_imopVar75][j_imopVar76][k_imopVar77][1] + u[i_imopVar75][j_imopVar76][k_imopVar77][2] * u[i_imopVar75][j_imopVar76][k_imopVar77][2] + u[i_imopVar75][j_imopVar76][k_imopVar77][3] * u[i_imopVar75][j_imopVar76][k_imopVar77][3]) * tmp2;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][1][1] = (2.0 - c2) * (u[i_imopVar75][j_imopVar76][k_imopVar77][1] / u[i_imopVar75][j_imopVar76][k_imopVar77][0]);
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][1][2] = -c2 * (u[i_imopVar75][j_imopVar76][k_imopVar77][2] * tmp1);
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][1][3] = -c2 * (u[i_imopVar75][j_imopVar76][k_imopVar77][3] * tmp1);
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][1][4] = c2;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][2][0] = -(u[i_imopVar75][j_imopVar76][k_imopVar77][1] * u[i_imopVar75][j_imopVar76][k_imopVar77][2]) * tmp2;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][2][1] = u[i_imopVar75][j_imopVar76][k_imopVar77][2] * tmp1;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][2][2] = u[i_imopVar75][j_imopVar76][k_imopVar77][1] * tmp1;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][2][3] = 0.0;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][2][4] = 0.0;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][3][0] = -(u[i_imopVar75][j_imopVar76][k_imopVar77][1] * u[i_imopVar75][j_imopVar76][k_imopVar77][3]) * tmp2;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][3][1] = u[i_imopVar75][j_imopVar76][k_imopVar77][3] * tmp1;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][3][2] = 0.0;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][3][3] = u[i_imopVar75][j_imopVar76][k_imopVar77][1] * tmp1;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][3][4] = 0.0;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][4][0] = (c2 * (u[i_imopVar75][j_imopVar76][k_imopVar77][1] * u[i_imopVar75][j_imopVar76][k_imopVar77][1] + u[i_imopVar75][j_imopVar76][k_imopVar77][2] * u[i_imopVar75][j_imopVar76][k_imopVar77][2] + u[i_imopVar75][j_imopVar76][k_imopVar77][3] * u[i_imopVar75][j_imopVar76][k_imopVar77][3]) * tmp2 - c1 * (u[i_imopVar75][j_imopVar76][k_imopVar77][4] * tmp1)) * (u[i_imopVar75][j_imopVar76][k_imopVar77][1] * tmp1);
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][4][1] = c1 * u[i_imopVar75][j_imopVar76][k_imopVar77][4] * tmp1 - 0.50 * c2 * (3.0 * u[i_imopVar75][j_imopVar76][k_imopVar77][1] * u[i_imopVar75][j_imopVar76][k_imopVar77][1] + u[i_imopVar75][j_imopVar76][k_imopVar77][2] * u[i_imopVar75][j_imopVar76][k_imopVar77][2] + u[i_imopVar75][j_imopVar76][k_imopVar77][3] * u[i_imopVar75][j_imopVar76][k_imopVar77][3]) * tmp2;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][4][2] = -c2 * (u[i_imopVar75][j_imopVar76][k_imopVar77][2] * u[i_imopVar75][j_imopVar76][k_imopVar77][1]) * tmp2;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][4][3] = -c2 * (u[i_imopVar75][j_imopVar76][k_imopVar77][3] * u[i_imopVar75][j_imopVar76][k_imopVar77][1]) * tmp2;
                        /*[47]*/
                        fjac[i_imopVar75][j_imopVar76][k_imopVar77][4][4] = c1 * (u[i_imopVar75][j_imopVar76][k_imopVar77][1] * tmp1);
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][0][0] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][0][1] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][0][2] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][0][3] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][0][4] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][1][0] = -con43 * c3c4 * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][1];
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][1][1] = con43 * c3c4 * tmp1;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][1][2] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][1][3] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][1][4] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][2][0] = -c3c4 * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][2];
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][2][1] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][2][2] = c3c4 * tmp1;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][2][3] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][2][4] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][3][0] = -c3c4 * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][3];
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][3][1] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][3][2] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][3][3] = c3c4 * tmp1;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][3][4] = 0.0;
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][4][0] = -(con43 * c3c4 - c1345) * tmp3 * (((u[i_imopVar75][j_imopVar76][k_imopVar77][1]) * (u[i_imopVar75][j_imopVar76][k_imopVar77][1]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVar75][j_imopVar76][k_imopVar77][2]) * (u[i_imopVar75][j_imopVar76][k_imopVar77][2]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVar75][j_imopVar76][k_imopVar77][3]) * (u[i_imopVar75][j_imopVar76][k_imopVar77][3]))) - c1345 * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][4];
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][4][1] = (con43 * c3c4 - c1345) * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][1];
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][4][2] = (c3c4 - c1345) * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][2];
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][4][3] = (c3c4 - c1345) * tmp2 * u[i_imopVar75][j_imopVar76][k_imopVar77][3];
                        /*[47]*/
                        njac[i_imopVar75][j_imopVar76][k_imopVar77][4][4] = c1345 * tmp1;
                    }
                    /*[47]*/
                    /*[47]*/
                    /*[47]*/
                    /*[47]*/
                    for (i_imopVar75 = 1; i_imopVar75 < grid_points[0] - 1; i_imopVar75++) {
                    /*[47]*/
                        /*[47]*/
                        tmp1 = dt * tx1;
                        /*[47]*/
                        tmp2 = dt * tx2;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][0][0] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][0] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][0] - tmp1 * dx1;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][0][1] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][1] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][1];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][0][2] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][2] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][2];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][0][3] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][3] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][3];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][0][4] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][4] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][0][4];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][1][0] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][0] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][0];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][1][1] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][1] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][1] - tmp1 * dx2;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][1][2] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][2] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][2];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][1][3] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][3] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][3];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][1][4] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][4] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][1][4];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][2][0] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][0] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][0];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][2][1] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][1] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][1];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][2][2] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][2] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][2] - tmp1 * dx3;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][2][3] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][3] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][3];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][2][4] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][4] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][2][4];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][3][0] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][0] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][0];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][3][1] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][1] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][1];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][3][2] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][2] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][2];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][3][3] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][3] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][3] - tmp1 * dx4;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][3][4] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][4] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][3][4];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][4][0] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][0] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][0];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][4][1] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][1] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][1];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][4][2] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][2] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][2];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][4][3] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][3] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][3];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][0][4][4] = -tmp2 * fjac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][4] - tmp1 * njac[i_imopVar75 - 1][j_imopVar76][k_imopVar77][4][4] - tmp1 * dx5;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][0][0] + tmp1 * 2.0 * dx1;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][0][1] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][0][1];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][0][2] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][0][2];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][0][3] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][0][3];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][0][4] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][0][4];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][1][0] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][1][0];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][1][1] + tmp1 * 2.0 * dx2;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][1][2] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][1][2];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][1][3] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][1][3];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][1][4] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][1][4];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][2][0] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][2][0];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][2][1] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][2][1];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][2][2] + tmp1 * 2.0 * dx3;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][2][3] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][2][3];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][2][4] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][2][4];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][3][0] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][3][0];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][3][1] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][3][1];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][3][2] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][3][2];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][3][3] + tmp1 * 2.0 * dx4;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][3][4] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][3][4];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][4][0] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][4][0];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][4][1] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][4][1];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][4][2] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][4][2];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][4][3] = tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][4][3];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i_imopVar75][j_imopVar76][k_imopVar77][4][4] + tmp1 * 2.0 * dx5;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][0][0] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][0] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][0] - tmp1 * dx1;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][0][1] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][1] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][1];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][0][2] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][2] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][2];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][0][3] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][3] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][3];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][0][4] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][4] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][0][4];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][1][0] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][0] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][0];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][1][1] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][1] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][1] - tmp1 * dx2;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][1][2] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][2] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][2];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][1][3] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][3] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][3];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][1][4] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][4] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][1][4];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][2][0] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][0] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][0];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][2][1] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][1] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][1];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][2][2] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][2] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][2] - tmp1 * dx3;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][2][3] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][3] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][3];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][2][4] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][4] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][2][4];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][3][0] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][0] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][0];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][3][1] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][1] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][1];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][3][2] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][2] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][2];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][3][3] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][3] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][3] - tmp1 * dx4;
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][3][4] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][4] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][3][4];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][4][0] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][0] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][0];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][4][1] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][1] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][1];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][4][2] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][2] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][2];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][4][3] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][3] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][3];
                        /*[47]*/
                        lhs[i_imopVar75][j_imopVar76][k_imopVar77][2][4][4] = tmp2 * fjac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][4] - tmp1 * njac[i_imopVar75 + 1][j_imopVar76][k_imopVar77][4][4] - tmp1 * dx5;
                    }
                }
            }
            /*[47]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[47]*/
#pragma omp barrier
            /*[48]*/
            int i_imopVar78;
            /*[48]*/
            int j_imopVar79;
            /*[48]*/
            int k_imopVar80;
            /*[48]*/
            int isize;
            /*[48]*/
            isize = grid_points[0] - 1;
            /*[48]*/
#pragma omp for nowait
            /*[48]*/
            /*[48]*/
            /*[48]*/
            for (j_imopVar79 = 1; j_imopVar79 < grid_points[1] - 1; j_imopVar79++) {
            /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                for (k_imopVar80 = 1; k_imopVar80 < grid_points[2] - 1; k_imopVar80++) {
                /*[48]*/
                    /*[48]*/
                    double *_imopVarPre334;
                    /*[48]*/
                    double ( *_imopVarPre335 )[5];
                    /*[48]*/
                    double ( *_imopVarPre336 )[5];
                    /*[48]*/
                    _imopVarPre334 = rhs[0][j_imopVar79][k_imopVar80];
                    /*[48]*/
                    _imopVarPre335 = lhs[0][j_imopVar79][k_imopVar80][2];
                    /*[48]*/
                    _imopVarPre336 = lhs[0][j_imopVar79][k_imopVar80][1];
                    /*[48]*/
                    binvcrhs(_imopVarPre336, _imopVarPre335, _imopVarPre334);
                    /*[48]*/
                }
            }
            /*[48]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[48]*/
#pragma omp barrier
            /*[49]*/
            /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[49]*/
            for (i_imopVar78 = 1; i_imopVar78 < isize; i_imopVar78++) {
            /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp for nowait
                /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                for (j_imopVar79 = 1; j_imopVar79 < grid_points[1] - 1; j_imopVar79++) {
                /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    for (k_imopVar80 = 1; k_imopVar80 < grid_points[2] - 1; k_imopVar80++) {
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        double *_imopVarPre340;
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        double *_imopVarPre341;
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        double ( *_imopVarPre342 )[5];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre340 = rhs[i_imopVar78][j_imopVar79][k_imopVar80];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre341 = rhs[i_imopVar78 - 1][j_imopVar79][k_imopVar80];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre342 = lhs[i_imopVar78][j_imopVar79][k_imopVar80][0];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        matvec_sub(_imopVarPre342, _imopVarPre341, _imopVarPre340);
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        double ( *_imopVarPre346 )[5];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        double ( *_imopVarPre347 )[5];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        double ( *_imopVarPre348 )[5];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre346 = lhs[i_imopVar78][j_imopVar79][k_imopVar80][1];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre347 = lhs[i_imopVar78 - 1][j_imopVar79][k_imopVar80][2];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre348 = lhs[i_imopVar78][j_imopVar79][k_imopVar80][0];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        matmul_sub(_imopVarPre348, _imopVarPre347, _imopVarPre346);
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        double *_imopVarPre352;
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        double ( *_imopVarPre353 )[5];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        double ( *_imopVarPre354 )[5];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre352 = rhs[i_imopVar78][j_imopVar79][k_imopVar80];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre353 = lhs[i_imopVar78][j_imopVar79][k_imopVar80][2];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre354 = lhs[i_imopVar78][j_imopVar79][k_imopVar80][1];
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        binvcrhs(_imopVarPre354, _imopVarPre353, _imopVarPre352);
                        /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    }
                }
                /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp barrier
            }
            /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp for nowait
            /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            for (j_imopVar79 = 1; j_imopVar79 < grid_points[1] - 1; j_imopVar79++) {
            /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                for (k_imopVar80 = 1; k_imopVar80 < grid_points[2] - 1; k_imopVar80++) {
                /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    double *_imopVarPre358;
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    double *_imopVarPre359;
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    double ( *_imopVarPre360 )[5];
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre358 = rhs[isize][j_imopVar79][k_imopVar80];
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre359 = rhs[isize - 1][j_imopVar79][k_imopVar80];
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre360 = lhs[isize][j_imopVar79][k_imopVar80][0];
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    matvec_sub(_imopVarPre360, _imopVarPre359, _imopVarPre358);
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    double ( *_imopVarPre364 )[5];
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    double ( *_imopVarPre365 )[5];
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    double ( *_imopVarPre366 )[5];
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre364 = lhs[isize][j_imopVar79][k_imopVar80][1];
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre365 = lhs[isize - 1][j_imopVar79][k_imopVar80][2];
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre366 = lhs[isize][j_imopVar79][k_imopVar80][0];
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    matmul_sub(_imopVarPre366, _imopVarPre365, _imopVarPre364);
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    double *_imopVarPre369;
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    double ( *_imopVarPre370 )[5];
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre369 = rhs[i_imopVar78][j_imopVar79][k_imopVar80];
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre370 = lhs[i_imopVar78][j_imopVar79][k_imopVar80][1];
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    binvrhs(_imopVarPre370, _imopVarPre369);
                    /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                }
            }
            /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp barrier
            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            int i_imopVar115;
            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            int j_imopVar116;
            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            int k_imopVar117;
            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            int m_imopVar118;
            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            int n;
            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            for (i_imopVar115 = grid_points[0] - 2; i_imopVar115 >= 0; i_imopVar115--) {
            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp for nowait
                /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                for (j_imopVar116 = 1; j_imopVar116 < grid_points[1] - 1; j_imopVar116++) {
                /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    for (k_imopVar117 = 1; k_imopVar117 < grid_points[2] - 1; k_imopVar117++) {
                    /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        for (m_imopVar118 = 0; m_imopVar118 < 5; m_imopVar118++) {
                        /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                            for (n = 0; n < 5; n++) {
                            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                                /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                                rhs[i_imopVar115][j_imopVar116][k_imopVar117][m_imopVar118] = rhs[i_imopVar115][j_imopVar116][k_imopVar117][m_imopVar118] - lhs[i_imopVar115][j_imopVar116][k_imopVar117][2][m_imopVar118][n] * rhs[i_imopVar115 + 1][j_imopVar116][k_imopVar117][n];
                            }
                        }
                    }
                }
                /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp barrier
            }
            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp barrier
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            int i_imopVar87;
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            int j_imopVar88;
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            int k_imopVar89;
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp for nowait
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            for (i_imopVar87 = 1; i_imopVar87 < grid_points[0] - 1; i_imopVar87++) {
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                for (j_imopVar88 = 0; j_imopVar88 < grid_points[1]; j_imopVar88++) {
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    for (k_imopVar89 = 1; k_imopVar89 < grid_points[2] - 1; k_imopVar89++) {
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        tmp1 = 1.0 / u[i_imopVar87][j_imopVar88][k_imopVar89][0];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        tmp2 = tmp1 * tmp1;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        tmp3 = tmp1 * tmp2;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][0][0] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][0][1] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][0][2] = 1.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][0][3] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][0][4] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][1][0] = -(u[i_imopVar87][j_imopVar88][k_imopVar89][1] * u[i_imopVar87][j_imopVar88][k_imopVar89][2]) * tmp2;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][1][1] = u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp1;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][1][2] = u[i_imopVar87][j_imopVar88][k_imopVar89][1] * tmp1;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][1][3] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][1][4] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][2][0] = -(u[i_imopVar87][j_imopVar88][k_imopVar89][2] * u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp2) + 0.50 * c2 * ((u[i_imopVar87][j_imopVar88][k_imopVar89][1] * u[i_imopVar87][j_imopVar88][k_imopVar89][1] + u[i_imopVar87][j_imopVar88][k_imopVar89][2] * u[i_imopVar87][j_imopVar88][k_imopVar89][2] + u[i_imopVar87][j_imopVar88][k_imopVar89][3] * u[i_imopVar87][j_imopVar88][k_imopVar89][3]) * tmp2);
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][2][1] = -c2 * u[i_imopVar87][j_imopVar88][k_imopVar89][1] * tmp1;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][2][2] = (2.0 - c2) * u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp1;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][2][3] = -c2 * u[i_imopVar87][j_imopVar88][k_imopVar89][3] * tmp1;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][2][4] = c2;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][3][0] = -(u[i_imopVar87][j_imopVar88][k_imopVar89][2] * u[i_imopVar87][j_imopVar88][k_imopVar89][3]) * tmp2;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][3][1] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][3][2] = u[i_imopVar87][j_imopVar88][k_imopVar89][3] * tmp1;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][3][3] = u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp1;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][3][4] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][4][0] = (c2 * (u[i_imopVar87][j_imopVar88][k_imopVar89][1] * u[i_imopVar87][j_imopVar88][k_imopVar89][1] + u[i_imopVar87][j_imopVar88][k_imopVar89][2] * u[i_imopVar87][j_imopVar88][k_imopVar89][2] + u[i_imopVar87][j_imopVar88][k_imopVar89][3] * u[i_imopVar87][j_imopVar88][k_imopVar89][3]) * tmp2 - c1 * u[i_imopVar87][j_imopVar88][k_imopVar89][4] * tmp1) * u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp1;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][4][1] = -c2 * u[i_imopVar87][j_imopVar88][k_imopVar89][1] * u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp2;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][4][2] = c1 * u[i_imopVar87][j_imopVar88][k_imopVar89][4] * tmp1 - 0.50 * c2 * ((u[i_imopVar87][j_imopVar88][k_imopVar89][1] * u[i_imopVar87][j_imopVar88][k_imopVar89][1] + 3.0 * u[i_imopVar87][j_imopVar88][k_imopVar89][2] * u[i_imopVar87][j_imopVar88][k_imopVar89][2] + u[i_imopVar87][j_imopVar88][k_imopVar89][3] * u[i_imopVar87][j_imopVar88][k_imopVar89][3]) * tmp2);
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][4][3] = -c2 * (u[i_imopVar87][j_imopVar88][k_imopVar89][2] * u[i_imopVar87][j_imopVar88][k_imopVar89][3]) * tmp2;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar87][j_imopVar88][k_imopVar89][4][4] = c1 * u[i_imopVar87][j_imopVar88][k_imopVar89][2] * tmp1;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][0][0] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][0][1] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][0][2] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][0][3] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][0][4] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][1][0] = -c3c4 * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][1];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][1][1] = c3c4 * tmp1;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][1][2] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][1][3] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][1][4] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][2][0] = -con43 * c3c4 * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][2];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][2][1] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][2][2] = con43 * c3c4 * tmp1;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][2][3] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][2][4] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][3][0] = -c3c4 * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][3];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][3][1] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][3][2] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][3][3] = c3c4 * tmp1;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][3][4] = 0.0;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i_imopVar87][j_imopVar88][k_imopVar89][1]) * (u[i_imopVar87][j_imopVar88][k_imopVar89][1]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i_imopVar87][j_imopVar88][k_imopVar89][2]) * (u[i_imopVar87][j_imopVar88][k_imopVar89][2]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVar87][j_imopVar88][k_imopVar89][3]) * (u[i_imopVar87][j_imopVar88][k_imopVar89][3]))) - c1345 * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][4];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][4][1] = (c3c4 - c1345) * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][1];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][4][2] = (con43 * c3c4 - c1345) * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][2];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][4][3] = (c3c4 - c1345) * tmp2 * u[i_imopVar87][j_imopVar88][k_imopVar89][3];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar87][j_imopVar88][k_imopVar89][4][4] = c1345 * tmp1;
                    }
                }
            }
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp barrier
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp for nowait
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            for (i_imopVar87 = 1; i_imopVar87 < grid_points[0] - 1; i_imopVar87++) {
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                for (j_imopVar88 = 1; j_imopVar88 < grid_points[1] - 1; j_imopVar88++) {
                /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    for (k_imopVar89 = 1; k_imopVar89 < grid_points[2] - 1; k_imopVar89++) {
                    /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        tmp1 = dt * ty1;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        tmp2 = dt * ty2;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][0][0] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][0] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][0] - tmp1 * dy1;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][0][1] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][1] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][1];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][0][2] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][2] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][2];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][0][3] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][3] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][3];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][0][4] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][4] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][0][4];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][1][0] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][0] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][0];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][1][1] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][1] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][1] - tmp1 * dy2;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][1][2] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][2] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][2];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][1][3] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][3] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][3];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][1][4] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][4] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][1][4];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][2][0] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][0] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][0];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][2][1] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][1] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][1];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][2][2] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][2] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][2] - tmp1 * dy3;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][2][3] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][3] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][3];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][2][4] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][4] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][2][4];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][3][0] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][0] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][0];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][3][1] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][1] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][1];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][3][2] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][2] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][2];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][3][3] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][3] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][3] - tmp1 * dy4;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][3][4] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][4] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][3][4];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][4][0] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][0] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][0];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][4][1] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][1] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][1];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][4][2] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][2] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][2];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][4][3] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][3] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][3];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][0][4][4] = -tmp2 * fjac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][4] - tmp1 * njac[i_imopVar87][j_imopVar88 - 1][k_imopVar89][4][4] - tmp1 * dy5;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][0][0] + tmp1 * 2.0 * dy1;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][0][1] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][0][1];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][0][2] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][0][2];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][0][3] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][0][3];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][0][4] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][0][4];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][1][0] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][1][0];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][1][1] + tmp1 * 2.0 * dy2;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][1][2] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][1][2];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][1][3] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][1][3];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][1][4] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][1][4];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][2][0] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][2][0];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][2][1] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][2][1];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][2][2] + tmp1 * 2.0 * dy3;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][2][3] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][2][3];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][2][4] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][2][4];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][3][0] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][3][0];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][3][1] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][3][1];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][3][2] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][3][2];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][3][3] + tmp1 * 2.0 * dy4;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][3][4] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][3][4];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][4][0] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][4][0];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][4][1] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][4][1];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][4][2] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][4][2];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][4][3] = tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][4][3];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i_imopVar87][j_imopVar88][k_imopVar89][4][4] + tmp1 * 2.0 * dy5;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][0][0] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][0] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][0] - tmp1 * dy1;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][0][1] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][1] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][1];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][0][2] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][2] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][2];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][0][3] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][3] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][3];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][0][4] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][4] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][0][4];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][1][0] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][0] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][0];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][1][1] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][1] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][1] - tmp1 * dy2;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][1][2] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][2] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][2];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][1][3] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][3] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][3];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][1][4] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][4] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][1][4];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][2][0] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][0] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][0];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][2][1] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][1] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][1];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][2][2] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][2] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][2] - tmp1 * dy3;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][2][3] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][3] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][3];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][2][4] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][4] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][2][4];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][3][0] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][0] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][0];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][3][1] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][1] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][1];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][3][2] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][2] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][2];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][3][3] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][3] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][3] - tmp1 * dy4;
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][3][4] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][4] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][3][4];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][4][0] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][0] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][0];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][4][1] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][1] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][1];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][4][2] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][2] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][2];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][4][3] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][3] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][3];
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                        lhs[i_imopVar87][j_imopVar88][k_imopVar89][2][4][4] = tmp2 * fjac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][4] - tmp1 * njac[i_imopVar87][j_imopVar88 + 1][k_imopVar89][4][4] - tmp1 * dy5;
                    }
                }
            }
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp barrier
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            int i_imopVar81;
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            int j_imopVar82;
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            int k_imopVar83;
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            int jsize;
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            jsize = grid_points[1] - 1;
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp for nowait
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            for (i_imopVar81 = 1; i_imopVar81 < grid_points[0] - 1; i_imopVar81++) {
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                for (k_imopVar83 = 1; k_imopVar83 < grid_points[2] - 1; k_imopVar83++) {
                /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    double *_imopVarPre374;
                    /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    double ( *_imopVarPre375 )[5];
                    /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    double ( *_imopVarPre376 )[5];
                    /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre374 = rhs[i_imopVar81][0][k_imopVar83];
                    /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre375 = lhs[i_imopVar81][0][k_imopVar83][2];
                    /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre376 = lhs[i_imopVar81][0][k_imopVar83][1];
                    /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                    binvcrhs(_imopVarPre376, _imopVarPre375, _imopVarPre374);
                    /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
                }
            }
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp barrier
            /*[54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[55, 56, 57, 58, 59, 60, 61]*/
            /*[54, 55, 56, 57, 58, 59, 60, 61]*/
            for (j_imopVar82 = 1; j_imopVar82 < jsize; j_imopVar82++) {
            /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp for nowait
                /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                for (i_imopVar81 = 1; i_imopVar81 < grid_points[0] - 1; i_imopVar81++) {
                /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    for (k_imopVar83 = 1; k_imopVar83 < grid_points[2] - 1; k_imopVar83++) {
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        double *_imopVarPre380;
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        double *_imopVarPre381;
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        double ( *_imopVarPre382 )[5];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre380 = rhs[i_imopVar81][j_imopVar82][k_imopVar83];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre381 = rhs[i_imopVar81][j_imopVar82 - 1][k_imopVar83];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre382 = lhs[i_imopVar81][j_imopVar82][k_imopVar83][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        matvec_sub(_imopVarPre382, _imopVarPre381, _imopVarPre380);
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        double ( *_imopVarPre386 )[5];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        double ( *_imopVarPre387 )[5];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        double ( *_imopVarPre388 )[5];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre386 = lhs[i_imopVar81][j_imopVar82][k_imopVar83][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre387 = lhs[i_imopVar81][j_imopVar82 - 1][k_imopVar83][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre388 = lhs[i_imopVar81][j_imopVar82][k_imopVar83][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        matmul_sub(_imopVarPre388, _imopVarPre387, _imopVarPre386);
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        double *_imopVarPre392;
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        double ( *_imopVarPre393 )[5];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        double ( *_imopVarPre394 )[5];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre392 = rhs[i_imopVar81][j_imopVar82][k_imopVar83];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre393 = lhs[i_imopVar81][j_imopVar82][k_imopVar83][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        _imopVarPre394 = lhs[i_imopVar81][j_imopVar82][k_imopVar83][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                        binvcrhs(_imopVarPre394, _imopVarPre393, _imopVarPre392);
                        /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    }
                }
                /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp barrier
            }
            /*[54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp for nowait
            /*[54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[54, 55, 56, 57, 58, 59, 60, 61]*/
            /*[54, 55, 56, 57, 58, 59, 60, 61]*/
            for (i_imopVar81 = 1; i_imopVar81 < grid_points[0] - 1; i_imopVar81++) {
            /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                for (k_imopVar83 = 1; k_imopVar83 < grid_points[2] - 1; k_imopVar83++) {
                /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    double *_imopVarPre398;
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    double *_imopVarPre399;
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    double ( *_imopVarPre400 )[5];
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre398 = rhs[i_imopVar81][jsize][k_imopVar83];
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre399 = rhs[i_imopVar81][jsize - 1][k_imopVar83];
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre400 = lhs[i_imopVar81][jsize][k_imopVar83][0];
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    matvec_sub(_imopVarPre400, _imopVarPre399, _imopVarPre398);
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    double ( *_imopVarPre404 )[5];
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    double ( *_imopVarPre405 )[5];
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    double ( *_imopVarPre406 )[5];
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre404 = lhs[i_imopVar81][jsize][k_imopVar83][1];
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre405 = lhs[i_imopVar81][jsize - 1][k_imopVar83][2];
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre406 = lhs[i_imopVar81][jsize][k_imopVar83][0];
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    matmul_sub(_imopVarPre406, _imopVarPre405, _imopVarPre404);
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    double *_imopVarPre409;
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    double ( *_imopVarPre410 )[5];
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre409 = rhs[i_imopVar81][jsize][k_imopVar83];
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    _imopVarPre410 = lhs[i_imopVar81][jsize][k_imopVar83][1];
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                    binvrhs(_imopVarPre410, _imopVarPre409);
                    /*[54, 55, 56, 57, 58, 59, 60, 61]*/
                }
            }
            /*[54, 55, 56, 57, 58, 59, 60, 61]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[54, 55, 56, 57, 58, 59, 60, 61]*/
#pragma omp barrier
            /*[55, 56, 57, 58, 59, 60, 61]*/
            int i_imopVar84;
            /*[55, 56, 57, 58, 59, 60, 61]*/
            int j_imopVar85;
            /*[55, 56, 57, 58, 59, 60, 61]*/
            int k_imopVar86;
            /*[55, 56, 57, 58, 59, 60, 61]*/
            int m_imopVar90;
            /*[55, 56, 57, 58, 59, 60, 61]*/
            int n_imopVar91;
            /*[55, 56, 57, 58, 59, 60, 61]*/
            /*[55, 56, 57, 58, 59, 60, 61]*/
            /*[56, 57, 58, 59, 60, 61]*/
            /*[55, 56, 57, 58, 59, 60, 61]*/
            for (j_imopVar85 = grid_points[1] - 2; j_imopVar85 >= 0; j_imopVar85--) {
            /*[55, 56, 57, 58, 59, 60, 61]*/
                /*[55, 56, 57, 58, 59, 60, 61]*/
#pragma omp for nowait
                /*[55, 56, 57, 58, 59, 60, 61]*/
                /*[55, 56, 57, 58, 59, 60, 61]*/
                /*[55, 56, 57, 58, 59, 60, 61]*/
                for (i_imopVar84 = 1; i_imopVar84 < grid_points[0] - 1; i_imopVar84++) {
                /*[55, 56, 57, 58, 59, 60, 61]*/
                    /*[55, 56, 57, 58, 59, 60, 61]*/
                    /*[55, 56, 57, 58, 59, 60, 61]*/
                    /*[55, 56, 57, 58, 59, 60, 61]*/
                    /*[55, 56, 57, 58, 59, 60, 61]*/
                    for (k_imopVar86 = 1; k_imopVar86 < grid_points[2] - 1; k_imopVar86++) {
                    /*[55, 56, 57, 58, 59, 60, 61]*/
                        /*[55, 56, 57, 58, 59, 60, 61]*/
                        /*[55, 56, 57, 58, 59, 60, 61]*/
                        /*[55, 56, 57, 58, 59, 60, 61]*/
                        /*[55, 56, 57, 58, 59, 60, 61]*/
                        for (m_imopVar90 = 0; m_imopVar90 < 5; m_imopVar90++) {
                        /*[55, 56, 57, 58, 59, 60, 61]*/
                            /*[55, 56, 57, 58, 59, 60, 61]*/
                            /*[55, 56, 57, 58, 59, 60, 61]*/
                            /*[55, 56, 57, 58, 59, 60, 61]*/
                            /*[55, 56, 57, 58, 59, 60, 61]*/
                            for (n_imopVar91 = 0; n_imopVar91 < 5; n_imopVar91++) {
                            /*[55, 56, 57, 58, 59, 60, 61]*/
                                /*[55, 56, 57, 58, 59, 60, 61]*/
                                rhs[i_imopVar84][j_imopVar85][k_imopVar86][m_imopVar90] = rhs[i_imopVar84][j_imopVar85][k_imopVar86][m_imopVar90] - lhs[i_imopVar84][j_imopVar85][k_imopVar86][2][m_imopVar90][n_imopVar91] * rhs[i_imopVar84][j_imopVar85 + 1][k_imopVar86][n_imopVar91];
                            }
                        }
                    }
                }
                /*[55, 56, 57, 58, 59, 60, 61]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[55, 56, 57, 58, 59, 60, 61]*/
#pragma omp barrier
            }
            /*[55, 56, 57, 58, 59, 60, 61]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[55, 56, 57, 58, 59, 60, 61]*/
#pragma omp barrier
            /*[56, 57, 58, 59, 60, 61]*/
            int i_imopVar99;
            /*[56, 57, 58, 59, 60, 61]*/
            int j_imopVar100;
            /*[56, 57, 58, 59, 60, 61]*/
            int k_imopVar101;
            /*[56, 57, 58, 59, 60, 61]*/
#pragma omp for nowait
            /*[56, 57, 58, 59, 60, 61]*/
            /*[56, 57, 58, 59, 60, 61]*/
            /*[56, 57, 58, 59, 60, 61]*/
            for (i_imopVar99 = 1; i_imopVar99 < grid_points[0] - 1; i_imopVar99++) {
            /*[56, 57, 58, 59, 60, 61]*/
                /*[56, 57, 58, 59, 60, 61]*/
                /*[56, 57, 58, 59, 60, 61]*/
                /*[56, 57, 58, 59, 60, 61]*/
                /*[56, 57, 58, 59, 60, 61]*/
                for (j_imopVar100 = 1; j_imopVar100 < grid_points[1] - 1; j_imopVar100++) {
                /*[56, 57, 58, 59, 60, 61]*/
                    /*[56, 57, 58, 59, 60, 61]*/
                    /*[56, 57, 58, 59, 60, 61]*/
                    /*[56, 57, 58, 59, 60, 61]*/
                    /*[56, 57, 58, 59, 60, 61]*/
                    for (k_imopVar101 = 0; k_imopVar101 < grid_points[2]; k_imopVar101++) {
                    /*[56, 57, 58, 59, 60, 61]*/
                        /*[56, 57, 58, 59, 60, 61]*/
                        tmp1 = 1.0 / u[i_imopVar99][j_imopVar100][k_imopVar101][0];
                        /*[56, 57, 58, 59, 60, 61]*/
                        tmp2 = tmp1 * tmp1;
                        /*[56, 57, 58, 59, 60, 61]*/
                        tmp3 = tmp1 * tmp2;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][0][0] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][0][1] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][0][2] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][0][3] = 1.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][0][4] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][1][0] = -(u[i_imopVar99][j_imopVar100][k_imopVar101][1] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][1][1] = u[i_imopVar99][j_imopVar100][k_imopVar101][3] * tmp1;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][1][2] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][1][3] = u[i_imopVar99][j_imopVar100][k_imopVar101][1] * tmp1;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][1][4] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][2][0] = -(u[i_imopVar99][j_imopVar100][k_imopVar101][2] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][2][1] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][2][2] = u[i_imopVar99][j_imopVar100][k_imopVar101][3] * tmp1;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][2][3] = u[i_imopVar99][j_imopVar100][k_imopVar101][2] * tmp1;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][2][4] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][3][0] = -(u[i_imopVar99][j_imopVar100][k_imopVar101][3] * u[i_imopVar99][j_imopVar100][k_imopVar101][3] * tmp2) + 0.50 * c2 * ((u[i_imopVar99][j_imopVar100][k_imopVar101][1] * u[i_imopVar99][j_imopVar100][k_imopVar101][1] + u[i_imopVar99][j_imopVar100][k_imopVar101][2] * u[i_imopVar99][j_imopVar100][k_imopVar101][2] + u[i_imopVar99][j_imopVar100][k_imopVar101][3] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2);
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][3][1] = -c2 * u[i_imopVar99][j_imopVar100][k_imopVar101][1] * tmp1;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][3][2] = -c2 * u[i_imopVar99][j_imopVar100][k_imopVar101][2] * tmp1;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][3][3] = (2.0 - c2) * u[i_imopVar99][j_imopVar100][k_imopVar101][3] * tmp1;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][3][4] = c2;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][4][0] = (c2 * (u[i_imopVar99][j_imopVar100][k_imopVar101][1] * u[i_imopVar99][j_imopVar100][k_imopVar101][1] + u[i_imopVar99][j_imopVar100][k_imopVar101][2] * u[i_imopVar99][j_imopVar100][k_imopVar101][2] + u[i_imopVar99][j_imopVar100][k_imopVar101][3] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2 - c1 * (u[i_imopVar99][j_imopVar100][k_imopVar101][4] * tmp1)) * (u[i_imopVar99][j_imopVar100][k_imopVar101][3] * tmp1);
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][4][1] = -c2 * (u[i_imopVar99][j_imopVar100][k_imopVar101][1] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][4][2] = -c2 * (u[i_imopVar99][j_imopVar100][k_imopVar101][2] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2;
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][4][3] = c1 * (u[i_imopVar99][j_imopVar100][k_imopVar101][4] * tmp1) - 0.50 * c2 * ((u[i_imopVar99][j_imopVar100][k_imopVar101][1] * u[i_imopVar99][j_imopVar100][k_imopVar101][1] + u[i_imopVar99][j_imopVar100][k_imopVar101][2] * u[i_imopVar99][j_imopVar100][k_imopVar101][2] + 3.0 * u[i_imopVar99][j_imopVar100][k_imopVar101][3] * u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * tmp2);
                        /*[56, 57, 58, 59, 60, 61]*/
                        fjac[i_imopVar99][j_imopVar100][k_imopVar101][4][4] = c1 * u[i_imopVar99][j_imopVar100][k_imopVar101][3] * tmp1;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][0][0] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][0][1] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][0][2] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][0][3] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][0][4] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][1][0] = -c3c4 * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][1];
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][1][1] = c3c4 * tmp1;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][1][2] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][1][3] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][1][4] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][2][0] = -c3c4 * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][2];
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][2][1] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][2][2] = c3c4 * tmp1;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][2][3] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][2][4] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][3][0] = -con43 * c3c4 * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][3];
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][3][1] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][3][2] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][3][3] = con43 * c3 * c4 * tmp1;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][3][4] = 0.0;
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i_imopVar99][j_imopVar100][k_imopVar101][1]) * (u[i_imopVar99][j_imopVar100][k_imopVar101][1]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVar99][j_imopVar100][k_imopVar101][2]) * (u[i_imopVar99][j_imopVar100][k_imopVar101][2]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i_imopVar99][j_imopVar100][k_imopVar101][3]) * (u[i_imopVar99][j_imopVar100][k_imopVar101][3]))) - c1345 * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][4];
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][4][1] = (c3c4 - c1345) * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][1];
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][4][2] = (c3c4 - c1345) * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][2];
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][4][3] = (con43 * c3c4 - c1345) * tmp2 * u[i_imopVar99][j_imopVar100][k_imopVar101][3];
                        /*[56, 57, 58, 59, 60, 61]*/
                        njac[i_imopVar99][j_imopVar100][k_imopVar101][4][4] = c1345 * tmp1;
                    }
                }
            }
            /*[56, 57, 58, 59, 60, 61]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[56, 57, 58, 59, 60, 61]*/
#pragma omp barrier
            /*[57, 58, 59, 60, 61]*/
#pragma omp for nowait
            /*[57, 58, 59, 60, 61]*/
            /*[57, 58, 59, 60, 61]*/
            /*[57, 58, 59, 60, 61]*/
            for (i_imopVar99 = 1; i_imopVar99 < grid_points[0] - 1; i_imopVar99++) {
            /*[57, 58, 59, 60, 61]*/
                /*[57, 58, 59, 60, 61]*/
                /*[57, 58, 59, 60, 61]*/
                /*[57, 58, 59, 60, 61]*/
                /*[57, 58, 59, 60, 61]*/
                for (j_imopVar100 = 1; j_imopVar100 < grid_points[1] - 1; j_imopVar100++) {
                /*[57, 58, 59, 60, 61]*/
                    /*[57, 58, 59, 60, 61]*/
                    /*[57, 58, 59, 60, 61]*/
                    /*[57, 58, 59, 60, 61]*/
                    /*[57, 58, 59, 60, 61]*/
                    for (k_imopVar101 = 1; k_imopVar101 < grid_points[2] - 1; k_imopVar101++) {
                    /*[57, 58, 59, 60, 61]*/
                        /*[57, 58, 59, 60, 61]*/
                        tmp1 = dt * tz1;
                        /*[57, 58, 59, 60, 61]*/
                        tmp2 = dt * tz2;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][0][0] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][0] - tmp1 * dz1;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][0][1] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][1];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][0][2] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][2];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][0][3] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][3];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][0][4] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][0][4];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][1][0] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][0];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][1][1] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][1] - tmp1 * dz2;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][1][2] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][2];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][1][3] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][3];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][1][4] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][1][4];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][2][0] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][0];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][2][1] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][1];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][2][2] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][2] - tmp1 * dz3;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][2][3] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][3];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][2][4] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][2][4];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][3][0] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][0];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][3][1] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][1];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][3][2] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][2];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][3][3] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][3] - tmp1 * dz4;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][3][4] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][3][4];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][4][0] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][0];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][4][1] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][1];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][4][2] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][2];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][4][3] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][3];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][0][4][4] = -tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 - 1][4][4] - tmp1 * dz5;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][0][0] + tmp1 * 2.0 * dz1;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][0][1] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][0][1];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][0][2] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][0][2];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][0][3] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][0][3];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][0][4] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][0][4];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][1][0] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][1][0];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][1][1] + tmp1 * 2.0 * dz2;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][1][2] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][1][2];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][1][3] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][1][3];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][1][4] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][1][4];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][2][0] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][2][0];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][2][1] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][2][1];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][2][2] + tmp1 * 2.0 * dz3;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][2][3] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][2][3];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][2][4] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][2][4];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][3][0] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][3][0];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][3][1] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][3][1];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][3][2] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][3][2];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][3][3] + tmp1 * 2.0 * dz4;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][3][4] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][3][4];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][4][0] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][4][0];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][4][1] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][4][1];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][4][2] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][4][2];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][4][3] = tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][4][3];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i_imopVar99][j_imopVar100][k_imopVar101][4][4] + tmp1 * 2.0 * dz5;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][0][0] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][0] - tmp1 * dz1;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][0][1] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][1];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][0][2] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][2];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][0][3] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][3];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][0][4] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][0][4];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][1][0] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][0];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][1][1] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][1] - tmp1 * dz2;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][1][2] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][2];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][1][3] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][3];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][1][4] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][1][4];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][2][0] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][0];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][2][1] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][1];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][2][2] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][2] - tmp1 * dz3;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][2][3] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][3];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][2][4] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][2][4];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][3][0] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][0];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][3][1] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][1];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][3][2] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][2];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][3][3] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][3] - tmp1 * dz4;
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][3][4] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][3][4];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][4][0] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][0] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][0];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][4][1] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][1] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][1];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][4][2] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][2] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][2];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][4][3] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][3] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][3];
                        /*[57, 58, 59, 60, 61]*/
                        lhs[i_imopVar99][j_imopVar100][k_imopVar101][2][4][4] = tmp2 * fjac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][4] - tmp1 * njac[i_imopVar99][j_imopVar100][k_imopVar101 + 1][4][4] - tmp1 * dz5;
                    }
                }
            }
            /*[57, 58, 59, 60, 61]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[57, 58, 59, 60, 61]*/
#pragma omp barrier
            /*[58, 59, 60, 61]*/
            int i_imopVar102;
            /*[58, 59, 60, 61]*/
            int j_imopVar103;
            /*[58, 59, 60, 61]*/
            int k_imopVar104;
            /*[58, 59, 60, 61]*/
            int ksize;
            /*[58, 59, 60, 61]*/
            ksize = grid_points[2] - 1;
            /*[58, 59, 60, 61]*/
#pragma omp for nowait
            /*[58, 59, 60, 61]*/
            /*[58, 59, 60, 61]*/
            /*[58, 59, 60, 61]*/
            for (i_imopVar102 = 1; i_imopVar102 < grid_points[0] - 1; i_imopVar102++) {
            /*[58, 59, 60, 61]*/
                /*[58, 59, 60, 61]*/
                /*[58, 59, 60, 61]*/
                /*[58, 59, 60, 61]*/
                /*[58, 59, 60, 61]*/
                for (j_imopVar103 = 1; j_imopVar103 < grid_points[1] - 1; j_imopVar103++) {
                /*[58, 59, 60, 61]*/
                    /*[58, 59, 60, 61]*/
                    double *_imopVarPre414;
                    /*[58, 59, 60, 61]*/
                    double ( *_imopVarPre415 )[5];
                    /*[58, 59, 60, 61]*/
                    double ( *_imopVarPre416 )[5];
                    /*[58, 59, 60, 61]*/
                    _imopVarPre414 = rhs[i_imopVar102][j_imopVar103][0];
                    /*[58, 59, 60, 61]*/
                    _imopVarPre415 = lhs[i_imopVar102][j_imopVar103][0][2];
                    /*[58, 59, 60, 61]*/
                    _imopVarPre416 = lhs[i_imopVar102][j_imopVar103][0][1];
                    /*[58, 59, 60, 61]*/
                    binvcrhs(_imopVarPre416, _imopVarPre415, _imopVarPre414);
                    /*[58, 59, 60, 61]*/
                }
            }
            /*[58, 59, 60, 61]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[58, 59, 60, 61]*/
#pragma omp barrier
            /*[59, 60, 61]*/
            /*[59, 60, 61]*/
            /*[60, 61]*/
            /*[59, 60, 61]*/
            for (k_imopVar104 = 1; k_imopVar104 < ksize; k_imopVar104++) {
            /*[59, 60, 61]*/
                /*[59, 60, 61]*/
#pragma omp for nowait
                /*[59, 60, 61]*/
                /*[59, 60, 61]*/
                /*[59, 60, 61]*/
                for (i_imopVar102 = 1; i_imopVar102 < grid_points[0] - 1; i_imopVar102++) {
                /*[59, 60, 61]*/
                    /*[59, 60, 61]*/
                    /*[59, 60, 61]*/
                    /*[59, 60, 61]*/
                    /*[59, 60, 61]*/
                    for (j_imopVar103 = 1; j_imopVar103 < grid_points[1] - 1; j_imopVar103++) {
                    /*[59, 60, 61]*/
                        /*[59, 60, 61]*/
                        double *_imopVarPre420;
                        /*[59, 60, 61]*/
                        double *_imopVarPre421;
                        /*[59, 60, 61]*/
                        double ( *_imopVarPre422 )[5];
                        /*[59, 60, 61]*/
                        _imopVarPre420 = rhs[i_imopVar102][j_imopVar103][k_imopVar104];
                        /*[59, 60, 61]*/
                        _imopVarPre421 = rhs[i_imopVar102][j_imopVar103][k_imopVar104 - 1];
                        /*[59, 60, 61]*/
                        _imopVarPre422 = lhs[i_imopVar102][j_imopVar103][k_imopVar104][0];
                        /*[59, 60, 61]*/
                        matvec_sub(_imopVarPre422, _imopVarPre421, _imopVarPre420);
                        /*[59, 60, 61]*/
                        /*[59, 60, 61]*/
                        double ( *_imopVarPre426 )[5];
                        /*[59, 60, 61]*/
                        double ( *_imopVarPre427 )[5];
                        /*[59, 60, 61]*/
                        double ( *_imopVarPre428 )[5];
                        /*[59, 60, 61]*/
                        _imopVarPre426 = lhs[i_imopVar102][j_imopVar103][k_imopVar104][1];
                        /*[59, 60, 61]*/
                        _imopVarPre427 = lhs[i_imopVar102][j_imopVar103][k_imopVar104 - 1][2];
                        /*[59, 60, 61]*/
                        _imopVarPre428 = lhs[i_imopVar102][j_imopVar103][k_imopVar104][0];
                        /*[59, 60, 61]*/
                        matmul_sub(_imopVarPre428, _imopVarPre427, _imopVarPre426);
                        /*[59, 60, 61]*/
                        /*[59, 60, 61]*/
                        double *_imopVarPre432;
                        /*[59, 60, 61]*/
                        double ( *_imopVarPre433 )[5];
                        /*[59, 60, 61]*/
                        double ( *_imopVarPre434 )[5];
                        /*[59, 60, 61]*/
                        _imopVarPre432 = rhs[i_imopVar102][j_imopVar103][k_imopVar104];
                        /*[59, 60, 61]*/
                        _imopVarPre433 = lhs[i_imopVar102][j_imopVar103][k_imopVar104][2];
                        /*[59, 60, 61]*/
                        _imopVarPre434 = lhs[i_imopVar102][j_imopVar103][k_imopVar104][1];
                        /*[59, 60, 61]*/
                        binvcrhs(_imopVarPre434, _imopVarPre433, _imopVarPre432);
                        /*[59, 60, 61]*/
                    }
                }
                /*[59, 60, 61]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[59, 60, 61]*/
#pragma omp barrier
            }
            /*[59, 60, 61]*/
#pragma omp for nowait
            /*[59, 60, 61]*/
            /*[59, 60, 61]*/
            /*[59, 60, 61]*/
            for (i_imopVar102 = 1; i_imopVar102 < grid_points[0] - 1; i_imopVar102++) {
            /*[59, 60, 61]*/
                /*[59, 60, 61]*/
                /*[59, 60, 61]*/
                /*[59, 60, 61]*/
                /*[59, 60, 61]*/
                for (j_imopVar103 = 1; j_imopVar103 < grid_points[1] - 1; j_imopVar103++) {
                /*[59, 60, 61]*/
                    /*[59, 60, 61]*/
                    double *_imopVarPre438;
                    /*[59, 60, 61]*/
                    double *_imopVarPre439;
                    /*[59, 60, 61]*/
                    double ( *_imopVarPre440 )[5];
                    /*[59, 60, 61]*/
                    _imopVarPre438 = rhs[i_imopVar102][j_imopVar103][ksize];
                    /*[59, 60, 61]*/
                    _imopVarPre439 = rhs[i_imopVar102][j_imopVar103][ksize - 1];
                    /*[59, 60, 61]*/
                    _imopVarPre440 = lhs[i_imopVar102][j_imopVar103][ksize][0];
                    /*[59, 60, 61]*/
                    matvec_sub(_imopVarPre440, _imopVarPre439, _imopVarPre438);
                    /*[59, 60, 61]*/
                    /*[59, 60, 61]*/
                    double ( *_imopVarPre444 )[5];
                    /*[59, 60, 61]*/
                    double ( *_imopVarPre445 )[5];
                    /*[59, 60, 61]*/
                    double ( *_imopVarPre446 )[5];
                    /*[59, 60, 61]*/
                    _imopVarPre444 = lhs[i_imopVar102][j_imopVar103][ksize][1];
                    /*[59, 60, 61]*/
                    _imopVarPre445 = lhs[i_imopVar102][j_imopVar103][ksize - 1][2];
                    /*[59, 60, 61]*/
                    _imopVarPre446 = lhs[i_imopVar102][j_imopVar103][ksize][0];
                    /*[59, 60, 61]*/
                    matmul_sub(_imopVarPre446, _imopVarPre445, _imopVarPre444);
                    /*[59, 60, 61]*/
                    /*[59, 60, 61]*/
                    double *_imopVarPre449;
                    /*[59, 60, 61]*/
                    double ( *_imopVarPre450 )[5];
                    /*[59, 60, 61]*/
                    _imopVarPre449 = rhs[i_imopVar102][j_imopVar103][ksize];
                    /*[59, 60, 61]*/
                    _imopVarPre450 = lhs[i_imopVar102][j_imopVar103][ksize][1];
                    /*[59, 60, 61]*/
                    binvrhs(_imopVarPre450, _imopVarPre449);
                    /*[59, 60, 61]*/
                }
            }
            /*[59, 60, 61]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[59, 60, 61]*/
#pragma omp barrier
            /*[60, 61]*/
            z_backsubstitute();
            /*[60, 61]*/
            /*[60, 61]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[60, 61]*/
#pragma omp barrier
            /*[61]*/
            add();
            /*[61]*/
        }
    }
    /*[62]*/
#pragma omp parallel
    {
    /*[62]*/
    }
    /*[]*/
    timer_stop(1);
    /*[]*/
    /*[]*/
    tmax = timer_read(1);
    /*[]*/
    /*[]*/
    int *_imopVarPre171;
    /*[]*/
    char *_imopVarPre172;
    /*[]*/
    _imopVarPre171 = &verified;
    /*[]*/
    _imopVarPre172 = &class;
    /*[]*/
    int no_time_steps;
    /*[]*/
    char *class_imopVar97;
    /*[]*/
    int *verified_imopVar98;
    /*[]*/
    no_time_steps = niter;
    /*[]*/
    class_imopVar97 = _imopVarPre172;
    /*[]*/
    verified_imopVar98 = _imopVarPre171;
    /*[]*/
    double xcrref[5];
    /*[]*/
    double xceref[5];
    /*[]*/
    double xcrdif[5];
    /*[]*/
    double xcedif[5];
    /*[]*/
    double epsilon;
    /*[]*/
    double xce[5];
    /*[]*/
    double xcr[5];
    /*[]*/
    double dtref;
    /*[]*/
    int m;
    /*[]*/
    epsilon = 1.0e-08;
    /*[]*/
    error_norm(xce);
    /*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    int m_imopVar96;
    /*[]*/
    double rho_inv;
    /*[]*/
    double uijk;
    /*[]*/
    double up1;
    /*[]*/
    double um1;
    /*[]*/
    double vijk;
    /*[]*/
    double vp1;
    /*[]*/
    double vm1;
    /*[]*/
    double wijk;
    /*[]*/
    double wp1;
    /*[]*/
    double wm1;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < grid_points[0]; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[]*/
                /*[]*/
                rho_inv = 1.0 / u[i][j][k][0];
                /*[]*/
                rho_i[i][j][k] = rho_inv;
                /*[]*/
                us[i][j][k] = u[i][j][k][1] * rho_inv;
                /*[]*/
                vs[i][j][k] = u[i][j][k][2] * rho_inv;
                /*[]*/
                ws[i][j][k] = u[i][j][k][3] * rho_inv;
                /*[]*/
                square[i][j][k] = 0.5 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * rho_inv;
                /*[]*/
                qs[i][j][k] = square[i][j][k] * rho_inv;
            }
        }
    }
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < grid_points[0]; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
                /*[]*/
                    /*[]*/
                    rhs[i][j][k][m_imopVar96] = forcing[i][j][k][m_imopVar96];
                }
            }
        }
    }
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[]*/
                /*[]*/
                uijk = us[i][j][k];
                /*[]*/
                up1 = us[i + 1][j][k];
                /*[]*/
                um1 = us[i - 1][j][k];
                /*[]*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dx1tx1 * (u[i + 1][j][k][0] - 2.0 * u[i][j][k][0] + u[i - 1][j][k][0]) - tx2 * (u[i + 1][j][k][1] - u[i - 1][j][k][1]);
                /*[]*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dx2tx1 * (u[i + 1][j][k][1] - 2.0 * u[i][j][k][1] + u[i - 1][j][k][1]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[i + 1][j][k][1] * up1 - u[i - 1][j][k][1] * um1 + (u[i + 1][j][k][4] - square[i + 1][j][k] - u[i - 1][j][k][4] + square[i - 1][j][k]) * c2);
                /*[]*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dx3tx1 * (u[i + 1][j][k][2] - 2.0 * u[i][j][k][2] + u[i - 1][j][k][2]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[i + 1][j][k][2] * up1 - u[i - 1][j][k][2] * um1);
                /*[]*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dx4tx1 * (u[i + 1][j][k][3] - 2.0 * u[i][j][k][3] + u[i - 1][j][k][3]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[i + 1][j][k][3] * up1 - u[i - 1][j][k][3] * um1);
                /*[]*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dx5tx1 * (u[i + 1][j][k][4] - 2.0 * u[i][j][k][4] + u[i - 1][j][k][4]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[i + 1][j][k][4] * rho_i[i + 1][j][k] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i - 1][j][k][4] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[i + 1][j][k][4] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[i - 1][j][k][4] - c2 * square[i - 1][j][k]) * um1);
            }
        }
    }
    /*[]*/
    i = 1;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (5.0 * u[i][j][k][m_imopVar96] - 4.0 * u[i + 1][j][k][m_imopVar96] + u[i + 2][j][k][m_imopVar96]);
            }
        }
    }
    /*[]*/
    i = 2;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (-4.0 * u[i - 1][j][k][m_imopVar96] + 6.0 * u[i][j][k][m_imopVar96] - 4.0 * u[i + 1][j][k][m_imopVar96] + u[i + 2][j][k][m_imopVar96]);
            }
        }
    }
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 3; i < grid_points[0] - 3; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
                /*[]*/
                    /*[]*/
                    rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (u[i - 2][j][k][m_imopVar96] - 4.0 * u[i - 1][j][k][m_imopVar96] + 6.0 * u[i][j][k][m_imopVar96] - 4.0 * u[i + 1][j][k][m_imopVar96] + u[i + 2][j][k][m_imopVar96]);
                }
            }
        }
    }
    /*[]*/
    i = grid_points[0] - 3;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (u[i - 2][j][k][m_imopVar96] - 4.0 * u[i - 1][j][k][m_imopVar96] + 6.0 * u[i][j][k][m_imopVar96] - 4.0 * u[i + 1][j][k][m_imopVar96]);
            }
        }
    }
    /*[]*/
    i = grid_points[0] - 2;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (u[i - 2][j][k][m_imopVar96] - 4. * u[i - 1][j][k][m_imopVar96] + 5.0 * u[i][j][k][m_imopVar96]);
            }
        }
    }
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[]*/
                /*[]*/
                vijk = vs[i][j][k];
                /*[]*/
                vp1 = vs[i][j + 1][k];
                /*[]*/
                vm1 = vs[i][j - 1][k];
                /*[]*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dy1ty1 * (u[i][j + 1][k][0] - 2.0 * u[i][j][k][0] + u[i][j - 1][k][0]) - ty2 * (u[i][j + 1][k][2] - u[i][j - 1][k][2]);
                /*[]*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dy2ty1 * (u[i][j + 1][k][1] - 2.0 * u[i][j][k][1] + u[i][j - 1][k][1]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[i][j + 1][k][1] * vp1 - u[i][j - 1][k][1] * vm1);
                /*[]*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dy3ty1 * (u[i][j + 1][k][2] - 2.0 * u[i][j][k][2] + u[i][j - 1][k][2]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[i][j + 1][k][2] * vp1 - u[i][j - 1][k][2] * vm1 + (u[i][j + 1][k][4] - square[i][j + 1][k] - u[i][j - 1][k][4] + square[i][j - 1][k]) * c2);
                /*[]*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dy4ty1 * (u[i][j + 1][k][3] - 2.0 * u[i][j][k][3] + u[i][j - 1][k][3]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[i][j + 1][k][3] * vp1 - u[i][j - 1][k][3] * vm1);
                /*[]*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dy5ty1 * (u[i][j + 1][k][4] - 2.0 * u[i][j][k][4] + u[i][j - 1][k][4]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[i][j + 1][k][4] * rho_i[i][j + 1][k] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i][j - 1][k][4] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[i][j + 1][k][4] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[i][j - 1][k][4] - c2 * square[i][j - 1][k]) * vm1);
            }
        }
    }
    /*[]*/
    j = 1;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (5.0 * u[i][j][k][m_imopVar96] - 4.0 * u[i][j + 1][k][m_imopVar96] + u[i][j + 2][k][m_imopVar96]);
            }
        }
    }
    /*[]*/
    j = 2;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (-4.0 * u[i][j - 1][k][m_imopVar96] + 6.0 * u[i][j][k][m_imopVar96] - 4.0 * u[i][j + 1][k][m_imopVar96] + u[i][j + 2][k][m_imopVar96]);
            }
        }
    }
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 3; j < grid_points[1] - 3; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
                /*[]*/
                    /*[]*/
                    rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (u[i][j - 2][k][m_imopVar96] - 4.0 * u[i][j - 1][k][m_imopVar96] + 6.0 * u[i][j][k][m_imopVar96] - 4.0 * u[i][j + 1][k][m_imopVar96] + u[i][j + 2][k][m_imopVar96]);
                }
            }
        }
    }
    /*[]*/
    j = grid_points[1] - 3;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (u[i][j - 2][k][m_imopVar96] - 4.0 * u[i][j - 1][k][m_imopVar96] + 6.0 * u[i][j][k][m_imopVar96] - 4.0 * u[i][j + 1][k][m_imopVar96]);
            }
        }
    }
    /*[]*/
    j = grid_points[1] - 2;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (u[i][j - 2][k][m_imopVar96] - 4. * u[i][j - 1][k][m_imopVar96] + 5. * u[i][j][k][m_imopVar96]);
            }
        }
    }
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[]*/
                /*[]*/
                wijk = ws[i][j][k];
                /*[]*/
                wp1 = ws[i][j][k + 1];
                /*[]*/
                wm1 = ws[i][j][k - 1];
                /*[]*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dz1tz1 * (u[i][j][k + 1][0] - 2.0 * u[i][j][k][0] + u[i][j][k - 1][0]) - tz2 * (u[i][j][k + 1][3] - u[i][j][k - 1][3]);
                /*[]*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dz2tz1 * (u[i][j][k + 1][1] - 2.0 * u[i][j][k][1] + u[i][j][k - 1][1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[i][j][k + 1][1] * wp1 - u[i][j][k - 1][1] * wm1);
                /*[]*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dz3tz1 * (u[i][j][k + 1][2] - 2.0 * u[i][j][k][2] + u[i][j][k - 1][2]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[i][j][k + 1][2] * wp1 - u[i][j][k - 1][2] * wm1);
                /*[]*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dz4tz1 * (u[i][j][k + 1][3] - 2.0 * u[i][j][k][3] + u[i][j][k - 1][3]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[i][j][k + 1][3] * wp1 - u[i][j][k - 1][3] * wm1 + (u[i][j][k + 1][4] - square[i][j][k + 1] - u[i][j][k - 1][4] + square[i][j][k - 1]) * c2);
                /*[]*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dz5tz1 * (u[i][j][k + 1][4] - 2.0 * u[i][j][k][4] + u[i][j][k - 1][4]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[i][j][k + 1][4] * rho_i[i][j][k + 1] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i][j][k - 1][4] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[i][j][k + 1][4] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[i][j][k - 1][4] - c2 * square[i][j][k - 1]) * wm1);
            }
        }
    }
    /*[]*/
    k = 1;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (5.0 * u[i][j][k][m_imopVar96] - 4.0 * u[i][j][k + 1][m_imopVar96] + u[i][j][k + 2][m_imopVar96]);
            }
        }
    }
    /*[]*/
    k = 2;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (-4.0 * u[i][j][k - 1][m_imopVar96] + 6.0 * u[i][j][k][m_imopVar96] - 4.0 * u[i][j][k + 1][m_imopVar96] + u[i][j][k + 2][m_imopVar96]);
            }
        }
    }
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 3; k < grid_points[2] - 3; k++) {
            /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
                /*[]*/
                    /*[]*/
                    rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (u[i][j][k - 2][m_imopVar96] - 4.0 * u[i][j][k - 1][m_imopVar96] + 6.0 * u[i][j][k][m_imopVar96] - 4.0 * u[i][j][k + 1][m_imopVar96] + u[i][j][k + 2][m_imopVar96]);
                }
            }
        }
    }
    /*[]*/
    k = grid_points[2] - 3;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (u[i][j][k - 2][m_imopVar96] - 4.0 * u[i][j][k - 1][m_imopVar96] + 6.0 * u[i][j][k][m_imopVar96] - 4.0 * u[i][j][k + 1][m_imopVar96]);
            }
        }
    }
    /*[]*/
    k = grid_points[2] - 2;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] - dssp * (u[i][j][k - 2][m_imopVar96] - 4.0 * u[i][j][k - 1][m_imopVar96] + 5.0 * u[i][j][k][m_imopVar96]);
            }
        }
    }
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
            /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (i = 1; i < grid_points[0] - 1; i++) {
                /*[]*/
                    /*[]*/
                    rhs[i][j][k][m_imopVar96] = rhs[i][j][k][m_imopVar96] * dt;
                }
            }
        }
    }
    /*[]*/
    rhs_norm(xcr);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        xcr[m] = xcr[m] / dt;
    }
    /*[]*/
    *class_imopVar97 = 'U';
    /*[]*/
    *verified_imopVar98 = 1;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        xcrref[m] = 1.0;
        /*[]*/
        xceref[m] = 1.0;
    }
    /*[]*/
    int _imopVarPre264;
    /*[]*/
    int _imopVarPre265;
    /*[]*/
    int _imopVarPre266;
    /*[]*/
    _imopVarPre264 = grid_points[0] == 12;
    /*[]*/
    /*[]*/
    if (_imopVarPre264) {
    /*[]*/
        /*[]*/
        _imopVarPre265 = grid_points[1] == 12;
        /*[]*/
        /*[]*/
        if (_imopVarPre265) {
        /*[]*/
            /*[]*/
            _imopVarPre266 = grid_points[2] == 12;
            /*[]*/
            /*[]*/
            if (_imopVarPre266) {
            /*[]*/
                /*[]*/
                _imopVarPre266 = no_time_steps == 60;
            }
            /*[]*/
            _imopVarPre265 = _imopVarPre266;
        }
        /*[]*/
        _imopVarPre264 = _imopVarPre265;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre264) {
    /*[]*/
        /*[]*/
        *class_imopVar97 = 'S';
        /*[]*/
        dtref = 1.0e-2;
        /*[]*/
        xcrref[0] = 1.7034283709541311e-01;
        /*[]*/
        xcrref[1] = 1.2975252070034097e-02;
        /*[]*/
        xcrref[2] = 3.2527926989486055e-02;
        /*[]*/
        xcrref[3] = 2.6436421275166801e-02;
        /*[]*/
        xcrref[4] = 1.9211784131744430e-01;
        /*[]*/
        xceref[0] = 4.9976913345811579e-04;
        /*[]*/
        xceref[1] = 4.5195666782961927e-05;
        /*[]*/
        xceref[2] = 7.3973765172921357e-05;
        /*[]*/
        xceref[3] = 7.3821238632439731e-05;
        /*[]*/
        xceref[4] = 8.9269630987491446e-04;
    } else {
    /*[]*/
        /*[]*/
        int _imopVarPre270;
        /*[]*/
        int _imopVarPre271;
        /*[]*/
        int _imopVarPre272;
        /*[]*/
        _imopVarPre270 = grid_points[0] == 24;
        /*[]*/
        /*[]*/
        if (_imopVarPre270) {
        /*[]*/
            /*[]*/
            _imopVarPre271 = grid_points[1] == 24;
            /*[]*/
            /*[]*/
            if (_imopVarPre271) {
            /*[]*/
                /*[]*/
                _imopVarPre272 = grid_points[2] == 24;
                /*[]*/
                /*[]*/
                if (_imopVarPre272) {
                /*[]*/
                    /*[]*/
                    _imopVarPre272 = no_time_steps == 200;
                }
                /*[]*/
                _imopVarPre271 = _imopVarPre272;
            }
            /*[]*/
            _imopVarPre270 = _imopVarPre271;
        }
        /*[]*/
        /*[]*/
        if (_imopVarPre270) {
        /*[]*/
            /*[]*/
            *class_imopVar97 = 'W';
            /*[]*/
            dtref = 0.8e-3;
            /*[]*/
            xcrref[0] = 0.1125590409344e+03;
            /*[]*/
            xcrref[1] = 0.1180007595731e+02;
            /*[]*/
            xcrref[2] = 0.2710329767846e+02;
            /*[]*/
            xcrref[3] = 0.2469174937669e+02;
            /*[]*/
            xcrref[4] = 0.2638427874317e+03;
            /*[]*/
            xceref[0] = 0.4419655736008e+01;
            /*[]*/
            xceref[1] = 0.4638531260002e+00;
            /*[]*/
            xceref[2] = 0.1011551749967e+01;
            /*[]*/
            xceref[3] = 0.9235878729944e+00;
            /*[]*/
            xceref[4] = 0.1018045837718e+02;
        } else {
        /*[]*/
            /*[]*/
            int _imopVarPre276;
            /*[]*/
            int _imopVarPre277;
            /*[]*/
            int _imopVarPre278;
            /*[]*/
            _imopVarPre276 = grid_points[0] == 64;
            /*[]*/
            /*[]*/
            if (_imopVarPre276) {
            /*[]*/
                /*[]*/
                _imopVarPre277 = grid_points[1] == 64;
                /*[]*/
                /*[]*/
                if (_imopVarPre277) {
                /*[]*/
                    /*[]*/
                    _imopVarPre278 = grid_points[2] == 64;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre278) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre278 = no_time_steps == 200;
                    }
                    /*[]*/
                    _imopVarPre277 = _imopVarPre278;
                }
                /*[]*/
                _imopVarPre276 = _imopVarPre277;
            }
            /*[]*/
            /*[]*/
            if (_imopVarPre276) {
            /*[]*/
                /*[]*/
                *class_imopVar97 = 'A';
                /*[]*/
                dtref = 0.8e-3;
                /*[]*/
                xcrref[0] = 1.0806346714637264e+02;
                /*[]*/
                xcrref[1] = 1.1319730901220813e+01;
                /*[]*/
                xcrref[2] = 2.5974354511582465e+01;
                /*[]*/
                xcrref[3] = 2.3665622544678910e+01;
                /*[]*/
                xcrref[4] = 2.5278963211748344e+02;
                /*[]*/
                xceref[0] = 4.2348416040525025e+00;
                /*[]*/
                xceref[1] = 4.4390282496995698e-01;
                /*[]*/
                xceref[2] = 9.6692480136345650e-01;
                /*[]*/
                xceref[3] = 8.8302063039765474e-01;
                /*[]*/
                xceref[4] = 9.7379901770829278e+00;
            } else {
            /*[]*/
                /*[]*/
                int _imopVarPre282;
                /*[]*/
                int _imopVarPre283;
                /*[]*/
                int _imopVarPre284;
                /*[]*/
                _imopVarPre282 = grid_points[0] == 102;
                /*[]*/
                /*[]*/
                if (_imopVarPre282) {
                /*[]*/
                    /*[]*/
                    _imopVarPre283 = grid_points[1] == 102;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre283) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre284 = grid_points[2] == 102;
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre284) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre284 = no_time_steps == 200;
                        }
                        /*[]*/
                        _imopVarPre283 = _imopVarPre284;
                    }
                    /*[]*/
                    _imopVarPre282 = _imopVarPre283;
                }
                /*[]*/
                /*[]*/
                if (_imopVarPre282) {
                /*[]*/
                    /*[]*/
                    *class_imopVar97 = 'B';
                    /*[]*/
                    dtref = 3.0e-4;
                    /*[]*/
                    xcrref[0] = 1.4233597229287254e+03;
                    /*[]*/
                    xcrref[1] = 9.9330522590150238e+01;
                    /*[]*/
                    xcrref[2] = 3.5646025644535285e+02;
                    /*[]*/
                    xcrref[3] = 3.2485447959084092e+02;
                    /*[]*/
                    xcrref[4] = 3.2707541254659363e+03;
                    /*[]*/
                    xceref[0] = 5.2969847140936856e+01;
                    /*[]*/
                    xceref[1] = 4.4632896115670668e+00;
                    /*[]*/
                    xceref[2] = 1.3122573342210174e+01;
                    /*[]*/
                    xceref[3] = 1.2006925323559144e+01;
                    /*[]*/
                    xceref[4] = 1.2459576151035986e+02;
                } else {
                /*[]*/
                    /*[]*/
                    int _imopVarPre288;
                    /*[]*/
                    int _imopVarPre289;
                    /*[]*/
                    int _imopVarPre290;
                    /*[]*/
                    _imopVarPre288 = grid_points[0] == 162;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre288) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre289 = grid_points[1] == 162;
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre289) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre290 = grid_points[2] == 162;
                            /*[]*/
                            /*[]*/
                            if (_imopVarPre290) {
                            /*[]*/
                                /*[]*/
                                _imopVarPre290 = no_time_steps == 200;
                            }
                            /*[]*/
                            _imopVarPre289 = _imopVarPre290;
                        }
                        /*[]*/
                        _imopVarPre288 = _imopVarPre289;
                    }
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre288) {
                    /*[]*/
                        /*[]*/
                        *class_imopVar97 = 'C';
                        /*[]*/
                        dtref = 1.0e-4;
                        /*[]*/
                        xcrref[0] = 0.62398116551764615e+04;
                        /*[]*/
                        xcrref[1] = 0.50793239190423964e+03;
                        /*[]*/
                        xcrref[2] = 0.15423530093013596e+04;
                        /*[]*/
                        xcrref[3] = 0.13302387929291190e+04;
                        /*[]*/
                        xcrref[4] = 0.11604087428436455e+05;
                        /*[]*/
                        xceref[0] = 0.16462008369091265e+03;
                        /*[]*/
                        xceref[1] = 0.11497107903824313e+02;
                        /*[]*/
                        xceref[2] = 0.41207446207461508e+02;
                        /*[]*/
                        xceref[3] = 0.37087651059694167e+02;
                        /*[]*/
                        xceref[4] = 0.36211053051841265e+03;
                    } else {
                    /*[]*/
                        /*[]*/
                        *verified_imopVar98 = 0;
                    }
                }
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        double _imopVarPre292;
        /*[]*/
        double _imopVarPre293;
        /*[]*/
        _imopVarPre292 = (xcr[m] - xcrref[m]) / xcrref[m];
        /*[]*/
        _imopVarPre293 = fabs(_imopVarPre292);
        /*[]*/
        /*[]*/
        xcrdif[m] = _imopVarPre293;
        /*[]*/
        double _imopVarPre295;
        /*[]*/
        double _imopVarPre296;
        /*[]*/
        _imopVarPre295 = (xce[m] - xceref[m]) / xceref[m];
        /*[]*/
        _imopVarPre296 = fabs(_imopVarPre295);
        /*[]*/
        /*[]*/
        xcedif[m] = _imopVarPre296;
    }
    /*[]*/
    /*[]*/
    if (*class_imopVar97 != 'U') {
    /*[]*/
        /*[]*/
        char _imopVarPre298;
        /*[]*/
        _imopVarPre298 = *class_imopVar97;
        /*[]*/
        printf(" Verification being performed for class %1c\n", _imopVarPre298);
        /*[]*/
        /*[]*/
        printf(" accuracy setting for epsilon = %20.13e\n", epsilon);
        /*[]*/
        /*[]*/
        double _imopVarPre301;
        /*[]*/
        double _imopVarPre302;
        /*[]*/
        _imopVarPre301 = dt - dtref;
        /*[]*/
        _imopVarPre302 = fabs(_imopVarPre301);
        /*[]*/
        /*[]*/
        /*[]*/
        if (_imopVarPre302 > epsilon) {
        /*[]*/
            /*[]*/
            *verified_imopVar98 = 0;
            /*[]*/
            *class_imopVar97 = 'U';
            /*[]*/
            printf(" DT does not match the reference value of %15.8e\n", dtref);
            /*[]*/
        }
    } else {
    /*[]*/
        /*[]*/
        printf(" Unknown class\n");
        /*[]*/
    }
    /*[]*/
    /*[]*/
    if (*class_imopVar97 != 'U') {
    /*[]*/
        /*[]*/
        printf(" Comparison of RMS-norms of residual\n");
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        printf(" RMS-norms of residual\n");
        /*[]*/
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        /*[]*/
        if (*class_imopVar97 == 'U') {
        /*[]*/
            /*[]*/
            double _imopVarPre304;
            /*[]*/
            _imopVarPre304 = xcr[m];
            /*[]*/
            printf("          %2d%20.13e\n", m, _imopVarPre304);
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            /*[]*/
            if (xcrdif[m] > epsilon) {
            /*[]*/
                /*[]*/
                *verified_imopVar98 = 0;
                /*[]*/
                double _imopVarPre308;
                /*[]*/
                double _imopVarPre309;
                /*[]*/
                double _imopVarPre310;
                /*[]*/
                _imopVarPre308 = xcrdif[m];
                /*[]*/
                _imopVarPre309 = xcrref[m];
                /*[]*/
                _imopVarPre310 = xcr[m];
                /*[]*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre310, _imopVarPre309, _imopVarPre308);
                /*[]*/
            } else {
            /*[]*/
                /*[]*/
                double _imopVarPre314;
                /*[]*/
                double _imopVarPre315;
                /*[]*/
                double _imopVarPre316;
                /*[]*/
                _imopVarPre314 = xcrdif[m];
                /*[]*/
                _imopVarPre315 = xcrref[m];
                /*[]*/
                _imopVarPre316 = xcr[m];
                /*[]*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre316, _imopVarPre315, _imopVarPre314);
                /*[]*/
            }
        }
    }
    /*[]*/
    /*[]*/
    if (*class_imopVar97 != 'U') {
    /*[]*/
        /*[]*/
        printf(" Comparison of RMS-norms of solution error\n");
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        printf(" RMS-norms of solution error\n");
        /*[]*/
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        /*[]*/
        if (*class_imopVar97 == 'U') {
        /*[]*/
            /*[]*/
            double _imopVarPre318;
            /*[]*/
            _imopVarPre318 = xce[m];
            /*[]*/
            printf("          %2d%20.13e\n", m, _imopVarPre318);
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            /*[]*/
            if (xcedif[m] > epsilon) {
            /*[]*/
                /*[]*/
                *verified_imopVar98 = 0;
                /*[]*/
                double _imopVarPre322;
                /*[]*/
                double _imopVarPre323;
                /*[]*/
                double _imopVarPre324;
                /*[]*/
                _imopVarPre322 = xcedif[m];
                /*[]*/
                _imopVarPre323 = xceref[m];
                /*[]*/
                _imopVarPre324 = xce[m];
                /*[]*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre324, _imopVarPre323, _imopVarPre322);
                /*[]*/
            } else {
            /*[]*/
                /*[]*/
                double _imopVarPre328;
                /*[]*/
                double _imopVarPre329;
                /*[]*/
                double _imopVarPre330;
                /*[]*/
                _imopVarPre328 = xcedif[m];
                /*[]*/
                _imopVarPre329 = xceref[m];
                /*[]*/
                _imopVarPre330 = xce[m];
                /*[]*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre330, _imopVarPre329, _imopVarPre328);
                /*[]*/
            }
        }
    }
    /*[]*/
    /*[]*/
    if (*class_imopVar97 == 'U') {
    /*[]*/
        /*[]*/
        printf(" No reference values provided\n");
        /*[]*/
        /*[]*/
        printf(" No verification performed\n");
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        /*[]*/
        if (*verified_imopVar98 == 1) {
        /*[]*/
            /*[]*/
            printf(" Verification Successful\n");
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            printf(" Verification failed\n");
            /*[]*/
        }
    }
    /*[]*/
    n3 = grid_points[0] * grid_points[1] * grid_points[2];
    /*[]*/
    navg = (grid_points[0] + grid_points[1] + grid_points[2]) / 3.0;
    /*[]*/
    /*[]*/
    if (tmax != 0.0) {
    /*[]*/
        /*[]*/
        mflops = 1.0e-6 * (double) niter * (3478.8 * (double) n3 - 17655.7 * (navg * navg) + 28023.7 * navg) / tmax;
    } else {
    /*[]*/
        /*[]*/
        mflops = 0.0;
    }
    /*[]*/
    int _imopVarPre176;
    /*[]*/
    int _imopVarPre177;
    /*[]*/
    int _imopVarPre178;
    /*[]*/
    _imopVarPre176 = grid_points[2];
    /*[]*/
    _imopVarPre177 = grid_points[1];
    /*[]*/
    _imopVarPre178 = grid_points[0];
    /*[]*/
    c_print_results("BT", class, _imopVarPre178, _imopVarPre177, _imopVarPre176, niter, nthreads, tmax, mflops, "          floating point", verified, "3.0 structured", "15 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "(none)");
    /*[]*/
}
/*[34, 61]*/
static void add() {
/*[34, 61]*/
    /*[34, 61]*/
    int i;
    /*[34, 61]*/
    int j;
    /*[34, 61]*/
    int k;
    /*[34, 61]*/
    int m;
    /*[34, 61]*/
#pragma omp for nowait
    /*[34, 61]*/
    /*[34, 61]*/
    /*[34, 61]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[34, 61]*/
        /*[34, 61]*/
        /*[34, 61]*/
        /*[34, 61]*/
        /*[34, 61]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[34, 61]*/
            /*[34, 61]*/
            /*[34, 61]*/
            /*[34, 61]*/
            /*[34, 61]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[34, 61]*/
                /*[34, 61]*/
                /*[34, 61]*/
                /*[34, 61]*/
                /*[34, 61]*/
                for (m = 0; m < 5; m++) {
                /*[34, 61]*/
                    /*[34, 61]*/
                    u[i][j][k][m] = u[i][j][k][m] + rhs[i][j][k][m];
                }
            }
        }
    }
}
/*[]*/
/*[]*/
static void error_norm(double rms[5]) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    int m;
    /*[]*/
    int d;
    /*[]*/
    double xi;
    /*[]*/
    double eta;
    /*[]*/
    double zeta;
    /*[]*/
    double u_exact[5];
    /*[]*/
    double add;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        rms[m] = 0.0;
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < grid_points[0]; i++) {
    /*[]*/
        /*[]*/
        xi = (double) i * dnxm1;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[]*/
            /*[]*/
            eta = (double) j * dnym1;
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[]*/
                /*[]*/
                zeta = (double) k * dnzm1;
                /*[]*/
                exact_solution(xi, eta, zeta, u_exact);
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 5; m++) {
                /*[]*/
                    /*[]*/
                    add = u[i][j][k][m] - u_exact[m];
                    /*[]*/
                    rms[m] = rms[m] + add * add;
                }
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (d = 0; d <= 2; d++) {
        /*[]*/
            /*[]*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*[]*/
        double _imopVarPre180;
        /*[]*/
        double _imopVarPre181;
        /*[]*/
        _imopVarPre180 = rms[m];
        /*[]*/
        _imopVarPre181 = sqrt(_imopVarPre180);
        /*[]*/
        /*[]*/
        rms[m] = _imopVarPre181;
    }
}
/*[]*/
/*[]*/
static void rhs_norm(double rms[5]) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    int d;
    /*[]*/
    int m;
    /*[]*/
    double add;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        rms[m] = 0.0;
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 5; m++) {
                /*[]*/
                    /*[]*/
                    add = rhs[i][j][k][m];
                    /*[]*/
                    rms[m] = rms[m] + add * add;
                }
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (d = 0; d <= 2; d++) {
        /*[]*/
            /*[]*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*[]*/
        double _imopVarPre183;
        /*[]*/
        double _imopVarPre184;
        /*[]*/
        _imopVarPre183 = rms[m];
        /*[]*/
        _imopVarPre184 = sqrt(_imopVarPre183);
        /*[]*/
        /*[]*/
        rms[m] = _imopVarPre184;
    }
}
/*[2, 3, 4, 5, 9, 10, 11, 36, 37, 38, 39, 63, 64, 65, 66, 67, 68, 69]*/
/*[2, 3, 4, 5, 9, 10, 11, 36, 37, 38, 39, 63, 64, 65, 66, 67, 68, 69]*/
/*[2, 3, 4, 5, 9, 10, 11, 36, 37, 38, 39, 63, 64, 65, 66, 67, 68, 69]*/
/*[2, 3, 4, 5, 9, 10, 11, 36, 37, 38, 39, 63, 64, 65, 66, 67, 68, 69]*/
/*[2, 3, 4, 5, 9, 10, 11, 36, 37, 38, 39, 63, 64, 65, 66, 67, 68, 69]*/
static void exact_solution(double xi, double eta , double zeta , double dtemp[5]) {
/*[2, 3, 4, 5, 9, 10, 11, 36, 37, 38, 39, 63, 64, 65, 66, 67, 68, 69]*/
    /*[2, 3, 4, 5, 9, 10, 11, 36, 37, 38, 39, 63, 64, 65, 66, 67, 68, 69]*/
    int m;
    /*[2, 3, 4, 5, 9, 10, 11, 36, 37, 38, 39, 63, 64, 65, 66, 67, 68, 69]*/
    /*[2, 3, 4, 5, 9, 10, 11, 36, 37, 38, 39, 63, 64, 65, 66, 67, 68, 69]*/
    /*[2, 3, 4, 5, 9, 10, 11, 36, 37, 38, 39, 63, 64, 65, 66, 67, 68, 69]*/
    /*[2, 3, 4, 5, 9, 10, 11, 36, 37, 38, 39, 63, 64, 65, 66, 67, 68, 69]*/
    for (m = 0; m < 5; m++) {
    /*[2, 3, 4, 5, 9, 10, 11, 36, 37, 38, 39, 63, 64, 65, 66, 67, 68, 69]*/
        /*[2, 3, 4, 5, 9, 10, 11, 36, 37, 38, 39, 63, 64, 65, 66, 67, 68, 69]*/
        dtemp[m] = ce[m][0] + xi * (ce[m][1] + xi * (ce[m][4] + xi * (ce[m][7] + xi * ce[m][10]))) + eta * (ce[m][2] + eta * (ce[m][5] + eta * (ce[m][8] + eta * ce[m][11]))) + zeta * (ce[m][3] + zeta * (ce[m][6] + zeta * (ce[m][9] + zeta * ce[m][12])));
    }
}
/*[]*/
static void set_constants() {
/*[]*/
    /*[]*/
    ce[0][0] = 2.0;
    /*[]*/
    ce[0][1] = 0.0;
    /*[]*/
    ce[0][2] = 0.0;
    /*[]*/
    ce[0][3] = 4.0;
    /*[]*/
    ce[0][4] = 5.0;
    /*[]*/
    ce[0][5] = 3.0;
    /*[]*/
    ce[0][6] = 0.5;
    /*[]*/
    ce[0][7] = 0.02;
    /*[]*/
    ce[0][8] = 0.01;
    /*[]*/
    ce[0][9] = 0.03;
    /*[]*/
    ce[0][10] = 0.5;
    /*[]*/
    ce[0][11] = 0.4;
    /*[]*/
    ce[0][12] = 0.3;
    /*[]*/
    ce[1][0] = 1.0;
    /*[]*/
    ce[1][1] = 0.0;
    /*[]*/
    ce[1][2] = 0.0;
    /*[]*/
    ce[1][3] = 0.0;
    /*[]*/
    ce[1][4] = 1.0;
    /*[]*/
    ce[1][5] = 2.0;
    /*[]*/
    ce[1][6] = 3.0;
    /*[]*/
    ce[1][7] = 0.01;
    /*[]*/
    ce[1][8] = 0.03;
    /*[]*/
    ce[1][9] = 0.02;
    /*[]*/
    ce[1][10] = 0.4;
    /*[]*/
    ce[1][11] = 0.3;
    /*[]*/
    ce[1][12] = 0.5;
    /*[]*/
    ce[2][0] = 2.0;
    /*[]*/
    ce[2][1] = 2.0;
    /*[]*/
    ce[2][2] = 0.0;
    /*[]*/
    ce[2][3] = 0.0;
    /*[]*/
    ce[2][4] = 0.0;
    /*[]*/
    ce[2][5] = 2.0;
    /*[]*/
    ce[2][6] = 3.0;
    /*[]*/
    ce[2][7] = 0.04;
    /*[]*/
    ce[2][8] = 0.03;
    /*[]*/
    ce[2][9] = 0.05;
    /*[]*/
    ce[2][10] = 0.3;
    /*[]*/
    ce[2][11] = 0.5;
    /*[]*/
    ce[2][12] = 0.4;
    /*[]*/
    ce[3][0] = 2.0;
    /*[]*/
    ce[3][1] = 2.0;
    /*[]*/
    ce[3][2] = 0.0;
    /*[]*/
    ce[3][3] = 0.0;
    /*[]*/
    ce[3][4] = 0.0;
    /*[]*/
    ce[3][5] = 2.0;
    /*[]*/
    ce[3][6] = 3.0;
    /*[]*/
    ce[3][7] = 0.03;
    /*[]*/
    ce[3][8] = 0.05;
    /*[]*/
    ce[3][9] = 0.04;
    /*[]*/
    ce[3][10] = 0.2;
    /*[]*/
    ce[3][11] = 0.1;
    /*[]*/
    ce[3][12] = 0.3;
    /*[]*/
    ce[4][0] = 5.0;
    /*[]*/
    ce[4][1] = 4.0;
    /*[]*/
    ce[4][2] = 3.0;
    /*[]*/
    ce[4][3] = 2.0;
    /*[]*/
    ce[4][4] = 0.1;
    /*[]*/
    ce[4][5] = 0.4;
    /*[]*/
    ce[4][6] = 0.3;
    /*[]*/
    ce[4][7] = 0.05;
    /*[]*/
    ce[4][8] = 0.04;
    /*[]*/
    ce[4][9] = 0.03;
    /*[]*/
    ce[4][10] = 0.1;
    /*[]*/
    ce[4][11] = 0.3;
    /*[]*/
    ce[4][12] = 0.2;
    /*[]*/
    c1 = 1.4;
    /*[]*/
    c2 = 0.4;
    /*[]*/
    c3 = 0.1;
    /*[]*/
    c4 = 1.0;
    /*[]*/
    c5 = 1.4;
    /*[]*/
    dnxm1 = 1.0 / (double) (grid_points[0] - 1);
    /*[]*/
    dnym1 = 1.0 / (double) (grid_points[1] - 1);
    /*[]*/
    dnzm1 = 1.0 / (double) (grid_points[2] - 1);
    /*[]*/
    c1c2 = c1 * c2;
    /*[]*/
    c1c5 = c1 * c5;
    /*[]*/
    c3c4 = c3 * c4;
    /*[]*/
    c1345 = c1c5 * c3c4;
    /*[]*/
    conz1 = (1.0 - c1c5);
    /*[]*/
    tx1 = 1.0 / (dnxm1 * dnxm1);
    /*[]*/
    tx2 = 1.0 / (2.0 * dnxm1);
    /*[]*/
    tx3 = 1.0 / dnxm1;
    /*[]*/
    ty1 = 1.0 / (dnym1 * dnym1);
    /*[]*/
    ty2 = 1.0 / (2.0 * dnym1);
    /*[]*/
    ty3 = 1.0 / dnym1;
    /*[]*/
    tz1 = 1.0 / (dnzm1 * dnzm1);
    /*[]*/
    tz2 = 1.0 / (2.0 * dnzm1);
    /*[]*/
    tz3 = 1.0 / dnzm1;
    /*[]*/
    dx1 = 0.75;
    /*[]*/
    dx2 = 0.75;
    /*[]*/
    dx3 = 0.75;
    /*[]*/
    dx4 = 0.75;
    /*[]*/
    dx5 = 0.75;
    /*[]*/
    dy1 = 0.75;
    /*[]*/
    dy2 = 0.75;
    /*[]*/
    dy3 = 0.75;
    /*[]*/
    dy4 = 0.75;
    /*[]*/
    dy5 = 0.75;
    /*[]*/
    dz1 = 1.0;
    /*[]*/
    dz2 = 1.0;
    /*[]*/
    dz3 = 1.0;
    /*[]*/
    dz4 = 1.0;
    /*[]*/
    dz5 = 1.0;
    /*[]*/
    int _imopVarPre199;
    /*[]*/
    double _imopVarPre200;
    /*[]*/
    _imopVarPre199 = (dx3 > dx4);
    /*[]*/
    /*[]*/
    if (_imopVarPre199) {
    /*[]*/
        /*[]*/
        _imopVarPre200 = dx3;
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre200 = dx4;
    }
    /*[]*/
    dxmax = _imopVarPre200;
    /*[]*/
    int _imopVarPre203;
    /*[]*/
    double _imopVarPre204;
    /*[]*/
    _imopVarPre203 = (dy2 > dy4);
    /*[]*/
    /*[]*/
    if (_imopVarPre203) {
    /*[]*/
        /*[]*/
        _imopVarPre204 = dy2;
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre204 = dy4;
    }
    /*[]*/
    dymax = _imopVarPre204;
    /*[]*/
    int _imopVarPre207;
    /*[]*/
    double _imopVarPre208;
    /*[]*/
    _imopVarPre207 = (dz2 > dz3);
    /*[]*/
    /*[]*/
    if (_imopVarPre207) {
    /*[]*/
        /*[]*/
        _imopVarPre208 = dz2;
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre208 = dz3;
    }
    /*[]*/
    dzmax = _imopVarPre208;
    /*[]*/
    int _imopVarPre249;
    /*[]*/
    double _imopVarPre250;
    /*[]*/
    int _imopVarPre251;
    /*[]*/
    double _imopVarPre252;
    /*[]*/
    int _imopVarPre259;
    /*[]*/
    double _imopVarPre260;
    /*[]*/
    _imopVarPre249 = (dy1 > dz1);
    /*[]*/
    /*[]*/
    if (_imopVarPre249) {
    /*[]*/
        /*[]*/
        _imopVarPre250 = dy1;
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre250 = dz1;
    }
    /*[]*/
    _imopVarPre251 = (dx1 > _imopVarPre250);
    /*[]*/
    /*[]*/
    if (_imopVarPre251) {
    /*[]*/
        /*[]*/
        _imopVarPre252 = dx1;
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre259 = (dy1 > dz1);
        /*[]*/
        /*[]*/
        if (_imopVarPre259) {
        /*[]*/
            /*[]*/
            _imopVarPre260 = dy1;
        } else {
        /*[]*/
            /*[]*/
            _imopVarPre260 = dz1;
        }
        /*[]*/
        _imopVarPre252 = _imopVarPre260;
    }
    /*[]*/
    dssp = 0.25 * _imopVarPre252;
    /*[]*/
    c4dssp = 4.0 * dssp;
    /*[]*/
    c5dssp = 5.0 * dssp;
    /*[]*/
    dttx1 = dt * tx1;
    /*[]*/
    dttx2 = dt * tx2;
    /*[]*/
    dtty1 = dt * ty1;
    /*[]*/
    dtty2 = dt * ty2;
    /*[]*/
    dttz1 = dt * tz1;
    /*[]*/
    dttz2 = dt * tz2;
    /*[]*/
    c2dttx1 = 2.0 * dttx1;
    /*[]*/
    c2dtty1 = 2.0 * dtty1;
    /*[]*/
    c2dttz1 = 2.0 * dttz1;
    /*[]*/
    dtdssp = dt * dssp;
    /*[]*/
    comz1 = dtdssp;
    /*[]*/
    comz4 = 4.0 * dtdssp;
    /*[]*/
    comz5 = 5.0 * dtdssp;
    /*[]*/
    comz6 = 6.0 * dtdssp;
    /*[]*/
    c3c4tx3 = c3c4 * tx3;
    /*[]*/
    c3c4ty3 = c3c4 * ty3;
    /*[]*/
    c3c4tz3 = c3c4 * tz3;
    /*[]*/
    dx1tx1 = dx1 * tx1;
    /*[]*/
    dx2tx1 = dx2 * tx1;
    /*[]*/
    dx3tx1 = dx3 * tx1;
    /*[]*/
    dx4tx1 = dx4 * tx1;
    /*[]*/
    dx5tx1 = dx5 * tx1;
    /*[]*/
    dy1ty1 = dy1 * ty1;
    /*[]*/
    dy2ty1 = dy2 * ty1;
    /*[]*/
    dy3ty1 = dy3 * ty1;
    /*[]*/
    dy4ty1 = dy4 * ty1;
    /*[]*/
    dy5ty1 = dy5 * ty1;
    /*[]*/
    dz1tz1 = dz1 * tz1;
    /*[]*/
    dz2tz1 = dz2 * tz1;
    /*[]*/
    dz3tz1 = dz3 * tz1;
    /*[]*/
    dz4tz1 = dz4 * tz1;
    /*[]*/
    dz5tz1 = dz5 * tz1;
    /*[]*/
    c2iv = 2.5;
    /*[]*/
    con43 = 4.0 / 3.0;
    /*[]*/
    con16 = 1.0 / 6.0;
    /*[]*/
    xxcon1 = c3c4tx3 * con43 * tx3;
    /*[]*/
    xxcon2 = c3c4tx3 * tx3;
    /*[]*/
    xxcon3 = c3c4tx3 * conz1 * tx3;
    /*[]*/
    xxcon4 = c3c4tx3 * con16 * tx3;
    /*[]*/
    xxcon5 = c3c4tx3 * c1c5 * tx3;
    /*[]*/
    yycon1 = c3c4ty3 * con43 * ty3;
    /*[]*/
    yycon2 = c3c4ty3 * ty3;
    /*[]*/
    yycon3 = c3c4ty3 * conz1 * ty3;
    /*[]*/
    yycon4 = c3c4ty3 * con16 * ty3;
    /*[]*/
    yycon5 = c3c4ty3 * c1c5 * ty3;
    /*[]*/
    zzcon1 = c3c4tz3 * con43 * tz3;
    /*[]*/
    zzcon2 = c3c4tz3 * tz3;
    /*[]*/
    zzcon3 = c3c4tz3 * conz1 * tz3;
    /*[]*/
    zzcon4 = c3c4tz3 * con16 * tz3;
    /*[]*/
    zzcon5 = c3c4tz3 * c1c5 * tz3;
}
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
static void matvec_sub(double ablock[5][5], double avec[5] , double bvec[5]) {
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    int i;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    for (i = 0; i < 5; i++) {
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
        bvec[i] = bvec[i] - ablock[i][0] * avec[0] - ablock[i][1] * avec[1] - ablock[i][2] * avec[2] - ablock[i][3] * avec[3] - ablock[i][4] * avec[4];
    }
}
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
static void matmul_sub(double ablock[5][5], double bblock[5][5] , double cblock[5][5]) {
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    int j;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    for (j = 0; j < 5; j++) {
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
        cblock[0][j] = cblock[0][j] - ablock[0][0] * bblock[0][j] - ablock[0][1] * bblock[1][j] - ablock[0][2] * bblock[2][j] - ablock[0][3] * bblock[3][j] - ablock[0][4] * bblock[4][j];
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
        cblock[1][j] = cblock[1][j] - ablock[1][0] * bblock[0][j] - ablock[1][1] * bblock[1][j] - ablock[1][2] * bblock[2][j] - ablock[1][3] * bblock[3][j] - ablock[1][4] * bblock[4][j];
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
        cblock[2][j] = cblock[2][j] - ablock[2][0] * bblock[0][j] - ablock[2][1] * bblock[1][j] - ablock[2][2] * bblock[2][j] - ablock[2][3] * bblock[3][j] - ablock[2][4] * bblock[4][j];
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
        cblock[3][j] = cblock[3][j] - ablock[3][0] * bblock[0][j] - ablock[3][1] * bblock[1][j] - ablock[3][2] * bblock[2][j] - ablock[3][3] * bblock[3][j] - ablock[3][4] * bblock[4][j];
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
        cblock[4][j] = cblock[4][j] - ablock[4][0] * bblock[0][j] - ablock[4][1] * bblock[1][j] - ablock[4][2] * bblock[2][j] - ablock[4][3] * bblock[3][j] - ablock[4][4] * bblock[4][j];
    }
}
/*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
/*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
/*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
/*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
static void binvcrhs(double lhs[5][5], double c[5][5] , double r[5]) {
/*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    double pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    double coeff;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    pivot = 1.00 / lhs[0][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][1] = lhs[0][1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][2] = lhs[0][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][3] = lhs[0][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][4] = lhs[0][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][0] = c[0][0] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][1] = c[0][1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][2] = c[0][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][3] = c[0][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][4] = c[0][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[0] = r[0] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[1][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][1] = lhs[1][1] - coeff * lhs[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][2] = lhs[1][2] - coeff * lhs[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][0] = c[1][0] - coeff * c[0][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][1] = c[1][1] - coeff * c[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][2] = c[1][2] - coeff * c[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][3] = c[1][3] - coeff * c[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][4] = c[1][4] - coeff * c[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[1] = r[1] - coeff * r[0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[2][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][1] = lhs[2][1] - coeff * lhs[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][0] = c[2][0] - coeff * c[0][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][1] = c[2][1] - coeff * c[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][2] = c[2][2] - coeff * c[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][3] = c[2][3] - coeff * c[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][4] = c[2][4] - coeff * c[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[2] = r[2] - coeff * r[0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[3][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][1] = lhs[3][1] - coeff * lhs[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][0] = c[3][0] - coeff * c[0][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][1] = c[3][1] - coeff * c[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][2] = c[3][2] - coeff * c[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][3] = c[3][3] - coeff * c[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][4] = c[3][4] - coeff * c[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[3] = r[3] - coeff * r[0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[4][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][1] = lhs[4][1] - coeff * lhs[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][0] = c[4][0] - coeff * c[0][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][1] = c[4][1] - coeff * c[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][2] = c[4][2] - coeff * c[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][3] = c[4][3] - coeff * c[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][4] = c[4][4] - coeff * c[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[4] = r[4] - coeff * r[0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    pivot = 1.00 / lhs[1][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][2] = lhs[1][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][3] = lhs[1][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][4] = lhs[1][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][0] = c[1][0] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][1] = c[1][1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][2] = c[1][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][3] = c[1][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][4] = c[1][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[1] = r[1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][2] = lhs[0][2] - coeff * lhs[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][0] = c[0][0] - coeff * c[1][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][1] = c[0][1] - coeff * c[1][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][2] = c[0][2] - coeff * c[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][3] = c[0][3] - coeff * c[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][4] = c[0][4] - coeff * c[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[0] = r[0] - coeff * r[1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[2][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][0] = c[2][0] - coeff * c[1][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][1] = c[2][1] - coeff * c[1][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][2] = c[2][2] - coeff * c[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][3] = c[2][3] - coeff * c[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][4] = c[2][4] - coeff * c[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[2] = r[2] - coeff * r[1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[3][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][0] = c[3][0] - coeff * c[1][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][1] = c[3][1] - coeff * c[1][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][2] = c[3][2] - coeff * c[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][3] = c[3][3] - coeff * c[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][4] = c[3][4] - coeff * c[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[3] = r[3] - coeff * r[1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[4][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][0] = c[4][0] - coeff * c[1][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][1] = c[4][1] - coeff * c[1][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][2] = c[4][2] - coeff * c[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][3] = c[4][3] - coeff * c[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][4] = c[4][4] - coeff * c[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[4] = r[4] - coeff * r[1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    pivot = 1.00 / lhs[2][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][3] = lhs[2][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][4] = lhs[2][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][0] = c[2][0] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][1] = c[2][1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][2] = c[2][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][3] = c[2][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][4] = c[2][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[2] = r[2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][0] = c[0][0] - coeff * c[2][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][1] = c[0][1] - coeff * c[2][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][2] = c[0][2] - coeff * c[2][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][3] = c[0][3] - coeff * c[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][4] = c[0][4] - coeff * c[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[0] = r[0] - coeff * r[2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][0] = c[1][0] - coeff * c[2][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][1] = c[1][1] - coeff * c[2][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][2] = c[1][2] - coeff * c[2][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][3] = c[1][3] - coeff * c[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][4] = c[1][4] - coeff * c[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[1] = r[1] - coeff * r[2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[3][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][0] = c[3][0] - coeff * c[2][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][1] = c[3][1] - coeff * c[2][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][2] = c[3][2] - coeff * c[2][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][3] = c[3][3] - coeff * c[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][4] = c[3][4] - coeff * c[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[3] = r[3] - coeff * r[2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[4][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][0] = c[4][0] - coeff * c[2][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][1] = c[4][1] - coeff * c[2][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][2] = c[4][2] - coeff * c[2][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][3] = c[4][3] - coeff * c[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][4] = c[4][4] - coeff * c[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[4] = r[4] - coeff * r[2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    pivot = 1.00 / lhs[3][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][4] = lhs[3][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][0] = c[3][0] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][1] = c[3][1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][2] = c[3][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][3] = c[3][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][4] = c[3][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[3] = r[3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][0] = c[0][0] - coeff * c[3][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][1] = c[0][1] - coeff * c[3][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][2] = c[0][2] - coeff * c[3][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][3] = c[0][3] - coeff * c[3][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][4] = c[0][4] - coeff * c[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[0] = r[0] - coeff * r[3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][0] = c[1][0] - coeff * c[3][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][1] = c[1][1] - coeff * c[3][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][2] = c[1][2] - coeff * c[3][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][3] = c[1][3] - coeff * c[3][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][4] = c[1][4] - coeff * c[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[1] = r[1] - coeff * r[3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][0] = c[2][0] - coeff * c[3][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][1] = c[2][1] - coeff * c[3][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][2] = c[2][2] - coeff * c[3][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][3] = c[2][3] - coeff * c[3][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][4] = c[2][4] - coeff * c[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[2] = r[2] - coeff * r[3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[4][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][0] = c[4][0] - coeff * c[3][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][1] = c[4][1] - coeff * c[3][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][2] = c[4][2] - coeff * c[3][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][3] = c[4][3] - coeff * c[3][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][4] = c[4][4] - coeff * c[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[4] = r[4] - coeff * r[3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    pivot = 1.00 / lhs[4][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][0] = c[4][0] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][1] = c[4][1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][2] = c[4][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][3] = c[4][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[4][4] = c[4][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[4] = r[4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][0] = c[0][0] - coeff * c[4][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][1] = c[0][1] - coeff * c[4][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][2] = c[0][2] - coeff * c[4][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][3] = c[0][3] - coeff * c[4][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[0][4] = c[0][4] - coeff * c[4][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[0] = r[0] - coeff * r[4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][0] = c[1][0] - coeff * c[4][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][1] = c[1][1] - coeff * c[4][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][2] = c[1][2] - coeff * c[4][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][3] = c[1][3] - coeff * c[4][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[1][4] = c[1][4] - coeff * c[4][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[1] = r[1] - coeff * r[4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][0] = c[2][0] - coeff * c[4][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][1] = c[2][1] - coeff * c[4][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][2] = c[2][2] - coeff * c[4][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][3] = c[2][3] - coeff * c[4][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[2][4] = c[2][4] - coeff * c[4][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[2] = r[2] - coeff * r[4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][0] = c[3][0] - coeff * c[4][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][1] = c[3][1] - coeff * c[4][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][2] = c[3][2] - coeff * c[4][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][3] = c[3][3] - coeff * c[4][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    c[3][4] = c[3][4] - coeff * c[4][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[3] = r[3] - coeff * r[4];
}
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
static void binvrhs(double lhs[5][5], double r[5]) {
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    double pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    double coeff;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    pivot = 1.00 / lhs[0][0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][1] = lhs[0][1] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][2] = lhs[0][2] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][3] = lhs[0][3] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][4] = lhs[0][4] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[0] = r[0] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[1][0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][1] = lhs[1][1] - coeff * lhs[0][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][2] = lhs[1][2] - coeff * lhs[0][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[0][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[0][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[1] = r[1] - coeff * r[0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[2][0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][1] = lhs[2][1] - coeff * lhs[0][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[0][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[0][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[0][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[2] = r[2] - coeff * r[0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[3][0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][1] = lhs[3][1] - coeff * lhs[0][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[0][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[0][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[0][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[3] = r[3] - coeff * r[0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[4][0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][1] = lhs[4][1] - coeff * lhs[0][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[0][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[0][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[0][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[4] = r[4] - coeff * r[0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    pivot = 1.00 / lhs[1][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][2] = lhs[1][2] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][3] = lhs[1][3] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][4] = lhs[1][4] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[1] = r[1] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[0][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][2] = lhs[0][2] - coeff * lhs[1][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[1][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[1][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[0] = r[0] - coeff * r[1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[2][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[1][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[1][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[1][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[2] = r[2] - coeff * r[1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[3][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[1][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[1][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[1][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[3] = r[3] - coeff * r[1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[4][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[1][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[1][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[1][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[4] = r[4] - coeff * r[1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    pivot = 1.00 / lhs[2][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][3] = lhs[2][3] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][4] = lhs[2][4] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[2] = r[2] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[0][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[2][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[2][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[0] = r[0] - coeff * r[2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[1][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[2][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[2][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[1] = r[1] - coeff * r[2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[3][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[2][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[2][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[3] = r[3] - coeff * r[2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[4][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[2][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[2][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[4] = r[4] - coeff * r[2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    pivot = 1.00 / lhs[3][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[3][4] = lhs[3][4] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[3] = r[3] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[0][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[3][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[0] = r[0] - coeff * r[3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[1][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[3][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[1] = r[1] - coeff * r[3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[2][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[3][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[2] = r[2] - coeff * r[3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[4][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[3][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[4] = r[4] - coeff * r[3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    pivot = 1.00 / lhs[4][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[4] = r[4] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[0][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[0] = r[0] - coeff * r[4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[1][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[1] = r[1] - coeff * r[4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[2][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[2] = r[2] - coeff * r[4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    coeff = lhs[3][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]*/
    r[3] = r[3] - coeff * r[4];
}
/*[33, 34, 60, 61]*/
static void z_backsubstitute() {
/*[33, 34, 60, 61]*/
    /*[33, 34, 60, 61]*/
    int i;
    /*[33, 34, 60, 61]*/
    int j;
    /*[33, 34, 60, 61]*/
    int k;
    /*[33, 34, 60, 61]*/
    int m;
    /*[33, 34, 60, 61]*/
    int n;
    /*[33, 34, 60, 61]*/
#pragma omp for nowait
    /*[33, 34, 60, 61]*/
    /*[33, 34, 60, 61]*/
    /*[33, 34, 60, 61]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[33, 34, 60, 61]*/
        /*[33, 34, 60, 61]*/
        /*[33, 34, 60, 61]*/
        /*[33, 34, 60, 61]*/
        /*[33, 34, 60, 61]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[33, 34, 60, 61]*/
            /*[33, 34, 60, 61]*/
            /*[33, 34, 60, 61]*/
            /*[33, 34, 60, 61]*/
            /*[33, 34, 60, 61]*/
            for (k = grid_points[2] - 2; k >= 0; k--) {
            /*[33, 34, 60, 61]*/
                /*[33, 34, 60, 61]*/
                /*[33, 34, 60, 61]*/
                /*[33, 34, 60, 61]*/
                /*[33, 34, 60, 61]*/
                for (m = 0; m < 5; m++) {
                /*[33, 34, 60, 61]*/
                    /*[33, 34, 60, 61]*/
                    /*[33, 34, 60, 61]*/
                    /*[33, 34, 60, 61]*/
                    /*[33, 34, 60, 61]*/
                    for (n = 0; n < 5; n++) {
                    /*[33, 34, 60, 61]*/
                        /*[33, 34, 60, 61]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - lhs[i][j][k][2][m][n] * rhs[i][j][k + 1][n];
                    }
                }
            }
        }
    }
}
