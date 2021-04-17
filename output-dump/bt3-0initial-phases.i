
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
        int i_imopVarPre114;
        /*[13]*/
        int j_imopVarPre115;
        /*[13]*/
        int k_imopVarPre116;
        /*[13]*/
        int m_imopVarPre117;
        /*[13]*/
        double rho_inv_imopVarPre118;
        /*[13]*/
        double uijk_imopVarPre119;
        /*[13]*/
        double up1_imopVarPre120;
        /*[13]*/
        double um1_imopVarPre121;
        /*[13]*/
        double vijk_imopVarPre122;
        /*[13]*/
        double vp1_imopVarPre123;
        /*[13]*/
        double vm1_imopVarPre124;
        /*[13]*/
        double wijk_imopVarPre125;
        /*[13]*/
        double wp1_imopVarPre126;
        /*[13]*/
        double wm1_imopVarPre127;
        /*[13]*/
#pragma omp for nowait
        /*[13]*/
        /*[13]*/
        /*[13]*/
        for (i_imopVarPre114 = 0; i_imopVarPre114 < grid_points[0]; i_imopVarPre114++) {
        /*[13]*/
            /*[13]*/
            /*[13]*/
            /*[13]*/
            /*[13]*/
            for (j_imopVarPre115 = 0; j_imopVarPre115 < grid_points[1]; j_imopVarPre115++) {
            /*[13]*/
                /*[13]*/
                /*[13]*/
                /*[13]*/
                /*[13]*/
                for (k_imopVarPre116 = 0; k_imopVarPre116 < grid_points[2]; k_imopVarPre116++) {
                /*[13]*/
                    /*[13]*/
                    rho_inv_imopVarPre118 = 1.0 / u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][0];
                    /*[13]*/
                    rho_i[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] = rho_inv_imopVarPre118;
                    /*[13]*/
                    us[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] = u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][1] * rho_inv_imopVarPre118;
                    /*[13]*/
                    vs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] = u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][2] * rho_inv_imopVarPre118;
                    /*[13]*/
                    ws[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] = u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][3] * rho_inv_imopVarPre118;
                    /*[13]*/
                    square[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] = 0.5 * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][1] * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][1] + u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][2] * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][2] + u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][3] * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][3]) * rho_inv_imopVarPre118;
                    /*[13]*/
                    qs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] = square[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] * rho_inv_imopVarPre118;
                }
            }
        }
        /*[13]*/
#pragma omp for nowait
        /*[13]*/
        /*[13]*/
        /*[13]*/
        for (i_imopVarPre114 = 0; i_imopVarPre114 < grid_points[0]; i_imopVarPre114++) {
        /*[13]*/
            /*[13]*/
            /*[13]*/
            /*[13]*/
            /*[13]*/
            for (j_imopVarPre115 = 0; j_imopVarPre115 < grid_points[1]; j_imopVarPre115++) {
            /*[13]*/
                /*[13]*/
                /*[13]*/
                /*[13]*/
                /*[13]*/
                for (k_imopVarPre116 = 0; k_imopVarPre116 < grid_points[2]; k_imopVarPre116++) {
                /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                    /*[13]*/
                        /*[13]*/
                        rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = forcing[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117];
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
        for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
        /*[14]*/
            /*[14]*/
            /*[14]*/
            /*[14]*/
            /*[14]*/
            for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
            /*[14]*/
                /*[14]*/
                /*[14]*/
                /*[14]*/
                /*[14]*/
                for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
                /*[14]*/
                    /*[14]*/
                    uijk_imopVarPre119 = us[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116];
                    /*[14]*/
                    up1_imopVarPre120 = us[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116];
                    /*[14]*/
                    um1_imopVarPre121 = us[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116];
                    /*[14]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][0] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][0] + dx1tx1 * (u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][0] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][0] + u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][0]) - tx2 * (u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][1] - u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][1]);
                    /*[14]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][1] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][1] + dx2tx1 * (u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][1] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][1] + u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][1]) + xxcon2 * con43 * (up1_imopVarPre120 - 2.0 * uijk_imopVarPre119 + um1_imopVarPre121) - tx2 * (u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][1] * up1_imopVarPre120 - u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][1] * um1_imopVarPre121 + (u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][4] - square[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116] - u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][4] + square[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116]) * c2);
                    /*[14]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][2] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][2] + dx3tx1 * (u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][2] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][2] + u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][2]) + xxcon2 * (vs[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116] - 2.0 * vs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] + vs[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116]) - tx2 * (u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][2] * up1_imopVarPre120 - u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][2] * um1_imopVarPre121);
                    /*[14]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][3] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][3] + dx4tx1 * (u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][3] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][3] + u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][3]) + xxcon2 * (ws[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116] - 2.0 * ws[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] + ws[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116]) - tx2 * (u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][3] * up1_imopVarPre120 - u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][3] * um1_imopVarPre121);
                    /*[14]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][4] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][4] + dx5tx1 * (u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][4] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][4] + u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][4]) + xxcon3 * (qs[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116] - 2.0 * qs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] + qs[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116]) + xxcon4 * (up1_imopVarPre120 * up1_imopVarPre120 - 2.0 * uijk_imopVarPre119 * uijk_imopVarPre119 + um1_imopVarPre121 * um1_imopVarPre121) + xxcon5 * (u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][4] * rho_i[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][4] * rho_i[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] + u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][4] * rho_i[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116]) - tx2 * ((c1 * u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][4] - c2 * square[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116]) * up1_imopVarPre120 - (c1 * u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][4] - c2 * square[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116]) * um1_imopVarPre121);
                }
            }
        }
        /*[14]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[14]*/
#pragma omp barrier
        /*[15]*/
        i_imopVarPre114 = 1;
        /*[15]*/
#pragma omp for nowait
        /*[15]*/
        /*[15]*/
        /*[15]*/
        for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
        /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
            /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                /*[15]*/
                    /*[15]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (5.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] + u[i_imopVarPre114 + 2][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117]);
                }
            }
        }
        /*[15]*/
        i_imopVarPre114 = 2;
        /*[15]*/
#pragma omp for nowait
        /*[15]*/
        /*[15]*/
        /*[15]*/
        for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
        /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
            /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                /*[15]*/
                    /*[15]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (-4.0 * u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] + 6.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] + u[i_imopVarPre114 + 2][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117]);
                }
            }
        }
        /*[15]*/
#pragma omp for nowait
        /*[15]*/
        /*[15]*/
        /*[15]*/
        for (i_imopVarPre114 = 3; i_imopVarPre114 < grid_points[0] - 3; i_imopVarPre114++) {
        /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
            /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
                /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                    /*[15]*/
                        /*[15]*/
                        rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (u[i_imopVarPre114 - 2][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] + 6.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] + u[i_imopVarPre114 + 2][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117]);
                    }
                }
            }
        }
        /*[15]*/
        i_imopVarPre114 = grid_points[0] - 3;
        /*[15]*/
#pragma omp for nowait
        /*[15]*/
        /*[15]*/
        /*[15]*/
        for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
        /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
            /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                /*[15]*/
                    /*[15]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (u[i_imopVarPre114 - 2][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] + 6.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114 + 1][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117]);
                }
            }
        }
        /*[15]*/
        i_imopVarPre114 = grid_points[0] - 2;
        /*[15]*/
#pragma omp for nowait
        /*[15]*/
        /*[15]*/
        /*[15]*/
        for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
        /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
            /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                /*[15]*/
                    /*[15]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (u[i_imopVarPre114 - 2][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4. * u[i_imopVarPre114 - 1][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] + 5.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117]);
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
        for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
        /*[16]*/
            /*[16]*/
            /*[16]*/
            /*[16]*/
            /*[16]*/
            for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
            /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
                /*[16]*/
                    /*[16]*/
                    vijk_imopVarPre122 = vs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116];
                    /*[16]*/
                    vp1_imopVarPre123 = vs[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116];
                    /*[16]*/
                    vm1_imopVarPre124 = vs[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116];
                    /*[16]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][0] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][0] + dy1ty1 * (u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][0] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][0] + u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][0]) - ty2 * (u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][2] - u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][2]);
                    /*[16]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][1] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][1] + dy2ty1 * (u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][1] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][1] + u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][1]) + yycon2 * (us[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116] - 2.0 * us[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] + us[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116]) - ty2 * (u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][1] * vp1_imopVarPre123 - u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][1] * vm1_imopVarPre124);
                    /*[16]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][2] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][2] + dy3ty1 * (u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][2] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][2] + u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][2]) + yycon2 * con43 * (vp1_imopVarPre123 - 2.0 * vijk_imopVarPre122 + vm1_imopVarPre124) - ty2 * (u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][2] * vp1_imopVarPre123 - u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][2] * vm1_imopVarPre124 + (u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][4] - square[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116] - u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][4] + square[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116]) * c2);
                    /*[16]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][3] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][3] + dy4ty1 * (u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][3] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][3] + u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][3]) + yycon2 * (ws[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116] - 2.0 * ws[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] + ws[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116]) - ty2 * (u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][3] * vp1_imopVarPre123 - u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][3] * vm1_imopVarPre124);
                    /*[16]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][4] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][4] + dy5ty1 * (u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][4] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][4] + u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][4]) + yycon3 * (qs[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116] - 2.0 * qs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] + qs[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116]) + yycon4 * (vp1_imopVarPre123 * vp1_imopVarPre123 - 2.0 * vijk_imopVarPre122 * vijk_imopVarPre122 + vm1_imopVarPre124 * vm1_imopVarPre124) + yycon5 * (u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][4] * rho_i[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][4] * rho_i[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] + u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][4] * rho_i[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116]) - ty2 * ((c1 * u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][4] - c2 * square[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116]) * vp1_imopVarPre123 - (c1 * u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][4] - c2 * square[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116]) * vm1_imopVarPre124);
                }
            }
        }
        /*[16]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[16]*/
#pragma omp barrier
        /*[17]*/
        j_imopVarPre115 = 1;
        /*[17]*/
#pragma omp for nowait
        /*[17]*/
        /*[17]*/
        /*[17]*/
        for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
        /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
            /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                /*[17]*/
                    /*[17]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (5.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][m_imopVarPre117] + u[i_imopVarPre114][j_imopVarPre115 + 2][k_imopVarPre116][m_imopVarPre117]);
                }
            }
        }
        /*[17]*/
        j_imopVarPre115 = 2;
        /*[17]*/
#pragma omp for nowait
        /*[17]*/
        /*[17]*/
        /*[17]*/
        for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
        /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
            /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                /*[17]*/
                    /*[17]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (-4.0 * u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][m_imopVarPre117] + 6.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][m_imopVarPre117] + u[i_imopVarPre114][j_imopVarPre115 + 2][k_imopVarPre116][m_imopVarPre117]);
                }
            }
        }
        /*[17]*/
#pragma omp for nowait
        /*[17]*/
        /*[17]*/
        /*[17]*/
        for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
        /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            for (j_imopVarPre115 = 3; j_imopVarPre115 < grid_points[1] - 3; j_imopVarPre115++) {
            /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
                /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                    /*[17]*/
                        /*[17]*/
                        rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (u[i_imopVarPre114][j_imopVarPre115 - 2][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][m_imopVarPre117] + 6.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][m_imopVarPre117] + u[i_imopVarPre114][j_imopVarPre115 + 2][k_imopVarPre116][m_imopVarPre117]);
                    }
                }
            }
        }
        /*[17]*/
        j_imopVarPre115 = grid_points[1] - 3;
        /*[17]*/
#pragma omp for nowait
        /*[17]*/
        /*[17]*/
        /*[17]*/
        for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
        /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
            /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                /*[17]*/
                    /*[17]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (u[i_imopVarPre114][j_imopVarPre115 - 2][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][m_imopVarPre117] + 6.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114][j_imopVarPre115 + 1][k_imopVarPre116][m_imopVarPre117]);
                }
            }
        }
        /*[17]*/
        j_imopVarPre115 = grid_points[1] - 2;
        /*[17]*/
#pragma omp for nowait
        /*[17]*/
        /*[17]*/
        /*[17]*/
        for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
        /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
            /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                /*[17]*/
                    /*[17]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (u[i_imopVarPre114][j_imopVarPre115 - 2][k_imopVarPre116][m_imopVarPre117] - 4. * u[i_imopVarPre114][j_imopVarPre115 - 1][k_imopVarPre116][m_imopVarPre117] + 5. * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117]);
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
        for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
        /*[18]*/
            /*[18]*/
            /*[18]*/
            /*[18]*/
            /*[18]*/
            for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
            /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
                /*[18]*/
                    /*[18]*/
                    wijk_imopVarPre125 = ws[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116];
                    /*[18]*/
                    wp1_imopVarPre126 = ws[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1];
                    /*[18]*/
                    wm1_imopVarPre127 = ws[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1];
                    /*[18]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][0] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][0] + dz1tz1 * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][0] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][0] + u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][0]) - tz2 * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][3] - u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][3]);
                    /*[18]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][1] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][1] + dz2tz1 * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][1] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][1] + u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][1]) + zzcon2 * (us[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1] - 2.0 * us[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] + us[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1]) - tz2 * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][1] * wp1_imopVarPre126 - u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][1] * wm1_imopVarPre127);
                    /*[18]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][2] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][2] + dz3tz1 * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][2] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][2] + u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][2]) + zzcon2 * (vs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1] - 2.0 * vs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] + vs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1]) - tz2 * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][2] * wp1_imopVarPre126 - u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][2] * wm1_imopVarPre127);
                    /*[18]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][3] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][3] + dz4tz1 * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][3] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][3] + u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][3]) + zzcon2 * con43 * (wp1_imopVarPre126 - 2.0 * wijk_imopVarPre125 + wm1_imopVarPre127) - tz2 * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][3] * wp1_imopVarPre126 - u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][3] * wm1_imopVarPre127 + (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][4] - square[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1] - u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][4] + square[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1]) * c2);
                    /*[18]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][4] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][4] + dz5tz1 * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][4] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][4] + u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][4]) + zzcon3 * (qs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1] - 2.0 * qs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] + qs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1]) + zzcon4 * (wp1_imopVarPre126 * wp1_imopVarPre126 - 2.0 * wijk_imopVarPre125 * wijk_imopVarPre125 + wm1_imopVarPre127 * wm1_imopVarPre127) + zzcon5 * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][4] * rho_i[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1] - 2.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][4] * rho_i[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116] + u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][4] * rho_i[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1]) - tz2 * ((c1 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][4] - c2 * square[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1]) * wp1_imopVarPre126 - (c1 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][4] - c2 * square[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1]) * wm1_imopVarPre127);
                }
            }
        }
        /*[18]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[18]*/
#pragma omp barrier
        /*[19]*/
        k_imopVarPre116 = 1;
        /*[19]*/
#pragma omp for nowait
        /*[19]*/
        /*[19]*/
        /*[19]*/
        for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
        /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
            /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                /*[19]*/
                    /*[19]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (5.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][m_imopVarPre117] + u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 2][m_imopVarPre117]);
                }
            }
        }
        /*[19]*/
        k_imopVarPre116 = 2;
        /*[19]*/
#pragma omp for nowait
        /*[19]*/
        /*[19]*/
        /*[19]*/
        for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
        /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
            /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                /*[19]*/
                    /*[19]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (-4.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][m_imopVarPre117] + 6.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][m_imopVarPre117] + u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 2][m_imopVarPre117]);
                }
            }
        }
        /*[19]*/
#pragma omp for nowait
        /*[19]*/
        /*[19]*/
        /*[19]*/
        for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
        /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
            /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (k_imopVarPre116 = 3; k_imopVarPre116 < grid_points[2] - 3; k_imopVarPre116++) {
                /*[19]*/
                    /*[19]*/
                    /*[19]*/
                    /*[19]*/
                    /*[19]*/
                    for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                    /*[19]*/
                        /*[19]*/
                        rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 2][m_imopVarPre117] - 4.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][m_imopVarPre117] + 6.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][m_imopVarPre117] + u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 2][m_imopVarPre117]);
                    }
                }
            }
        }
        /*[19]*/
        k_imopVarPre116 = grid_points[2] - 3;
        /*[19]*/
#pragma omp for nowait
        /*[19]*/
        /*[19]*/
        /*[19]*/
        for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
        /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
            /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                /*[19]*/
                    /*[19]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 2][m_imopVarPre117] - 4.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][m_imopVarPre117] + 6.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - 4.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 + 1][m_imopVarPre117]);
                }
            }
        }
        /*[19]*/
        k_imopVarPre116 = grid_points[2] - 2;
        /*[19]*/
#pragma omp for nowait
        /*[19]*/
        /*[19]*/
        /*[19]*/
        for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
        /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
            /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                /*[19]*/
                    /*[19]*/
                    rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] - dssp * (u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 2][m_imopVarPre117] - 4.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116 - 1][m_imopVarPre117] + 5.0 * u[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117]);
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
        for (j_imopVarPre115 = 1; j_imopVarPre115 < grid_points[1] - 1; j_imopVarPre115++) {
        /*[20]*/
            /*[20]*/
            /*[20]*/
            /*[20]*/
            /*[20]*/
            for (k_imopVarPre116 = 1; k_imopVarPre116 < grid_points[2] - 1; k_imopVarPre116++) {
            /*[20]*/
                /*[20]*/
                /*[20]*/
                /*[20]*/
                /*[20]*/
                for (m_imopVarPre117 = 0; m_imopVarPre117 < 5; m_imopVarPre117++) {
                /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    for (i_imopVarPre114 = 1; i_imopVarPre114 < grid_points[0] - 1; i_imopVarPre114++) {
                    /*[20]*/
                        /*[20]*/
                        rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] = rhs[i_imopVarPre114][j_imopVarPre115][k_imopVarPre116][m_imopVarPre117] * dt;
                    }
                }
            }
        }
        /*[20]*/
        int i_imopVarPre84;
        /*[20]*/
        int j_imopVarPre85;
        /*[20]*/
        int k_imopVarPre86;
        /*[20]*/
#pragma omp for nowait
        /*[20]*/
        /*[20]*/
        /*[20]*/
        for (j_imopVarPre85 = 1; j_imopVarPre85 < grid_points[1] - 1; j_imopVarPre85++) {
        /*[20]*/
            /*[20]*/
            /*[20]*/
            /*[20]*/
            /*[20]*/
            for (k_imopVarPre86 = 1; k_imopVarPre86 < grid_points[2] - 1; k_imopVarPre86++) {
            /*[20]*/
                /*[20]*/
                /*[20]*/
                /*[20]*/
                /*[20]*/
                for (i_imopVarPre84 = 0; i_imopVarPre84 < grid_points[0]; i_imopVarPre84++) {
                /*[20]*/
                    /*[20]*/
                    tmp1 = 1.0 / u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0];
                    /*[20]*/
                    tmp2 = tmp1 * tmp1;
                    /*[20]*/
                    tmp3 = tmp1 * tmp2;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0] = 0.0;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1] = 1.0;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2] = 0.0;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3] = 0.0;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4] = 0.0;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0] = -(u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1]) + c2 * 0.50 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] + u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] + u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3]) * tmp2;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1] = (2.0 - c2) * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] / u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0]);
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2] = -c2 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] * tmp1);
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3] = -c2 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3] * tmp1);
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4] = c2;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0] = -(u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2]) * tmp2;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1] = u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] * tmp1;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2] = u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * tmp1;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3] = 0.0;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4] = 0.0;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][0] = -(u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3]) * tmp2;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][1] = u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3] * tmp1;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][2] = 0.0;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][3] = u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * tmp1;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][4] = 0.0;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][0] = (c2 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] + u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] + u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3]) * tmp2 - c1 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4] * tmp1)) * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * tmp1);
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][1] = c1 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4] * tmp1 - 0.50 * c2 * (3.0 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] + u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] + u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3]) * tmp2;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][2] = -c2 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1]) * tmp2;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][3] = -c2 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1]) * tmp2;
                    /*[20]*/
                    fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][4] = c1 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * tmp1);
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0] = -con43 * c3c4 * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1];
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1] = con43 * c3c4 * tmp1;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0] = -c3c4 * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2];
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2] = c3c4 * tmp1;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][0] = -c3c4 * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3];
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][1] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][2] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][3] = c3c4 * tmp1;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][4] = 0.0;
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][0] = -(con43 * c3c4 - c1345) * tmp3 * (((u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1]) * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2]) * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3]) * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3]))) - c1345 * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4];
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][1] = (con43 * c3c4 - c1345) * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1];
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][2] = (c3c4 - c1345) * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2];
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][3] = (c3c4 - c1345) * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3];
                    /*[20]*/
                    njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][4] = c1345 * tmp1;
                }
                /*[20]*/
                /*[20]*/
                /*[20]*/
                /*[20]*/
                for (i_imopVarPre84 = 1; i_imopVarPre84 < grid_points[0] - 1; i_imopVarPre84++) {
                /*[20]*/
                    /*[20]*/
                    tmp1 = dt * tx1;
                    /*[20]*/
                    tmp2 = dt * tx2;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0][0] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][0] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][0] - tmp1 * dx1;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0][1] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][1] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][1];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0][2] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][2] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][2];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0][3] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][3] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][3];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0][4] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][4] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][4];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1][0] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][0] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][0];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1][1] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][1] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][1] - tmp1 * dx2;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1][2] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][2] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][2];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1][3] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][3] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][3];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1][4] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][4] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][4];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2][0] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][0] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][0];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2][1] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][1] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][1];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2][2] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][2] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][2] - tmp1 * dx3;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2][3] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][3] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][3];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2][4] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][4] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][4];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3][0] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][0] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][0];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3][1] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][1] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][1];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3][2] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][2] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][2];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3][3] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][3] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][3] - tmp1 * dx4;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3][4] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][4] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][4];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4][0] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][0] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][0];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4][1] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][1] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][1];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4][2] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][2] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][2];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4][3] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][3] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][3];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4][4] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][4] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][4] - tmp1 * dx5;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0] + tmp1 * 2.0 * dx1;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0][1] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0][2] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0][3] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0][4] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1][0] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1] + tmp1 * 2.0 * dx2;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1][2] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1][3] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1][4] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2][0] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2][1] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2] + tmp1 * 2.0 * dx3;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2][3] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2][4] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3][0] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][0];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3][1] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][1];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3][2] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][2];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][3] + tmp1 * 2.0 * dx4;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3][4] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][4];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4][0] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][0];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4][1] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][1];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4][2] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][2];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4][3] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][3];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][4] + tmp1 * 2.0 * dx5;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0][0] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][0] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][0] - tmp1 * dx1;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0][1] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][1] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][1];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0][2] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][2] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][2];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0][3] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][3] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][3];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0][4] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][4] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][4];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1][0] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][0] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][0];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1][1] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][1] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][1] - tmp1 * dx2;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1][2] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][2] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][2];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1][3] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][3] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][3];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1][4] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][4] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][4];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2][0] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][0] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][0];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2][1] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][1] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][1];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2][2] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][2] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][2] - tmp1 * dx3;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2][3] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][3] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][3];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2][4] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][4] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][4];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3][0] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][0] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][0];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3][1] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][1] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][1];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3][2] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][2] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][2];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3][3] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][3] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][3] - tmp1 * dx4;
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3][4] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][4] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][4];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4][0] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][0] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][0];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4][1] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][1] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][1];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4][2] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][2] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][2];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4][3] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][3] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][3];
                    /*[20]*/
                    lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4][4] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][4] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][4] - tmp1 * dx5;
                }
            }
        }
        /*[20]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[20]*/
#pragma omp barrier
        /*[21]*/
        int i_imopVarPre101;
        /*[21]*/
        int j_imopVarPre102;
        /*[21]*/
        int k_imopVarPre103;
        /*[21]*/
        int isize;
        /*[21]*/
        isize = grid_points[0] - 1;
        /*[21]*/
#pragma omp for nowait
        /*[21]*/
        /*[21]*/
        /*[21]*/
        for (j_imopVarPre102 = 1; j_imopVarPre102 < grid_points[1] - 1; j_imopVarPre102++) {
        /*[21]*/
            /*[21]*/
            /*[21]*/
            /*[21]*/
            /*[21]*/
            for (k_imopVarPre103 = 1; k_imopVarPre103 < grid_points[2] - 1; k_imopVarPre103++) {
            /*[21]*/
                /*[21]*/
                double *_imopVarPre334;
                /*[21]*/
                double ( *_imopVarPre335 )[5];
                /*[21]*/
                double ( *_imopVarPre336 )[5];
                /*[21]*/
                _imopVarPre334 = rhs[0][j_imopVarPre102][k_imopVarPre103];
                /*[21]*/
                _imopVarPre335 = lhs[0][j_imopVarPre102][k_imopVarPre103][2];
                /*[21]*/
                _imopVarPre336 = lhs[0][j_imopVarPre102][k_imopVarPre103][1];
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
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[22]*/
        for (i_imopVarPre101 = 1; i_imopVarPre101 < isize; i_imopVarPre101++) {
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp for nowait
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            for (j_imopVarPre102 = 1; j_imopVarPre102 < grid_points[1] - 1; j_imopVarPre102++) {
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                for (k_imopVarPre103 = 1; k_imopVarPre103 < grid_points[2] - 1; k_imopVarPre103++) {
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double *_imopVarPre340;
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double *_imopVarPre341;
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre342 )[5];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre340 = rhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre341 = rhs[i_imopVarPre101 - 1][j_imopVarPre102][k_imopVarPre103];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre342 = lhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103][0];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    matvec_sub(_imopVarPre342, _imopVarPre341, _imopVarPre340);
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre346 )[5];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre347 )[5];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre348 )[5];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre346 = lhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103][1];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre347 = lhs[i_imopVarPre101 - 1][j_imopVarPre102][k_imopVarPre103][2];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre348 = lhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103][0];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    matmul_sub(_imopVarPre348, _imopVarPre347, _imopVarPre346);
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double *_imopVarPre352;
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre353 )[5];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre354 )[5];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre352 = rhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre353 = lhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103][2];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre354 = lhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103][1];
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    binvcrhs(_imopVarPre354, _imopVarPre353, _imopVarPre352);
                    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                }
            }
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        }
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp for nowait
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        for (j_imopVarPre102 = 1; j_imopVarPre102 < grid_points[1] - 1; j_imopVarPre102++) {
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            for (k_imopVarPre103 = 1; k_imopVarPre103 < grid_points[2] - 1; k_imopVarPre103++) {
            /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double *_imopVarPre358;
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double *_imopVarPre359;
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre360 )[5];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre358 = rhs[isize][j_imopVarPre102][k_imopVarPre103];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre359 = rhs[isize - 1][j_imopVarPre102][k_imopVarPre103];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre360 = lhs[isize][j_imopVarPre102][k_imopVarPre103][0];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                matvec_sub(_imopVarPre360, _imopVarPre359, _imopVarPre358);
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre364 )[5];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre365 )[5];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre366 )[5];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre364 = lhs[isize][j_imopVarPre102][k_imopVarPre103][1];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre365 = lhs[isize - 1][j_imopVarPre102][k_imopVarPre103][2];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre366 = lhs[isize][j_imopVarPre102][k_imopVarPre103][0];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                matmul_sub(_imopVarPre366, _imopVarPre365, _imopVarPre364);
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double *_imopVarPre369;
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre370 )[5];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre369 = rhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre370 = lhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103][1];
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                binvrhs(_imopVarPre370, _imopVarPre369);
                /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            }
        }
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int i_imopVarPre98;
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int j_imopVarPre99;
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int k_imopVarPre100;
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int m_imopVarPre104;
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int n_imopVarPre105;
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        for (i_imopVarPre98 = grid_points[0] - 2; i_imopVarPre98 >= 0; i_imopVarPre98--) {
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp for nowait
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            for (j_imopVarPre99 = 1; j_imopVarPre99 < grid_points[1] - 1; j_imopVarPre99++) {
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                for (k_imopVarPre100 = 1; k_imopVarPre100 < grid_points[2] - 1; k_imopVarPre100++) {
                /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    for (m_imopVarPre104 = 0; m_imopVarPre104 < 5; m_imopVarPre104++) {
                    /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                        for (n_imopVarPre105 = 0; n_imopVarPre105 < 5; n_imopVarPre105++) {
                        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                            rhs[i_imopVarPre98][j_imopVarPre99][k_imopVarPre100][m_imopVarPre104] = rhs[i_imopVarPre98][j_imopVarPre99][k_imopVarPre100][m_imopVarPre104] - lhs[i_imopVarPre98][j_imopVarPre99][k_imopVarPre100][2][m_imopVarPre104][n_imopVarPre105] * rhs[i_imopVarPre98 + 1][j_imopVarPre99][k_imopVarPre100][n_imopVarPre105];
                        }
                    }
                }
            }
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        }
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int i_imopVarPre81;
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int j_imopVarPre82;
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int k_imopVarPre83;
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp for nowait
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        for (i_imopVarPre81 = 1; i_imopVarPre81 < grid_points[0] - 1; i_imopVarPre81++) {
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            for (j_imopVarPre82 = 0; j_imopVarPre82 < grid_points[1]; j_imopVarPre82++) {
            /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                for (k_imopVarPre83 = 1; k_imopVarPre83 < grid_points[2] - 1; k_imopVarPre83++) {
                /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    tmp1 = 1.0 / u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    tmp2 = tmp1 * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    tmp3 = tmp1 * tmp2;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2] = 1.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0] = -(u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2]) * tmp2;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1] = u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2] = u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0] = -(u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp2) + 0.50 * c2 * ((u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] + u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] + u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]) * tmp2);
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1] = -c2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2] = (2.0 - c2) * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3] = -c2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4] = c2;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][0] = -(u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]) * tmp2;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][1] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][2] = u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][3] = u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][0] = (c2 * (u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] + u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] + u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]) * tmp2 - c1 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4] * tmp1) * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][1] = -c2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp2;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][2] = c1 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4] * tmp1 - 0.50 * c2 * ((u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] + 3.0 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] + u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]) * tmp2);
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][3] = -c2 * (u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]) * tmp2;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][4] = c1 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0] = -c3c4 * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1] = c3c4 * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0] = -con43 * c3c4 * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2] = con43 * c3c4 * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][0] = -c3c4 * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][1] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][2] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][3] = c3c4 * tmp1;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][4] = 0.0;
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1]) * (u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2]) * (u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]) * (u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]))) - c1345 * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][1] = (c3c4 - c1345) * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][2] = (con43 * c3c4 - c1345) * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][3] = (c3c4 - c1345) * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3];
                    /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][4] = c1345 * tmp1;
                }
            }
        }
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp for nowait
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        for (i_imopVarPre81 = 1; i_imopVarPre81 < grid_points[0] - 1; i_imopVarPre81++) {
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            for (j_imopVarPre82 = 1; j_imopVarPre82 < grid_points[1] - 1; j_imopVarPre82++) {
            /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                for (k_imopVarPre83 = 1; k_imopVarPre83 < grid_points[2] - 1; k_imopVarPre83++) {
                /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    tmp1 = dt * ty1;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    tmp2 = dt * ty2;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0][0] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][0] - tmp1 * dy1;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0][1] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0][2] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0][3] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0][4] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1][0] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1][1] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][1] - tmp1 * dy2;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1][2] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1][3] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1][4] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2][0] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2][1] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2][2] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][2] - tmp1 * dy3;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2][3] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2][4] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3][0] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3][1] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3][2] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3][3] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][3] - tmp1 * dy4;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3][4] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4][0] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4][1] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4][2] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4][3] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4][4] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][4] - tmp1 * dy5;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0] + tmp1 * 2.0 * dy1;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0][1] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0][2] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0][3] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0][4] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1][0] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1] + tmp1 * 2.0 * dy2;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1][2] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1][3] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1][4] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2][0] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2][1] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2] + tmp1 * 2.0 * dy3;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2][3] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2][4] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3][0] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3][1] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3][2] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][3] + tmp1 * 2.0 * dy4;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3][4] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4][0] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4][1] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4][2] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4][3] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][4] + tmp1 * 2.0 * dy5;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0][0] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][0] - tmp1 * dy1;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0][1] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0][2] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0][3] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0][4] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1][0] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1][1] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][1] - tmp1 * dy2;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1][2] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1][3] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1][4] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2][0] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2][1] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2][2] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][2] - tmp1 * dy3;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2][3] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2][4] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3][0] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3][1] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3][2] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3][3] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][3] - tmp1 * dy4;
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3][4] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][4];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4][0] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][0];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4][1] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][1];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4][2] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][2];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4][3] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][3];
                    /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4][4] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][4] - tmp1 * dy5;
                }
            }
        }
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int i_imopVarPre94;
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int j_imopVarPre95;
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int k_imopVarPre96;
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int jsize;
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        jsize = grid_points[1] - 1;
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp for nowait
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        for (i_imopVarPre94 = 1; i_imopVarPre94 < grid_points[0] - 1; i_imopVarPre94++) {
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            for (k_imopVarPre96 = 1; k_imopVarPre96 < grid_points[2] - 1; k_imopVarPre96++) {
            /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double *_imopVarPre374;
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre375 )[5];
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre376 )[5];
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre374 = rhs[i_imopVarPre94][0][k_imopVarPre96];
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre375 = lhs[i_imopVarPre94][0][k_imopVarPre96][2];
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre376 = lhs[i_imopVarPre94][0][k_imopVarPre96][1];
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                binvcrhs(_imopVarPre376, _imopVarPre375, _imopVarPre374);
                /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            }
        }
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        for (j_imopVarPre95 = 1; j_imopVarPre95 < jsize; j_imopVarPre95++) {
        /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp for nowait
            /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            for (i_imopVarPre94 = 1; i_imopVarPre94 < grid_points[0] - 1; i_imopVarPre94++) {
            /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                for (k_imopVarPre96 = 1; k_imopVarPre96 < grid_points[2] - 1; k_imopVarPre96++) {
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double *_imopVarPre380;
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double *_imopVarPre381;
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre382 )[5];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre380 = rhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre381 = rhs[i_imopVarPre94][j_imopVarPre95 - 1][k_imopVarPre96];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre382 = lhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96][0];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    matvec_sub(_imopVarPre382, _imopVarPre381, _imopVarPre380);
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre386 )[5];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre387 )[5];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre388 )[5];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre386 = lhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96][1];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre387 = lhs[i_imopVarPre94][j_imopVarPre95 - 1][k_imopVarPre96][2];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre388 = lhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96][0];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    matmul_sub(_imopVarPre388, _imopVarPre387, _imopVarPre386);
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double *_imopVarPre392;
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre393 )[5];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre394 )[5];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre392 = rhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre393 = lhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96][2];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    _imopVarPre394 = lhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96][1];
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    binvcrhs(_imopVarPre394, _imopVarPre393, _imopVarPre392);
                    /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                }
            }
            /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        }
        /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp for nowait
        /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        for (i_imopVarPre94 = 1; i_imopVarPre94 < grid_points[0] - 1; i_imopVarPre94++) {
        /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            for (k_imopVarPre96 = 1; k_imopVarPre96 < grid_points[2] - 1; k_imopVarPre96++) {
            /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double *_imopVarPre398;
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double *_imopVarPre399;
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre400 )[5];
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre398 = rhs[i_imopVarPre94][jsize][k_imopVarPre96];
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre399 = rhs[i_imopVarPre94][jsize - 1][k_imopVarPre96];
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre400 = lhs[i_imopVarPre94][jsize][k_imopVarPre96][0];
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                matvec_sub(_imopVarPre400, _imopVarPre399, _imopVarPre398);
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre404 )[5];
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre405 )[5];
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre406 )[5];
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre404 = lhs[i_imopVarPre94][jsize][k_imopVarPre96][1];
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre405 = lhs[i_imopVarPre94][jsize - 1][k_imopVarPre96][2];
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre406 = lhs[i_imopVarPre94][jsize][k_imopVarPre96][0];
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                matmul_sub(_imopVarPre406, _imopVarPre405, _imopVarPre404);
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double *_imopVarPre409;
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre410 )[5];
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre409 = rhs[i_imopVarPre94][jsize][k_imopVarPre96];
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                _imopVarPre410 = lhs[i_imopVarPre94][jsize][k_imopVarPre96][1];
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                binvrhs(_imopVarPre410, _imopVarPre409);
                /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            }
        }
        /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[27, 28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int i_imopVarPre75;
        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int j_imopVarPre76;
        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int k_imopVarPre77;
        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int m_imopVarPre97;
        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        int n;
        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        for (j_imopVarPre76 = grid_points[1] - 2; j_imopVarPre76 >= 0; j_imopVarPre76--) {
        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp for nowait
            /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            for (i_imopVarPre75 = 1; i_imopVarPre75 < grid_points[0] - 1; i_imopVarPre75++) {
            /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                for (k_imopVarPre77 = 1; k_imopVarPre77 < grid_points[2] - 1; k_imopVarPre77++) {
                /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                    for (m_imopVarPre97 = 0; m_imopVarPre97 < 5; m_imopVarPre97++) {
                    /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                        for (n = 0; n < 5; n++) {
                        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                            /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
                            rhs[i_imopVarPre75][j_imopVarPre76][k_imopVarPre77][m_imopVarPre97] = rhs[i_imopVarPre75][j_imopVarPre76][k_imopVarPre77][m_imopVarPre97] - lhs[i_imopVarPre75][j_imopVarPre76][k_imopVarPre77][2][m_imopVarPre97][n] * rhs[i_imopVarPre75][j_imopVarPre76 + 1][k_imopVarPre77][n];
                        }
                    }
                }
            }
            /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        }
        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[28, 29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        /*[29, 30, 31, 32, 33, 34, 35, 36]*/
        int i_imopVarPre91;
        /*[29, 30, 31, 32, 33, 34, 35, 36]*/
        int j_imopVarPre92;
        /*[29, 30, 31, 32, 33, 34, 35, 36]*/
        int k_imopVarPre93;
        /*[29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp for nowait
        /*[29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[29, 30, 31, 32, 33, 34, 35, 36]*/
        /*[29, 30, 31, 32, 33, 34, 35, 36]*/
        for (i_imopVarPre91 = 1; i_imopVarPre91 < grid_points[0] - 1; i_imopVarPre91++) {
        /*[29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[29, 30, 31, 32, 33, 34, 35, 36]*/
            /*[29, 30, 31, 32, 33, 34, 35, 36]*/
            for (j_imopVarPre92 = 1; j_imopVarPre92 < grid_points[1] - 1; j_imopVarPre92++) {
            /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                for (k_imopVarPre93 = 0; k_imopVarPre93 < grid_points[2]; k_imopVarPre93++) {
                /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    tmp1 = 1.0 / u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0];
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    tmp2 = tmp1 * tmp1;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    tmp3 = tmp1 * tmp2;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3] = 1.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0] = -(u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1] = u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * tmp1;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3] = u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * tmp1;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0] = -(u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2] = u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * tmp1;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3] = u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * tmp1;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][0] = -(u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * tmp2) + 0.50 * c2 * ((u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] + u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] + u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2);
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][1] = -c2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * tmp1;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][2] = -c2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * tmp1;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][3] = (2.0 - c2) * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * tmp1;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][4] = c2;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][0] = (c2 * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] + u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] + u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2 - c1 * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4] * tmp1)) * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * tmp1);
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][1] = -c2 * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][2] = -c2 * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][3] = c1 * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4] * tmp1) - 0.50 * c2 * ((u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] + u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] + 3.0 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2);
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][4] = c1 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * tmp1;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0] = -c3c4 * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1];
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1] = c3c4 * tmp1;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0] = -c3c4 * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2];
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2] = c3c4 * tmp1;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][0] = -con43 * c3c4 * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3];
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][1] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][2] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][3] = con43 * c3 * c4 * tmp1;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][4] = 0.0;
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1]) * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2]) * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]))) - c1345 * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4];
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][1] = (c3c4 - c1345) * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1];
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][2] = (c3c4 - c1345) * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2];
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][3] = (con43 * c3c4 - c1345) * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3];
                    /*[29, 30, 31, 32, 33, 34, 35, 36]*/
                    njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][4] = c1345 * tmp1;
                }
            }
        }
        /*[29, 30, 31, 32, 33, 34, 35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[29, 30, 31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        /*[30, 31, 32, 33, 34, 35, 36]*/
#pragma omp for nowait
        /*[30, 31, 32, 33, 34, 35, 36]*/
        /*[30, 31, 32, 33, 34, 35, 36]*/
        /*[30, 31, 32, 33, 34, 35, 36]*/
        for (i_imopVarPre91 = 1; i_imopVarPre91 < grid_points[0] - 1; i_imopVarPre91++) {
        /*[30, 31, 32, 33, 34, 35, 36]*/
            /*[30, 31, 32, 33, 34, 35, 36]*/
            /*[30, 31, 32, 33, 34, 35, 36]*/
            /*[30, 31, 32, 33, 34, 35, 36]*/
            /*[30, 31, 32, 33, 34, 35, 36]*/
            for (j_imopVarPre92 = 1; j_imopVarPre92 < grid_points[1] - 1; j_imopVarPre92++) {
            /*[30, 31, 32, 33, 34, 35, 36]*/
                /*[30, 31, 32, 33, 34, 35, 36]*/
                /*[30, 31, 32, 33, 34, 35, 36]*/
                /*[30, 31, 32, 33, 34, 35, 36]*/
                /*[30, 31, 32, 33, 34, 35, 36]*/
                for (k_imopVarPre93 = 1; k_imopVarPre93 < grid_points[2] - 1; k_imopVarPre93++) {
                /*[30, 31, 32, 33, 34, 35, 36]*/
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    tmp1 = dt * tz1;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    tmp2 = dt * tz2;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0][0] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][0] - tmp1 * dz1;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0][1] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][1];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0][2] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][2];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0][3] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][3];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0][4] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][4];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1][0] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][0];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1][1] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][1] - tmp1 * dz2;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1][2] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][2];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1][3] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][3];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1][4] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][4];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2][0] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][0];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2][1] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][1];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2][2] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][2] - tmp1 * dz3;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2][3] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][3];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2][4] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][4];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3][0] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][0];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3][1] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][1];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3][2] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][2];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3][3] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][3] - tmp1 * dz4;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3][4] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][4];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4][0] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][0];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4][1] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][1];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4][2] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][2];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4][3] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][3];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4][4] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][4] - tmp1 * dz5;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0] + tmp1 * 2.0 * dz1;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0][1] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0][2] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0][3] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0][4] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1][0] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1] + tmp1 * 2.0 * dz2;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1][2] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1][3] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1][4] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2][0] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2][1] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2] + tmp1 * 2.0 * dz3;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2][3] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2][4] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3][0] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][0];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3][1] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][1];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3][2] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][2];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][3] + tmp1 * 2.0 * dz4;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3][4] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][4];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4][0] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][0];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4][1] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][1];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4][2] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][2];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4][3] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][3];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][4] + tmp1 * 2.0 * dz5;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0][0] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][0] - tmp1 * dz1;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0][1] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][1];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0][2] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][2];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0][3] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][3];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0][4] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][4];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1][0] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][0];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1][1] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][1] - tmp1 * dz2;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1][2] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][2];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1][3] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][3];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1][4] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][4];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2][0] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][0];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2][1] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][1];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2][2] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][2] - tmp1 * dz3;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2][3] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][3];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2][4] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][4];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3][0] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][0];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3][1] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][1];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3][2] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][2];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3][3] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][3] - tmp1 * dz4;
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3][4] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][4];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4][0] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][0];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4][1] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][1];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4][2] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][2];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4][3] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][3];
                    /*[30, 31, 32, 33, 34, 35, 36]*/
                    lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4][4] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][4] - tmp1 * dz5;
                }
            }
        }
        /*[30, 31, 32, 33, 34, 35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[30, 31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        /*[31, 32, 33, 34, 35, 36]*/
        int i_imopVarPre78;
        /*[31, 32, 33, 34, 35, 36]*/
        int j_imopVarPre79;
        /*[31, 32, 33, 34, 35, 36]*/
        int k_imopVarPre80;
        /*[31, 32, 33, 34, 35, 36]*/
        int ksize;
        /*[31, 32, 33, 34, 35, 36]*/
        ksize = grid_points[2] - 1;
        /*[31, 32, 33, 34, 35, 36]*/
#pragma omp for nowait
        /*[31, 32, 33, 34, 35, 36]*/
        /*[31, 32, 33, 34, 35, 36]*/
        /*[31, 32, 33, 34, 35, 36]*/
        for (i_imopVarPre78 = 1; i_imopVarPre78 < grid_points[0] - 1; i_imopVarPre78++) {
        /*[31, 32, 33, 34, 35, 36]*/
            /*[31, 32, 33, 34, 35, 36]*/
            /*[31, 32, 33, 34, 35, 36]*/
            /*[31, 32, 33, 34, 35, 36]*/
            /*[31, 32, 33, 34, 35, 36]*/
            for (j_imopVarPre79 = 1; j_imopVarPre79 < grid_points[1] - 1; j_imopVarPre79++) {
            /*[31, 32, 33, 34, 35, 36]*/
                /*[31, 32, 33, 34, 35, 36]*/
                double *_imopVarPre414;
                /*[31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre415 )[5];
                /*[31, 32, 33, 34, 35, 36]*/
                double ( *_imopVarPre416 )[5];
                /*[31, 32, 33, 34, 35, 36]*/
                _imopVarPre414 = rhs[i_imopVarPre78][j_imopVarPre79][0];
                /*[31, 32, 33, 34, 35, 36]*/
                _imopVarPre415 = lhs[i_imopVarPre78][j_imopVarPre79][0][2];
                /*[31, 32, 33, 34, 35, 36]*/
                _imopVarPre416 = lhs[i_imopVarPre78][j_imopVarPre79][0][1];
                /*[31, 32, 33, 34, 35, 36]*/
                binvcrhs(_imopVarPre416, _imopVarPre415, _imopVarPre414);
                /*[31, 32, 33, 34, 35, 36]*/
            }
        }
        /*[31, 32, 33, 34, 35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[31, 32, 33, 34, 35, 36]*/
#pragma omp barrier
        /*[32, 33, 34, 35, 36]*/
        /*[32, 33, 34, 35, 36]*/
        /*[33, 34, 35, 36]*/
        /*[32, 33, 34, 35, 36]*/
        for (k_imopVarPre80 = 1; k_imopVarPre80 < ksize; k_imopVarPre80++) {
        /*[32, 33, 34, 35, 36]*/
            /*[32, 33, 34, 35, 36]*/
#pragma omp for nowait
            /*[32, 33, 34, 35, 36]*/
            /*[32, 33, 34, 35, 36]*/
            /*[32, 33, 34, 35, 36]*/
            for (i_imopVarPre78 = 1; i_imopVarPre78 < grid_points[0] - 1; i_imopVarPre78++) {
            /*[32, 33, 34, 35, 36]*/
                /*[32, 33, 34, 35, 36]*/
                /*[32, 33, 34, 35, 36]*/
                /*[32, 33, 34, 35, 36]*/
                /*[32, 33, 34, 35, 36]*/
                for (j_imopVarPre79 = 1; j_imopVarPre79 < grid_points[1] - 1; j_imopVarPre79++) {
                /*[32, 33, 34, 35, 36]*/
                    /*[32, 33, 34, 35, 36]*/
                    double *_imopVarPre420;
                    /*[32, 33, 34, 35, 36]*/
                    double *_imopVarPre421;
                    /*[32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre422 )[5];
                    /*[32, 33, 34, 35, 36]*/
                    _imopVarPre420 = rhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                    /*[32, 33, 34, 35, 36]*/
                    _imopVarPre421 = rhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80 - 1];
                    /*[32, 33, 34, 35, 36]*/
                    _imopVarPre422 = lhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80][0];
                    /*[32, 33, 34, 35, 36]*/
                    matvec_sub(_imopVarPre422, _imopVarPre421, _imopVarPre420);
                    /*[32, 33, 34, 35, 36]*/
                    /*[32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre426 )[5];
                    /*[32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre427 )[5];
                    /*[32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre428 )[5];
                    /*[32, 33, 34, 35, 36]*/
                    _imopVarPre426 = lhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80][1];
                    /*[32, 33, 34, 35, 36]*/
                    _imopVarPre427 = lhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80 - 1][2];
                    /*[32, 33, 34, 35, 36]*/
                    _imopVarPre428 = lhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80][0];
                    /*[32, 33, 34, 35, 36]*/
                    matmul_sub(_imopVarPre428, _imopVarPre427, _imopVarPre426);
                    /*[32, 33, 34, 35, 36]*/
                    /*[32, 33, 34, 35, 36]*/
                    double *_imopVarPre432;
                    /*[32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre433 )[5];
                    /*[32, 33, 34, 35, 36]*/
                    double ( *_imopVarPre434 )[5];
                    /*[32, 33, 34, 35, 36]*/
                    _imopVarPre432 = rhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                    /*[32, 33, 34, 35, 36]*/
                    _imopVarPre433 = lhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80][2];
                    /*[32, 33, 34, 35, 36]*/
                    _imopVarPre434 = lhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80][1];
                    /*[32, 33, 34, 35, 36]*/
                    binvcrhs(_imopVarPre434, _imopVarPre433, _imopVarPre432);
                    /*[32, 33, 34, 35, 36]*/
                }
            }
            /*[32, 33, 34, 35, 36]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[32, 33, 34, 35, 36]*/
#pragma omp barrier
        }
        /*[32, 33, 34, 35, 36]*/
#pragma omp for nowait
        /*[32, 33, 34, 35, 36]*/
        /*[32, 33, 34, 35, 36]*/
        /*[32, 33, 34, 35, 36]*/
        for (i_imopVarPre78 = 1; i_imopVarPre78 < grid_points[0] - 1; i_imopVarPre78++) {
        /*[32, 33, 34, 35, 36]*/
            /*[32, 33, 34, 35, 36]*/
            /*[32, 33, 34, 35, 36]*/
            /*[32, 33, 34, 35, 36]*/
            /*[32, 33, 34, 35, 36]*/
            for (j_imopVarPre79 = 1; j_imopVarPre79 < grid_points[1] - 1; j_imopVarPre79++) {
            /*[32, 33, 34, 35, 36]*/
                /*[32, 33, 34, 35, 36]*/
                double *_imopVarPre438;
                /*[32, 33, 34, 35, 36]*/
                double *_imopVarPre439;
                /*[32, 33, 34, 35, 36]*/
                double ( *_imopVarPre440 )[5];
                /*[32, 33, 34, 35, 36]*/
                _imopVarPre438 = rhs[i_imopVarPre78][j_imopVarPre79][ksize];
                /*[32, 33, 34, 35, 36]*/
                _imopVarPre439 = rhs[i_imopVarPre78][j_imopVarPre79][ksize - 1];
                /*[32, 33, 34, 35, 36]*/
                _imopVarPre440 = lhs[i_imopVarPre78][j_imopVarPre79][ksize][0];
                /*[32, 33, 34, 35, 36]*/
                matvec_sub(_imopVarPre440, _imopVarPre439, _imopVarPre438);
                /*[32, 33, 34, 35, 36]*/
                /*[32, 33, 34, 35, 36]*/
                double ( *_imopVarPre444 )[5];
                /*[32, 33, 34, 35, 36]*/
                double ( *_imopVarPre445 )[5];
                /*[32, 33, 34, 35, 36]*/
                double ( *_imopVarPre446 )[5];
                /*[32, 33, 34, 35, 36]*/
                _imopVarPre444 = lhs[i_imopVarPre78][j_imopVarPre79][ksize][1];
                /*[32, 33, 34, 35, 36]*/
                _imopVarPre445 = lhs[i_imopVarPre78][j_imopVarPre79][ksize - 1][2];
                /*[32, 33, 34, 35, 36]*/
                _imopVarPre446 = lhs[i_imopVarPre78][j_imopVarPre79][ksize][0];
                /*[32, 33, 34, 35, 36]*/
                matmul_sub(_imopVarPre446, _imopVarPre445, _imopVarPre444);
                /*[32, 33, 34, 35, 36]*/
                /*[32, 33, 34, 35, 36]*/
                double *_imopVarPre449;
                /*[32, 33, 34, 35, 36]*/
                double ( *_imopVarPre450 )[5];
                /*[32, 33, 34, 35, 36]*/
                _imopVarPre449 = rhs[i_imopVarPre78][j_imopVarPre79][ksize];
                /*[32, 33, 34, 35, 36]*/
                _imopVarPre450 = lhs[i_imopVarPre78][j_imopVarPre79][ksize][1];
                /*[32, 33, 34, 35, 36]*/
                binvrhs(_imopVarPre450, _imopVarPre449);
                /*[32, 33, 34, 35, 36]*/
            }
        }
        /*[32, 33, 34, 35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[32, 33, 34, 35, 36]*/
#pragma omp barrier
        /*[33, 34, 35, 36]*/
        int i_imopVarPre106;
        /*[33, 34, 35, 36]*/
        int j_imopVarPre107;
        /*[33, 34, 35, 36]*/
        int k_imopVarPre108;
        /*[33, 34, 35, 36]*/
        int m_imopVarPre109;
        /*[33, 34, 35, 36]*/
        int n_imopVarPre110;
        /*[33, 34, 35, 36]*/
#pragma omp for nowait
        /*[33, 34, 35, 36]*/
        /*[33, 34, 35, 36]*/
        /*[33, 34, 35, 36]*/
        for (i_imopVarPre106 = 1; i_imopVarPre106 < grid_points[0] - 1; i_imopVarPre106++) {
        /*[33, 34, 35, 36]*/
            /*[33, 34, 35, 36]*/
            /*[33, 34, 35, 36]*/
            /*[33, 34, 35, 36]*/
            /*[33, 34, 35, 36]*/
            for (j_imopVarPre107 = 1; j_imopVarPre107 < grid_points[1] - 1; j_imopVarPre107++) {
            /*[33, 34, 35, 36]*/
                /*[33, 34, 35, 36]*/
                /*[33, 34, 35, 36]*/
                /*[33, 34, 35, 36]*/
                /*[33, 34, 35, 36]*/
                for (k_imopVarPre108 = grid_points[2] - 2; k_imopVarPre108 >= 0; k_imopVarPre108--) {
                /*[33, 34, 35, 36]*/
                    /*[33, 34, 35, 36]*/
                    /*[33, 34, 35, 36]*/
                    /*[33, 34, 35, 36]*/
                    /*[33, 34, 35, 36]*/
                    for (m_imopVarPre109 = 0; m_imopVarPre109 < 5; m_imopVarPre109++) {
                    /*[33, 34, 35, 36]*/
                        /*[33, 34, 35, 36]*/
                        /*[33, 34, 35, 36]*/
                        /*[33, 34, 35, 36]*/
                        /*[33, 34, 35, 36]*/
                        for (n_imopVarPre110 = 0; n_imopVarPre110 < 5; n_imopVarPre110++) {
                        /*[33, 34, 35, 36]*/
                            /*[33, 34, 35, 36]*/
                            rhs[i_imopVarPre106][j_imopVarPre107][k_imopVarPre108][m_imopVarPre109] = rhs[i_imopVarPre106][j_imopVarPre107][k_imopVarPre108][m_imopVarPre109] - lhs[i_imopVarPre106][j_imopVarPre107][k_imopVarPre108][2][m_imopVarPre109][n_imopVarPre110] * rhs[i_imopVarPre106][j_imopVarPre107][k_imopVarPre108 + 1][n_imopVarPre110];
                        }
                    }
                }
            }
        }
        /*[33, 34, 35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[33, 34, 35, 36]*/
#pragma omp barrier
        /*[34, 35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[34, 35, 36]*/
#pragma omp barrier
        /*[35, 36]*/
        int i_imopVarPre87;
        /*[35, 36]*/
        int j_imopVarPre88;
        /*[35, 36]*/
        int k_imopVarPre89;
        /*[35, 36]*/
        int m_imopVarPre90;
        /*[35, 36]*/
#pragma omp for nowait
        /*[35, 36]*/
        /*[35, 36]*/
        /*[35, 36]*/
        for (i_imopVarPre87 = 1; i_imopVarPre87 < grid_points[0] - 1; i_imopVarPre87++) {
        /*[35, 36]*/
            /*[35, 36]*/
            /*[35, 36]*/
            /*[35, 36]*/
            /*[35, 36]*/
            for (j_imopVarPre88 = 1; j_imopVarPre88 < grid_points[1] - 1; j_imopVarPre88++) {
            /*[35, 36]*/
                /*[35, 36]*/
                /*[35, 36]*/
                /*[35, 36]*/
                /*[35, 36]*/
                for (k_imopVarPre89 = 1; k_imopVarPre89 < grid_points[2] - 1; k_imopVarPre89++) {
                /*[35, 36]*/
                    /*[35, 36]*/
                    /*[35, 36]*/
                    /*[35, 36]*/
                    /*[35, 36]*/
                    for (m_imopVarPre90 = 0; m_imopVarPre90 < 5; m_imopVarPre90++) {
                    /*[35, 36]*/
                        /*[35, 36]*/
                        u[i_imopVarPre87][j_imopVarPre88][k_imopVarPre89][m_imopVarPre90] = u[i_imopVarPre87][j_imopVarPre88][k_imopVarPre89][m_imopVarPre90] + rhs[i_imopVarPre87][j_imopVarPre88][k_imopVarPre89][m_imopVarPre90];
                    }
                }
            }
        }
        /*[35, 36]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[35, 36]*/
#pragma omp barrier
    }
    /*[37]*/
#pragma omp parallel
    {
    /*[37]*/
        /*[37]*/
        int i;
        /*[37]*/
        int j;
        /*[37]*/
        int k;
        /*[37]*/
        int m;
        /*[37]*/
        int ix;
        /*[37]*/
        int iy;
        /*[37]*/
        int iz;
        /*[37]*/
        double xi;
        /*[37]*/
        double eta;
        /*[37]*/
        double zeta;
        /*[37]*/
        double Pface[2][3][5];
        /*[37]*/
        double Pxi;
        /*[37]*/
        double Peta;
        /*[37]*/
        double Pzeta;
        /*[37]*/
        double temp[5];
        /*[37]*/
#pragma omp for nowait
        /*[37]*/
        /*[37]*/
        /*[37]*/
        for (i = 0; i < 12; i++) {
        /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            for (j = 0; j < 12; j++) {
            /*[37]*/
                /*[37]*/
                /*[37]*/
                /*[37]*/
                /*[37]*/
                for (k = 0; k < 12; k++) {
                /*[37]*/
                    /*[37]*/
                    /*[37]*/
                    /*[37]*/
                    /*[37]*/
                    for (m = 0; m < 5; m++) {
                    /*[37]*/
                        /*[37]*/
                        u[i][j][k][m] = 1.0;
                    }
                }
            }
        }
        /*[37]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[37]*/
#pragma omp barrier
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
            for (j = 0; j < grid_points[1]; j++) {
            /*[38]*/
                /*[38]*/
                eta = (double) j * dnym1;
                /*[38]*/
                /*[38]*/
                /*[38]*/
                /*[38]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*[38]*/
                    /*[38]*/
                    zeta = (double) k * dnzm1;
                    /*[38]*/
                    /*[38]*/
                    /*[38]*/
                    /*[38]*/
                    for (ix = 0; ix < 2; ix++) {
                    /*[38]*/
                        /*[38]*/
                        double *_imopVarPre187;
                        /*[38]*/
                        double _imopVarPre188;
                        /*[38]*/
                        _imopVarPre187 = &(Pface[ix][0][0]);
                        /*[38]*/
                        _imopVarPre188 = (double) ix;
                        /*[38]*/
                        exact_solution(_imopVarPre188, eta, zeta, _imopVarPre187);
                        /*[38]*/
                    }
                    /*[38]*/
                    /*[38]*/
                    /*[38]*/
                    /*[38]*/
                    for (iy = 0; iy < 2; iy++) {
                    /*[38]*/
                        /*[38]*/
                        double *_imopVarPre191;
                        /*[38]*/
                        double _imopVarPre192;
                        /*[38]*/
                        _imopVarPre191 = &Pface[iy][1][0];
                        /*[38]*/
                        _imopVarPre192 = (double) iy;
                        /*[38]*/
                        exact_solution(xi, _imopVarPre192, zeta, _imopVarPre191);
                        /*[38]*/
                    }
                    /*[38]*/
                    /*[38]*/
                    /*[38]*/
                    /*[38]*/
                    for (iz = 0; iz < 2; iz++) {
                    /*[38]*/
                        /*[38]*/
                        double *_imopVarPre195;
                        /*[38]*/
                        double _imopVarPre196;
                        /*[38]*/
                        _imopVarPre195 = &Pface[iz][2][0];
                        /*[38]*/
                        _imopVarPre196 = (double) iz;
                        /*[38]*/
                        exact_solution(xi, eta, _imopVarPre196, _imopVarPre195);
                        /*[38]*/
                    }
                    /*[38]*/
                    /*[38]*/
                    /*[38]*/
                    /*[38]*/
                    for (m = 0; m < 5; m++) {
                    /*[38]*/
                        /*[38]*/
                        Pxi = xi * Pface[1][0][m] + (1.0 - xi) * Pface[0][0][m];
                        /*[38]*/
                        Peta = eta * Pface[1][1][m] + (1.0 - eta) * Pface[0][1][m];
                        /*[38]*/
                        Pzeta = zeta * Pface[1][2][m] + (1.0 - zeta) * Pface[0][2][m];
                        /*[38]*/
                        u[i][j][k][m] = Pxi + Peta + Pzeta - Pxi * Peta - Pxi * Pzeta - Peta * Pzeta + Pxi * Peta * Pzeta;
                    }
                }
            }
        }
        /*[38]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[38]*/
#pragma omp barrier
        /*[39]*/
        i = 0;
        /*[39]*/
        xi = 0.0;
        /*[39]*/
#pragma omp for nowait
        /*[39]*/
        /*[39]*/
        /*[39]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[39]*/
            /*[39]*/
            eta = (double) j * dnym1;
            /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[39]*/
                /*[39]*/
                zeta = (double) k * dnzm1;
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
        i = grid_points[0] - 1;
        /*[39]*/
        xi = 1.0;
        /*[39]*/
#pragma omp for nowait
        /*[39]*/
        /*[39]*/
        /*[39]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[39]*/
            /*[39]*/
            eta = (double) j * dnym1;
            /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[39]*/
                /*[39]*/
                zeta = (double) k * dnzm1;
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
        // #pragma omp dummyFlush BARRIER_START
        /*[39]*/
#pragma omp barrier
        /*[40]*/
        j = 0;
        /*[40]*/
        eta = 0.0;
        /*[40]*/
#pragma omp for nowait
        /*[40]*/
        /*[40]*/
        /*[40]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[40]*/
            /*[40]*/
            xi = (double) i * dnxm1;
            /*[40]*/
            /*[40]*/
            /*[40]*/
            /*[40]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[40]*/
                /*[40]*/
                zeta = (double) k * dnzm1;
                /*[40]*/
                exact_solution(xi, eta, zeta, temp);
                /*[40]*/
                /*[40]*/
                /*[40]*/
                /*[40]*/
                /*[40]*/
                for (m = 0; m < 5; m++) {
                /*[40]*/
                    /*[40]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[40]*/
        j = grid_points[1] - 1;
        /*[40]*/
        eta = 1.0;
        /*[40]*/
#pragma omp for nowait
        /*[40]*/
        /*[40]*/
        /*[40]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[40]*/
            /*[40]*/
            xi = (double) i * dnxm1;
            /*[40]*/
            /*[40]*/
            /*[40]*/
            /*[40]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[40]*/
                /*[40]*/
                zeta = (double) k * dnzm1;
                /*[40]*/
                exact_solution(xi, eta, zeta, temp);
                /*[40]*/
                /*[40]*/
                /*[40]*/
                /*[40]*/
                /*[40]*/
                for (m = 0; m < 5; m++) {
                /*[40]*/
                    /*[40]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[40]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[40]*/
#pragma omp barrier
        /*[41]*/
        k = 0;
        /*[41]*/
        zeta = 0.0;
        /*[41]*/
#pragma omp for nowait
        /*[41]*/
        /*[41]*/
        /*[41]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[41]*/
            /*[41]*/
            xi = (double) i * dnxm1;
            /*[41]*/
            /*[41]*/
            /*[41]*/
            /*[41]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[41]*/
                /*[41]*/
                eta = (double) j * dnym1;
                /*[41]*/
                exact_solution(xi, eta, zeta, temp);
                /*[41]*/
                /*[41]*/
                /*[41]*/
                /*[41]*/
                /*[41]*/
                for (m = 0; m < 5; m++) {
                /*[41]*/
                    /*[41]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[41]*/
        k = grid_points[2] - 1;
        /*[41]*/
        zeta = 1.0;
        /*[41]*/
#pragma omp for nowait
        /*[41]*/
        /*[41]*/
        /*[41]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[41]*/
            /*[41]*/
            xi = (double) i * dnxm1;
            /*[41]*/
            /*[41]*/
            /*[41]*/
            /*[41]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[41]*/
                /*[41]*/
                eta = (double) j * dnym1;
                /*[41]*/
                exact_solution(xi, eta, zeta, temp);
                /*[41]*/
                /*[41]*/
                /*[41]*/
                /*[41]*/
                /*[41]*/
                for (m = 0; m < 5; m++) {
                /*[41]*/
                    /*[41]*/
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
        /*[42]*/
#pragma omp parallel
        {
        /*[42]*/
            /*[42]*/
            int _imopVarPre168;
            /*[42]*/
#pragma omp master
            {
            /*[42]*/
                /*[42]*/
                _imopVarPre168 = step % 20 == 0;
                /*[42]*/
                /*[42]*/
                if (!_imopVarPre168) {
                /*[42]*/
                    /*[42]*/
                    _imopVarPre168 = step == 1;
                }
                /*[42]*/
                /*[42]*/
                if (_imopVarPre168) {
                /*[42]*/
                    /*[42]*/
                    printf(" Time step %4d\n", step);
                    /*[42]*/
                }
            }
            /*[42]*/
            int i;
            /*[42]*/
            int j;
            /*[42]*/
            int k;
            /*[42]*/
            int m;
            /*[42]*/
            double rho_inv;
            /*[42]*/
            double uijk;
            /*[42]*/
            double up1;
            /*[42]*/
            double um1;
            /*[42]*/
            double vijk;
            /*[42]*/
            double vp1;
            /*[42]*/
            double vm1;
            /*[42]*/
            double wijk;
            /*[42]*/
            double wp1;
            /*[42]*/
            double wm1;
            /*[42]*/
#pragma omp for nowait
            /*[42]*/
            /*[42]*/
            /*[42]*/
            for (i = 0; i < grid_points[0]; i++) {
            /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                for (j = 0; j < grid_points[1]; j++) {
                /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    for (k = 0; k < grid_points[2]; k++) {
                    /*[42]*/
                        /*[42]*/
                        rho_inv = 1.0 / u[i][j][k][0];
                        /*[42]*/
                        rho_i[i][j][k] = rho_inv;
                        /*[42]*/
                        us[i][j][k] = u[i][j][k][1] * rho_inv;
                        /*[42]*/
                        vs[i][j][k] = u[i][j][k][2] * rho_inv;
                        /*[42]*/
                        ws[i][j][k] = u[i][j][k][3] * rho_inv;
                        /*[42]*/
                        square[i][j][k] = 0.5 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * rho_inv;
                        /*[42]*/
                        qs[i][j][k] = square[i][j][k] * rho_inv;
                    }
                }
            }
            /*[42]*/
#pragma omp for nowait
            /*[42]*/
            /*[42]*/
            /*[42]*/
            for (i = 0; i < grid_points[0]; i++) {
            /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                for (j = 0; j < grid_points[1]; j++) {
                /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    for (k = 0; k < grid_points[2]; k++) {
                    /*[42]*/
                        /*[42]*/
                        /*[42]*/
                        /*[42]*/
                        /*[42]*/
                        for (m = 0; m < 5; m++) {
                        /*[42]*/
                            /*[42]*/
                            rhs[i][j][k][m] = forcing[i][j][k][m];
                        }
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
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[43]*/
                /*[43]*/
                /*[43]*/
                /*[43]*/
                /*[43]*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                /*[43]*/
                    /*[43]*/
                    /*[43]*/
                    /*[43]*/
                    /*[43]*/
                    for (k = 1; k < grid_points[2] - 1; k++) {
                    /*[43]*/
                        /*[43]*/
                        uijk = us[i][j][k];
                        /*[43]*/
                        up1 = us[i + 1][j][k];
                        /*[43]*/
                        um1 = us[i - 1][j][k];
                        /*[43]*/
                        rhs[i][j][k][0] = rhs[i][j][k][0] + dx1tx1 * (u[i + 1][j][k][0] - 2.0 * u[i][j][k][0] + u[i - 1][j][k][0]) - tx2 * (u[i + 1][j][k][1] - u[i - 1][j][k][1]);
                        /*[43]*/
                        rhs[i][j][k][1] = rhs[i][j][k][1] + dx2tx1 * (u[i + 1][j][k][1] - 2.0 * u[i][j][k][1] + u[i - 1][j][k][1]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[i + 1][j][k][1] * up1 - u[i - 1][j][k][1] * um1 + (u[i + 1][j][k][4] - square[i + 1][j][k] - u[i - 1][j][k][4] + square[i - 1][j][k]) * c2);
                        /*[43]*/
                        rhs[i][j][k][2] = rhs[i][j][k][2] + dx3tx1 * (u[i + 1][j][k][2] - 2.0 * u[i][j][k][2] + u[i - 1][j][k][2]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[i + 1][j][k][2] * up1 - u[i - 1][j][k][2] * um1);
                        /*[43]*/
                        rhs[i][j][k][3] = rhs[i][j][k][3] + dx4tx1 * (u[i + 1][j][k][3] - 2.0 * u[i][j][k][3] + u[i - 1][j][k][3]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[i + 1][j][k][3] * up1 - u[i - 1][j][k][3] * um1);
                        /*[43]*/
                        rhs[i][j][k][4] = rhs[i][j][k][4] + dx5tx1 * (u[i + 1][j][k][4] - 2.0 * u[i][j][k][4] + u[i - 1][j][k][4]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[i + 1][j][k][4] * rho_i[i + 1][j][k] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i - 1][j][k][4] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[i + 1][j][k][4] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[i - 1][j][k][4] - c2 * square[i - 1][j][k]) * um1);
                    }
                }
            }
            /*[43]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[43]*/
#pragma omp barrier
            /*[44]*/
            i = 1;
            /*[44]*/
#pragma omp for nowait
            /*[44]*/
            /*[44]*/
            /*[44]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
            /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    for (m = 0; m < 5; m++) {
                    /*[44]*/
                        /*[44]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
                    }
                }
            }
            /*[44]*/
            i = 2;
            /*[44]*/
#pragma omp for nowait
            /*[44]*/
            /*[44]*/
            /*[44]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
            /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    for (m = 0; m < 5; m++) {
                    /*[44]*/
                        /*[44]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
                    }
                }
            }
            /*[44]*/
#pragma omp for nowait
            /*[44]*/
            /*[44]*/
            /*[44]*/
            for (i = 3; i < grid_points[0] - 3; i++) {
            /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    for (k = 1; k < grid_points[2] - 1; k++) {
                    /*[44]*/
                        /*[44]*/
                        /*[44]*/
                        /*[44]*/
                        /*[44]*/
                        for (m = 0; m < 5; m++) {
                        /*[44]*/
                            /*[44]*/
                            rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
                        }
                    }
                }
            }
            /*[44]*/
            i = grid_points[0] - 3;
            /*[44]*/
#pragma omp for nowait
            /*[44]*/
            /*[44]*/
            /*[44]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
            /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    for (m = 0; m < 5; m++) {
                    /*[44]*/
                        /*[44]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m]);
                    }
                }
            }
            /*[44]*/
            i = grid_points[0] - 2;
            /*[44]*/
#pragma omp for nowait
            /*[44]*/
            /*[44]*/
            /*[44]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
            /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    for (m = 0; m < 5; m++) {
                    /*[44]*/
                        /*[44]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4. * u[i - 1][j][k][m] + 5.0 * u[i][j][k][m]);
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
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[45]*/
                /*[45]*/
                /*[45]*/
                /*[45]*/
                /*[45]*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                /*[45]*/
                    /*[45]*/
                    /*[45]*/
                    /*[45]*/
                    /*[45]*/
                    for (k = 1; k < grid_points[2] - 1; k++) {
                    /*[45]*/
                        /*[45]*/
                        vijk = vs[i][j][k];
                        /*[45]*/
                        vp1 = vs[i][j + 1][k];
                        /*[45]*/
                        vm1 = vs[i][j - 1][k];
                        /*[45]*/
                        rhs[i][j][k][0] = rhs[i][j][k][0] + dy1ty1 * (u[i][j + 1][k][0] - 2.0 * u[i][j][k][0] + u[i][j - 1][k][0]) - ty2 * (u[i][j + 1][k][2] - u[i][j - 1][k][2]);
                        /*[45]*/
                        rhs[i][j][k][1] = rhs[i][j][k][1] + dy2ty1 * (u[i][j + 1][k][1] - 2.0 * u[i][j][k][1] + u[i][j - 1][k][1]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[i][j + 1][k][1] * vp1 - u[i][j - 1][k][1] * vm1);
                        /*[45]*/
                        rhs[i][j][k][2] = rhs[i][j][k][2] + dy3ty1 * (u[i][j + 1][k][2] - 2.0 * u[i][j][k][2] + u[i][j - 1][k][2]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[i][j + 1][k][2] * vp1 - u[i][j - 1][k][2] * vm1 + (u[i][j + 1][k][4] - square[i][j + 1][k] - u[i][j - 1][k][4] + square[i][j - 1][k]) * c2);
                        /*[45]*/
                        rhs[i][j][k][3] = rhs[i][j][k][3] + dy4ty1 * (u[i][j + 1][k][3] - 2.0 * u[i][j][k][3] + u[i][j - 1][k][3]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[i][j + 1][k][3] * vp1 - u[i][j - 1][k][3] * vm1);
                        /*[45]*/
                        rhs[i][j][k][4] = rhs[i][j][k][4] + dy5ty1 * (u[i][j + 1][k][4] - 2.0 * u[i][j][k][4] + u[i][j - 1][k][4]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[i][j + 1][k][4] * rho_i[i][j + 1][k] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i][j - 1][k][4] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[i][j + 1][k][4] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[i][j - 1][k][4] - c2 * square[i][j - 1][k]) * vm1);
                    }
                }
            }
            /*[45]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[45]*/
#pragma omp barrier
            /*[46]*/
            j = 1;
            /*[46]*/
#pragma omp for nowait
            /*[46]*/
            /*[46]*/
            /*[46]*/
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    for (m = 0; m < 5; m++) {
                    /*[46]*/
                        /*[46]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
                    }
                }
            }
            /*[46]*/
            j = 2;
            /*[46]*/
#pragma omp for nowait
            /*[46]*/
            /*[46]*/
            /*[46]*/
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    for (m = 0; m < 5; m++) {
                    /*[46]*/
                        /*[46]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
                    }
                }
            }
            /*[46]*/
#pragma omp for nowait
            /*[46]*/
            /*[46]*/
            /*[46]*/
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                for (j = 3; j < grid_points[1] - 3; j++) {
                /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    for (k = 1; k < grid_points[2] - 1; k++) {
                    /*[46]*/
                        /*[46]*/
                        /*[46]*/
                        /*[46]*/
                        /*[46]*/
                        for (m = 0; m < 5; m++) {
                        /*[46]*/
                            /*[46]*/
                            rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
                        }
                    }
                }
            }
            /*[46]*/
            j = grid_points[1] - 3;
            /*[46]*/
#pragma omp for nowait
            /*[46]*/
            /*[46]*/
            /*[46]*/
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    for (m = 0; m < 5; m++) {
                    /*[46]*/
                        /*[46]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m]);
                    }
                }
            }
            /*[46]*/
            j = grid_points[1] - 2;
            /*[46]*/
#pragma omp for nowait
            /*[46]*/
            /*[46]*/
            /*[46]*/
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    for (m = 0; m < 5; m++) {
                    /*[46]*/
                        /*[46]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4. * u[i][j - 1][k][m] + 5. * u[i][j][k][m]);
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
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[47]*/
                /*[47]*/
                /*[47]*/
                /*[47]*/
                /*[47]*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                /*[47]*/
                    /*[47]*/
                    /*[47]*/
                    /*[47]*/
                    /*[47]*/
                    for (k = 1; k < grid_points[2] - 1; k++) {
                    /*[47]*/
                        /*[47]*/
                        wijk = ws[i][j][k];
                        /*[47]*/
                        wp1 = ws[i][j][k + 1];
                        /*[47]*/
                        wm1 = ws[i][j][k - 1];
                        /*[47]*/
                        rhs[i][j][k][0] = rhs[i][j][k][0] + dz1tz1 * (u[i][j][k + 1][0] - 2.0 * u[i][j][k][0] + u[i][j][k - 1][0]) - tz2 * (u[i][j][k + 1][3] - u[i][j][k - 1][3]);
                        /*[47]*/
                        rhs[i][j][k][1] = rhs[i][j][k][1] + dz2tz1 * (u[i][j][k + 1][1] - 2.0 * u[i][j][k][1] + u[i][j][k - 1][1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[i][j][k + 1][1] * wp1 - u[i][j][k - 1][1] * wm1);
                        /*[47]*/
                        rhs[i][j][k][2] = rhs[i][j][k][2] + dz3tz1 * (u[i][j][k + 1][2] - 2.0 * u[i][j][k][2] + u[i][j][k - 1][2]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[i][j][k + 1][2] * wp1 - u[i][j][k - 1][2] * wm1);
                        /*[47]*/
                        rhs[i][j][k][3] = rhs[i][j][k][3] + dz4tz1 * (u[i][j][k + 1][3] - 2.0 * u[i][j][k][3] + u[i][j][k - 1][3]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[i][j][k + 1][3] * wp1 - u[i][j][k - 1][3] * wm1 + (u[i][j][k + 1][4] - square[i][j][k + 1] - u[i][j][k - 1][4] + square[i][j][k - 1]) * c2);
                        /*[47]*/
                        rhs[i][j][k][4] = rhs[i][j][k][4] + dz5tz1 * (u[i][j][k + 1][4] - 2.0 * u[i][j][k][4] + u[i][j][k - 1][4]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[i][j][k + 1][4] * rho_i[i][j][k + 1] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i][j][k - 1][4] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[i][j][k + 1][4] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[i][j][k - 1][4] - c2 * square[i][j][k - 1]) * wm1);
                    }
                }
            }
            /*[47]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[47]*/
#pragma omp barrier
            /*[48]*/
            k = 1;
            /*[48]*/
#pragma omp for nowait
            /*[48]*/
            /*[48]*/
            /*[48]*/
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    for (m = 0; m < 5; m++) {
                    /*[48]*/
                        /*[48]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
                    }
                }
            }
            /*[48]*/
            k = 2;
            /*[48]*/
#pragma omp for nowait
            /*[48]*/
            /*[48]*/
            /*[48]*/
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    for (m = 0; m < 5; m++) {
                    /*[48]*/
                        /*[48]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
                    }
                }
            }
            /*[48]*/
#pragma omp for nowait
            /*[48]*/
            /*[48]*/
            /*[48]*/
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    for (k = 3; k < grid_points[2] - 3; k++) {
                    /*[48]*/
                        /*[48]*/
                        /*[48]*/
                        /*[48]*/
                        /*[48]*/
                        for (m = 0; m < 5; m++) {
                        /*[48]*/
                            /*[48]*/
                            rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
                        }
                    }
                }
            }
            /*[48]*/
            k = grid_points[2] - 3;
            /*[48]*/
#pragma omp for nowait
            /*[48]*/
            /*[48]*/
            /*[48]*/
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    for (m = 0; m < 5; m++) {
                    /*[48]*/
                        /*[48]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m]);
                    }
                }
            }
            /*[48]*/
            k = grid_points[2] - 2;
            /*[48]*/
#pragma omp for nowait
            /*[48]*/
            /*[48]*/
            /*[48]*/
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    for (m = 0; m < 5; m++) {
                    /*[48]*/
                        /*[48]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 5.0 * u[i][j][k][m]);
                    }
                }
            }
            /*[48]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[48]*/
#pragma omp barrier
            /*[49]*/
#pragma omp for nowait
            /*[49]*/
            /*[49]*/
            /*[49]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
            /*[49]*/
                /*[49]*/
                /*[49]*/
                /*[49]*/
                /*[49]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*[49]*/
                    /*[49]*/
                    /*[49]*/
                    /*[49]*/
                    /*[49]*/
                    for (m = 0; m < 5; m++) {
                    /*[49]*/
                        /*[49]*/
                        /*[49]*/
                        /*[49]*/
                        /*[49]*/
                        for (i = 1; i < grid_points[0] - 1; i++) {
                        /*[49]*/
                            /*[49]*/
                            rhs[i][j][k][m] = rhs[i][j][k][m] * dt;
                        }
                    }
                }
            }
            /*[49]*/
            int i_imopVarPre84;
            /*[49]*/
            int j_imopVarPre85;
            /*[49]*/
            int k_imopVarPre86;
            /*[49]*/
#pragma omp for nowait
            /*[49]*/
            /*[49]*/
            /*[49]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 < grid_points[1] - 1; j_imopVarPre85++) {
            /*[49]*/
                /*[49]*/
                /*[49]*/
                /*[49]*/
                /*[49]*/
                for (k_imopVarPre86 = 1; k_imopVarPre86 < grid_points[2] - 1; k_imopVarPre86++) {
                /*[49]*/
                    /*[49]*/
                    /*[49]*/
                    /*[49]*/
                    /*[49]*/
                    for (i_imopVarPre84 = 0; i_imopVarPre84 < grid_points[0]; i_imopVarPre84++) {
                    /*[49]*/
                        /*[49]*/
                        tmp1 = 1.0 / u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0];
                        /*[49]*/
                        tmp2 = tmp1 * tmp1;
                        /*[49]*/
                        tmp3 = tmp1 * tmp2;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0] = 0.0;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1] = 1.0;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2] = 0.0;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3] = 0.0;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4] = 0.0;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0] = -(u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1]) + c2 * 0.50 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] + u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] + u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3]) * tmp2;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1] = (2.0 - c2) * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] / u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0]);
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2] = -c2 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] * tmp1);
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3] = -c2 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3] * tmp1);
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4] = c2;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0] = -(u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2]) * tmp2;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1] = u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] * tmp1;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2] = u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * tmp1;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3] = 0.0;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4] = 0.0;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][0] = -(u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3]) * tmp2;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][1] = u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3] * tmp1;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][2] = 0.0;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][3] = u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * tmp1;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][4] = 0.0;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][0] = (c2 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] + u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] + u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3]) * tmp2 - c1 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4] * tmp1)) * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * tmp1);
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][1] = c1 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4] * tmp1 - 0.50 * c2 * (3.0 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] + u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] + u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3]) * tmp2;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][2] = -c2 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1]) * tmp2;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][3] = -c2 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3] * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1]) * tmp2;
                        /*[49]*/
                        fjac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][4] = c1 * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1] * tmp1);
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0] = -con43 * c3c4 * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1];
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1] = con43 * c3c4 * tmp1;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0] = -c3c4 * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2];
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2] = c3c4 * tmp1;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][0] = -c3c4 * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3];
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][1] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][2] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][3] = c3c4 * tmp1;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][4] = 0.0;
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][0] = -(con43 * c3c4 - c1345) * tmp3 * (((u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1]) * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2]) * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3]) * (u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3]))) - c1345 * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4];
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][1] = (con43 * c3c4 - c1345) * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1];
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][2] = (c3c4 - c1345) * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2];
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][3] = (c3c4 - c1345) * tmp2 * u[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3];
                        /*[49]*/
                        njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][4] = c1345 * tmp1;
                    }
                    /*[49]*/
                    /*[49]*/
                    /*[49]*/
                    /*[49]*/
                    for (i_imopVarPre84 = 1; i_imopVarPre84 < grid_points[0] - 1; i_imopVarPre84++) {
                    /*[49]*/
                        /*[49]*/
                        tmp1 = dt * tx1;
                        /*[49]*/
                        tmp2 = dt * tx2;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0][0] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][0] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][0] - tmp1 * dx1;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0][1] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][1] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][1];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0][2] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][2] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][2];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0][3] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][3] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][3];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0][4] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][4] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][0][4];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1][0] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][0] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][0];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1][1] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][1] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][1] - tmp1 * dx2;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1][2] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][2] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][2];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1][3] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][3] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][3];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1][4] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][4] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][1][4];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2][0] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][0] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][0];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2][1] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][1] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][1];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2][2] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][2] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][2] - tmp1 * dx3;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2][3] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][3] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][3];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2][4] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][4] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][2][4];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3][0] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][0] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][0];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3][1] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][1] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][1];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3][2] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][2] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][2];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3][3] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][3] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][3] - tmp1 * dx4;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3][4] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][4] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][3][4];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4][0] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][0] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][0];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4][1] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][1] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][1];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4][2] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][2] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][2];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4][3] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][3] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][3];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4][4] = -tmp2 * fjac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][4] - tmp1 * njac[i_imopVarPre84 - 1][j_imopVarPre85][k_imopVarPre86][4][4] - tmp1 * dx5;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][0] + tmp1 * 2.0 * dx1;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0][1] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][1];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0][2] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][2];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0][3] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][3];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0][4] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][0][4];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1][0] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][0];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1] + tmp1 * 2.0 * dx2;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1][2] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1][3] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][1][4] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2][0] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2][1] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2] + tmp1 * 2.0 * dx3;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2][3] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][2][4] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3][0] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][0];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3][1] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][1];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3][2] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][2];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][3] + tmp1 * 2.0 * dx4;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][3][4] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][3][4];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4][0] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][0];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4][1] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][1];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4][2] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][2];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4][3] = tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][3];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][4][4] + tmp1 * 2.0 * dx5;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0][0] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][0] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][0] - tmp1 * dx1;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0][1] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][1] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][1];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0][2] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][2] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][2];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0][3] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][3] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][3];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][0][4] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][4] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][0][4];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1][0] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][0] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][0];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1][1] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][1] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][1] - tmp1 * dx2;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1][2] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][2] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][2];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1][3] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][3] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][3];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][1][4] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][4] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][1][4];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2][0] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][0] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][0];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2][1] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][1] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][1];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2][2] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][2] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][2] - tmp1 * dx3;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2][3] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][3] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][3];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][2][4] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][4] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][2][4];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3][0] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][0] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][0];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3][1] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][1] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][1];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3][2] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][2] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][2];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3][3] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][3] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][3] - tmp1 * dx4;
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][3][4] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][4] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][3][4];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4][0] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][0] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][0];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4][1] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][1] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][1];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4][2] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][2] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][2];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4][3] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][3] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][3];
                        /*[49]*/
                        lhs[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86][2][4][4] = tmp2 * fjac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][4] - tmp1 * njac[i_imopVarPre84 + 1][j_imopVarPre85][k_imopVarPre86][4][4] - tmp1 * dx5;
                    }
                }
            }
            /*[49]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[49]*/
#pragma omp barrier
            /*[50]*/
            int i_imopVarPre101;
            /*[50]*/
            int j_imopVarPre102;
            /*[50]*/
            int k_imopVarPre103;
            /*[50]*/
            int isize;
            /*[50]*/
            isize = grid_points[0] - 1;
            /*[50]*/
#pragma omp for nowait
            /*[50]*/
            /*[50]*/
            /*[50]*/
            for (j_imopVarPre102 = 1; j_imopVarPre102 < grid_points[1] - 1; j_imopVarPre102++) {
            /*[50]*/
                /*[50]*/
                /*[50]*/
                /*[50]*/
                /*[50]*/
                for (k_imopVarPre103 = 1; k_imopVarPre103 < grid_points[2] - 1; k_imopVarPre103++) {
                /*[50]*/
                    /*[50]*/
                    double *_imopVarPre334;
                    /*[50]*/
                    double ( *_imopVarPre335 )[5];
                    /*[50]*/
                    double ( *_imopVarPre336 )[5];
                    /*[50]*/
                    _imopVarPre334 = rhs[0][j_imopVarPre102][k_imopVarPre103];
                    /*[50]*/
                    _imopVarPre335 = lhs[0][j_imopVarPre102][k_imopVarPre103][2];
                    /*[50]*/
                    _imopVarPre336 = lhs[0][j_imopVarPre102][k_imopVarPre103][1];
                    /*[50]*/
                    binvcrhs(_imopVarPre336, _imopVarPre335, _imopVarPre334);
                    /*[50]*/
                }
            }
            /*[50]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[50]*/
#pragma omp barrier
            /*[51]*/
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[51]*/
            for (i_imopVarPre101 = 1; i_imopVarPre101 < isize; i_imopVarPre101++) {
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp for nowait
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                for (j_imopVarPre102 = 1; j_imopVarPre102 < grid_points[1] - 1; j_imopVarPre102++) {
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    for (k_imopVarPre103 = 1; k_imopVarPre103 < grid_points[2] - 1; k_imopVarPre103++) {
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double *_imopVarPre340;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double *_imopVarPre341;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre342 )[5];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre340 = rhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre341 = rhs[i_imopVarPre101 - 1][j_imopVarPre102][k_imopVarPre103];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre342 = lhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103][0];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        matvec_sub(_imopVarPre342, _imopVarPre341, _imopVarPre340);
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre346 )[5];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre347 )[5];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre348 )[5];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre346 = lhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103][1];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre347 = lhs[i_imopVarPre101 - 1][j_imopVarPre102][k_imopVarPre103][2];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre348 = lhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103][0];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        matmul_sub(_imopVarPre348, _imopVarPre347, _imopVarPre346);
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double *_imopVarPre352;
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre353 )[5];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre354 )[5];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre352 = rhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre353 = lhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103][2];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre354 = lhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103][1];
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        binvcrhs(_imopVarPre354, _imopVarPre353, _imopVarPre352);
                        /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    }
                }
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            }
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp for nowait
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            for (j_imopVarPre102 = 1; j_imopVarPre102 < grid_points[1] - 1; j_imopVarPre102++) {
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                for (k_imopVarPre103 = 1; k_imopVarPre103 < grid_points[2] - 1; k_imopVarPre103++) {
                /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double *_imopVarPre358;
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double *_imopVarPre359;
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre360 )[5];
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre358 = rhs[isize][j_imopVarPre102][k_imopVarPre103];
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre359 = rhs[isize - 1][j_imopVarPre102][k_imopVarPre103];
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre360 = lhs[isize][j_imopVarPre102][k_imopVarPre103][0];
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    matvec_sub(_imopVarPre360, _imopVarPre359, _imopVarPre358);
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre364 )[5];
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre365 )[5];
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre366 )[5];
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre364 = lhs[isize][j_imopVarPre102][k_imopVarPre103][1];
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre365 = lhs[isize - 1][j_imopVarPre102][k_imopVarPre103][2];
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre366 = lhs[isize][j_imopVarPre102][k_imopVarPre103][0];
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    matmul_sub(_imopVarPre366, _imopVarPre365, _imopVarPre364);
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double *_imopVarPre369;
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre370 )[5];
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre369 = rhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103];
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre370 = lhs[i_imopVarPre101][j_imopVarPre102][k_imopVarPre103][1];
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    binvrhs(_imopVarPre370, _imopVarPre369);
                    /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                }
            }
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int i_imopVarPre98;
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int j_imopVarPre99;
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int k_imopVarPre100;
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int m_imopVarPre104;
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int n_imopVarPre105;
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            for (i_imopVarPre98 = grid_points[0] - 2; i_imopVarPre98 >= 0; i_imopVarPre98--) {
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp for nowait
                /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                for (j_imopVarPre99 = 1; j_imopVarPre99 < grid_points[1] - 1; j_imopVarPre99++) {
                /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    for (k_imopVarPre100 = 1; k_imopVarPre100 < grid_points[2] - 1; k_imopVarPre100++) {
                    /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        for (m_imopVarPre104 = 0; m_imopVarPre104 < 5; m_imopVarPre104++) {
                        /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                            for (n_imopVarPre105 = 0; n_imopVarPre105 < 5; n_imopVarPre105++) {
                            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                                /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                                rhs[i_imopVarPre98][j_imopVarPre99][k_imopVarPre100][m_imopVarPre104] = rhs[i_imopVarPre98][j_imopVarPre99][k_imopVarPre100][m_imopVarPre104] - lhs[i_imopVarPre98][j_imopVarPre99][k_imopVarPre100][2][m_imopVarPre104][n_imopVarPre105] * rhs[i_imopVarPre98 + 1][j_imopVarPre99][k_imopVarPre100][n_imopVarPre105];
                            }
                        }
                    }
                }
                /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            }
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int i_imopVarPre81;
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int j_imopVarPre82;
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int k_imopVarPre83;
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp for nowait
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            for (i_imopVarPre81 = 1; i_imopVarPre81 < grid_points[0] - 1; i_imopVarPre81++) {
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                for (j_imopVarPre82 = 0; j_imopVarPre82 < grid_points[1]; j_imopVarPre82++) {
                /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    for (k_imopVarPre83 = 1; k_imopVarPre83 < grid_points[2] - 1; k_imopVarPre83++) {
                    /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        tmp1 = 1.0 / u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0];
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        tmp2 = tmp1 * tmp1;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        tmp3 = tmp1 * tmp2;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2] = 1.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0] = -(u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2]) * tmp2;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1] = u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp1;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2] = u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * tmp1;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0] = -(u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp2) + 0.50 * c2 * ((u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] + u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] + u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]) * tmp2);
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1] = -c2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * tmp1;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2] = (2.0 - c2) * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp1;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3] = -c2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3] * tmp1;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4] = c2;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][0] = -(u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]) * tmp2;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][1] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][2] = u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3] * tmp1;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][3] = u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp1;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][4] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][0] = (c2 * (u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] + u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] + u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]) * tmp2 - c1 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4] * tmp1) * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp1;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][1] = -c2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp2;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][2] = c1 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4] * tmp1 - 0.50 * c2 * ((u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1] + 3.0 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] + u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]) * tmp2);
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][3] = -c2 * (u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]) * tmp2;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][4] = c1 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2] * tmp1;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0] = -c3c4 * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1];
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1] = c3c4 * tmp1;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0] = -con43 * c3c4 * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2];
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2] = con43 * c3c4 * tmp1;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][0] = -c3c4 * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3];
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][1] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][2] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][3] = c3c4 * tmp1;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][4] = 0.0;
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1]) * (u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2]) * (u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]) * (u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3]))) - c1345 * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4];
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][1] = (c3c4 - c1345) * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1];
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][2] = (con43 * c3c4 - c1345) * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2];
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][3] = (c3c4 - c1345) * tmp2 * u[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3];
                        /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][4] = c1345 * tmp1;
                    }
                }
            }
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp for nowait
            /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            for (i_imopVarPre81 = 1; i_imopVarPre81 < grid_points[0] - 1; i_imopVarPre81++) {
            /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                for (j_imopVarPre82 = 1; j_imopVarPre82 < grid_points[1] - 1; j_imopVarPre82++) {
                /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    for (k_imopVarPre83 = 1; k_imopVarPre83 < grid_points[2] - 1; k_imopVarPre83++) {
                    /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        tmp1 = dt * ty1;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        tmp2 = dt * ty2;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0][0] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][0] - tmp1 * dy1;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0][1] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0][2] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0][3] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][3];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0][4] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][0][4];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1][0] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1][1] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][1] - tmp1 * dy2;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1][2] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1][3] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][3];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1][4] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][1][4];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2][0] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2][1] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2][2] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][2] - tmp1 * dy3;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2][3] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][3];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2][4] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][2][4];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3][0] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3][1] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3][2] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3][3] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][3] - tmp1 * dy4;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3][4] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][3][4];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4][0] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4][1] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4][2] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4][3] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][3];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4][4] = -tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83][4][4] - tmp1 * dy5;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][0] + tmp1 * 2.0 * dy1;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0][1] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0][2] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0][3] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][3];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0][4] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][0][4];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1][0] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1] + tmp1 * 2.0 * dy2;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1][2] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1][3] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][1][4] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2][0] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2][1] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2] + tmp1 * 2.0 * dy3;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2][3] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][2][4] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3][0] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3][1] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3][2] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][3] + tmp1 * 2.0 * dy4;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][3][4] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][3][4];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4][0] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4][1] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4][2] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4][3] = tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][3];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][4][4] + tmp1 * 2.0 * dy5;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0][0] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][0] - tmp1 * dy1;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0][1] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0][2] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0][3] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][3];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][0][4] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][0][4];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1][0] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1][1] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][1] - tmp1 * dy2;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1][2] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1][3] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][3];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][1][4] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][1][4];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2][0] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2][1] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2][2] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][2] - tmp1 * dy3;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2][3] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][3];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][2][4] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][2][4];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3][0] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3][1] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3][2] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3][3] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][3] - tmp1 * dy4;
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][3][4] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][3][4];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4][0] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][0] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][0];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4][1] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][1] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][1];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4][2] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][2] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][2];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4][3] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][3] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][3];
                        /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83][2][4][4] = tmp2 * fjac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][4] - tmp1 * njac[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83][4][4] - tmp1 * dy5;
                    }
                }
            }
            /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int i_imopVarPre94;
            /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int j_imopVarPre95;
            /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int k_imopVarPre96;
            /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int jsize;
            /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            jsize = grid_points[1] - 1;
            /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp for nowait
            /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            for (i_imopVarPre94 = 1; i_imopVarPre94 < grid_points[0] - 1; i_imopVarPre94++) {
            /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                for (k_imopVarPre96 = 1; k_imopVarPre96 < grid_points[2] - 1; k_imopVarPre96++) {
                /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double *_imopVarPre374;
                    /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre375 )[5];
                    /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre376 )[5];
                    /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre374 = rhs[i_imopVarPre94][0][k_imopVarPre96];
                    /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre375 = lhs[i_imopVarPre94][0][k_imopVarPre96][2];
                    /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre376 = lhs[i_imopVarPre94][0][k_imopVarPre96][1];
                    /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    binvcrhs(_imopVarPre376, _imopVarPre375, _imopVarPre374);
                    /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                }
            }
            /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            for (j_imopVarPre95 = 1; j_imopVarPre95 < jsize; j_imopVarPre95++) {
            /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp for nowait
                /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                for (i_imopVarPre94 = 1; i_imopVarPre94 < grid_points[0] - 1; i_imopVarPre94++) {
                /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    for (k_imopVarPre96 = 1; k_imopVarPre96 < grid_points[2] - 1; k_imopVarPre96++) {
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double *_imopVarPre380;
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double *_imopVarPre381;
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre382 )[5];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre380 = rhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre381 = rhs[i_imopVarPre94][j_imopVarPre95 - 1][k_imopVarPre96];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre382 = lhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96][0];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        matvec_sub(_imopVarPre382, _imopVarPre381, _imopVarPre380);
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre386 )[5];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre387 )[5];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre388 )[5];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre386 = lhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96][1];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre387 = lhs[i_imopVarPre94][j_imopVarPre95 - 1][k_imopVarPre96][2];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre388 = lhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96][0];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        matmul_sub(_imopVarPre388, _imopVarPre387, _imopVarPre386);
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double *_imopVarPre392;
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre393 )[5];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre394 )[5];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre392 = rhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre393 = lhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96][2];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        _imopVarPre394 = lhs[i_imopVarPre94][j_imopVarPre95][k_imopVarPre96][1];
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        binvcrhs(_imopVarPre394, _imopVarPre393, _imopVarPre392);
                        /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    }
                }
                /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            }
            /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp for nowait
            /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            for (i_imopVarPre94 = 1; i_imopVarPre94 < grid_points[0] - 1; i_imopVarPre94++) {
            /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                for (k_imopVarPre96 = 1; k_imopVarPre96 < grid_points[2] - 1; k_imopVarPre96++) {
                /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double *_imopVarPre398;
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double *_imopVarPre399;
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre400 )[5];
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre398 = rhs[i_imopVarPre94][jsize][k_imopVarPre96];
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre399 = rhs[i_imopVarPre94][jsize - 1][k_imopVarPre96];
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre400 = lhs[i_imopVarPre94][jsize][k_imopVarPre96][0];
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    matvec_sub(_imopVarPre400, _imopVarPre399, _imopVarPre398);
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre404 )[5];
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre405 )[5];
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre406 )[5];
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre404 = lhs[i_imopVarPre94][jsize][k_imopVarPre96][1];
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre405 = lhs[i_imopVarPre94][jsize - 1][k_imopVarPre96][2];
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre406 = lhs[i_imopVarPre94][jsize][k_imopVarPre96][0];
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    matmul_sub(_imopVarPre406, _imopVarPre405, _imopVarPre404);
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double *_imopVarPre409;
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre410 )[5];
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre409 = rhs[i_imopVarPre94][jsize][k_imopVarPre96];
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    _imopVarPre410 = lhs[i_imopVarPre94][jsize][k_imopVarPre96][1];
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    binvrhs(_imopVarPre410, _imopVarPre409);
                    /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                }
            }
            /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int i_imopVarPre75;
            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int j_imopVarPre76;
            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int k_imopVarPre77;
            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int m_imopVarPre97;
            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            int n;
            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            for (j_imopVarPre76 = grid_points[1] - 2; j_imopVarPre76 >= 0; j_imopVarPre76--) {
            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp for nowait
                /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                for (i_imopVarPre75 = 1; i_imopVarPre75 < grid_points[0] - 1; i_imopVarPre75++) {
                /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                    for (k_imopVarPre77 = 1; k_imopVarPre77 < grid_points[2] - 1; k_imopVarPre77++) {
                    /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                        for (m_imopVarPre97 = 0; m_imopVarPre97 < 5; m_imopVarPre97++) {
                        /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                            for (n = 0; n < 5; n++) {
                            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                                /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                                rhs[i_imopVarPre75][j_imopVarPre76][k_imopVarPre77][m_imopVarPre97] = rhs[i_imopVarPre75][j_imopVarPre76][k_imopVarPre77][m_imopVarPre97] - lhs[i_imopVarPre75][j_imopVarPre76][k_imopVarPre77][2][m_imopVarPre97][n] * rhs[i_imopVarPre75][j_imopVarPre76 + 1][k_imopVarPre77][n];
                            }
                        }
                    }
                }
                /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            }
            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[57, 58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            /*[58, 59, 60, 61, 62, 63, 64, 65]*/
            int i_imopVarPre91;
            /*[58, 59, 60, 61, 62, 63, 64, 65]*/
            int j_imopVarPre92;
            /*[58, 59, 60, 61, 62, 63, 64, 65]*/
            int k_imopVarPre93;
            /*[58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp for nowait
            /*[58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[58, 59, 60, 61, 62, 63, 64, 65]*/
            /*[58, 59, 60, 61, 62, 63, 64, 65]*/
            for (i_imopVarPre91 = 1; i_imopVarPre91 < grid_points[0] - 1; i_imopVarPre91++) {
            /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                for (j_imopVarPre92 = 1; j_imopVarPre92 < grid_points[1] - 1; j_imopVarPre92++) {
                /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                    /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                    for (k_imopVarPre93 = 0; k_imopVarPre93 < grid_points[2]; k_imopVarPre93++) {
                    /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        tmp1 = 1.0 / u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0];
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        tmp2 = tmp1 * tmp1;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        tmp3 = tmp1 * tmp2;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3] = 1.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0] = -(u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1] = u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * tmp1;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3] = u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * tmp1;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0] = -(u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2] = u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * tmp1;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3] = u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * tmp1;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][0] = -(u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * tmp2) + 0.50 * c2 * ((u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] + u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] + u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2);
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][1] = -c2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * tmp1;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][2] = -c2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * tmp1;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][3] = (2.0 - c2) * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * tmp1;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][4] = c2;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][0] = (c2 * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] + u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] + u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2 - c1 * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4] * tmp1)) * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * tmp1);
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][1] = -c2 * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][2] = -c2 * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][3] = c1 * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4] * tmp1) - 0.50 * c2 * ((u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1] + u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2] + 3.0 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * tmp2);
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][4] = c1 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3] * tmp1;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0] = -c3c4 * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1];
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1] = c3c4 * tmp1;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0] = -c3c4 * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2];
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2] = c3c4 * tmp1;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][0] = -con43 * c3c4 * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3];
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][1] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][2] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][3] = con43 * c3 * c4 * tmp1;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][4] = 0.0;
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1]) * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1]))) - (c3c4 - c1345) * tmp3 * (((u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2]) * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]) * (u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3]))) - c1345 * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4];
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][1] = (c3c4 - c1345) * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1];
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][2] = (c3c4 - c1345) * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2];
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][3] = (con43 * c3c4 - c1345) * tmp2 * u[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3];
                        /*[58, 59, 60, 61, 62, 63, 64, 65]*/
                        njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][4] = c1345 * tmp1;
                    }
                }
            }
            /*[58, 59, 60, 61, 62, 63, 64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[58, 59, 60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            /*[59, 60, 61, 62, 63, 64, 65]*/
#pragma omp for nowait
            /*[59, 60, 61, 62, 63, 64, 65]*/
            /*[59, 60, 61, 62, 63, 64, 65]*/
            /*[59, 60, 61, 62, 63, 64, 65]*/
            for (i_imopVarPre91 = 1; i_imopVarPre91 < grid_points[0] - 1; i_imopVarPre91++) {
            /*[59, 60, 61, 62, 63, 64, 65]*/
                /*[59, 60, 61, 62, 63, 64, 65]*/
                /*[59, 60, 61, 62, 63, 64, 65]*/
                /*[59, 60, 61, 62, 63, 64, 65]*/
                /*[59, 60, 61, 62, 63, 64, 65]*/
                for (j_imopVarPre92 = 1; j_imopVarPre92 < grid_points[1] - 1; j_imopVarPre92++) {
                /*[59, 60, 61, 62, 63, 64, 65]*/
                    /*[59, 60, 61, 62, 63, 64, 65]*/
                    /*[59, 60, 61, 62, 63, 64, 65]*/
                    /*[59, 60, 61, 62, 63, 64, 65]*/
                    /*[59, 60, 61, 62, 63, 64, 65]*/
                    for (k_imopVarPre93 = 1; k_imopVarPre93 < grid_points[2] - 1; k_imopVarPre93++) {
                    /*[59, 60, 61, 62, 63, 64, 65]*/
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        tmp1 = dt * tz1;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        tmp2 = dt * tz2;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0][0] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][0] - tmp1 * dz1;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0][1] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][1];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0][2] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][2];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0][3] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][3];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0][4] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][0][4];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1][0] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][0];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1][1] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][1] - tmp1 * dz2;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1][2] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][2];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1][3] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][3];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1][4] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][1][4];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2][0] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][0];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2][1] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][1];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2][2] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][2] - tmp1 * dz3;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2][3] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][3];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2][4] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][2][4];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3][0] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][0];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3][1] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][1];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3][2] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][2];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3][3] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][3] - tmp1 * dz4;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3][4] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][3][4];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4][0] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][0];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4][1] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][1];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4][2] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][2];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4][3] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][3];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4][4] = -tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 - 1][4][4] - tmp1 * dz5;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][0] + tmp1 * 2.0 * dz1;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0][1] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][1];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0][2] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][2];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0][3] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][3];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0][4] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][0][4];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1][0] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][0];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1] + tmp1 * 2.0 * dz2;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1][2] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1][3] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][1][4] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2][0] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2][1] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2] + tmp1 * 2.0 * dz3;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2][3] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][2][4] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3][0] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][0];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3][1] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][1];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3][2] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][2];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][3] + tmp1 * 2.0 * dz4;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][3][4] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][3][4];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4][0] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][0];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4][1] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][1];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4][2] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][2];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4][3] = tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][3];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][4][4] + tmp1 * 2.0 * dz5;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0][0] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][0] - tmp1 * dz1;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0][1] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][1];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0][2] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][2];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0][3] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][3];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][0][4] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][0][4];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1][0] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][0];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1][1] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][1] - tmp1 * dz2;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1][2] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][2];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1][3] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][3];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][1][4] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][1][4];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2][0] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][0];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2][1] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][1];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2][2] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][2] - tmp1 * dz3;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2][3] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][3];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][2][4] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][2][4];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3][0] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][0];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3][1] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][1];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3][2] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][2];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3][3] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][3] - tmp1 * dz4;
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][3][4] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][3][4];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4][0] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][0] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][0];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4][1] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][1] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][1];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4][2] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][2] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][2];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4][3] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][3] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][3];
                        /*[59, 60, 61, 62, 63, 64, 65]*/
                        lhs[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93][2][4][4] = tmp2 * fjac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][4] - tmp1 * njac[i_imopVarPre91][j_imopVarPre92][k_imopVarPre93 + 1][4][4] - tmp1 * dz5;
                    }
                }
            }
            /*[59, 60, 61, 62, 63, 64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[59, 60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            /*[60, 61, 62, 63, 64, 65]*/
            int i_imopVarPre78;
            /*[60, 61, 62, 63, 64, 65]*/
            int j_imopVarPre79;
            /*[60, 61, 62, 63, 64, 65]*/
            int k_imopVarPre80;
            /*[60, 61, 62, 63, 64, 65]*/
            int ksize;
            /*[60, 61, 62, 63, 64, 65]*/
            ksize = grid_points[2] - 1;
            /*[60, 61, 62, 63, 64, 65]*/
#pragma omp for nowait
            /*[60, 61, 62, 63, 64, 65]*/
            /*[60, 61, 62, 63, 64, 65]*/
            /*[60, 61, 62, 63, 64, 65]*/
            for (i_imopVarPre78 = 1; i_imopVarPre78 < grid_points[0] - 1; i_imopVarPre78++) {
            /*[60, 61, 62, 63, 64, 65]*/
                /*[60, 61, 62, 63, 64, 65]*/
                /*[60, 61, 62, 63, 64, 65]*/
                /*[60, 61, 62, 63, 64, 65]*/
                /*[60, 61, 62, 63, 64, 65]*/
                for (j_imopVarPre79 = 1; j_imopVarPre79 < grid_points[1] - 1; j_imopVarPre79++) {
                /*[60, 61, 62, 63, 64, 65]*/
                    /*[60, 61, 62, 63, 64, 65]*/
                    double *_imopVarPre414;
                    /*[60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre415 )[5];
                    /*[60, 61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre416 )[5];
                    /*[60, 61, 62, 63, 64, 65]*/
                    _imopVarPre414 = rhs[i_imopVarPre78][j_imopVarPre79][0];
                    /*[60, 61, 62, 63, 64, 65]*/
                    _imopVarPre415 = lhs[i_imopVarPre78][j_imopVarPre79][0][2];
                    /*[60, 61, 62, 63, 64, 65]*/
                    _imopVarPre416 = lhs[i_imopVarPre78][j_imopVarPre79][0][1];
                    /*[60, 61, 62, 63, 64, 65]*/
                    binvcrhs(_imopVarPre416, _imopVarPre415, _imopVarPre414);
                    /*[60, 61, 62, 63, 64, 65]*/
                }
            }
            /*[60, 61, 62, 63, 64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[60, 61, 62, 63, 64, 65]*/
#pragma omp barrier
            /*[61, 62, 63, 64, 65]*/
            /*[61, 62, 63, 64, 65]*/
            /*[62, 63, 64, 65]*/
            /*[61, 62, 63, 64, 65]*/
            for (k_imopVarPre80 = 1; k_imopVarPre80 < ksize; k_imopVarPre80++) {
            /*[61, 62, 63, 64, 65]*/
                /*[61, 62, 63, 64, 65]*/
#pragma omp for nowait
                /*[61, 62, 63, 64, 65]*/
                /*[61, 62, 63, 64, 65]*/
                /*[61, 62, 63, 64, 65]*/
                for (i_imopVarPre78 = 1; i_imopVarPre78 < grid_points[0] - 1; i_imopVarPre78++) {
                /*[61, 62, 63, 64, 65]*/
                    /*[61, 62, 63, 64, 65]*/
                    /*[61, 62, 63, 64, 65]*/
                    /*[61, 62, 63, 64, 65]*/
                    /*[61, 62, 63, 64, 65]*/
                    for (j_imopVarPre79 = 1; j_imopVarPre79 < grid_points[1] - 1; j_imopVarPre79++) {
                    /*[61, 62, 63, 64, 65]*/
                        /*[61, 62, 63, 64, 65]*/
                        double *_imopVarPre420;
                        /*[61, 62, 63, 64, 65]*/
                        double *_imopVarPre421;
                        /*[61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre422 )[5];
                        /*[61, 62, 63, 64, 65]*/
                        _imopVarPre420 = rhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                        /*[61, 62, 63, 64, 65]*/
                        _imopVarPre421 = rhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80 - 1];
                        /*[61, 62, 63, 64, 65]*/
                        _imopVarPre422 = lhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80][0];
                        /*[61, 62, 63, 64, 65]*/
                        matvec_sub(_imopVarPre422, _imopVarPre421, _imopVarPre420);
                        /*[61, 62, 63, 64, 65]*/
                        /*[61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre426 )[5];
                        /*[61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre427 )[5];
                        /*[61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre428 )[5];
                        /*[61, 62, 63, 64, 65]*/
                        _imopVarPre426 = lhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80][1];
                        /*[61, 62, 63, 64, 65]*/
                        _imopVarPre427 = lhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80 - 1][2];
                        /*[61, 62, 63, 64, 65]*/
                        _imopVarPre428 = lhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80][0];
                        /*[61, 62, 63, 64, 65]*/
                        matmul_sub(_imopVarPre428, _imopVarPre427, _imopVarPre426);
                        /*[61, 62, 63, 64, 65]*/
                        /*[61, 62, 63, 64, 65]*/
                        double *_imopVarPre432;
                        /*[61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre433 )[5];
                        /*[61, 62, 63, 64, 65]*/
                        double ( *_imopVarPre434 )[5];
                        /*[61, 62, 63, 64, 65]*/
                        _imopVarPre432 = rhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                        /*[61, 62, 63, 64, 65]*/
                        _imopVarPre433 = lhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80][2];
                        /*[61, 62, 63, 64, 65]*/
                        _imopVarPre434 = lhs[i_imopVarPre78][j_imopVarPre79][k_imopVarPre80][1];
                        /*[61, 62, 63, 64, 65]*/
                        binvcrhs(_imopVarPre434, _imopVarPre433, _imopVarPre432);
                        /*[61, 62, 63, 64, 65]*/
                    }
                }
                /*[61, 62, 63, 64, 65]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[61, 62, 63, 64, 65]*/
#pragma omp barrier
            }
            /*[61, 62, 63, 64, 65]*/
#pragma omp for nowait
            /*[61, 62, 63, 64, 65]*/
            /*[61, 62, 63, 64, 65]*/
            /*[61, 62, 63, 64, 65]*/
            for (i_imopVarPre78 = 1; i_imopVarPre78 < grid_points[0] - 1; i_imopVarPre78++) {
            /*[61, 62, 63, 64, 65]*/
                /*[61, 62, 63, 64, 65]*/
                /*[61, 62, 63, 64, 65]*/
                /*[61, 62, 63, 64, 65]*/
                /*[61, 62, 63, 64, 65]*/
                for (j_imopVarPre79 = 1; j_imopVarPre79 < grid_points[1] - 1; j_imopVarPre79++) {
                /*[61, 62, 63, 64, 65]*/
                    /*[61, 62, 63, 64, 65]*/
                    double *_imopVarPre438;
                    /*[61, 62, 63, 64, 65]*/
                    double *_imopVarPre439;
                    /*[61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre440 )[5];
                    /*[61, 62, 63, 64, 65]*/
                    _imopVarPre438 = rhs[i_imopVarPre78][j_imopVarPre79][ksize];
                    /*[61, 62, 63, 64, 65]*/
                    _imopVarPre439 = rhs[i_imopVarPre78][j_imopVarPre79][ksize - 1];
                    /*[61, 62, 63, 64, 65]*/
                    _imopVarPre440 = lhs[i_imopVarPre78][j_imopVarPre79][ksize][0];
                    /*[61, 62, 63, 64, 65]*/
                    matvec_sub(_imopVarPre440, _imopVarPre439, _imopVarPre438);
                    /*[61, 62, 63, 64, 65]*/
                    /*[61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre444 )[5];
                    /*[61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre445 )[5];
                    /*[61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre446 )[5];
                    /*[61, 62, 63, 64, 65]*/
                    _imopVarPre444 = lhs[i_imopVarPre78][j_imopVarPre79][ksize][1];
                    /*[61, 62, 63, 64, 65]*/
                    _imopVarPre445 = lhs[i_imopVarPre78][j_imopVarPre79][ksize - 1][2];
                    /*[61, 62, 63, 64, 65]*/
                    _imopVarPre446 = lhs[i_imopVarPre78][j_imopVarPre79][ksize][0];
                    /*[61, 62, 63, 64, 65]*/
                    matmul_sub(_imopVarPre446, _imopVarPre445, _imopVarPre444);
                    /*[61, 62, 63, 64, 65]*/
                    /*[61, 62, 63, 64, 65]*/
                    double *_imopVarPre449;
                    /*[61, 62, 63, 64, 65]*/
                    double ( *_imopVarPre450 )[5];
                    /*[61, 62, 63, 64, 65]*/
                    _imopVarPre449 = rhs[i_imopVarPre78][j_imopVarPre79][ksize];
                    /*[61, 62, 63, 64, 65]*/
                    _imopVarPre450 = lhs[i_imopVarPre78][j_imopVarPre79][ksize][1];
                    /*[61, 62, 63, 64, 65]*/
                    binvrhs(_imopVarPre450, _imopVarPre449);
                    /*[61, 62, 63, 64, 65]*/
                }
            }
            /*[61, 62, 63, 64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[61, 62, 63, 64, 65]*/
#pragma omp barrier
            /*[62, 63, 64, 65]*/
            int i_imopVarPre106;
            /*[62, 63, 64, 65]*/
            int j_imopVarPre107;
            /*[62, 63, 64, 65]*/
            int k_imopVarPre108;
            /*[62, 63, 64, 65]*/
            int m_imopVarPre109;
            /*[62, 63, 64, 65]*/
            int n_imopVarPre110;
            /*[62, 63, 64, 65]*/
#pragma omp for nowait
            /*[62, 63, 64, 65]*/
            /*[62, 63, 64, 65]*/
            /*[62, 63, 64, 65]*/
            for (i_imopVarPre106 = 1; i_imopVarPre106 < grid_points[0] - 1; i_imopVarPre106++) {
            /*[62, 63, 64, 65]*/
                /*[62, 63, 64, 65]*/
                /*[62, 63, 64, 65]*/
                /*[62, 63, 64, 65]*/
                /*[62, 63, 64, 65]*/
                for (j_imopVarPre107 = 1; j_imopVarPre107 < grid_points[1] - 1; j_imopVarPre107++) {
                /*[62, 63, 64, 65]*/
                    /*[62, 63, 64, 65]*/
                    /*[62, 63, 64, 65]*/
                    /*[62, 63, 64, 65]*/
                    /*[62, 63, 64, 65]*/
                    for (k_imopVarPre108 = grid_points[2] - 2; k_imopVarPre108 >= 0; k_imopVarPre108--) {
                    /*[62, 63, 64, 65]*/
                        /*[62, 63, 64, 65]*/
                        /*[62, 63, 64, 65]*/
                        /*[62, 63, 64, 65]*/
                        /*[62, 63, 64, 65]*/
                        for (m_imopVarPre109 = 0; m_imopVarPre109 < 5; m_imopVarPre109++) {
                        /*[62, 63, 64, 65]*/
                            /*[62, 63, 64, 65]*/
                            /*[62, 63, 64, 65]*/
                            /*[62, 63, 64, 65]*/
                            /*[62, 63, 64, 65]*/
                            for (n_imopVarPre110 = 0; n_imopVarPre110 < 5; n_imopVarPre110++) {
                            /*[62, 63, 64, 65]*/
                                /*[62, 63, 64, 65]*/
                                rhs[i_imopVarPre106][j_imopVarPre107][k_imopVarPre108][m_imopVarPre109] = rhs[i_imopVarPre106][j_imopVarPre107][k_imopVarPre108][m_imopVarPre109] - lhs[i_imopVarPre106][j_imopVarPre107][k_imopVarPre108][2][m_imopVarPre109][n_imopVarPre110] * rhs[i_imopVarPre106][j_imopVarPre107][k_imopVarPre108 + 1][n_imopVarPre110];
                            }
                        }
                    }
                }
            }
            /*[62, 63, 64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[62, 63, 64, 65]*/
#pragma omp barrier
            /*[63, 64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[63, 64, 65]*/
#pragma omp barrier
            /*[64, 65]*/
            int i_imopVarPre87;
            /*[64, 65]*/
            int j_imopVarPre88;
            /*[64, 65]*/
            int k_imopVarPre89;
            /*[64, 65]*/
            int m_imopVarPre90;
            /*[64, 65]*/
#pragma omp for nowait
            /*[64, 65]*/
            /*[64, 65]*/
            /*[64, 65]*/
            for (i_imopVarPre87 = 1; i_imopVarPre87 < grid_points[0] - 1; i_imopVarPre87++) {
            /*[64, 65]*/
                /*[64, 65]*/
                /*[64, 65]*/
                /*[64, 65]*/
                /*[64, 65]*/
                for (j_imopVarPre88 = 1; j_imopVarPre88 < grid_points[1] - 1; j_imopVarPre88++) {
                /*[64, 65]*/
                    /*[64, 65]*/
                    /*[64, 65]*/
                    /*[64, 65]*/
                    /*[64, 65]*/
                    for (k_imopVarPre89 = 1; k_imopVarPre89 < grid_points[2] - 1; k_imopVarPre89++) {
                    /*[64, 65]*/
                        /*[64, 65]*/
                        /*[64, 65]*/
                        /*[64, 65]*/
                        /*[64, 65]*/
                        for (m_imopVarPre90 = 0; m_imopVarPre90 < 5; m_imopVarPre90++) {
                        /*[64, 65]*/
                            /*[64, 65]*/
                            u[i_imopVarPre87][j_imopVarPre88][k_imopVarPre89][m_imopVarPre90] = u[i_imopVarPre87][j_imopVarPre88][k_imopVarPre89][m_imopVarPre90] + rhs[i_imopVarPre87][j_imopVarPre88][k_imopVarPre89][m_imopVarPre90];
                        }
                    }
                }
            }
            /*[64, 65]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[64, 65]*/
#pragma omp barrier
        }
    }
    /*[66]*/
#pragma omp parallel
    {
    /*[66]*/
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
    char *class_imopVarPre112;
    /*[]*/
    int *verified_imopVarPre113;
    /*[]*/
    no_time_steps = niter;
    /*[]*/
    class_imopVarPre112 = _imopVarPre172;
    /*[]*/
    verified_imopVarPre113 = _imopVarPre171;
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
    int m_imopVarPre111;
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
                for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
                /*[]*/
                    /*[]*/
                    rhs[i][j][k][m_imopVarPre111] = forcing[i][j][k][m_imopVarPre111];
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
            for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (5.0 * u[i][j][k][m_imopVarPre111] - 4.0 * u[i + 1][j][k][m_imopVarPre111] + u[i + 2][j][k][m_imopVarPre111]);
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
            for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (-4.0 * u[i - 1][j][k][m_imopVarPre111] + 6.0 * u[i][j][k][m_imopVarPre111] - 4.0 * u[i + 1][j][k][m_imopVarPre111] + u[i + 2][j][k][m_imopVarPre111]);
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
                for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
                /*[]*/
                    /*[]*/
                    rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (u[i - 2][j][k][m_imopVarPre111] - 4.0 * u[i - 1][j][k][m_imopVarPre111] + 6.0 * u[i][j][k][m_imopVarPre111] - 4.0 * u[i + 1][j][k][m_imopVarPre111] + u[i + 2][j][k][m_imopVarPre111]);
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
            for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (u[i - 2][j][k][m_imopVarPre111] - 4.0 * u[i - 1][j][k][m_imopVarPre111] + 6.0 * u[i][j][k][m_imopVarPre111] - 4.0 * u[i + 1][j][k][m_imopVarPre111]);
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
            for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (u[i - 2][j][k][m_imopVarPre111] - 4. * u[i - 1][j][k][m_imopVarPre111] + 5.0 * u[i][j][k][m_imopVarPre111]);
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
            for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (5.0 * u[i][j][k][m_imopVarPre111] - 4.0 * u[i][j + 1][k][m_imopVarPre111] + u[i][j + 2][k][m_imopVarPre111]);
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
            for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (-4.0 * u[i][j - 1][k][m_imopVarPre111] + 6.0 * u[i][j][k][m_imopVarPre111] - 4.0 * u[i][j + 1][k][m_imopVarPre111] + u[i][j + 2][k][m_imopVarPre111]);
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
                for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
                /*[]*/
                    /*[]*/
                    rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (u[i][j - 2][k][m_imopVarPre111] - 4.0 * u[i][j - 1][k][m_imopVarPre111] + 6.0 * u[i][j][k][m_imopVarPre111] - 4.0 * u[i][j + 1][k][m_imopVarPre111] + u[i][j + 2][k][m_imopVarPre111]);
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
            for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (u[i][j - 2][k][m_imopVarPre111] - 4.0 * u[i][j - 1][k][m_imopVarPre111] + 6.0 * u[i][j][k][m_imopVarPre111] - 4.0 * u[i][j + 1][k][m_imopVarPre111]);
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
            for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (u[i][j - 2][k][m_imopVarPre111] - 4. * u[i][j - 1][k][m_imopVarPre111] + 5. * u[i][j][k][m_imopVarPre111]);
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
            for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (5.0 * u[i][j][k][m_imopVarPre111] - 4.0 * u[i][j][k + 1][m_imopVarPre111] + u[i][j][k + 2][m_imopVarPre111]);
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
            for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (-4.0 * u[i][j][k - 1][m_imopVarPre111] + 6.0 * u[i][j][k][m_imopVarPre111] - 4.0 * u[i][j][k + 1][m_imopVarPre111] + u[i][j][k + 2][m_imopVarPre111]);
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
                for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
                /*[]*/
                    /*[]*/
                    rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (u[i][j][k - 2][m_imopVarPre111] - 4.0 * u[i][j][k - 1][m_imopVarPre111] + 6.0 * u[i][j][k][m_imopVarPre111] - 4.0 * u[i][j][k + 1][m_imopVarPre111] + u[i][j][k + 2][m_imopVarPre111]);
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
            for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (u[i][j][k - 2][m_imopVarPre111] - 4.0 * u[i][j][k - 1][m_imopVarPre111] + 6.0 * u[i][j][k][m_imopVarPre111] - 4.0 * u[i][j][k + 1][m_imopVarPre111]);
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
            for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
            /*[]*/
                /*[]*/
                rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] - dssp * (u[i][j][k - 2][m_imopVarPre111] - 4.0 * u[i][j][k - 1][m_imopVarPre111] + 5.0 * u[i][j][k][m_imopVarPre111]);
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
            for (m_imopVarPre111 = 0; m_imopVarPre111 < 5; m_imopVarPre111++) {
            /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (i = 1; i < grid_points[0] - 1; i++) {
                /*[]*/
                    /*[]*/
                    rhs[i][j][k][m_imopVarPre111] = rhs[i][j][k][m_imopVarPre111] * dt;
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
    *class_imopVarPre112 = 'U';
    /*[]*/
    *verified_imopVarPre113 = 1;
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
        *class_imopVarPre112 = 'S';
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
            *class_imopVarPre112 = 'W';
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
                *class_imopVarPre112 = 'A';
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
                    *class_imopVarPre112 = 'B';
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
                        *class_imopVarPre112 = 'C';
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
                        *verified_imopVarPre113 = 0;
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
    if (*class_imopVarPre112 != 'U') {
    /*[]*/
        /*[]*/
        char _imopVarPre298;
        /*[]*/
        _imopVarPre298 = *class_imopVarPre112;
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
            *verified_imopVarPre113 = 0;
            /*[]*/
            *class_imopVarPre112 = 'U';
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
    if (*class_imopVarPre112 != 'U') {
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
        if (*class_imopVarPre112 == 'U') {
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
                *verified_imopVarPre113 = 0;
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
    if (*class_imopVarPre112 != 'U') {
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
        if (*class_imopVarPre112 == 'U') {
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
                *verified_imopVarPre113 = 0;
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
    if (*class_imopVarPre112 == 'U') {
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
        if (*verified_imopVarPre113 == 1) {
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
/*[2, 3, 4, 5, 9, 10, 11, 38, 39, 40, 41, 67, 68, 69, 70, 71, 72, 73]*/
/*[2, 3, 4, 5, 9, 10, 11, 38, 39, 40, 41, 67, 68, 69, 70, 71, 72, 73]*/
/*[2, 3, 4, 5, 9, 10, 11, 38, 39, 40, 41, 67, 68, 69, 70, 71, 72, 73]*/
/*[2, 3, 4, 5, 9, 10, 11, 38, 39, 40, 41, 67, 68, 69, 70, 71, 72, 73]*/
/*[2, 3, 4, 5, 9, 10, 11, 38, 39, 40, 41, 67, 68, 69, 70, 71, 72, 73]*/
static void exact_solution(double xi, double eta , double zeta , double dtemp[5]) {
/*[2, 3, 4, 5, 9, 10, 11, 38, 39, 40, 41, 67, 68, 69, 70, 71, 72, 73]*/
    /*[2, 3, 4, 5, 9, 10, 11, 38, 39, 40, 41, 67, 68, 69, 70, 71, 72, 73]*/
    int m;
    /*[2, 3, 4, 5, 9, 10, 11, 38, 39, 40, 41, 67, 68, 69, 70, 71, 72, 73]*/
    /*[2, 3, 4, 5, 9, 10, 11, 38, 39, 40, 41, 67, 68, 69, 70, 71, 72, 73]*/
    /*[2, 3, 4, 5, 9, 10, 11, 38, 39, 40, 41, 67, 68, 69, 70, 71, 72, 73]*/
    /*[2, 3, 4, 5, 9, 10, 11, 38, 39, 40, 41, 67, 68, 69, 70, 71, 72, 73]*/
    for (m = 0; m < 5; m++) {
    /*[2, 3, 4, 5, 9, 10, 11, 38, 39, 40, 41, 67, 68, 69, 70, 71, 72, 73]*/
        /*[2, 3, 4, 5, 9, 10, 11, 38, 39, 40, 41, 67, 68, 69, 70, 71, 72, 73]*/
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
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
static void matvec_sub(double ablock[5][5], double avec[5] , double bvec[5]) {
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    int i;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    for (i = 0; i < 5; i++) {
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
        bvec[i] = bvec[i] - ablock[i][0] * avec[0] - ablock[i][1] * avec[1] - ablock[i][2] * avec[2] - ablock[i][3] * avec[3] - ablock[i][4] * avec[4];
    }
}
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
static void matmul_sub(double ablock[5][5], double bblock[5][5] , double cblock[5][5]) {
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    int j;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    for (j = 0; j < 5; j++) {
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
        cblock[0][j] = cblock[0][j] - ablock[0][0] * bblock[0][j] - ablock[0][1] * bblock[1][j] - ablock[0][2] * bblock[2][j] - ablock[0][3] * bblock[3][j] - ablock[0][4] * bblock[4][j];
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
        cblock[1][j] = cblock[1][j] - ablock[1][0] * bblock[0][j] - ablock[1][1] * bblock[1][j] - ablock[1][2] * bblock[2][j] - ablock[1][3] * bblock[3][j] - ablock[1][4] * bblock[4][j];
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
        cblock[2][j] = cblock[2][j] - ablock[2][0] * bblock[0][j] - ablock[2][1] * bblock[1][j] - ablock[2][2] * bblock[2][j] - ablock[2][3] * bblock[3][j] - ablock[2][4] * bblock[4][j];
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
        cblock[3][j] = cblock[3][j] - ablock[3][0] * bblock[0][j] - ablock[3][1] * bblock[1][j] - ablock[3][2] * bblock[2][j] - ablock[3][3] * bblock[3][j] - ablock[3][4] * bblock[4][j];
        /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
        cblock[4][j] = cblock[4][j] - ablock[4][0] * bblock[0][j] - ablock[4][1] * bblock[1][j] - ablock[4][2] * bblock[2][j] - ablock[4][3] * bblock[3][j] - ablock[4][4] * bblock[4][j];
    }
}
/*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
/*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
/*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
/*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
static void binvcrhs(double lhs[5][5], double c[5][5] , double r[5]) {
/*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    double pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    double coeff;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    pivot = 1.00 / lhs[0][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][1] = lhs[0][1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][2] = lhs[0][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][3] = lhs[0][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][4] = lhs[0][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][0] = c[0][0] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][1] = c[0][1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][2] = c[0][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][3] = c[0][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][4] = c[0][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[0] = r[0] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[1][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][1] = lhs[1][1] - coeff * lhs[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][2] = lhs[1][2] - coeff * lhs[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][0] = c[1][0] - coeff * c[0][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][1] = c[1][1] - coeff * c[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][2] = c[1][2] - coeff * c[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][3] = c[1][3] - coeff * c[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][4] = c[1][4] - coeff * c[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[1] = r[1] - coeff * r[0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[2][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][1] = lhs[2][1] - coeff * lhs[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][0] = c[2][0] - coeff * c[0][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][1] = c[2][1] - coeff * c[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][2] = c[2][2] - coeff * c[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][3] = c[2][3] - coeff * c[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][4] = c[2][4] - coeff * c[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[2] = r[2] - coeff * r[0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[3][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][1] = lhs[3][1] - coeff * lhs[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][0] = c[3][0] - coeff * c[0][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][1] = c[3][1] - coeff * c[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][2] = c[3][2] - coeff * c[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][3] = c[3][3] - coeff * c[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][4] = c[3][4] - coeff * c[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[3] = r[3] - coeff * r[0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[4][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][1] = lhs[4][1] - coeff * lhs[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][0] = c[4][0] - coeff * c[0][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][1] = c[4][1] - coeff * c[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][2] = c[4][2] - coeff * c[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][3] = c[4][3] - coeff * c[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][4] = c[4][4] - coeff * c[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[4] = r[4] - coeff * r[0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    pivot = 1.00 / lhs[1][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][2] = lhs[1][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][3] = lhs[1][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][4] = lhs[1][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][0] = c[1][0] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][1] = c[1][1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][2] = c[1][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][3] = c[1][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][4] = c[1][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[1] = r[1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[0][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][2] = lhs[0][2] - coeff * lhs[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][0] = c[0][0] - coeff * c[1][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][1] = c[0][1] - coeff * c[1][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][2] = c[0][2] - coeff * c[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][3] = c[0][3] - coeff * c[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][4] = c[0][4] - coeff * c[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[0] = r[0] - coeff * r[1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[2][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][0] = c[2][0] - coeff * c[1][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][1] = c[2][1] - coeff * c[1][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][2] = c[2][2] - coeff * c[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][3] = c[2][3] - coeff * c[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][4] = c[2][4] - coeff * c[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[2] = r[2] - coeff * r[1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[3][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][0] = c[3][0] - coeff * c[1][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][1] = c[3][1] - coeff * c[1][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][2] = c[3][2] - coeff * c[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][3] = c[3][3] - coeff * c[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][4] = c[3][4] - coeff * c[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[3] = r[3] - coeff * r[1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[4][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][0] = c[4][0] - coeff * c[1][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][1] = c[4][1] - coeff * c[1][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][2] = c[4][2] - coeff * c[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][3] = c[4][3] - coeff * c[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][4] = c[4][4] - coeff * c[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[4] = r[4] - coeff * r[1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    pivot = 1.00 / lhs[2][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][3] = lhs[2][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][4] = lhs[2][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][0] = c[2][0] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][1] = c[2][1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][2] = c[2][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][3] = c[2][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][4] = c[2][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[2] = r[2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[0][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][0] = c[0][0] - coeff * c[2][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][1] = c[0][1] - coeff * c[2][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][2] = c[0][2] - coeff * c[2][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][3] = c[0][3] - coeff * c[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][4] = c[0][4] - coeff * c[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[0] = r[0] - coeff * r[2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[1][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][0] = c[1][0] - coeff * c[2][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][1] = c[1][1] - coeff * c[2][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][2] = c[1][2] - coeff * c[2][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][3] = c[1][3] - coeff * c[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][4] = c[1][4] - coeff * c[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[1] = r[1] - coeff * r[2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[3][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][0] = c[3][0] - coeff * c[2][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][1] = c[3][1] - coeff * c[2][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][2] = c[3][2] - coeff * c[2][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][3] = c[3][3] - coeff * c[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][4] = c[3][4] - coeff * c[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[3] = r[3] - coeff * r[2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[4][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][0] = c[4][0] - coeff * c[2][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][1] = c[4][1] - coeff * c[2][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][2] = c[4][2] - coeff * c[2][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][3] = c[4][3] - coeff * c[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][4] = c[4][4] - coeff * c[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[4] = r[4] - coeff * r[2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    pivot = 1.00 / lhs[3][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][4] = lhs[3][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][0] = c[3][0] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][1] = c[3][1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][2] = c[3][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][3] = c[3][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][4] = c[3][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[3] = r[3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[0][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][0] = c[0][0] - coeff * c[3][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][1] = c[0][1] - coeff * c[3][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][2] = c[0][2] - coeff * c[3][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][3] = c[0][3] - coeff * c[3][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][4] = c[0][4] - coeff * c[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[0] = r[0] - coeff * r[3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[1][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][0] = c[1][0] - coeff * c[3][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][1] = c[1][1] - coeff * c[3][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][2] = c[1][2] - coeff * c[3][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][3] = c[1][3] - coeff * c[3][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][4] = c[1][4] - coeff * c[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[1] = r[1] - coeff * r[3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[2][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][0] = c[2][0] - coeff * c[3][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][1] = c[2][1] - coeff * c[3][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][2] = c[2][2] - coeff * c[3][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][3] = c[2][3] - coeff * c[3][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][4] = c[2][4] - coeff * c[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[2] = r[2] - coeff * r[3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[4][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][0] = c[4][0] - coeff * c[3][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][1] = c[4][1] - coeff * c[3][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][2] = c[4][2] - coeff * c[3][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][3] = c[4][3] - coeff * c[3][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][4] = c[4][4] - coeff * c[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[4] = r[4] - coeff * r[3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    pivot = 1.00 / lhs[4][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][0] = c[4][0] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][1] = c[4][1] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][2] = c[4][2] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][3] = c[4][3] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[4][4] = c[4][4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[4] = r[4] * pivot;
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[0][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][0] = c[0][0] - coeff * c[4][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][1] = c[0][1] - coeff * c[4][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][2] = c[0][2] - coeff * c[4][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][3] = c[0][3] - coeff * c[4][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[0][4] = c[0][4] - coeff * c[4][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[0] = r[0] - coeff * r[4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[1][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][0] = c[1][0] - coeff * c[4][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][1] = c[1][1] - coeff * c[4][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][2] = c[1][2] - coeff * c[4][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][3] = c[1][3] - coeff * c[4][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[1][4] = c[1][4] - coeff * c[4][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[1] = r[1] - coeff * r[4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[2][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][0] = c[2][0] - coeff * c[4][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][1] = c[2][1] - coeff * c[4][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][2] = c[2][2] - coeff * c[4][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][3] = c[2][3] - coeff * c[4][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[2][4] = c[2][4] - coeff * c[4][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[2] = r[2] - coeff * r[4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[3][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][0] = c[3][0] - coeff * c[4][0];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][1] = c[3][1] - coeff * c[4][1];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][2] = c[3][2] - coeff * c[4][2];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][3] = c[3][3] - coeff * c[4][3];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    c[3][4] = c[3][4] - coeff * c[4][4];
    /*[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[3] = r[3] - coeff * r[4];
}
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
static void binvrhs(double lhs[5][5], double r[5]) {
/*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    double pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    double coeff;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    pivot = 1.00 / lhs[0][0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][1] = lhs[0][1] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][2] = lhs[0][2] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][3] = lhs[0][3] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][4] = lhs[0][4] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[0] = r[0] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[1][0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][1] = lhs[1][1] - coeff * lhs[0][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][2] = lhs[1][2] - coeff * lhs[0][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[0][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[0][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[1] = r[1] - coeff * r[0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[2][0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][1] = lhs[2][1] - coeff * lhs[0][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[0][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[0][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[0][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[2] = r[2] - coeff * r[0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[3][0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][1] = lhs[3][1] - coeff * lhs[0][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[0][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[0][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[0][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[3] = r[3] - coeff * r[0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[4][0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][1] = lhs[4][1] - coeff * lhs[0][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[0][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[0][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[0][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[4] = r[4] - coeff * r[0];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    pivot = 1.00 / lhs[1][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][2] = lhs[1][2] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][3] = lhs[1][3] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][4] = lhs[1][4] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[1] = r[1] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[0][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][2] = lhs[0][2] - coeff * lhs[1][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[1][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[1][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[0] = r[0] - coeff * r[1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[2][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[1][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[1][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[1][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[2] = r[2] - coeff * r[1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[3][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[1][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[1][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[1][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[3] = r[3] - coeff * r[1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[4][1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[1][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[1][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[1][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[4] = r[4] - coeff * r[1];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    pivot = 1.00 / lhs[2][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][3] = lhs[2][3] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][4] = lhs[2][4] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[2] = r[2] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[0][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[2][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[2][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[0] = r[0] - coeff * r[2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[1][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[2][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[2][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[1] = r[1] - coeff * r[2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[3][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[2][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[2][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[3] = r[3] - coeff * r[2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[4][2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[2][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[2][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[4] = r[4] - coeff * r[2];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    pivot = 1.00 / lhs[3][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[3][4] = lhs[3][4] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[3] = r[3] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[0][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[3][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[0] = r[0] - coeff * r[3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[1][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[3][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[1] = r[1] - coeff * r[3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[2][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[3][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[2] = r[2] - coeff * r[3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[4][3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[3][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[4] = r[4] - coeff * r[3];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    pivot = 1.00 / lhs[4][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[4] = r[4] * pivot;
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[0][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[0] = r[0] - coeff * r[4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[1][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[1] = r[1] - coeff * r[4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[2][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[2] = r[2] - coeff * r[4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    coeff = lhs[3][4];
    /*[22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]*/
    r[3] = r[3] - coeff * r[4];
}
