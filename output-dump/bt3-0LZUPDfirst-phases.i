
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
static void adi(void );
/*[]*/
static void error_norm(double rms[5]);
/*[]*/
static void rhs_norm(double rms[5]);
/*[]*/
static void exact_rhs(void );
/*[]*/
static void exact_solution(double xi, double eta , double zeta , double dtemp[5]);
/*[]*/
static void initialize(void );
/*[]*/
static void lhsinit(void );
/*[]*/
static void lhsx(void );
/*[]*/
static void lhsy(void );
/*[]*/
static void lhsz(void );
/*[]*/
static void compute_rhs(void );
/*[]*/
static void set_constants(void );
/*[]*/
static void verify(int no_time_steps, char *class , boolean *verified);
/*[]*/
static void x_solve(void );
/*[]*/
static void x_backsubstitute(void );
/*[]*/
static void x_solve_cell(void );
/*[]*/
static void matvec_sub(double ablock[5][5], double avec[5] , double bvec[5]);
/*[]*/
static void matmul_sub(double ablock[5][5], double bblock[5][5] , double cblock[5][5]);
/*[]*/
static void binvcrhs(double lhs[5][5], double c[5][5] , double r[5]);
/*[]*/
static void binvrhs(double lhs[5][5], double r[5]);
/*[]*/
static void y_solve(void );
/*[]*/
static void y_backsubstitute(void );
/*[]*/
static void y_solve_cell(void );
/*[]*/
static void z_solve(void );
/*[]*/
static void z_backsubstitute(void );
/*[]*/
static void z_solve_cell(void );
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
    /*[]*/
    initialize();
    /*[]*/
    /*[]*/
    lhsinit();
    /*[]*/
    /*[]*/
    exact_rhs();
    /*[]*/
    /*[]*/
    adi();
    /*[]*/
    /*[]*/
    initialize();
    /*[]*/
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
        /*[]*/
        int _imopVarPre168;
        /*[]*/
        _imopVarPre168 = step % 20 == 0;
        /*[]*/
        /*[]*/
        if (!_imopVarPre168) {
        /*[]*/
            /*[]*/
            _imopVarPre168 = step == 1;
        }
        /*[]*/
        /*[]*/
        if (_imopVarPre168) {
        /*[]*/
            /*[]*/
            printf(" Time step %4d\n", step);
            /*[]*/
        }
        /*[]*/
        adi();
        /*[]*/
    }
    /*[1]*/
#pragma omp parallel
    {
    /*[1]*/
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
    verify(niter, _imopVarPre172, _imopVarPre171);
    /*[]*/
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
/*[2]*/
static void add() {
/*[2]*/
    /*[2]*/
    int i;
    /*[2]*/
    int j;
    /*[2]*/
    int k;
    /*[2]*/
    int m;
    /*[2]*/
#pragma omp for nowait
    /*[2]*/
    /*[2]*/
    /*[2]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[2]*/
        /*[2]*/
        /*[2]*/
        /*[2]*/
        /*[2]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[2]*/
            /*[2]*/
            /*[2]*/
            /*[2]*/
            /*[2]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[2]*/
                /*[2]*/
                /*[2]*/
                /*[2]*/
                /*[2]*/
                for (m = 0; m < 5; m++) {
                /*[2]*/
                    /*[2]*/
                    u[i][j][k][m] = u[i][j][k][m] + rhs[i][j][k][m];
                }
            }
        }
    }
    /*[2]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[2]*/
#pragma omp barrier
}
/*[]*/
static void adi() {
/*[]*/
    /*[4]*/
#pragma omp parallel
    {
    /*[4]*/
        /*[4]*/
        compute_rhs();
        /*[5]*/
    }
    /*[6]*/
#pragma omp parallel
    {
    /*[6]*/
        /*[6]*/
        x_solve();
        /*[7, 8]*/
    }
    /*[9]*/
#pragma omp parallel
    {
    /*[9]*/
        /*[9]*/
        y_solve();
        /*[10, 11]*/
    }
    /*[12]*/
#pragma omp parallel
    {
    /*[12]*/
        /*[12]*/
        z_solve();
        /*[13]*/
    }
    /*[2]*/
#pragma omp parallel
    {
    /*[2]*/
        /*[2]*/
        add();
        /*[3]*/
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
/*[]*/
static void exact_rhs() {
/*[]*/
    /*[14]*/
#pragma omp parallel
    {
    /*[14]*/
        /*[14]*/
        double dtemp[5];
        /*[14]*/
        double xi;
        /*[14]*/
        double eta;
        /*[14]*/
        double zeta;
        /*[14]*/
        double dtpp;
        /*[14]*/
        int m;
        /*[14]*/
        int i;
        /*[14]*/
        int j;
        /*[14]*/
        int k;
        /*[14]*/
        int ip1;
        /*[14]*/
        int im1;
        /*[14]*/
        int jp1;
        /*[14]*/
        int jm1;
        /*[14]*/
        int km1;
        /*[14]*/
        int kp1;
        /*[14]*/
#pragma omp for nowait
        /*[14]*/
        /*[14]*/
        /*[14]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[14]*/
            /*[14]*/
            /*[14]*/
            /*[14]*/
            /*[14]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[14]*/
                /*[14]*/
                /*[14]*/
                /*[14]*/
                /*[14]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*[14]*/
                    /*[14]*/
                    /*[14]*/
                    /*[14]*/
                    /*[14]*/
                    for (m = 0; m < 5; m++) {
                    /*[14]*/
                        /*[14]*/
                        forcing[i][j][k][m] = 0.0;
                    }
                }
            }
        }
        /*[14]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[14]*/
#pragma omp barrier
        /*[15]*/
#pragma omp for nowait
        /*[15]*/
        /*[15]*/
        /*[15]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[15]*/
            /*[15]*/
            eta = (double) j * dnym1;
            /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[15]*/
                /*[15]*/
                zeta = (double) k * dnzm1;
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (i = 0; i < grid_points[0]; i++) {
                /*[15]*/
                    /*[15]*/
                    xi = (double) i * dnxm1;
                    /*[15]*/
                    exact_solution(xi, eta, zeta, dtemp);
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    for (m = 0; m < 5; m++) {
                    /*[15]*/
                        /*[15]*/
                        ue[i][m] = dtemp[m];
                    }
                    /*[15]*/
                    dtpp = 1.0 / dtemp[0];
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    for (m = 1; m <= 4; m++) {
                    /*[15]*/
                        /*[15]*/
                        buf[i][m] = dtpp * dtemp[m];
                    }
                    /*[15]*/
                    cuf[i] = buf[i][1] * buf[i][1];
                    /*[15]*/
                    buf[i][0] = cuf[i] + buf[i][2] * buf[i][2] + buf[i][3] * buf[i][3];
                    /*[15]*/
                    q[i] = 0.5 * (buf[i][1] * ue[i][1] + buf[i][2] * ue[i][2] + buf[i][3] * ue[i][3]);
                }
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (i = 1; i < grid_points[0] - 1; i++) {
                /*[15]*/
                    /*[15]*/
                    im1 = i - 1;
                    /*[15]*/
                    ip1 = i + 1;
                    /*[15]*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - tx2 * (ue[ip1][1] - ue[im1][1]) + dx1tx1 * (ue[ip1][0] - 2.0 * ue[i][0] + ue[im1][0]);
                    /*[15]*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - tx2 * ((ue[ip1][1] * buf[ip1][1] + c2 * (ue[ip1][4] - q[ip1])) - (ue[im1][1] * buf[im1][1] + c2 * (ue[im1][4] - q[im1]))) + xxcon1 * (buf[ip1][1] - 2.0 * buf[i][1] + buf[im1][1]) + dx2tx1 * (ue[ip1][1] - 2.0 * ue[i][1] + ue[im1][1]);
                    /*[15]*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - tx2 * (ue[ip1][2] * buf[ip1][1] - ue[im1][2] * buf[im1][1]) + xxcon2 * (buf[ip1][2] - 2.0 * buf[i][2] + buf[im1][2]) + dx3tx1 * (ue[ip1][2] - 2.0 * ue[i][2] + ue[im1][2]);
                    /*[15]*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - tx2 * (ue[ip1][3] * buf[ip1][1] - ue[im1][3] * buf[im1][1]) + xxcon2 * (buf[ip1][3] - 2.0 * buf[i][3] + buf[im1][3]) + dx4tx1 * (ue[ip1][3] - 2.0 * ue[i][3] + ue[im1][3]);
                    /*[15]*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - tx2 * (buf[ip1][1] * (c1 * ue[ip1][4] - c2 * q[ip1]) - buf[im1][1] * (c1 * ue[im1][4] - c2 * q[im1])) + 0.5 * xxcon3 * (buf[ip1][0] - 2.0 * buf[i][0] + buf[im1][0]) + xxcon4 * (cuf[ip1] - 2.0 * cuf[i] + cuf[im1]) + xxcon5 * (buf[ip1][4] - 2.0 * buf[i][4] + buf[im1][4]) + dx5tx1 * (ue[ip1][4] - 2.0 * ue[i][4] + ue[im1][4]);
                }
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (m = 0; m < 5; m++) {
                /*[15]*/
                    /*[15]*/
                    i = 1;
                    /*[15]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                    /*[15]*/
                    i = 2;
                    /*[15]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                }
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (m = 0; m < 5; m++) {
                /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    for (i = 1 * 3; i <= grid_points[0] - 3 * 1 - 1; i++) {
                    /*[15]*/
                        /*[15]*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                    }
                }
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (m = 0; m < 5; m++) {
                /*[15]*/
                    /*[15]*/
                    i = grid_points[0] - 3;
                    /*[15]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m]);
                    /*[15]*/
                    i = grid_points[0] - 2;
                    /*[15]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 5.0 * ue[i][m]);
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
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*[16]*/
            /*[16]*/
            xi = (double) i * dnxm1;
            /*[16]*/
            /*[16]*/
            /*[16]*/
            /*[16]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[16]*/
                /*[16]*/
                zeta = (double) k * dnzm1;
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (j = 0; j < grid_points[1]; j++) {
                /*[16]*/
                    /*[16]*/
                    eta = (double) j * dnym1;
                    /*[16]*/
                    exact_solution(xi, eta, zeta, dtemp);
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    for (m = 0; m < 5; m++) {
                    /*[16]*/
                        /*[16]*/
                        ue[j][m] = dtemp[m];
                    }
                    /*[16]*/
                    dtpp = 1.0 / dtemp[0];
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    for (m = 1; m <= 4; m++) {
                    /*[16]*/
                        /*[16]*/
                        buf[j][m] = dtpp * dtemp[m];
                    }
                    /*[16]*/
                    cuf[j] = buf[j][2] * buf[j][2];
                    /*[16]*/
                    buf[j][0] = cuf[j] + buf[j][1] * buf[j][1] + buf[j][3] * buf[j][3];
                    /*[16]*/
                    q[j] = 0.5 * (buf[j][1] * ue[j][1] + buf[j][2] * ue[j][2] + buf[j][3] * ue[j][3]);
                }
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                /*[16]*/
                    /*[16]*/
                    jm1 = j - 1;
                    /*[16]*/
                    jp1 = j + 1;
                    /*[16]*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - ty2 * (ue[jp1][2] - ue[jm1][2]) + dy1ty1 * (ue[jp1][0] - 2.0 * ue[j][0] + ue[jm1][0]);
                    /*[16]*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - ty2 * (ue[jp1][1] * buf[jp1][2] - ue[jm1][1] * buf[jm1][2]) + yycon2 * (buf[jp1][1] - 2.0 * buf[j][1] + buf[jm1][1]) + dy2ty1 * (ue[jp1][1] - 2.0 * ue[j][1] + ue[jm1][1]);
                    /*[16]*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - ty2 * ((ue[jp1][2] * buf[jp1][2] + c2 * (ue[jp1][4] - q[jp1])) - (ue[jm1][2] * buf[jm1][2] + c2 * (ue[jm1][4] - q[jm1]))) + yycon1 * (buf[jp1][2] - 2.0 * buf[j][2] + buf[jm1][2]) + dy3ty1 * (ue[jp1][2] - 2.0 * ue[j][2] + ue[jm1][2]);
                    /*[16]*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - ty2 * (ue[jp1][3] * buf[jp1][2] - ue[jm1][3] * buf[jm1][2]) + yycon2 * (buf[jp1][3] - 2.0 * buf[j][3] + buf[jm1][3]) + dy4ty1 * (ue[jp1][3] - 2.0 * ue[j][3] + ue[jm1][3]);
                    /*[16]*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - ty2 * (buf[jp1][2] * (c1 * ue[jp1][4] - c2 * q[jp1]) - buf[jm1][2] * (c1 * ue[jm1][4] - c2 * q[jm1])) + 0.5 * yycon3 * (buf[jp1][0] - 2.0 * buf[j][0] + buf[jm1][0]) + yycon4 * (cuf[jp1] - 2.0 * cuf[j] + cuf[jm1]) + yycon5 * (buf[jp1][4] - 2.0 * buf[j][4] + buf[jm1][4]) + dy5ty1 * (ue[jp1][4] - 2.0 * ue[j][4] + ue[jm1][4]);
                }
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (m = 0; m < 5; m++) {
                /*[16]*/
                    /*[16]*/
                    j = 1;
                    /*[16]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                    /*[16]*/
                    j = 2;
                    /*[16]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                }
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (m = 0; m < 5; m++) {
                /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    for (j = 1 * 3; j <= grid_points[1] - 3 * 1 - 1; j++) {
                    /*[16]*/
                        /*[16]*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                    }
                }
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (m = 0; m < 5; m++) {
                /*[16]*/
                    /*[16]*/
                    j = grid_points[1] - 3;
                    /*[16]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m]);
                    /*[16]*/
                    j = grid_points[1] - 2;
                    /*[16]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 5.0 * ue[j][m]);
                }
            }
        }
        /*[16]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[16]*/
#pragma omp barrier
        /*[17]*/
#pragma omp for nowait
        /*[17]*/
        /*[17]*/
        /*[17]*/
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*[17]*/
            /*[17]*/
            xi = (double) i * dnxm1;
            /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
            /*[17]*/
                /*[17]*/
                eta = (double) j * dnym1;
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*[17]*/
                    /*[17]*/
                    zeta = (double) k * dnzm1;
                    /*[17]*/
                    exact_solution(xi, eta, zeta, dtemp);
                    /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    for (m = 0; m < 5; m++) {
                    /*[17]*/
                        /*[17]*/
                        ue[k][m] = dtemp[m];
                    }
                    /*[17]*/
                    dtpp = 1.0 / dtemp[0];
                    /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    for (m = 1; m <= 4; m++) {
                    /*[17]*/
                        /*[17]*/
                        buf[k][m] = dtpp * dtemp[m];
                    }
                    /*[17]*/
                    cuf[k] = buf[k][3] * buf[k][3];
                    /*[17]*/
                    buf[k][0] = cuf[k] + buf[k][1] * buf[k][1] + buf[k][2] * buf[k][2];
                    /*[17]*/
                    q[k] = 0.5 * (buf[k][1] * ue[k][1] + buf[k][2] * ue[k][2] + buf[k][3] * ue[k][3]);
                }
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*[17]*/
                    /*[17]*/
                    km1 = k - 1;
                    /*[17]*/
                    kp1 = k + 1;
                    /*[17]*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - tz2 * (ue[kp1][3] - ue[km1][3]) + dz1tz1 * (ue[kp1][0] - 2.0 * ue[k][0] + ue[km1][0]);
                    /*[17]*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - tz2 * (ue[kp1][1] * buf[kp1][3] - ue[km1][1] * buf[km1][3]) + zzcon2 * (buf[kp1][1] - 2.0 * buf[k][1] + buf[km1][1]) + dz2tz1 * (ue[kp1][1] - 2.0 * ue[k][1] + ue[km1][1]);
                    /*[17]*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - tz2 * (ue[kp1][2] * buf[kp1][3] - ue[km1][2] * buf[km1][3]) + zzcon2 * (buf[kp1][2] - 2.0 * buf[k][2] + buf[km1][2]) + dz3tz1 * (ue[kp1][2] - 2.0 * ue[k][2] + ue[km1][2]);
                    /*[17]*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - tz2 * ((ue[kp1][3] * buf[kp1][3] + c2 * (ue[kp1][4] - q[kp1])) - (ue[km1][3] * buf[km1][3] + c2 * (ue[km1][4] - q[km1]))) + zzcon1 * (buf[kp1][3] - 2.0 * buf[k][3] + buf[km1][3]) + dz4tz1 * (ue[kp1][3] - 2.0 * ue[k][3] + ue[km1][3]);
                    /*[17]*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - tz2 * (buf[kp1][3] * (c1 * ue[kp1][4] - c2 * q[kp1]) - buf[km1][3] * (c1 * ue[km1][4] - c2 * q[km1])) + 0.5 * zzcon3 * (buf[kp1][0] - 2.0 * buf[k][0] + buf[km1][0]) + zzcon4 * (cuf[kp1] - 2.0 * cuf[k] + cuf[km1]) + zzcon5 * (buf[kp1][4] - 2.0 * buf[k][4] + buf[km1][4]) + dz5tz1 * (ue[kp1][4] - 2.0 * ue[k][4] + ue[km1][4]);
                }
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (m = 0; m < 5; m++) {
                /*[17]*/
                    /*[17]*/
                    k = 1;
                    /*[17]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                    /*[17]*/
                    k = 2;
                    /*[17]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                }
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (m = 0; m < 5; m++) {
                /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    /*[17]*/
                    for (k = 1 * 3; k <= grid_points[2] - 3 * 1 - 1; k++) {
                    /*[17]*/
                        /*[17]*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                    }
                }
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (m = 0; m < 5; m++) {
                /*[17]*/
                    /*[17]*/
                    k = grid_points[2] - 3;
                    /*[17]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m]);
                    /*[17]*/
                    k = grid_points[2] - 2;
                    /*[17]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 5.0 * ue[k][m]);
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
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*[18]*/
            /*[18]*/
            /*[18]*/
            /*[18]*/
            /*[18]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
            /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    for (m = 0; m < 5; m++) {
                    /*[18]*/
                        /*[18]*/
                        forcing[i][j][k][m] = -1.0 * forcing[i][j][k][m];
                    }
                }
            }
        }
        /*[18]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[18]*/
#pragma omp barrier
    }
}
/*[15, 16, 17, 20, 21, 22, 23]*/
/*[15, 16, 17, 20, 21, 22, 23]*/
/*[15, 16, 17, 20, 21, 22, 23]*/
/*[15, 16, 17, 20, 21, 22, 23]*/
/*[15, 16, 17, 20, 21, 22, 23]*/
static void exact_solution(double xi, double eta , double zeta , double dtemp[5]) {
/*[15, 16, 17, 20, 21, 22, 23]*/
    /*[15, 16, 17, 20, 21, 22, 23]*/
    int m;
    /*[15, 16, 17, 20, 21, 22, 23]*/
    /*[15, 16, 17, 20, 21, 22, 23]*/
    /*[15, 16, 17, 20, 21, 22, 23]*/
    /*[15, 16, 17, 20, 21, 22, 23]*/
    for (m = 0; m < 5; m++) {
    /*[15, 16, 17, 20, 21, 22, 23]*/
        /*[15, 16, 17, 20, 21, 22, 23]*/
        dtemp[m] = ce[m][0] + xi * (ce[m][1] + xi * (ce[m][4] + xi * (ce[m][7] + xi * ce[m][10]))) + eta * (ce[m][2] + eta * (ce[m][5] + eta * (ce[m][8] + eta * ce[m][11]))) + zeta * (ce[m][3] + zeta * (ce[m][6] + zeta * (ce[m][9] + zeta * ce[m][12])));
    }
}
/*[]*/
static void initialize() {
/*[]*/
    /*[24]*/
#pragma omp parallel
    {
    /*[24]*/
        /*[24]*/
        int i;
        /*[24]*/
        int j;
        /*[24]*/
        int k;
        /*[24]*/
        int m;
        /*[24]*/
        int ix;
        /*[24]*/
        int iy;
        /*[24]*/
        int iz;
        /*[24]*/
        double xi;
        /*[24]*/
        double eta;
        /*[24]*/
        double zeta;
        /*[24]*/
        double Pface[2][3][5];
        /*[24]*/
        double Pxi;
        /*[24]*/
        double Peta;
        /*[24]*/
        double Pzeta;
        /*[24]*/
        double temp[5];
        /*[24]*/
#pragma omp for nowait
        /*[24]*/
        /*[24]*/
        /*[24]*/
        for (i = 0; i < 12; i++) {
        /*[24]*/
            /*[24]*/
            /*[24]*/
            /*[24]*/
            /*[24]*/
            for (j = 0; j < 12; j++) {
            /*[24]*/
                /*[24]*/
                /*[24]*/
                /*[24]*/
                /*[24]*/
                for (k = 0; k < 12; k++) {
                /*[24]*/
                    /*[24]*/
                    /*[24]*/
                    /*[24]*/
                    /*[24]*/
                    for (m = 0; m < 5; m++) {
                    /*[24]*/
                        /*[24]*/
                        u[i][j][k][m] = 1.0;
                    }
                }
            }
        }
        /*[24]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[24]*/
#pragma omp barrier
        /*[20]*/
#pragma omp for nowait
        /*[20]*/
        /*[20]*/
        /*[20]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[20]*/
            /*[20]*/
            xi = (double) i * dnxm1;
            /*[20]*/
            /*[20]*/
            /*[20]*/
            /*[20]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[20]*/
                /*[20]*/
                eta = (double) j * dnym1;
                /*[20]*/
                /*[20]*/
                /*[20]*/
                /*[20]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*[20]*/
                    /*[20]*/
                    zeta = (double) k * dnzm1;
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    for (ix = 0; ix < 2; ix++) {
                    /*[20]*/
                        /*[20]*/
                        double *_imopVarPre187;
                        /*[20]*/
                        double _imopVarPre188;
                        /*[20]*/
                        _imopVarPre187 = &(Pface[ix][0][0]);
                        /*[20]*/
                        _imopVarPre188 = (double) ix;
                        /*[20]*/
                        exact_solution(_imopVarPre188, eta, zeta, _imopVarPre187);
                        /*[20]*/
                    }
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    for (iy = 0; iy < 2; iy++) {
                    /*[20]*/
                        /*[20]*/
                        double *_imopVarPre191;
                        /*[20]*/
                        double _imopVarPre192;
                        /*[20]*/
                        _imopVarPre191 = &Pface[iy][1][0];
                        /*[20]*/
                        _imopVarPre192 = (double) iy;
                        /*[20]*/
                        exact_solution(xi, _imopVarPre192, zeta, _imopVarPre191);
                        /*[20]*/
                    }
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    for (iz = 0; iz < 2; iz++) {
                    /*[20]*/
                        /*[20]*/
                        double *_imopVarPre195;
                        /*[20]*/
                        double _imopVarPre196;
                        /*[20]*/
                        _imopVarPre195 = &Pface[iz][2][0];
                        /*[20]*/
                        _imopVarPre196 = (double) iz;
                        /*[20]*/
                        exact_solution(xi, eta, _imopVarPre196, _imopVarPre195);
                        /*[20]*/
                    }
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    for (m = 0; m < 5; m++) {
                    /*[20]*/
                        /*[20]*/
                        Pxi = xi * Pface[1][0][m] + (1.0 - xi) * Pface[0][0][m];
                        /*[20]*/
                        Peta = eta * Pface[1][1][m] + (1.0 - eta) * Pface[0][1][m];
                        /*[20]*/
                        Pzeta = zeta * Pface[1][2][m] + (1.0 - zeta) * Pface[0][2][m];
                        /*[20]*/
                        u[i][j][k][m] = Pxi + Peta + Pzeta - Pxi * Peta - Pxi * Pzeta - Peta * Pzeta + Pxi * Peta * Pzeta;
                    }
                }
            }
        }
        /*[20]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[20]*/
#pragma omp barrier
        /*[21]*/
        i = 0;
        /*[21]*/
        xi = 0.0;
        /*[21]*/
#pragma omp for nowait
        /*[21]*/
        /*[21]*/
        /*[21]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[21]*/
            /*[21]*/
            eta = (double) j * dnym1;
            /*[21]*/
            /*[21]*/
            /*[21]*/
            /*[21]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[21]*/
                /*[21]*/
                zeta = (double) k * dnzm1;
                /*[21]*/
                exact_solution(xi, eta, zeta, temp);
                /*[21]*/
                /*[21]*/
                /*[21]*/
                /*[21]*/
                /*[21]*/
                for (m = 0; m < 5; m++) {
                /*[21]*/
                    /*[21]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[21]*/
        i = grid_points[0] - 1;
        /*[21]*/
        xi = 1.0;
        /*[21]*/
#pragma omp for nowait
        /*[21]*/
        /*[21]*/
        /*[21]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[21]*/
            /*[21]*/
            eta = (double) j * dnym1;
            /*[21]*/
            /*[21]*/
            /*[21]*/
            /*[21]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[21]*/
                /*[21]*/
                zeta = (double) k * dnzm1;
                /*[21]*/
                exact_solution(xi, eta, zeta, temp);
                /*[21]*/
                /*[21]*/
                /*[21]*/
                /*[21]*/
                /*[21]*/
                for (m = 0; m < 5; m++) {
                /*[21]*/
                    /*[21]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[21]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[21]*/
#pragma omp barrier
        /*[22]*/
        j = 0;
        /*[22]*/
        eta = 0.0;
        /*[22]*/
#pragma omp for nowait
        /*[22]*/
        /*[22]*/
        /*[22]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[22]*/
            /*[22]*/
            xi = (double) i * dnxm1;
            /*[22]*/
            /*[22]*/
            /*[22]*/
            /*[22]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[22]*/
                /*[22]*/
                zeta = (double) k * dnzm1;
                /*[22]*/
                exact_solution(xi, eta, zeta, temp);
                /*[22]*/
                /*[22]*/
                /*[22]*/
                /*[22]*/
                /*[22]*/
                for (m = 0; m < 5; m++) {
                /*[22]*/
                    /*[22]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[22]*/
        j = grid_points[1] - 1;
        /*[22]*/
        eta = 1.0;
        /*[22]*/
#pragma omp for nowait
        /*[22]*/
        /*[22]*/
        /*[22]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[22]*/
            /*[22]*/
            xi = (double) i * dnxm1;
            /*[22]*/
            /*[22]*/
            /*[22]*/
            /*[22]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[22]*/
                /*[22]*/
                zeta = (double) k * dnzm1;
                /*[22]*/
                exact_solution(xi, eta, zeta, temp);
                /*[22]*/
                /*[22]*/
                /*[22]*/
                /*[22]*/
                /*[22]*/
                for (m = 0; m < 5; m++) {
                /*[22]*/
                    /*[22]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[22]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[22]*/
#pragma omp barrier
        /*[23]*/
        k = 0;
        /*[23]*/
        zeta = 0.0;
        /*[23]*/
#pragma omp for nowait
        /*[23]*/
        /*[23]*/
        /*[23]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[23]*/
            /*[23]*/
            xi = (double) i * dnxm1;
            /*[23]*/
            /*[23]*/
            /*[23]*/
            /*[23]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[23]*/
                /*[23]*/
                eta = (double) j * dnym1;
                /*[23]*/
                exact_solution(xi, eta, zeta, temp);
                /*[23]*/
                /*[23]*/
                /*[23]*/
                /*[23]*/
                /*[23]*/
                for (m = 0; m < 5; m++) {
                /*[23]*/
                    /*[23]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[23]*/
        k = grid_points[2] - 1;
        /*[23]*/
        zeta = 1.0;
        /*[23]*/
#pragma omp for nowait
        /*[23]*/
        /*[23]*/
        /*[23]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[23]*/
            /*[23]*/
            xi = (double) i * dnxm1;
            /*[23]*/
            /*[23]*/
            /*[23]*/
            /*[23]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[23]*/
                /*[23]*/
                eta = (double) j * dnym1;
                /*[23]*/
                exact_solution(xi, eta, zeta, temp);
                /*[23]*/
                /*[23]*/
                /*[23]*/
                /*[23]*/
                /*[23]*/
                for (m = 0; m < 5; m++) {
                /*[23]*/
                    /*[23]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*[23]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[23]*/
#pragma omp barrier
    }
}
/*[]*/
static void lhsinit() {
/*[]*/
    /*[26]*/
#pragma omp parallel
    {
    /*[26]*/
        /*[26]*/
        int i;
        /*[26]*/
        int j;
        /*[26]*/
        int k;
        /*[26]*/
        int m;
        /*[26]*/
        int n;
        /*[26]*/
#pragma omp for nowait
        /*[26]*/
        /*[26]*/
        /*[26]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[26]*/
            /*[26]*/
            /*[26]*/
            /*[26]*/
            /*[26]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[26]*/
                /*[26]*/
                /*[26]*/
                /*[26]*/
                /*[26]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    for (m = 0; m < 5; m++) {
                    /*[26]*/
                        /*[26]*/
                        /*[26]*/
                        /*[26]*/
                        /*[26]*/
                        for (n = 0; n < 5; n++) {
                        /*[26]*/
                            /*[26]*/
                            lhs[i][j][k][0][m][n] = 0.0;
                            /*[26]*/
                            lhs[i][j][k][1][m][n] = 0.0;
                            /*[26]*/
                            lhs[i][j][k][2][m][n] = 0.0;
                        }
                    }
                }
            }
        }
        /*[26]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[26]*/
#pragma omp barrier
        /*[27]*/
#pragma omp for nowait
        /*[27]*/
        /*[27]*/
        /*[27]*/
        for (i = 0; i < grid_points[0]; i++) {
        /*[27]*/
            /*[27]*/
            /*[27]*/
            /*[27]*/
            /*[27]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*[27]*/
                /*[27]*/
                /*[27]*/
                /*[27]*/
                /*[27]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*[27]*/
                    /*[27]*/
                    /*[27]*/
                    /*[27]*/
                    /*[27]*/
                    for (m = 0; m < 5; m++) {
                    /*[27]*/
                        /*[27]*/
                        lhs[i][j][k][1][m][m] = 1.0;
                    }
                }
            }
        }
        /*[27]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[27]*/
#pragma omp barrier
    }
}
/*[6]*/
static void lhsx() {
/*[6]*/
    /*[6]*/
    int i;
    /*[6]*/
    int j;
    /*[6]*/
    int k;
    /*[6]*/
#pragma omp for nowait
    /*[6]*/
    /*[6]*/
    /*[6]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*[6]*/
        /*[6]*/
        /*[6]*/
        /*[6]*/
        /*[6]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[6]*/
            /*[6]*/
            /*[6]*/
            /*[6]*/
            /*[6]*/
            for (i = 0; i < grid_points[0]; i++) {
            /*[6]*/
                /*[6]*/
                tmp1 = 1.0 / u[i][j][k][0];
                /*[6]*/
                tmp2 = tmp1 * tmp1;
                /*[6]*/
                tmp3 = tmp1 * tmp2;
                /*[6]*/
                fjac[i][j][k][0][0] = 0.0;
                /*[6]*/
                fjac[i][j][k][0][1] = 1.0;
                /*[6]*/
                fjac[i][j][k][0][2] = 0.0;
                /*[6]*/
                fjac[i][j][k][0][3] = 0.0;
                /*[6]*/
                fjac[i][j][k][0][4] = 0.0;
                /*[6]*/
                fjac[i][j][k][1][0] = -(u[i][j][k][1] * tmp2 * u[i][j][k][1]) + c2 * 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2;
                /*[6]*/
                fjac[i][j][k][1][1] = (2.0 - c2) * (u[i][j][k][1] / u[i][j][k][0]);
                /*[6]*/
                fjac[i][j][k][1][2] = -c2 * (u[i][j][k][2] * tmp1);
                /*[6]*/
                fjac[i][j][k][1][3] = -c2 * (u[i][j][k][3] * tmp1);
                /*[6]*/
                fjac[i][j][k][1][4] = c2;
                /*[6]*/
                fjac[i][j][k][2][0] = -(u[i][j][k][1] * u[i][j][k][2]) * tmp2;
                /*[6]*/
                fjac[i][j][k][2][1] = u[i][j][k][2] * tmp1;
                /*[6]*/
                fjac[i][j][k][2][2] = u[i][j][k][1] * tmp1;
                /*[6]*/
                fjac[i][j][k][2][3] = 0.0;
                /*[6]*/
                fjac[i][j][k][2][4] = 0.0;
                /*[6]*/
                fjac[i][j][k][3][0] = -(u[i][j][k][1] * u[i][j][k][3]) * tmp2;
                /*[6]*/
                fjac[i][j][k][3][1] = u[i][j][k][3] * tmp1;
                /*[6]*/
                fjac[i][j][k][3][2] = 0.0;
                /*[6]*/
                fjac[i][j][k][3][3] = u[i][j][k][1] * tmp1;
                /*[6]*/
                fjac[i][j][k][3][4] = 0.0;
                /*[6]*/
                fjac[i][j][k][4][0] = (c2 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2 - c1 * (u[i][j][k][4] * tmp1)) * (u[i][j][k][1] * tmp1);
                /*[6]*/
                fjac[i][j][k][4][1] = c1 * u[i][j][k][4] * tmp1 - 0.50 * c2 * (3.0 * u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2;
                /*[6]*/
                fjac[i][j][k][4][2] = -c2 * (u[i][j][k][2] * u[i][j][k][1]) * tmp2;
                /*[6]*/
                fjac[i][j][k][4][3] = -c2 * (u[i][j][k][3] * u[i][j][k][1]) * tmp2;
                /*[6]*/
                fjac[i][j][k][4][4] = c1 * (u[i][j][k][1] * tmp1);
                /*[6]*/
                njac[i][j][k][0][0] = 0.0;
                /*[6]*/
                njac[i][j][k][0][1] = 0.0;
                /*[6]*/
                njac[i][j][k][0][2] = 0.0;
                /*[6]*/
                njac[i][j][k][0][3] = 0.0;
                /*[6]*/
                njac[i][j][k][0][4] = 0.0;
                /*[6]*/
                njac[i][j][k][1][0] = -con43 * c3c4 * tmp2 * u[i][j][k][1];
                /*[6]*/
                njac[i][j][k][1][1] = con43 * c3c4 * tmp1;
                /*[6]*/
                njac[i][j][k][1][2] = 0.0;
                /*[6]*/
                njac[i][j][k][1][3] = 0.0;
                /*[6]*/
                njac[i][j][k][1][4] = 0.0;
                /*[6]*/
                njac[i][j][k][2][0] = -c3c4 * tmp2 * u[i][j][k][2];
                /*[6]*/
                njac[i][j][k][2][1] = 0.0;
                /*[6]*/
                njac[i][j][k][2][2] = c3c4 * tmp1;
                /*[6]*/
                njac[i][j][k][2][3] = 0.0;
                /*[6]*/
                njac[i][j][k][2][4] = 0.0;
                /*[6]*/
                njac[i][j][k][3][0] = -c3c4 * tmp2 * u[i][j][k][3];
                /*[6]*/
                njac[i][j][k][3][1] = 0.0;
                /*[6]*/
                njac[i][j][k][3][2] = 0.0;
                /*[6]*/
                njac[i][j][k][3][3] = c3c4 * tmp1;
                /*[6]*/
                njac[i][j][k][3][4] = 0.0;
                /*[6]*/
                njac[i][j][k][4][0] = -(con43 * c3c4 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4];
                /*[6]*/
                njac[i][j][k][4][1] = (con43 * c3c4 - c1345) * tmp2 * u[i][j][k][1];
                /*[6]*/
                njac[i][j][k][4][2] = (c3c4 - c1345) * tmp2 * u[i][j][k][2];
                /*[6]*/
                njac[i][j][k][4][3] = (c3c4 - c1345) * tmp2 * u[i][j][k][3];
                /*[6]*/
                njac[i][j][k][4][4] = c1345 * tmp1;
            }
            /*[6]*/
            /*[6]*/
            /*[6]*/
            /*[6]*/
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*[6]*/
                /*[6]*/
                tmp1 = dt * tx1;
                /*[6]*/
                tmp2 = dt * tx2;
                /*[6]*/
                lhs[i][j][k][0][0][0] = -tmp2 * fjac[i - 1][j][k][0][0] - tmp1 * njac[i - 1][j][k][0][0] - tmp1 * dx1;
                /*[6]*/
                lhs[i][j][k][0][0][1] = -tmp2 * fjac[i - 1][j][k][0][1] - tmp1 * njac[i - 1][j][k][0][1];
                /*[6]*/
                lhs[i][j][k][0][0][2] = -tmp2 * fjac[i - 1][j][k][0][2] - tmp1 * njac[i - 1][j][k][0][2];
                /*[6]*/
                lhs[i][j][k][0][0][3] = -tmp2 * fjac[i - 1][j][k][0][3] - tmp1 * njac[i - 1][j][k][0][3];
                /*[6]*/
                lhs[i][j][k][0][0][4] = -tmp2 * fjac[i - 1][j][k][0][4] - tmp1 * njac[i - 1][j][k][0][4];
                /*[6]*/
                lhs[i][j][k][0][1][0] = -tmp2 * fjac[i - 1][j][k][1][0] - tmp1 * njac[i - 1][j][k][1][0];
                /*[6]*/
                lhs[i][j][k][0][1][1] = -tmp2 * fjac[i - 1][j][k][1][1] - tmp1 * njac[i - 1][j][k][1][1] - tmp1 * dx2;
                /*[6]*/
                lhs[i][j][k][0][1][2] = -tmp2 * fjac[i - 1][j][k][1][2] - tmp1 * njac[i - 1][j][k][1][2];
                /*[6]*/
                lhs[i][j][k][0][1][3] = -tmp2 * fjac[i - 1][j][k][1][3] - tmp1 * njac[i - 1][j][k][1][3];
                /*[6]*/
                lhs[i][j][k][0][1][4] = -tmp2 * fjac[i - 1][j][k][1][4] - tmp1 * njac[i - 1][j][k][1][4];
                /*[6]*/
                lhs[i][j][k][0][2][0] = -tmp2 * fjac[i - 1][j][k][2][0] - tmp1 * njac[i - 1][j][k][2][0];
                /*[6]*/
                lhs[i][j][k][0][2][1] = -tmp2 * fjac[i - 1][j][k][2][1] - tmp1 * njac[i - 1][j][k][2][1];
                /*[6]*/
                lhs[i][j][k][0][2][2] = -tmp2 * fjac[i - 1][j][k][2][2] - tmp1 * njac[i - 1][j][k][2][2] - tmp1 * dx3;
                /*[6]*/
                lhs[i][j][k][0][2][3] = -tmp2 * fjac[i - 1][j][k][2][3] - tmp1 * njac[i - 1][j][k][2][3];
                /*[6]*/
                lhs[i][j][k][0][2][4] = -tmp2 * fjac[i - 1][j][k][2][4] - tmp1 * njac[i - 1][j][k][2][4];
                /*[6]*/
                lhs[i][j][k][0][3][0] = -tmp2 * fjac[i - 1][j][k][3][0] - tmp1 * njac[i - 1][j][k][3][0];
                /*[6]*/
                lhs[i][j][k][0][3][1] = -tmp2 * fjac[i - 1][j][k][3][1] - tmp1 * njac[i - 1][j][k][3][1];
                /*[6]*/
                lhs[i][j][k][0][3][2] = -tmp2 * fjac[i - 1][j][k][3][2] - tmp1 * njac[i - 1][j][k][3][2];
                /*[6]*/
                lhs[i][j][k][0][3][3] = -tmp2 * fjac[i - 1][j][k][3][3] - tmp1 * njac[i - 1][j][k][3][3] - tmp1 * dx4;
                /*[6]*/
                lhs[i][j][k][0][3][4] = -tmp2 * fjac[i - 1][j][k][3][4] - tmp1 * njac[i - 1][j][k][3][4];
                /*[6]*/
                lhs[i][j][k][0][4][0] = -tmp2 * fjac[i - 1][j][k][4][0] - tmp1 * njac[i - 1][j][k][4][0];
                /*[6]*/
                lhs[i][j][k][0][4][1] = -tmp2 * fjac[i - 1][j][k][4][1] - tmp1 * njac[i - 1][j][k][4][1];
                /*[6]*/
                lhs[i][j][k][0][4][2] = -tmp2 * fjac[i - 1][j][k][4][2] - tmp1 * njac[i - 1][j][k][4][2];
                /*[6]*/
                lhs[i][j][k][0][4][3] = -tmp2 * fjac[i - 1][j][k][4][3] - tmp1 * njac[i - 1][j][k][4][3];
                /*[6]*/
                lhs[i][j][k][0][4][4] = -tmp2 * fjac[i - 1][j][k][4][4] - tmp1 * njac[i - 1][j][k][4][4] - tmp1 * dx5;
                /*[6]*/
                lhs[i][j][k][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i][j][k][0][0] + tmp1 * 2.0 * dx1;
                /*[6]*/
                lhs[i][j][k][1][0][1] = tmp1 * 2.0 * njac[i][j][k][0][1];
                /*[6]*/
                lhs[i][j][k][1][0][2] = tmp1 * 2.0 * njac[i][j][k][0][2];
                /*[6]*/
                lhs[i][j][k][1][0][3] = tmp1 * 2.0 * njac[i][j][k][0][3];
                /*[6]*/
                lhs[i][j][k][1][0][4] = tmp1 * 2.0 * njac[i][j][k][0][4];
                /*[6]*/
                lhs[i][j][k][1][1][0] = tmp1 * 2.0 * njac[i][j][k][1][0];
                /*[6]*/
                lhs[i][j][k][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i][j][k][1][1] + tmp1 * 2.0 * dx2;
                /*[6]*/
                lhs[i][j][k][1][1][2] = tmp1 * 2.0 * njac[i][j][k][1][2];
                /*[6]*/
                lhs[i][j][k][1][1][3] = tmp1 * 2.0 * njac[i][j][k][1][3];
                /*[6]*/
                lhs[i][j][k][1][1][4] = tmp1 * 2.0 * njac[i][j][k][1][4];
                /*[6]*/
                lhs[i][j][k][1][2][0] = tmp1 * 2.0 * njac[i][j][k][2][0];
                /*[6]*/
                lhs[i][j][k][1][2][1] = tmp1 * 2.0 * njac[i][j][k][2][1];
                /*[6]*/
                lhs[i][j][k][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i][j][k][2][2] + tmp1 * 2.0 * dx3;
                /*[6]*/
                lhs[i][j][k][1][2][3] = tmp1 * 2.0 * njac[i][j][k][2][3];
                /*[6]*/
                lhs[i][j][k][1][2][4] = tmp1 * 2.0 * njac[i][j][k][2][4];
                /*[6]*/
                lhs[i][j][k][1][3][0] = tmp1 * 2.0 * njac[i][j][k][3][0];
                /*[6]*/
                lhs[i][j][k][1][3][1] = tmp1 * 2.0 * njac[i][j][k][3][1];
                /*[6]*/
                lhs[i][j][k][1][3][2] = tmp1 * 2.0 * njac[i][j][k][3][2];
                /*[6]*/
                lhs[i][j][k][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i][j][k][3][3] + tmp1 * 2.0 * dx4;
                /*[6]*/
                lhs[i][j][k][1][3][4] = tmp1 * 2.0 * njac[i][j][k][3][4];
                /*[6]*/
                lhs[i][j][k][1][4][0] = tmp1 * 2.0 * njac[i][j][k][4][0];
                /*[6]*/
                lhs[i][j][k][1][4][1] = tmp1 * 2.0 * njac[i][j][k][4][1];
                /*[6]*/
                lhs[i][j][k][1][4][2] = tmp1 * 2.0 * njac[i][j][k][4][2];
                /*[6]*/
                lhs[i][j][k][1][4][3] = tmp1 * 2.0 * njac[i][j][k][4][3];
                /*[6]*/
                lhs[i][j][k][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i][j][k][4][4] + tmp1 * 2.0 * dx5;
                /*[6]*/
                lhs[i][j][k][2][0][0] = tmp2 * fjac[i + 1][j][k][0][0] - tmp1 * njac[i + 1][j][k][0][0] - tmp1 * dx1;
                /*[6]*/
                lhs[i][j][k][2][0][1] = tmp2 * fjac[i + 1][j][k][0][1] - tmp1 * njac[i + 1][j][k][0][1];
                /*[6]*/
                lhs[i][j][k][2][0][2] = tmp2 * fjac[i + 1][j][k][0][2] - tmp1 * njac[i + 1][j][k][0][2];
                /*[6]*/
                lhs[i][j][k][2][0][3] = tmp2 * fjac[i + 1][j][k][0][3] - tmp1 * njac[i + 1][j][k][0][3];
                /*[6]*/
                lhs[i][j][k][2][0][4] = tmp2 * fjac[i + 1][j][k][0][4] - tmp1 * njac[i + 1][j][k][0][4];
                /*[6]*/
                lhs[i][j][k][2][1][0] = tmp2 * fjac[i + 1][j][k][1][0] - tmp1 * njac[i + 1][j][k][1][0];
                /*[6]*/
                lhs[i][j][k][2][1][1] = tmp2 * fjac[i + 1][j][k][1][1] - tmp1 * njac[i + 1][j][k][1][1] - tmp1 * dx2;
                /*[6]*/
                lhs[i][j][k][2][1][2] = tmp2 * fjac[i + 1][j][k][1][2] - tmp1 * njac[i + 1][j][k][1][2];
                /*[6]*/
                lhs[i][j][k][2][1][3] = tmp2 * fjac[i + 1][j][k][1][3] - tmp1 * njac[i + 1][j][k][1][3];
                /*[6]*/
                lhs[i][j][k][2][1][4] = tmp2 * fjac[i + 1][j][k][1][4] - tmp1 * njac[i + 1][j][k][1][4];
                /*[6]*/
                lhs[i][j][k][2][2][0] = tmp2 * fjac[i + 1][j][k][2][0] - tmp1 * njac[i + 1][j][k][2][0];
                /*[6]*/
                lhs[i][j][k][2][2][1] = tmp2 * fjac[i + 1][j][k][2][1] - tmp1 * njac[i + 1][j][k][2][1];
                /*[6]*/
                lhs[i][j][k][2][2][2] = tmp2 * fjac[i + 1][j][k][2][2] - tmp1 * njac[i + 1][j][k][2][2] - tmp1 * dx3;
                /*[6]*/
                lhs[i][j][k][2][2][3] = tmp2 * fjac[i + 1][j][k][2][3] - tmp1 * njac[i + 1][j][k][2][3];
                /*[6]*/
                lhs[i][j][k][2][2][4] = tmp2 * fjac[i + 1][j][k][2][4] - tmp1 * njac[i + 1][j][k][2][4];
                /*[6]*/
                lhs[i][j][k][2][3][0] = tmp2 * fjac[i + 1][j][k][3][0] - tmp1 * njac[i + 1][j][k][3][0];
                /*[6]*/
                lhs[i][j][k][2][3][1] = tmp2 * fjac[i + 1][j][k][3][1] - tmp1 * njac[i + 1][j][k][3][1];
                /*[6]*/
                lhs[i][j][k][2][3][2] = tmp2 * fjac[i + 1][j][k][3][2] - tmp1 * njac[i + 1][j][k][3][2];
                /*[6]*/
                lhs[i][j][k][2][3][3] = tmp2 * fjac[i + 1][j][k][3][3] - tmp1 * njac[i + 1][j][k][3][3] - tmp1 * dx4;
                /*[6]*/
                lhs[i][j][k][2][3][4] = tmp2 * fjac[i + 1][j][k][3][4] - tmp1 * njac[i + 1][j][k][3][4];
                /*[6]*/
                lhs[i][j][k][2][4][0] = tmp2 * fjac[i + 1][j][k][4][0] - tmp1 * njac[i + 1][j][k][4][0];
                /*[6]*/
                lhs[i][j][k][2][4][1] = tmp2 * fjac[i + 1][j][k][4][1] - tmp1 * njac[i + 1][j][k][4][1];
                /*[6]*/
                lhs[i][j][k][2][4][2] = tmp2 * fjac[i + 1][j][k][4][2] - tmp1 * njac[i + 1][j][k][4][2];
                /*[6]*/
                lhs[i][j][k][2][4][3] = tmp2 * fjac[i + 1][j][k][4][3] - tmp1 * njac[i + 1][j][k][4][3];
                /*[6]*/
                lhs[i][j][k][2][4][4] = tmp2 * fjac[i + 1][j][k][4][4] - tmp1 * njac[i + 1][j][k][4][4] - tmp1 * dx5;
            }
        }
    }
    /*[6]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[6]*/
#pragma omp barrier
}
/*[9]*/
static void lhsy() {
/*[9]*/
    /*[9]*/
    int i;
    /*[9]*/
    int j;
    /*[9]*/
    int k;
    /*[9]*/
#pragma omp for nowait
    /*[9]*/
    /*[9]*/
    /*[9]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[9]*/
        /*[9]*/
        /*[9]*/
        /*[9]*/
        /*[9]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[9]*/
            /*[9]*/
            /*[9]*/
            /*[9]*/
            /*[9]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[9]*/
                /*[9]*/
                tmp1 = 1.0 / u[i][j][k][0];
                /*[9]*/
                tmp2 = tmp1 * tmp1;
                /*[9]*/
                tmp3 = tmp1 * tmp2;
                /*[9]*/
                fjac[i][j][k][0][0] = 0.0;
                /*[9]*/
                fjac[i][j][k][0][1] = 0.0;
                /*[9]*/
                fjac[i][j][k][0][2] = 1.0;
                /*[9]*/
                fjac[i][j][k][0][3] = 0.0;
                /*[9]*/
                fjac[i][j][k][0][4] = 0.0;
                /*[9]*/
                fjac[i][j][k][1][0] = -(u[i][j][k][1] * u[i][j][k][2]) * tmp2;
                /*[9]*/
                fjac[i][j][k][1][1] = u[i][j][k][2] * tmp1;
                /*[9]*/
                fjac[i][j][k][1][2] = u[i][j][k][1] * tmp1;
                /*[9]*/
                fjac[i][j][k][1][3] = 0.0;
                /*[9]*/
                fjac[i][j][k][1][4] = 0.0;
                /*[9]*/
                fjac[i][j][k][2][0] = -(u[i][j][k][2] * u[i][j][k][2] * tmp2) + 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*[9]*/
                fjac[i][j][k][2][1] = -c2 * u[i][j][k][1] * tmp1;
                /*[9]*/
                fjac[i][j][k][2][2] = (2.0 - c2) * u[i][j][k][2] * tmp1;
                /*[9]*/
                fjac[i][j][k][2][3] = -c2 * u[i][j][k][3] * tmp1;
                /*[9]*/
                fjac[i][j][k][2][4] = c2;
                /*[9]*/
                fjac[i][j][k][3][0] = -(u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*[9]*/
                fjac[i][j][k][3][1] = 0.0;
                /*[9]*/
                fjac[i][j][k][3][2] = u[i][j][k][3] * tmp1;
                /*[9]*/
                fjac[i][j][k][3][3] = u[i][j][k][2] * tmp1;
                /*[9]*/
                fjac[i][j][k][3][4] = 0.0;
                /*[9]*/
                fjac[i][j][k][4][0] = (c2 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2 - c1 * u[i][j][k][4] * tmp1) * u[i][j][k][2] * tmp1;
                /*[9]*/
                fjac[i][j][k][4][1] = -c2 * u[i][j][k][1] * u[i][j][k][2] * tmp2;
                /*[9]*/
                fjac[i][j][k][4][2] = c1 * u[i][j][k][4] * tmp1 - 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + 3.0 * u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*[9]*/
                fjac[i][j][k][4][3] = -c2 * (u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*[9]*/
                fjac[i][j][k][4][4] = c1 * u[i][j][k][2] * tmp1;
                /*[9]*/
                njac[i][j][k][0][0] = 0.0;
                /*[9]*/
                njac[i][j][k][0][1] = 0.0;
                /*[9]*/
                njac[i][j][k][0][2] = 0.0;
                /*[9]*/
                njac[i][j][k][0][3] = 0.0;
                /*[9]*/
                njac[i][j][k][0][4] = 0.0;
                /*[9]*/
                njac[i][j][k][1][0] = -c3c4 * tmp2 * u[i][j][k][1];
                /*[9]*/
                njac[i][j][k][1][1] = c3c4 * tmp1;
                /*[9]*/
                njac[i][j][k][1][2] = 0.0;
                /*[9]*/
                njac[i][j][k][1][3] = 0.0;
                /*[9]*/
                njac[i][j][k][1][4] = 0.0;
                /*[9]*/
                njac[i][j][k][2][0] = -con43 * c3c4 * tmp2 * u[i][j][k][2];
                /*[9]*/
                njac[i][j][k][2][1] = 0.0;
                /*[9]*/
                njac[i][j][k][2][2] = con43 * c3c4 * tmp1;
                /*[9]*/
                njac[i][j][k][2][3] = 0.0;
                /*[9]*/
                njac[i][j][k][2][4] = 0.0;
                /*[9]*/
                njac[i][j][k][3][0] = -c3c4 * tmp2 * u[i][j][k][3];
                /*[9]*/
                njac[i][j][k][3][1] = 0.0;
                /*[9]*/
                njac[i][j][k][3][2] = 0.0;
                /*[9]*/
                njac[i][j][k][3][3] = c3c4 * tmp1;
                /*[9]*/
                njac[i][j][k][3][4] = 0.0;
                /*[9]*/
                njac[i][j][k][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4];
                /*[9]*/
                njac[i][j][k][4][1] = (c3c4 - c1345) * tmp2 * u[i][j][k][1];
                /*[9]*/
                njac[i][j][k][4][2] = (con43 * c3c4 - c1345) * tmp2 * u[i][j][k][2];
                /*[9]*/
                njac[i][j][k][4][3] = (c3c4 - c1345) * tmp2 * u[i][j][k][3];
                /*[9]*/
                njac[i][j][k][4][4] = c1345 * tmp1;
            }
        }
    }
    /*[9]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[9]*/
#pragma omp barrier
    /*[30]*/
#pragma omp for nowait
    /*[30]*/
    /*[30]*/
    /*[30]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[30]*/
        /*[30]*/
        /*[30]*/
        /*[30]*/
        /*[30]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[30]*/
            /*[30]*/
            /*[30]*/
            /*[30]*/
            /*[30]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[30]*/
                /*[30]*/
                tmp1 = dt * ty1;
                /*[30]*/
                tmp2 = dt * ty2;
                /*[30]*/
                lhs[i][j][k][0][0][0] = -tmp2 * fjac[i][j - 1][k][0][0] - tmp1 * njac[i][j - 1][k][0][0] - tmp1 * dy1;
                /*[30]*/
                lhs[i][j][k][0][0][1] = -tmp2 * fjac[i][j - 1][k][0][1] - tmp1 * njac[i][j - 1][k][0][1];
                /*[30]*/
                lhs[i][j][k][0][0][2] = -tmp2 * fjac[i][j - 1][k][0][2] - tmp1 * njac[i][j - 1][k][0][2];
                /*[30]*/
                lhs[i][j][k][0][0][3] = -tmp2 * fjac[i][j - 1][k][0][3] - tmp1 * njac[i][j - 1][k][0][3];
                /*[30]*/
                lhs[i][j][k][0][0][4] = -tmp2 * fjac[i][j - 1][k][0][4] - tmp1 * njac[i][j - 1][k][0][4];
                /*[30]*/
                lhs[i][j][k][0][1][0] = -tmp2 * fjac[i][j - 1][k][1][0] - tmp1 * njac[i][j - 1][k][1][0];
                /*[30]*/
                lhs[i][j][k][0][1][1] = -tmp2 * fjac[i][j - 1][k][1][1] - tmp1 * njac[i][j - 1][k][1][1] - tmp1 * dy2;
                /*[30]*/
                lhs[i][j][k][0][1][2] = -tmp2 * fjac[i][j - 1][k][1][2] - tmp1 * njac[i][j - 1][k][1][2];
                /*[30]*/
                lhs[i][j][k][0][1][3] = -tmp2 * fjac[i][j - 1][k][1][3] - tmp1 * njac[i][j - 1][k][1][3];
                /*[30]*/
                lhs[i][j][k][0][1][4] = -tmp2 * fjac[i][j - 1][k][1][4] - tmp1 * njac[i][j - 1][k][1][4];
                /*[30]*/
                lhs[i][j][k][0][2][0] = -tmp2 * fjac[i][j - 1][k][2][0] - tmp1 * njac[i][j - 1][k][2][0];
                /*[30]*/
                lhs[i][j][k][0][2][1] = -tmp2 * fjac[i][j - 1][k][2][1] - tmp1 * njac[i][j - 1][k][2][1];
                /*[30]*/
                lhs[i][j][k][0][2][2] = -tmp2 * fjac[i][j - 1][k][2][2] - tmp1 * njac[i][j - 1][k][2][2] - tmp1 * dy3;
                /*[30]*/
                lhs[i][j][k][0][2][3] = -tmp2 * fjac[i][j - 1][k][2][3] - tmp1 * njac[i][j - 1][k][2][3];
                /*[30]*/
                lhs[i][j][k][0][2][4] = -tmp2 * fjac[i][j - 1][k][2][4] - tmp1 * njac[i][j - 1][k][2][4];
                /*[30]*/
                lhs[i][j][k][0][3][0] = -tmp2 * fjac[i][j - 1][k][3][0] - tmp1 * njac[i][j - 1][k][3][0];
                /*[30]*/
                lhs[i][j][k][0][3][1] = -tmp2 * fjac[i][j - 1][k][3][1] - tmp1 * njac[i][j - 1][k][3][1];
                /*[30]*/
                lhs[i][j][k][0][3][2] = -tmp2 * fjac[i][j - 1][k][3][2] - tmp1 * njac[i][j - 1][k][3][2];
                /*[30]*/
                lhs[i][j][k][0][3][3] = -tmp2 * fjac[i][j - 1][k][3][3] - tmp1 * njac[i][j - 1][k][3][3] - tmp1 * dy4;
                /*[30]*/
                lhs[i][j][k][0][3][4] = -tmp2 * fjac[i][j - 1][k][3][4] - tmp1 * njac[i][j - 1][k][3][4];
                /*[30]*/
                lhs[i][j][k][0][4][0] = -tmp2 * fjac[i][j - 1][k][4][0] - tmp1 * njac[i][j - 1][k][4][0];
                /*[30]*/
                lhs[i][j][k][0][4][1] = -tmp2 * fjac[i][j - 1][k][4][1] - tmp1 * njac[i][j - 1][k][4][1];
                /*[30]*/
                lhs[i][j][k][0][4][2] = -tmp2 * fjac[i][j - 1][k][4][2] - tmp1 * njac[i][j - 1][k][4][2];
                /*[30]*/
                lhs[i][j][k][0][4][3] = -tmp2 * fjac[i][j - 1][k][4][3] - tmp1 * njac[i][j - 1][k][4][3];
                /*[30]*/
                lhs[i][j][k][0][4][4] = -tmp2 * fjac[i][j - 1][k][4][4] - tmp1 * njac[i][j - 1][k][4][4] - tmp1 * dy5;
                /*[30]*/
                lhs[i][j][k][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i][j][k][0][0] + tmp1 * 2.0 * dy1;
                /*[30]*/
                lhs[i][j][k][1][0][1] = tmp1 * 2.0 * njac[i][j][k][0][1];
                /*[30]*/
                lhs[i][j][k][1][0][2] = tmp1 * 2.0 * njac[i][j][k][0][2];
                /*[30]*/
                lhs[i][j][k][1][0][3] = tmp1 * 2.0 * njac[i][j][k][0][3];
                /*[30]*/
                lhs[i][j][k][1][0][4] = tmp1 * 2.0 * njac[i][j][k][0][4];
                /*[30]*/
                lhs[i][j][k][1][1][0] = tmp1 * 2.0 * njac[i][j][k][1][0];
                /*[30]*/
                lhs[i][j][k][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i][j][k][1][1] + tmp1 * 2.0 * dy2;
                /*[30]*/
                lhs[i][j][k][1][1][2] = tmp1 * 2.0 * njac[i][j][k][1][2];
                /*[30]*/
                lhs[i][j][k][1][1][3] = tmp1 * 2.0 * njac[i][j][k][1][3];
                /*[30]*/
                lhs[i][j][k][1][1][4] = tmp1 * 2.0 * njac[i][j][k][1][4];
                /*[30]*/
                lhs[i][j][k][1][2][0] = tmp1 * 2.0 * njac[i][j][k][2][0];
                /*[30]*/
                lhs[i][j][k][1][2][1] = tmp1 * 2.0 * njac[i][j][k][2][1];
                /*[30]*/
                lhs[i][j][k][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i][j][k][2][2] + tmp1 * 2.0 * dy3;
                /*[30]*/
                lhs[i][j][k][1][2][3] = tmp1 * 2.0 * njac[i][j][k][2][3];
                /*[30]*/
                lhs[i][j][k][1][2][4] = tmp1 * 2.0 * njac[i][j][k][2][4];
                /*[30]*/
                lhs[i][j][k][1][3][0] = tmp1 * 2.0 * njac[i][j][k][3][0];
                /*[30]*/
                lhs[i][j][k][1][3][1] = tmp1 * 2.0 * njac[i][j][k][3][1];
                /*[30]*/
                lhs[i][j][k][1][3][2] = tmp1 * 2.0 * njac[i][j][k][3][2];
                /*[30]*/
                lhs[i][j][k][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i][j][k][3][3] + tmp1 * 2.0 * dy4;
                /*[30]*/
                lhs[i][j][k][1][3][4] = tmp1 * 2.0 * njac[i][j][k][3][4];
                /*[30]*/
                lhs[i][j][k][1][4][0] = tmp1 * 2.0 * njac[i][j][k][4][0];
                /*[30]*/
                lhs[i][j][k][1][4][1] = tmp1 * 2.0 * njac[i][j][k][4][1];
                /*[30]*/
                lhs[i][j][k][1][4][2] = tmp1 * 2.0 * njac[i][j][k][4][2];
                /*[30]*/
                lhs[i][j][k][1][4][3] = tmp1 * 2.0 * njac[i][j][k][4][3];
                /*[30]*/
                lhs[i][j][k][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i][j][k][4][4] + tmp1 * 2.0 * dy5;
                /*[30]*/
                lhs[i][j][k][2][0][0] = tmp2 * fjac[i][j + 1][k][0][0] - tmp1 * njac[i][j + 1][k][0][0] - tmp1 * dy1;
                /*[30]*/
                lhs[i][j][k][2][0][1] = tmp2 * fjac[i][j + 1][k][0][1] - tmp1 * njac[i][j + 1][k][0][1];
                /*[30]*/
                lhs[i][j][k][2][0][2] = tmp2 * fjac[i][j + 1][k][0][2] - tmp1 * njac[i][j + 1][k][0][2];
                /*[30]*/
                lhs[i][j][k][2][0][3] = tmp2 * fjac[i][j + 1][k][0][3] - tmp1 * njac[i][j + 1][k][0][3];
                /*[30]*/
                lhs[i][j][k][2][0][4] = tmp2 * fjac[i][j + 1][k][0][4] - tmp1 * njac[i][j + 1][k][0][4];
                /*[30]*/
                lhs[i][j][k][2][1][0] = tmp2 * fjac[i][j + 1][k][1][0] - tmp1 * njac[i][j + 1][k][1][0];
                /*[30]*/
                lhs[i][j][k][2][1][1] = tmp2 * fjac[i][j + 1][k][1][1] - tmp1 * njac[i][j + 1][k][1][1] - tmp1 * dy2;
                /*[30]*/
                lhs[i][j][k][2][1][2] = tmp2 * fjac[i][j + 1][k][1][2] - tmp1 * njac[i][j + 1][k][1][2];
                /*[30]*/
                lhs[i][j][k][2][1][3] = tmp2 * fjac[i][j + 1][k][1][3] - tmp1 * njac[i][j + 1][k][1][3];
                /*[30]*/
                lhs[i][j][k][2][1][4] = tmp2 * fjac[i][j + 1][k][1][4] - tmp1 * njac[i][j + 1][k][1][4];
                /*[30]*/
                lhs[i][j][k][2][2][0] = tmp2 * fjac[i][j + 1][k][2][0] - tmp1 * njac[i][j + 1][k][2][0];
                /*[30]*/
                lhs[i][j][k][2][2][1] = tmp2 * fjac[i][j + 1][k][2][1] - tmp1 * njac[i][j + 1][k][2][1];
                /*[30]*/
                lhs[i][j][k][2][2][2] = tmp2 * fjac[i][j + 1][k][2][2] - tmp1 * njac[i][j + 1][k][2][2] - tmp1 * dy3;
                /*[30]*/
                lhs[i][j][k][2][2][3] = tmp2 * fjac[i][j + 1][k][2][3] - tmp1 * njac[i][j + 1][k][2][3];
                /*[30]*/
                lhs[i][j][k][2][2][4] = tmp2 * fjac[i][j + 1][k][2][4] - tmp1 * njac[i][j + 1][k][2][4];
                /*[30]*/
                lhs[i][j][k][2][3][0] = tmp2 * fjac[i][j + 1][k][3][0] - tmp1 * njac[i][j + 1][k][3][0];
                /*[30]*/
                lhs[i][j][k][2][3][1] = tmp2 * fjac[i][j + 1][k][3][1] - tmp1 * njac[i][j + 1][k][3][1];
                /*[30]*/
                lhs[i][j][k][2][3][2] = tmp2 * fjac[i][j + 1][k][3][2] - tmp1 * njac[i][j + 1][k][3][2];
                /*[30]*/
                lhs[i][j][k][2][3][3] = tmp2 * fjac[i][j + 1][k][3][3] - tmp1 * njac[i][j + 1][k][3][3] - tmp1 * dy4;
                /*[30]*/
                lhs[i][j][k][2][3][4] = tmp2 * fjac[i][j + 1][k][3][4] - tmp1 * njac[i][j + 1][k][3][4];
                /*[30]*/
                lhs[i][j][k][2][4][0] = tmp2 * fjac[i][j + 1][k][4][0] - tmp1 * njac[i][j + 1][k][4][0];
                /*[30]*/
                lhs[i][j][k][2][4][1] = tmp2 * fjac[i][j + 1][k][4][1] - tmp1 * njac[i][j + 1][k][4][1];
                /*[30]*/
                lhs[i][j][k][2][4][2] = tmp2 * fjac[i][j + 1][k][4][2] - tmp1 * njac[i][j + 1][k][4][2];
                /*[30]*/
                lhs[i][j][k][2][4][3] = tmp2 * fjac[i][j + 1][k][4][3] - tmp1 * njac[i][j + 1][k][4][3];
                /*[30]*/
                lhs[i][j][k][2][4][4] = tmp2 * fjac[i][j + 1][k][4][4] - tmp1 * njac[i][j + 1][k][4][4] - tmp1 * dy5;
            }
        }
    }
    /*[30]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[30]*/
#pragma omp barrier
}
/*[12]*/
static void lhsz() {
/*[12]*/
    /*[12]*/
    int i;
    /*[12]*/
    int j;
    /*[12]*/
    int k;
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
            for (k = 0; k < grid_points[2]; k++) {
            /*[12]*/
                /*[12]*/
                tmp1 = 1.0 / u[i][j][k][0];
                /*[12]*/
                tmp2 = tmp1 * tmp1;
                /*[12]*/
                tmp3 = tmp1 * tmp2;
                /*[12]*/
                fjac[i][j][k][0][0] = 0.0;
                /*[12]*/
                fjac[i][j][k][0][1] = 0.0;
                /*[12]*/
                fjac[i][j][k][0][2] = 0.0;
                /*[12]*/
                fjac[i][j][k][0][3] = 1.0;
                /*[12]*/
                fjac[i][j][k][0][4] = 0.0;
                /*[12]*/
                fjac[i][j][k][1][0] = -(u[i][j][k][1] * u[i][j][k][3]) * tmp2;
                /*[12]*/
                fjac[i][j][k][1][1] = u[i][j][k][3] * tmp1;
                /*[12]*/
                fjac[i][j][k][1][2] = 0.0;
                /*[12]*/
                fjac[i][j][k][1][3] = u[i][j][k][1] * tmp1;
                /*[12]*/
                fjac[i][j][k][1][4] = 0.0;
                /*[12]*/
                fjac[i][j][k][2][0] = -(u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*[12]*/
                fjac[i][j][k][2][1] = 0.0;
                /*[12]*/
                fjac[i][j][k][2][2] = u[i][j][k][3] * tmp1;
                /*[12]*/
                fjac[i][j][k][2][3] = u[i][j][k][2] * tmp1;
                /*[12]*/
                fjac[i][j][k][2][4] = 0.0;
                /*[12]*/
                fjac[i][j][k][3][0] = -(u[i][j][k][3] * u[i][j][k][3] * tmp2) + 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*[12]*/
                fjac[i][j][k][3][1] = -c2 * u[i][j][k][1] * tmp1;
                /*[12]*/
                fjac[i][j][k][3][2] = -c2 * u[i][j][k][2] * tmp1;
                /*[12]*/
                fjac[i][j][k][3][3] = (2.0 - c2) * u[i][j][k][3] * tmp1;
                /*[12]*/
                fjac[i][j][k][3][4] = c2;
                /*[12]*/
                fjac[i][j][k][4][0] = (c2 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2 - c1 * (u[i][j][k][4] * tmp1)) * (u[i][j][k][3] * tmp1);
                /*[12]*/
                fjac[i][j][k][4][1] = -c2 * (u[i][j][k][1] * u[i][j][k][3]) * tmp2;
                /*[12]*/
                fjac[i][j][k][4][2] = -c2 * (u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*[12]*/
                fjac[i][j][k][4][3] = c1 * (u[i][j][k][4] * tmp1) - 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + 3.0 * u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*[12]*/
                fjac[i][j][k][4][4] = c1 * u[i][j][k][3] * tmp1;
                /*[12]*/
                njac[i][j][k][0][0] = 0.0;
                /*[12]*/
                njac[i][j][k][0][1] = 0.0;
                /*[12]*/
                njac[i][j][k][0][2] = 0.0;
                /*[12]*/
                njac[i][j][k][0][3] = 0.0;
                /*[12]*/
                njac[i][j][k][0][4] = 0.0;
                /*[12]*/
                njac[i][j][k][1][0] = -c3c4 * tmp2 * u[i][j][k][1];
                /*[12]*/
                njac[i][j][k][1][1] = c3c4 * tmp1;
                /*[12]*/
                njac[i][j][k][1][2] = 0.0;
                /*[12]*/
                njac[i][j][k][1][3] = 0.0;
                /*[12]*/
                njac[i][j][k][1][4] = 0.0;
                /*[12]*/
                njac[i][j][k][2][0] = -c3c4 * tmp2 * u[i][j][k][2];
                /*[12]*/
                njac[i][j][k][2][1] = 0.0;
                /*[12]*/
                njac[i][j][k][2][2] = c3c4 * tmp1;
                /*[12]*/
                njac[i][j][k][2][3] = 0.0;
                /*[12]*/
                njac[i][j][k][2][4] = 0.0;
                /*[12]*/
                njac[i][j][k][3][0] = -con43 * c3c4 * tmp2 * u[i][j][k][3];
                /*[12]*/
                njac[i][j][k][3][1] = 0.0;
                /*[12]*/
                njac[i][j][k][3][2] = 0.0;
                /*[12]*/
                njac[i][j][k][3][3] = con43 * c3 * c4 * tmp1;
                /*[12]*/
                njac[i][j][k][3][4] = 0.0;
                /*[12]*/
                njac[i][j][k][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4];
                /*[12]*/
                njac[i][j][k][4][1] = (c3c4 - c1345) * tmp2 * u[i][j][k][1];
                /*[12]*/
                njac[i][j][k][4][2] = (c3c4 - c1345) * tmp2 * u[i][j][k][2];
                /*[12]*/
                njac[i][j][k][4][3] = (con43 * c3c4 - c1345) * tmp2 * u[i][j][k][3];
                /*[12]*/
                njac[i][j][k][4][4] = c1345 * tmp1;
            }
        }
    }
    /*[12]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[12]*/
#pragma omp barrier
    /*[32]*/
#pragma omp for nowait
    /*[32]*/
    /*[32]*/
    /*[32]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[32]*/
        /*[32]*/
        /*[32]*/
        /*[32]*/
        /*[32]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[32]*/
            /*[32]*/
            /*[32]*/
            /*[32]*/
            /*[32]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[32]*/
                /*[32]*/
                tmp1 = dt * tz1;
                /*[32]*/
                tmp2 = dt * tz2;
                /*[32]*/
                lhs[i][j][k][0][0][0] = -tmp2 * fjac[i][j][k - 1][0][0] - tmp1 * njac[i][j][k - 1][0][0] - tmp1 * dz1;
                /*[32]*/
                lhs[i][j][k][0][0][1] = -tmp2 * fjac[i][j][k - 1][0][1] - tmp1 * njac[i][j][k - 1][0][1];
                /*[32]*/
                lhs[i][j][k][0][0][2] = -tmp2 * fjac[i][j][k - 1][0][2] - tmp1 * njac[i][j][k - 1][0][2];
                /*[32]*/
                lhs[i][j][k][0][0][3] = -tmp2 * fjac[i][j][k - 1][0][3] - tmp1 * njac[i][j][k - 1][0][3];
                /*[32]*/
                lhs[i][j][k][0][0][4] = -tmp2 * fjac[i][j][k - 1][0][4] - tmp1 * njac[i][j][k - 1][0][4];
                /*[32]*/
                lhs[i][j][k][0][1][0] = -tmp2 * fjac[i][j][k - 1][1][0] - tmp1 * njac[i][j][k - 1][1][0];
                /*[32]*/
                lhs[i][j][k][0][1][1] = -tmp2 * fjac[i][j][k - 1][1][1] - tmp1 * njac[i][j][k - 1][1][1] - tmp1 * dz2;
                /*[32]*/
                lhs[i][j][k][0][1][2] = -tmp2 * fjac[i][j][k - 1][1][2] - tmp1 * njac[i][j][k - 1][1][2];
                /*[32]*/
                lhs[i][j][k][0][1][3] = -tmp2 * fjac[i][j][k - 1][1][3] - tmp1 * njac[i][j][k - 1][1][3];
                /*[32]*/
                lhs[i][j][k][0][1][4] = -tmp2 * fjac[i][j][k - 1][1][4] - tmp1 * njac[i][j][k - 1][1][4];
                /*[32]*/
                lhs[i][j][k][0][2][0] = -tmp2 * fjac[i][j][k - 1][2][0] - tmp1 * njac[i][j][k - 1][2][0];
                /*[32]*/
                lhs[i][j][k][0][2][1] = -tmp2 * fjac[i][j][k - 1][2][1] - tmp1 * njac[i][j][k - 1][2][1];
                /*[32]*/
                lhs[i][j][k][0][2][2] = -tmp2 * fjac[i][j][k - 1][2][2] - tmp1 * njac[i][j][k - 1][2][2] - tmp1 * dz3;
                /*[32]*/
                lhs[i][j][k][0][2][3] = -tmp2 * fjac[i][j][k - 1][2][3] - tmp1 * njac[i][j][k - 1][2][3];
                /*[32]*/
                lhs[i][j][k][0][2][4] = -tmp2 * fjac[i][j][k - 1][2][4] - tmp1 * njac[i][j][k - 1][2][4];
                /*[32]*/
                lhs[i][j][k][0][3][0] = -tmp2 * fjac[i][j][k - 1][3][0] - tmp1 * njac[i][j][k - 1][3][0];
                /*[32]*/
                lhs[i][j][k][0][3][1] = -tmp2 * fjac[i][j][k - 1][3][1] - tmp1 * njac[i][j][k - 1][3][1];
                /*[32]*/
                lhs[i][j][k][0][3][2] = -tmp2 * fjac[i][j][k - 1][3][2] - tmp1 * njac[i][j][k - 1][3][2];
                /*[32]*/
                lhs[i][j][k][0][3][3] = -tmp2 * fjac[i][j][k - 1][3][3] - tmp1 * njac[i][j][k - 1][3][3] - tmp1 * dz4;
                /*[32]*/
                lhs[i][j][k][0][3][4] = -tmp2 * fjac[i][j][k - 1][3][4] - tmp1 * njac[i][j][k - 1][3][4];
                /*[32]*/
                lhs[i][j][k][0][4][0] = -tmp2 * fjac[i][j][k - 1][4][0] - tmp1 * njac[i][j][k - 1][4][0];
                /*[32]*/
                lhs[i][j][k][0][4][1] = -tmp2 * fjac[i][j][k - 1][4][1] - tmp1 * njac[i][j][k - 1][4][1];
                /*[32]*/
                lhs[i][j][k][0][4][2] = -tmp2 * fjac[i][j][k - 1][4][2] - tmp1 * njac[i][j][k - 1][4][2];
                /*[32]*/
                lhs[i][j][k][0][4][3] = -tmp2 * fjac[i][j][k - 1][4][3] - tmp1 * njac[i][j][k - 1][4][3];
                /*[32]*/
                lhs[i][j][k][0][4][4] = -tmp2 * fjac[i][j][k - 1][4][4] - tmp1 * njac[i][j][k - 1][4][4] - tmp1 * dz5;
                /*[32]*/
                lhs[i][j][k][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i][j][k][0][0] + tmp1 * 2.0 * dz1;
                /*[32]*/
                lhs[i][j][k][1][0][1] = tmp1 * 2.0 * njac[i][j][k][0][1];
                /*[32]*/
                lhs[i][j][k][1][0][2] = tmp1 * 2.0 * njac[i][j][k][0][2];
                /*[32]*/
                lhs[i][j][k][1][0][3] = tmp1 * 2.0 * njac[i][j][k][0][3];
                /*[32]*/
                lhs[i][j][k][1][0][4] = tmp1 * 2.0 * njac[i][j][k][0][4];
                /*[32]*/
                lhs[i][j][k][1][1][0] = tmp1 * 2.0 * njac[i][j][k][1][0];
                /*[32]*/
                lhs[i][j][k][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i][j][k][1][1] + tmp1 * 2.0 * dz2;
                /*[32]*/
                lhs[i][j][k][1][1][2] = tmp1 * 2.0 * njac[i][j][k][1][2];
                /*[32]*/
                lhs[i][j][k][1][1][3] = tmp1 * 2.0 * njac[i][j][k][1][3];
                /*[32]*/
                lhs[i][j][k][1][1][4] = tmp1 * 2.0 * njac[i][j][k][1][4];
                /*[32]*/
                lhs[i][j][k][1][2][0] = tmp1 * 2.0 * njac[i][j][k][2][0];
                /*[32]*/
                lhs[i][j][k][1][2][1] = tmp1 * 2.0 * njac[i][j][k][2][1];
                /*[32]*/
                lhs[i][j][k][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i][j][k][2][2] + tmp1 * 2.0 * dz3;
                /*[32]*/
                lhs[i][j][k][1][2][3] = tmp1 * 2.0 * njac[i][j][k][2][3];
                /*[32]*/
                lhs[i][j][k][1][2][4] = tmp1 * 2.0 * njac[i][j][k][2][4];
                /*[32]*/
                lhs[i][j][k][1][3][0] = tmp1 * 2.0 * njac[i][j][k][3][0];
                /*[32]*/
                lhs[i][j][k][1][3][1] = tmp1 * 2.0 * njac[i][j][k][3][1];
                /*[32]*/
                lhs[i][j][k][1][3][2] = tmp1 * 2.0 * njac[i][j][k][3][2];
                /*[32]*/
                lhs[i][j][k][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i][j][k][3][3] + tmp1 * 2.0 * dz4;
                /*[32]*/
                lhs[i][j][k][1][3][4] = tmp1 * 2.0 * njac[i][j][k][3][4];
                /*[32]*/
                lhs[i][j][k][1][4][0] = tmp1 * 2.0 * njac[i][j][k][4][0];
                /*[32]*/
                lhs[i][j][k][1][4][1] = tmp1 * 2.0 * njac[i][j][k][4][1];
                /*[32]*/
                lhs[i][j][k][1][4][2] = tmp1 * 2.0 * njac[i][j][k][4][2];
                /*[32]*/
                lhs[i][j][k][1][4][3] = tmp1 * 2.0 * njac[i][j][k][4][3];
                /*[32]*/
                lhs[i][j][k][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i][j][k][4][4] + tmp1 * 2.0 * dz5;
                /*[32]*/
                lhs[i][j][k][2][0][0] = tmp2 * fjac[i][j][k + 1][0][0] - tmp1 * njac[i][j][k + 1][0][0] - tmp1 * dz1;
                /*[32]*/
                lhs[i][j][k][2][0][1] = tmp2 * fjac[i][j][k + 1][0][1] - tmp1 * njac[i][j][k + 1][0][1];
                /*[32]*/
                lhs[i][j][k][2][0][2] = tmp2 * fjac[i][j][k + 1][0][2] - tmp1 * njac[i][j][k + 1][0][2];
                /*[32]*/
                lhs[i][j][k][2][0][3] = tmp2 * fjac[i][j][k + 1][0][3] - tmp1 * njac[i][j][k + 1][0][3];
                /*[32]*/
                lhs[i][j][k][2][0][4] = tmp2 * fjac[i][j][k + 1][0][4] - tmp1 * njac[i][j][k + 1][0][4];
                /*[32]*/
                lhs[i][j][k][2][1][0] = tmp2 * fjac[i][j][k + 1][1][0] - tmp1 * njac[i][j][k + 1][1][0];
                /*[32]*/
                lhs[i][j][k][2][1][1] = tmp2 * fjac[i][j][k + 1][1][1] - tmp1 * njac[i][j][k + 1][1][1] - tmp1 * dz2;
                /*[32]*/
                lhs[i][j][k][2][1][2] = tmp2 * fjac[i][j][k + 1][1][2] - tmp1 * njac[i][j][k + 1][1][2];
                /*[32]*/
                lhs[i][j][k][2][1][3] = tmp2 * fjac[i][j][k + 1][1][3] - tmp1 * njac[i][j][k + 1][1][3];
                /*[32]*/
                lhs[i][j][k][2][1][4] = tmp2 * fjac[i][j][k + 1][1][4] - tmp1 * njac[i][j][k + 1][1][4];
                /*[32]*/
                lhs[i][j][k][2][2][0] = tmp2 * fjac[i][j][k + 1][2][0] - tmp1 * njac[i][j][k + 1][2][0];
                /*[32]*/
                lhs[i][j][k][2][2][1] = tmp2 * fjac[i][j][k + 1][2][1] - tmp1 * njac[i][j][k + 1][2][1];
                /*[32]*/
                lhs[i][j][k][2][2][2] = tmp2 * fjac[i][j][k + 1][2][2] - tmp1 * njac[i][j][k + 1][2][2] - tmp1 * dz3;
                /*[32]*/
                lhs[i][j][k][2][2][3] = tmp2 * fjac[i][j][k + 1][2][3] - tmp1 * njac[i][j][k + 1][2][3];
                /*[32]*/
                lhs[i][j][k][2][2][4] = tmp2 * fjac[i][j][k + 1][2][4] - tmp1 * njac[i][j][k + 1][2][4];
                /*[32]*/
                lhs[i][j][k][2][3][0] = tmp2 * fjac[i][j][k + 1][3][0] - tmp1 * njac[i][j][k + 1][3][0];
                /*[32]*/
                lhs[i][j][k][2][3][1] = tmp2 * fjac[i][j][k + 1][3][1] - tmp1 * njac[i][j][k + 1][3][1];
                /*[32]*/
                lhs[i][j][k][2][3][2] = tmp2 * fjac[i][j][k + 1][3][2] - tmp1 * njac[i][j][k + 1][3][2];
                /*[32]*/
                lhs[i][j][k][2][3][3] = tmp2 * fjac[i][j][k + 1][3][3] - tmp1 * njac[i][j][k + 1][3][3] - tmp1 * dz4;
                /*[32]*/
                lhs[i][j][k][2][3][4] = tmp2 * fjac[i][j][k + 1][3][4] - tmp1 * njac[i][j][k + 1][3][4];
                /*[32]*/
                lhs[i][j][k][2][4][0] = tmp2 * fjac[i][j][k + 1][4][0] - tmp1 * njac[i][j][k + 1][4][0];
                /*[32]*/
                lhs[i][j][k][2][4][1] = tmp2 * fjac[i][j][k + 1][4][1] - tmp1 * njac[i][j][k + 1][4][1];
                /*[32]*/
                lhs[i][j][k][2][4][2] = tmp2 * fjac[i][j][k + 1][4][2] - tmp1 * njac[i][j][k + 1][4][2];
                /*[32]*/
                lhs[i][j][k][2][4][3] = tmp2 * fjac[i][j][k + 1][4][3] - tmp1 * njac[i][j][k + 1][4][3];
                /*[32]*/
                lhs[i][j][k][2][4][4] = tmp2 * fjac[i][j][k + 1][4][4] - tmp1 * njac[i][j][k + 1][4][4] - tmp1 * dz5;
            }
        }
    }
    /*[32]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[32]*/
#pragma omp barrier
}
/*[4]*/
static void compute_rhs() {
/*[4]*/
    /*[4]*/
    int i;
    /*[4]*/
    int j;
    /*[4]*/
    int k;
    /*[4]*/
    int m;
    /*[4]*/
    double rho_inv;
    /*[4]*/
    double uijk;
    /*[4]*/
    double up1;
    /*[4]*/
    double um1;
    /*[4]*/
    double vijk;
    /*[4]*/
    double vp1;
    /*[4]*/
    double vm1;
    /*[4]*/
    double wijk;
    /*[4]*/
    double wp1;
    /*[4]*/
    double wm1;
    /*[4]*/
#pragma omp for nowait
    /*[4]*/
    /*[4]*/
    /*[4]*/
    for (i = 0; i < grid_points[0]; i++) {
    /*[4]*/
        /*[4]*/
        /*[4]*/
        /*[4]*/
        /*[4]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[4]*/
            /*[4]*/
            /*[4]*/
            /*[4]*/
            /*[4]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[4]*/
                /*[4]*/
                rho_inv = 1.0 / u[i][j][k][0];
                /*[4]*/
                rho_i[i][j][k] = rho_inv;
                /*[4]*/
                us[i][j][k] = u[i][j][k][1] * rho_inv;
                /*[4]*/
                vs[i][j][k] = u[i][j][k][2] * rho_inv;
                /*[4]*/
                ws[i][j][k] = u[i][j][k][3] * rho_inv;
                /*[4]*/
                square[i][j][k] = 0.5 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * rho_inv;
                /*[4]*/
                qs[i][j][k] = square[i][j][k] * rho_inv;
            }
        }
    }
    /*[4]*/
#pragma omp for nowait
    /*[4]*/
    /*[4]*/
    /*[4]*/
    for (i = 0; i < grid_points[0]; i++) {
    /*[4]*/
        /*[4]*/
        /*[4]*/
        /*[4]*/
        /*[4]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*[4]*/
            /*[4]*/
            /*[4]*/
            /*[4]*/
            /*[4]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*[4]*/
                /*[4]*/
                /*[4]*/
                /*[4]*/
                /*[4]*/
                for (m = 0; m < 5; m++) {
                /*[4]*/
                    /*[4]*/
                    rhs[i][j][k][m] = forcing[i][j][k][m];
                }
            }
        }
    }
    /*[4]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[4]*/
#pragma omp barrier
    /*[34]*/
#pragma omp for nowait
    /*[34]*/
    /*[34]*/
    /*[34]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[34]*/
        /*[34]*/
        /*[34]*/
        /*[34]*/
        /*[34]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[34]*/
            /*[34]*/
            /*[34]*/
            /*[34]*/
            /*[34]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[34]*/
                /*[34]*/
                uijk = us[i][j][k];
                /*[34]*/
                up1 = us[i + 1][j][k];
                /*[34]*/
                um1 = us[i - 1][j][k];
                /*[34]*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dx1tx1 * (u[i + 1][j][k][0] - 2.0 * u[i][j][k][0] + u[i - 1][j][k][0]) - tx2 * (u[i + 1][j][k][1] - u[i - 1][j][k][1]);
                /*[34]*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dx2tx1 * (u[i + 1][j][k][1] - 2.0 * u[i][j][k][1] + u[i - 1][j][k][1]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[i + 1][j][k][1] * up1 - u[i - 1][j][k][1] * um1 + (u[i + 1][j][k][4] - square[i + 1][j][k] - u[i - 1][j][k][4] + square[i - 1][j][k]) * c2);
                /*[34]*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dx3tx1 * (u[i + 1][j][k][2] - 2.0 * u[i][j][k][2] + u[i - 1][j][k][2]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[i + 1][j][k][2] * up1 - u[i - 1][j][k][2] * um1);
                /*[34]*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dx4tx1 * (u[i + 1][j][k][3] - 2.0 * u[i][j][k][3] + u[i - 1][j][k][3]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[i + 1][j][k][3] * up1 - u[i - 1][j][k][3] * um1);
                /*[34]*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dx5tx1 * (u[i + 1][j][k][4] - 2.0 * u[i][j][k][4] + u[i - 1][j][k][4]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[i + 1][j][k][4] * rho_i[i + 1][j][k] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i - 1][j][k][4] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[i + 1][j][k][4] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[i - 1][j][k][4] - c2 * square[i - 1][j][k]) * um1);
            }
        }
    }
    /*[34]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[34]*/
#pragma omp barrier
    /*[35]*/
    i = 1;
    /*[35]*/
#pragma omp for nowait
    /*[35]*/
    /*[35]*/
    /*[35]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*[35]*/
        /*[35]*/
        /*[35]*/
        /*[35]*/
        /*[35]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[35]*/
            /*[35]*/
            /*[35]*/
            /*[35]*/
            /*[35]*/
            for (m = 0; m < 5; m++) {
            /*[35]*/
                /*[35]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
            }
        }
    }
    /*[35]*/
    i = 2;
    /*[35]*/
#pragma omp for nowait
    /*[35]*/
    /*[35]*/
    /*[35]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*[35]*/
        /*[35]*/
        /*[35]*/
        /*[35]*/
        /*[35]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[35]*/
            /*[35]*/
            /*[35]*/
            /*[35]*/
            /*[35]*/
            for (m = 0; m < 5; m++) {
            /*[35]*/
                /*[35]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
            }
        }
    }
    /*[35]*/
#pragma omp for nowait
    /*[35]*/
    /*[35]*/
    /*[35]*/
    for (i = 3; i < grid_points[0] - 3; i++) {
    /*[35]*/
        /*[35]*/
        /*[35]*/
        /*[35]*/
        /*[35]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[35]*/
            /*[35]*/
            /*[35]*/
            /*[35]*/
            /*[35]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[35]*/
                /*[35]*/
                /*[35]*/
                /*[35]*/
                /*[35]*/
                for (m = 0; m < 5; m++) {
                /*[35]*/
                    /*[35]*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
                }
            }
        }
    }
    /*[35]*/
    i = grid_points[0] - 3;
    /*[35]*/
#pragma omp for nowait
    /*[35]*/
    /*[35]*/
    /*[35]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*[35]*/
        /*[35]*/
        /*[35]*/
        /*[35]*/
        /*[35]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[35]*/
            /*[35]*/
            /*[35]*/
            /*[35]*/
            /*[35]*/
            for (m = 0; m < 5; m++) {
            /*[35]*/
                /*[35]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m]);
            }
        }
    }
    /*[35]*/
    i = grid_points[0] - 2;
    /*[35]*/
#pragma omp for nowait
    /*[35]*/
    /*[35]*/
    /*[35]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*[35]*/
        /*[35]*/
        /*[35]*/
        /*[35]*/
        /*[35]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[35]*/
            /*[35]*/
            /*[35]*/
            /*[35]*/
            /*[35]*/
            for (m = 0; m < 5; m++) {
            /*[35]*/
                /*[35]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4. * u[i - 1][j][k][m] + 5.0 * u[i][j][k][m]);
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
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[36]*/
        /*[36]*/
        /*[36]*/
        /*[36]*/
        /*[36]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[36]*/
            /*[36]*/
            /*[36]*/
            /*[36]*/
            /*[36]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[36]*/
                /*[36]*/
                vijk = vs[i][j][k];
                /*[36]*/
                vp1 = vs[i][j + 1][k];
                /*[36]*/
                vm1 = vs[i][j - 1][k];
                /*[36]*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dy1ty1 * (u[i][j + 1][k][0] - 2.0 * u[i][j][k][0] + u[i][j - 1][k][0]) - ty2 * (u[i][j + 1][k][2] - u[i][j - 1][k][2]);
                /*[36]*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dy2ty1 * (u[i][j + 1][k][1] - 2.0 * u[i][j][k][1] + u[i][j - 1][k][1]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[i][j + 1][k][1] * vp1 - u[i][j - 1][k][1] * vm1);
                /*[36]*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dy3ty1 * (u[i][j + 1][k][2] - 2.0 * u[i][j][k][2] + u[i][j - 1][k][2]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[i][j + 1][k][2] * vp1 - u[i][j - 1][k][2] * vm1 + (u[i][j + 1][k][4] - square[i][j + 1][k] - u[i][j - 1][k][4] + square[i][j - 1][k]) * c2);
                /*[36]*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dy4ty1 * (u[i][j + 1][k][3] - 2.0 * u[i][j][k][3] + u[i][j - 1][k][3]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[i][j + 1][k][3] * vp1 - u[i][j - 1][k][3] * vm1);
                /*[36]*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dy5ty1 * (u[i][j + 1][k][4] - 2.0 * u[i][j][k][4] + u[i][j - 1][k][4]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[i][j + 1][k][4] * rho_i[i][j + 1][k] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i][j - 1][k][4] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[i][j + 1][k][4] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[i][j - 1][k][4] - c2 * square[i][j - 1][k]) * vm1);
            }
        }
    }
    /*[36]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[36]*/
#pragma omp barrier
    /*[37]*/
    j = 1;
    /*[37]*/
#pragma omp for nowait
    /*[37]*/
    /*[37]*/
    /*[37]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[37]*/
        /*[37]*/
        /*[37]*/
        /*[37]*/
        /*[37]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            for (m = 0; m < 5; m++) {
            /*[37]*/
                /*[37]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
            }
        }
    }
    /*[37]*/
    j = 2;
    /*[37]*/
#pragma omp for nowait
    /*[37]*/
    /*[37]*/
    /*[37]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[37]*/
        /*[37]*/
        /*[37]*/
        /*[37]*/
        /*[37]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            for (m = 0; m < 5; m++) {
            /*[37]*/
                /*[37]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
            }
        }
    }
    /*[37]*/
#pragma omp for nowait
    /*[37]*/
    /*[37]*/
    /*[37]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[37]*/
        /*[37]*/
        /*[37]*/
        /*[37]*/
        /*[37]*/
        for (j = 3; j < grid_points[1] - 3; j++) {
        /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[37]*/
                /*[37]*/
                /*[37]*/
                /*[37]*/
                /*[37]*/
                for (m = 0; m < 5; m++) {
                /*[37]*/
                    /*[37]*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
                }
            }
        }
    }
    /*[37]*/
    j = grid_points[1] - 3;
    /*[37]*/
#pragma omp for nowait
    /*[37]*/
    /*[37]*/
    /*[37]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[37]*/
        /*[37]*/
        /*[37]*/
        /*[37]*/
        /*[37]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            for (m = 0; m < 5; m++) {
            /*[37]*/
                /*[37]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m]);
            }
        }
    }
    /*[37]*/
    j = grid_points[1] - 2;
    /*[37]*/
#pragma omp for nowait
    /*[37]*/
    /*[37]*/
    /*[37]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[37]*/
        /*[37]*/
        /*[37]*/
        /*[37]*/
        /*[37]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            /*[37]*/
            for (m = 0; m < 5; m++) {
            /*[37]*/
                /*[37]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4. * u[i][j - 1][k][m] + 5. * u[i][j][k][m]);
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
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[38]*/
        /*[38]*/
        /*[38]*/
        /*[38]*/
        /*[38]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[38]*/
            /*[38]*/
            /*[38]*/
            /*[38]*/
            /*[38]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[38]*/
                /*[38]*/
                wijk = ws[i][j][k];
                /*[38]*/
                wp1 = ws[i][j][k + 1];
                /*[38]*/
                wm1 = ws[i][j][k - 1];
                /*[38]*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dz1tz1 * (u[i][j][k + 1][0] - 2.0 * u[i][j][k][0] + u[i][j][k - 1][0]) - tz2 * (u[i][j][k + 1][3] - u[i][j][k - 1][3]);
                /*[38]*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dz2tz1 * (u[i][j][k + 1][1] - 2.0 * u[i][j][k][1] + u[i][j][k - 1][1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[i][j][k + 1][1] * wp1 - u[i][j][k - 1][1] * wm1);
                /*[38]*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dz3tz1 * (u[i][j][k + 1][2] - 2.0 * u[i][j][k][2] + u[i][j][k - 1][2]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[i][j][k + 1][2] * wp1 - u[i][j][k - 1][2] * wm1);
                /*[38]*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dz4tz1 * (u[i][j][k + 1][3] - 2.0 * u[i][j][k][3] + u[i][j][k - 1][3]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[i][j][k + 1][3] * wp1 - u[i][j][k - 1][3] * wm1 + (u[i][j][k + 1][4] - square[i][j][k + 1] - u[i][j][k - 1][4] + square[i][j][k - 1]) * c2);
                /*[38]*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dz5tz1 * (u[i][j][k + 1][4] - 2.0 * u[i][j][k][4] + u[i][j][k - 1][4]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[i][j][k + 1][4] * rho_i[i][j][k + 1] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i][j][k - 1][4] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[i][j][k + 1][4] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[i][j][k - 1][4] - c2 * square[i][j][k - 1]) * wm1);
            }
        }
    }
    /*[38]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[38]*/
#pragma omp barrier
    /*[39]*/
    k = 1;
    /*[39]*/
#pragma omp for nowait
    /*[39]*/
    /*[39]*/
    /*[39]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[39]*/
        /*[39]*/
        /*[39]*/
        /*[39]*/
        /*[39]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            for (m = 0; m < 5; m++) {
            /*[39]*/
                /*[39]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
            }
        }
    }
    /*[39]*/
    k = 2;
    /*[39]*/
#pragma omp for nowait
    /*[39]*/
    /*[39]*/
    /*[39]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[39]*/
        /*[39]*/
        /*[39]*/
        /*[39]*/
        /*[39]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            for (m = 0; m < 5; m++) {
            /*[39]*/
                /*[39]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
            }
        }
    }
    /*[39]*/
#pragma omp for nowait
    /*[39]*/
    /*[39]*/
    /*[39]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[39]*/
        /*[39]*/
        /*[39]*/
        /*[39]*/
        /*[39]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            for (k = 3; k < grid_points[2] - 3; k++) {
            /*[39]*/
                /*[39]*/
                /*[39]*/
                /*[39]*/
                /*[39]*/
                for (m = 0; m < 5; m++) {
                /*[39]*/
                    /*[39]*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
                }
            }
        }
    }
    /*[39]*/
    k = grid_points[2] - 3;
    /*[39]*/
#pragma omp for nowait
    /*[39]*/
    /*[39]*/
    /*[39]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[39]*/
        /*[39]*/
        /*[39]*/
        /*[39]*/
        /*[39]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            for (m = 0; m < 5; m++) {
            /*[39]*/
                /*[39]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m]);
            }
        }
    }
    /*[39]*/
    k = grid_points[2] - 2;
    /*[39]*/
#pragma omp for nowait
    /*[39]*/
    /*[39]*/
    /*[39]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[39]*/
        /*[39]*/
        /*[39]*/
        /*[39]*/
        /*[39]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            /*[39]*/
            for (m = 0; m < 5; m++) {
            /*[39]*/
                /*[39]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 5.0 * u[i][j][k][m]);
            }
        }
    }
    /*[39]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[39]*/
#pragma omp barrier
    /*[40]*/
#pragma omp for nowait
    /*[40]*/
    /*[40]*/
    /*[40]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*[40]*/
        /*[40]*/
        /*[40]*/
        /*[40]*/
        /*[40]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[40]*/
            /*[40]*/
            /*[40]*/
            /*[40]*/
            /*[40]*/
            for (m = 0; m < 5; m++) {
            /*[40]*/
                /*[40]*/
                /*[40]*/
                /*[40]*/
                /*[40]*/
                for (i = 1; i < grid_points[0] - 1; i++) {
                /*[40]*/
                    /*[40]*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] * dt;
                }
            }
        }
    }
    /*[40]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[40]*/
#pragma omp barrier
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
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void verify(int no_time_steps, char *class , boolean *verified) {
/*[]*/
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
    compute_rhs();
    /*[]*/
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
    *class = 'U';
    /*[]*/
    *verified = 1;
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
        *class = 'S';
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
            *class = 'W';
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
                *class = 'A';
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
                    *class = 'B';
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
                        *class = 'C';
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
                        *verified = 0;
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
    if (*class != 'U') {
    /*[]*/
        /*[]*/
        char _imopVarPre298;
        /*[]*/
        _imopVarPre298 = *class;
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
            *verified = 0;
            /*[]*/
            *class = 'U';
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
    if (*class != 'U') {
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
        if (*class == 'U') {
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
                *verified = 0;
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
    if (*class != 'U') {
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
        if (*class == 'U') {
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
                *verified = 0;
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
    if (*class == 'U') {
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
        if (*verified == 1) {
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
}
/*[6]*/
static void x_solve() {
/*[6]*/
    /*[6]*/
    lhsx();
    /*[29]*/
    /*[29]*/
    x_solve_cell();
    /*[7, 8]*/
    /*[7, 8]*/
    x_backsubstitute();
    /*[7, 8]*/
}
/*[7, 8]*/
static void x_backsubstitute() {
/*[7, 8]*/
    /*[7, 8]*/
    int i;
    /*[7, 8]*/
    int j;
    /*[7, 8]*/
    int k;
    /*[7, 8]*/
    int m;
    /*[7, 8]*/
    int n;
    /*[7, 8]*/
    /*[7, 8]*/
    /*[8]*/
    /*[7, 8]*/
    for (i = grid_points[0] - 2; i >= 0; i--) {
    /*[7, 8]*/
        /*[7, 8]*/
#pragma omp for nowait
        /*[7, 8]*/
        /*[7, 8]*/
        /*[7, 8]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[7, 8]*/
            /*[7, 8]*/
            /*[7, 8]*/
            /*[7, 8]*/
            /*[7, 8]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[7, 8]*/
                /*[7, 8]*/
                /*[7, 8]*/
                /*[7, 8]*/
                /*[7, 8]*/
                for (m = 0; m < 5; m++) {
                /*[7, 8]*/
                    /*[7, 8]*/
                    /*[7, 8]*/
                    /*[7, 8]*/
                    /*[7, 8]*/
                    for (n = 0; n < 5; n++) {
                    /*[7, 8]*/
                        /*[7, 8]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - lhs[i][j][k][2][m][n] * rhs[i + 1][j][k][n];
                    }
                }
            }
        }
        /*[7, 8]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[7, 8]*/
#pragma omp barrier
    }
}
/*[29]*/
static void x_solve_cell() {
/*[29]*/
    /*[29]*/
    int i;
    /*[29]*/
    int j;
    /*[29]*/
    int k;
    /*[29]*/
    int isize;
    /*[29]*/
    isize = grid_points[0] - 1;
    /*[29]*/
#pragma omp for nowait
    /*[29]*/
    /*[29]*/
    /*[29]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*[29]*/
        /*[29]*/
        /*[29]*/
        /*[29]*/
        /*[29]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[29]*/
            /*[29]*/
            double *_imopVarPre334;
            /*[29]*/
            double ( *_imopVarPre335 )[5];
            /*[29]*/
            double ( *_imopVarPre336 )[5];
            /*[29]*/
            _imopVarPre334 = rhs[0][j][k];
            /*[29]*/
            _imopVarPre335 = lhs[0][j][k][2];
            /*[29]*/
            _imopVarPre336 = lhs[0][j][k][1];
            /*[29]*/
            binvcrhs(_imopVarPre336, _imopVarPre335, _imopVarPre334);
            /*[29]*/
        }
    }
    /*[29]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[29]*/
#pragma omp barrier
    /*[41]*/
    /*[7, 8, 41]*/
    /*[7, 8]*/
    /*[41]*/
    for (i = 1; i < isize; i++) {
    /*[7, 8, 41]*/
        /*[7, 8, 41]*/
#pragma omp for nowait
        /*[7, 8, 41]*/
        /*[7, 8, 41]*/
        /*[7, 8, 41]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[7, 8, 41]*/
            /*[7, 8, 41]*/
            /*[7, 8, 41]*/
            /*[7, 8, 41]*/
            /*[7, 8, 41]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[7, 8, 41]*/
                /*[7, 8, 41]*/
                double *_imopVarPre340;
                /*[7, 8, 41]*/
                double *_imopVarPre341;
                /*[7, 8, 41]*/
                double ( *_imopVarPre342 )[5];
                /*[7, 8, 41]*/
                _imopVarPre340 = rhs[i][j][k];
                /*[7, 8, 41]*/
                _imopVarPre341 = rhs[i - 1][j][k];
                /*[7, 8, 41]*/
                _imopVarPre342 = lhs[i][j][k][0];
                /*[7, 8, 41]*/
                matvec_sub(_imopVarPre342, _imopVarPre341, _imopVarPre340);
                /*[7, 8, 41]*/
                /*[7, 8, 41]*/
                double ( *_imopVarPre346 )[5];
                /*[7, 8, 41]*/
                double ( *_imopVarPre347 )[5];
                /*[7, 8, 41]*/
                double ( *_imopVarPre348 )[5];
                /*[7, 8, 41]*/
                _imopVarPre346 = lhs[i][j][k][1];
                /*[7, 8, 41]*/
                _imopVarPre347 = lhs[i - 1][j][k][2];
                /*[7, 8, 41]*/
                _imopVarPre348 = lhs[i][j][k][0];
                /*[7, 8, 41]*/
                matmul_sub(_imopVarPre348, _imopVarPre347, _imopVarPre346);
                /*[7, 8, 41]*/
                /*[7, 8, 41]*/
                double *_imopVarPre352;
                /*[7, 8, 41]*/
                double ( *_imopVarPre353 )[5];
                /*[7, 8, 41]*/
                double ( *_imopVarPre354 )[5];
                /*[7, 8, 41]*/
                _imopVarPre352 = rhs[i][j][k];
                /*[7, 8, 41]*/
                _imopVarPre353 = lhs[i][j][k][2];
                /*[7, 8, 41]*/
                _imopVarPre354 = lhs[i][j][k][1];
                /*[7, 8, 41]*/
                binvcrhs(_imopVarPre354, _imopVarPre353, _imopVarPre352);
                /*[7, 8, 41]*/
            }
        }
        /*[7, 8, 41]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[7, 8, 41]*/
#pragma omp barrier
    }
    /*[7, 8, 41]*/
#pragma omp for nowait
    /*[7, 8, 41]*/
    /*[7, 8, 41]*/
    /*[7, 8, 41]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*[7, 8, 41]*/
        /*[7, 8, 41]*/
        /*[7, 8, 41]*/
        /*[7, 8, 41]*/
        /*[7, 8, 41]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[7, 8, 41]*/
            /*[7, 8, 41]*/
            double *_imopVarPre358;
            /*[7, 8, 41]*/
            double *_imopVarPre359;
            /*[7, 8, 41]*/
            double ( *_imopVarPre360 )[5];
            /*[7, 8, 41]*/
            _imopVarPre358 = rhs[isize][j][k];
            /*[7, 8, 41]*/
            _imopVarPre359 = rhs[isize - 1][j][k];
            /*[7, 8, 41]*/
            _imopVarPre360 = lhs[isize][j][k][0];
            /*[7, 8, 41]*/
            matvec_sub(_imopVarPre360, _imopVarPre359, _imopVarPre358);
            /*[7, 8, 41]*/
            /*[7, 8, 41]*/
            double ( *_imopVarPre364 )[5];
            /*[7, 8, 41]*/
            double ( *_imopVarPre365 )[5];
            /*[7, 8, 41]*/
            double ( *_imopVarPre366 )[5];
            /*[7, 8, 41]*/
            _imopVarPre364 = lhs[isize][j][k][1];
            /*[7, 8, 41]*/
            _imopVarPre365 = lhs[isize - 1][j][k][2];
            /*[7, 8, 41]*/
            _imopVarPre366 = lhs[isize][j][k][0];
            /*[7, 8, 41]*/
            matmul_sub(_imopVarPre366, _imopVarPre365, _imopVarPre364);
            /*[7, 8, 41]*/
            /*[7, 8, 41]*/
            double *_imopVarPre369;
            /*[7, 8, 41]*/
            double ( *_imopVarPre370 )[5];
            /*[7, 8, 41]*/
            _imopVarPre369 = rhs[i][j][k];
            /*[7, 8, 41]*/
            _imopVarPre370 = lhs[i][j][k][1];
            /*[7, 8, 41]*/
            binvrhs(_imopVarPre370, _imopVarPre369);
            /*[7, 8, 41]*/
        }
    }
    /*[7, 8, 41]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[7, 8, 41]*/
#pragma omp barrier
}
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
static void matvec_sub(double ablock[5][5], double avec[5] , double bvec[5]) {
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    int i;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    for (i = 0; i < 5; i++) {
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
        /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
        bvec[i] = bvec[i] - ablock[i][0] * avec[0] - ablock[i][1] * avec[1] - ablock[i][2] * avec[2] - ablock[i][3] * avec[3] - ablock[i][4] * avec[4];
    }
}
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
static void matmul_sub(double ablock[5][5], double bblock[5][5] , double cblock[5][5]) {
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    int j;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    for (j = 0; j < 5; j++) {
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
        /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
        cblock[0][j] = cblock[0][j] - ablock[0][0] * bblock[0][j] - ablock[0][1] * bblock[1][j] - ablock[0][2] * bblock[2][j] - ablock[0][3] * bblock[3][j] - ablock[0][4] * bblock[4][j];
        /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
        cblock[1][j] = cblock[1][j] - ablock[1][0] * bblock[0][j] - ablock[1][1] * bblock[1][j] - ablock[1][2] * bblock[2][j] - ablock[1][3] * bblock[3][j] - ablock[1][4] * bblock[4][j];
        /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
        cblock[2][j] = cblock[2][j] - ablock[2][0] * bblock[0][j] - ablock[2][1] * bblock[1][j] - ablock[2][2] * bblock[2][j] - ablock[2][3] * bblock[3][j] - ablock[2][4] * bblock[4][j];
        /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
        cblock[3][j] = cblock[3][j] - ablock[3][0] * bblock[0][j] - ablock[3][1] * bblock[1][j] - ablock[3][2] * bblock[2][j] - ablock[3][3] * bblock[3][j] - ablock[3][4] * bblock[4][j];
        /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
        cblock[4][j] = cblock[4][j] - ablock[4][0] * bblock[0][j] - ablock[4][1] * bblock[1][j] - ablock[4][2] * bblock[2][j] - ablock[4][3] * bblock[3][j] - ablock[4][4] * bblock[4][j];
    }
}
/*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
/*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
/*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
/*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
static void binvcrhs(double lhs[5][5], double c[5][5] , double r[5]) {
/*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    double pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    double coeff;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    pivot = 1.00 / lhs[0][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[0][1] = lhs[0][1] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[0][2] = lhs[0][2] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[0][3] = lhs[0][3] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[0][4] = lhs[0][4] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][0] = c[0][0] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][1] = c[0][1] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][2] = c[0][2] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][3] = c[0][3] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][4] = c[0][4] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[0] = r[0] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[1][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[1][1] = lhs[1][1] - coeff * lhs[0][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[1][2] = lhs[1][2] - coeff * lhs[0][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[0][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[0][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][0] = c[1][0] - coeff * c[0][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][1] = c[1][1] - coeff * c[0][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][2] = c[1][2] - coeff * c[0][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][3] = c[1][3] - coeff * c[0][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][4] = c[1][4] - coeff * c[0][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[1] = r[1] - coeff * r[0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[2][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[2][1] = lhs[2][1] - coeff * lhs[0][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[0][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[0][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[0][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][0] = c[2][0] - coeff * c[0][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][1] = c[2][1] - coeff * c[0][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][2] = c[2][2] - coeff * c[0][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][3] = c[2][3] - coeff * c[0][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][4] = c[2][4] - coeff * c[0][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[2] = r[2] - coeff * r[0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[3][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[3][1] = lhs[3][1] - coeff * lhs[0][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[0][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[0][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[0][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][0] = c[3][0] - coeff * c[0][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][1] = c[3][1] - coeff * c[0][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][2] = c[3][2] - coeff * c[0][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][3] = c[3][3] - coeff * c[0][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][4] = c[3][4] - coeff * c[0][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[3] = r[3] - coeff * r[0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[4][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[4][1] = lhs[4][1] - coeff * lhs[0][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[0][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[0][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[0][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][0] = c[4][0] - coeff * c[0][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][1] = c[4][1] - coeff * c[0][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][2] = c[4][2] - coeff * c[0][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][3] = c[4][3] - coeff * c[0][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][4] = c[4][4] - coeff * c[0][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[4] = r[4] - coeff * r[0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    pivot = 1.00 / lhs[1][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[1][2] = lhs[1][2] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[1][3] = lhs[1][3] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[1][4] = lhs[1][4] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][0] = c[1][0] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][1] = c[1][1] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][2] = c[1][2] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][3] = c[1][3] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][4] = c[1][4] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[1] = r[1] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[0][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[0][2] = lhs[0][2] - coeff * lhs[1][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[1][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[1][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][0] = c[0][0] - coeff * c[1][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][1] = c[0][1] - coeff * c[1][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][2] = c[0][2] - coeff * c[1][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][3] = c[0][3] - coeff * c[1][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][4] = c[0][4] - coeff * c[1][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[0] = r[0] - coeff * r[1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[2][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[1][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[1][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[1][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][0] = c[2][0] - coeff * c[1][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][1] = c[2][1] - coeff * c[1][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][2] = c[2][2] - coeff * c[1][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][3] = c[2][3] - coeff * c[1][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][4] = c[2][4] - coeff * c[1][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[2] = r[2] - coeff * r[1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[3][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[1][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[1][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[1][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][0] = c[3][0] - coeff * c[1][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][1] = c[3][1] - coeff * c[1][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][2] = c[3][2] - coeff * c[1][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][3] = c[3][3] - coeff * c[1][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][4] = c[3][4] - coeff * c[1][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[3] = r[3] - coeff * r[1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[4][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[1][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[1][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[1][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][0] = c[4][0] - coeff * c[1][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][1] = c[4][1] - coeff * c[1][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][2] = c[4][2] - coeff * c[1][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][3] = c[4][3] - coeff * c[1][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][4] = c[4][4] - coeff * c[1][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[4] = r[4] - coeff * r[1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    pivot = 1.00 / lhs[2][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[2][3] = lhs[2][3] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[2][4] = lhs[2][4] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][0] = c[2][0] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][1] = c[2][1] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][2] = c[2][2] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][3] = c[2][3] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][4] = c[2][4] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[2] = r[2] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[0][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[2][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[2][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][0] = c[0][0] - coeff * c[2][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][1] = c[0][1] - coeff * c[2][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][2] = c[0][2] - coeff * c[2][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][3] = c[0][3] - coeff * c[2][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][4] = c[0][4] - coeff * c[2][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[0] = r[0] - coeff * r[2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[1][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[2][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[2][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][0] = c[1][0] - coeff * c[2][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][1] = c[1][1] - coeff * c[2][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][2] = c[1][2] - coeff * c[2][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][3] = c[1][3] - coeff * c[2][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][4] = c[1][4] - coeff * c[2][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[1] = r[1] - coeff * r[2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[3][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[2][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[2][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][0] = c[3][0] - coeff * c[2][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][1] = c[3][1] - coeff * c[2][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][2] = c[3][2] - coeff * c[2][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][3] = c[3][3] - coeff * c[2][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][4] = c[3][4] - coeff * c[2][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[3] = r[3] - coeff * r[2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[4][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[2][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[2][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][0] = c[4][0] - coeff * c[2][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][1] = c[4][1] - coeff * c[2][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][2] = c[4][2] - coeff * c[2][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][3] = c[4][3] - coeff * c[2][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][4] = c[4][4] - coeff * c[2][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[4] = r[4] - coeff * r[2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    pivot = 1.00 / lhs[3][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[3][4] = lhs[3][4] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][0] = c[3][0] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][1] = c[3][1] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][2] = c[3][2] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][3] = c[3][3] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][4] = c[3][4] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[3] = r[3] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[0][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[3][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][0] = c[0][0] - coeff * c[3][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][1] = c[0][1] - coeff * c[3][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][2] = c[0][2] - coeff * c[3][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][3] = c[0][3] - coeff * c[3][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][4] = c[0][4] - coeff * c[3][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[0] = r[0] - coeff * r[3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[1][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[3][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][0] = c[1][0] - coeff * c[3][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][1] = c[1][1] - coeff * c[3][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][2] = c[1][2] - coeff * c[3][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][3] = c[1][3] - coeff * c[3][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][4] = c[1][4] - coeff * c[3][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[1] = r[1] - coeff * r[3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[2][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[3][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][0] = c[2][0] - coeff * c[3][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][1] = c[2][1] - coeff * c[3][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][2] = c[2][2] - coeff * c[3][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][3] = c[2][3] - coeff * c[3][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][4] = c[2][4] - coeff * c[3][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[2] = r[2] - coeff * r[3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[4][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[3][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][0] = c[4][0] - coeff * c[3][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][1] = c[4][1] - coeff * c[3][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][2] = c[4][2] - coeff * c[3][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][3] = c[4][3] - coeff * c[3][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][4] = c[4][4] - coeff * c[3][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[4] = r[4] - coeff * r[3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    pivot = 1.00 / lhs[4][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][0] = c[4][0] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][1] = c[4][1] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][2] = c[4][2] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][3] = c[4][3] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[4][4] = c[4][4] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[4] = r[4] * pivot;
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[0][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][0] = c[0][0] - coeff * c[4][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][1] = c[0][1] - coeff * c[4][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][2] = c[0][2] - coeff * c[4][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][3] = c[0][3] - coeff * c[4][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[0][4] = c[0][4] - coeff * c[4][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[0] = r[0] - coeff * r[4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[1][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][0] = c[1][0] - coeff * c[4][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][1] = c[1][1] - coeff * c[4][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][2] = c[1][2] - coeff * c[4][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][3] = c[1][3] - coeff * c[4][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[1][4] = c[1][4] - coeff * c[4][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[1] = r[1] - coeff * r[4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[2][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][0] = c[2][0] - coeff * c[4][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][1] = c[2][1] - coeff * c[4][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][2] = c[2][2] - coeff * c[4][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][3] = c[2][3] - coeff * c[4][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[2][4] = c[2][4] - coeff * c[4][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[2] = r[2] - coeff * r[4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    coeff = lhs[3][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][0] = c[3][0] - coeff * c[4][0];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][1] = c[3][1] - coeff * c[4][1];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][2] = c[3][2] - coeff * c[4][2];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][3] = c[3][3] - coeff * c[4][3];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    c[3][4] = c[3][4] - coeff * c[4][4];
    /*[7, 8, 10, 11, 13, 29, 31, 33, 41, 42, 43, 44]*/
    r[3] = r[3] - coeff * r[4];
}
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
static void binvrhs(double lhs[5][5], double r[5]) {
/*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    double pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    double coeff;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    pivot = 1.00 / lhs[0][0];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[0][1] = lhs[0][1] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[0][2] = lhs[0][2] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[0][3] = lhs[0][3] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[0][4] = lhs[0][4] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[0] = r[0] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[1][0];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[1][1] = lhs[1][1] - coeff * lhs[0][1];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[1][2] = lhs[1][2] - coeff * lhs[0][2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[0][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[0][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[1] = r[1] - coeff * r[0];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[2][0];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[2][1] = lhs[2][1] - coeff * lhs[0][1];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[0][2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[0][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[0][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[2] = r[2] - coeff * r[0];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[3][0];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[3][1] = lhs[3][1] - coeff * lhs[0][1];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[0][2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[0][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[0][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[3] = r[3] - coeff * r[0];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[4][0];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[4][1] = lhs[4][1] - coeff * lhs[0][1];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[0][2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[0][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[0][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[4] = r[4] - coeff * r[0];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    pivot = 1.00 / lhs[1][1];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[1][2] = lhs[1][2] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[1][3] = lhs[1][3] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[1][4] = lhs[1][4] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[1] = r[1] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[0][1];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[0][2] = lhs[0][2] - coeff * lhs[1][2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[1][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[1][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[0] = r[0] - coeff * r[1];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[2][1];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[1][2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[1][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[1][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[2] = r[2] - coeff * r[1];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[3][1];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[1][2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[1][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[1][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[3] = r[3] - coeff * r[1];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[4][1];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[1][2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[1][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[1][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[4] = r[4] - coeff * r[1];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    pivot = 1.00 / lhs[2][2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[2][3] = lhs[2][3] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[2][4] = lhs[2][4] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[2] = r[2] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[0][2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[2][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[2][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[0] = r[0] - coeff * r[2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[1][2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[2][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[2][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[1] = r[1] - coeff * r[2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[3][2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[2][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[2][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[3] = r[3] - coeff * r[2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[4][2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[2][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[2][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[4] = r[4] - coeff * r[2];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    pivot = 1.00 / lhs[3][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[3][4] = lhs[3][4] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[3] = r[3] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[0][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[3][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[0] = r[0] - coeff * r[3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[1][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[3][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[1] = r[1] - coeff * r[3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[2][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[3][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[2] = r[2] - coeff * r[3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[4][3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[3][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[4] = r[4] - coeff * r[3];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    pivot = 1.00 / lhs[4][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[4] = r[4] * pivot;
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[0][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[0] = r[0] - coeff * r[4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[1][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[1] = r[1] - coeff * r[4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[2][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[2] = r[2] - coeff * r[4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    coeff = lhs[3][4];
    /*[7, 8, 10, 11, 13, 41, 42, 43, 44]*/
    r[3] = r[3] - coeff * r[4];
}
/*[9]*/
static void y_solve() {
/*[9]*/
    /*[9]*/
    lhsy();
    /*[31]*/
    /*[31]*/
    y_solve_cell();
    /*[10, 11]*/
    /*[10, 11]*/
    y_backsubstitute();
    /*[10, 11]*/
}
/*[10, 11]*/
static void y_backsubstitute() {
/*[10, 11]*/
    /*[10, 11]*/
    int i;
    /*[10, 11]*/
    int j;
    /*[10, 11]*/
    int k;
    /*[10, 11]*/
    int m;
    /*[10, 11]*/
    int n;
    /*[10, 11]*/
    /*[10, 11]*/
    /*[10]*/
    /*[10, 11]*/
    for (j = grid_points[1] - 2; j >= 0; j--) {
    /*[10, 11]*/
        /*[10, 11]*/
#pragma omp for nowait
        /*[10, 11]*/
        /*[10, 11]*/
        /*[10, 11]*/
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*[10, 11]*/
            /*[10, 11]*/
            /*[10, 11]*/
            /*[10, 11]*/
            /*[10, 11]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[10, 11]*/
                /*[10, 11]*/
                /*[10, 11]*/
                /*[10, 11]*/
                /*[10, 11]*/
                for (m = 0; m < 5; m++) {
                /*[10, 11]*/
                    /*[10, 11]*/
                    /*[10, 11]*/
                    /*[10, 11]*/
                    /*[10, 11]*/
                    for (n = 0; n < 5; n++) {
                    /*[10, 11]*/
                        /*[10, 11]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - lhs[i][j][k][2][m][n] * rhs[i][j + 1][k][n];
                    }
                }
            }
        }
        /*[10, 11]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[10, 11]*/
#pragma omp barrier
    }
}
/*[31]*/
static void y_solve_cell() {
/*[31]*/
    /*[31]*/
    int i;
    /*[31]*/
    int j;
    /*[31]*/
    int k;
    /*[31]*/
    int jsize;
    /*[31]*/
    jsize = grid_points[1] - 1;
    /*[31]*/
#pragma omp for nowait
    /*[31]*/
    /*[31]*/
    /*[31]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[31]*/
        /*[31]*/
        /*[31]*/
        /*[31]*/
        /*[31]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[31]*/
            /*[31]*/
            double *_imopVarPre374;
            /*[31]*/
            double ( *_imopVarPre375 )[5];
            /*[31]*/
            double ( *_imopVarPre376 )[5];
            /*[31]*/
            _imopVarPre374 = rhs[i][0][k];
            /*[31]*/
            _imopVarPre375 = lhs[i][0][k][2];
            /*[31]*/
            _imopVarPre376 = lhs[i][0][k][1];
            /*[31]*/
            binvcrhs(_imopVarPre376, _imopVarPre375, _imopVarPre374);
            /*[31]*/
        }
    }
    /*[31]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[31]*/
#pragma omp barrier
    /*[44]*/
    /*[10, 11, 44]*/
    /*[10, 11]*/
    /*[44]*/
    for (j = 1; j < jsize; j++) {
    /*[10, 11, 44]*/
        /*[10, 11, 44]*/
#pragma omp for nowait
        /*[10, 11, 44]*/
        /*[10, 11, 44]*/
        /*[10, 11, 44]*/
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*[10, 11, 44]*/
            /*[10, 11, 44]*/
            /*[10, 11, 44]*/
            /*[10, 11, 44]*/
            /*[10, 11, 44]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*[10, 11, 44]*/
                /*[10, 11, 44]*/
                double *_imopVarPre380;
                /*[10, 11, 44]*/
                double *_imopVarPre381;
                /*[10, 11, 44]*/
                double ( *_imopVarPre382 )[5];
                /*[10, 11, 44]*/
                _imopVarPre380 = rhs[i][j][k];
                /*[10, 11, 44]*/
                _imopVarPre381 = rhs[i][j - 1][k];
                /*[10, 11, 44]*/
                _imopVarPre382 = lhs[i][j][k][0];
                /*[10, 11, 44]*/
                matvec_sub(_imopVarPre382, _imopVarPre381, _imopVarPre380);
                /*[10, 11, 44]*/
                /*[10, 11, 44]*/
                double ( *_imopVarPre386 )[5];
                /*[10, 11, 44]*/
                double ( *_imopVarPre387 )[5];
                /*[10, 11, 44]*/
                double ( *_imopVarPre388 )[5];
                /*[10, 11, 44]*/
                _imopVarPre386 = lhs[i][j][k][1];
                /*[10, 11, 44]*/
                _imopVarPre387 = lhs[i][j - 1][k][2];
                /*[10, 11, 44]*/
                _imopVarPre388 = lhs[i][j][k][0];
                /*[10, 11, 44]*/
                matmul_sub(_imopVarPre388, _imopVarPre387, _imopVarPre386);
                /*[10, 11, 44]*/
                /*[10, 11, 44]*/
                double *_imopVarPre392;
                /*[10, 11, 44]*/
                double ( *_imopVarPre393 )[5];
                /*[10, 11, 44]*/
                double ( *_imopVarPre394 )[5];
                /*[10, 11, 44]*/
                _imopVarPre392 = rhs[i][j][k];
                /*[10, 11, 44]*/
                _imopVarPre393 = lhs[i][j][k][2];
                /*[10, 11, 44]*/
                _imopVarPre394 = lhs[i][j][k][1];
                /*[10, 11, 44]*/
                binvcrhs(_imopVarPre394, _imopVarPre393, _imopVarPre392);
                /*[10, 11, 44]*/
            }
        }
        /*[10, 11, 44]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[10, 11, 44]*/
#pragma omp barrier
    }
    /*[10, 11, 44]*/
#pragma omp for nowait
    /*[10, 11, 44]*/
    /*[10, 11, 44]*/
    /*[10, 11, 44]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[10, 11, 44]*/
        /*[10, 11, 44]*/
        /*[10, 11, 44]*/
        /*[10, 11, 44]*/
        /*[10, 11, 44]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*[10, 11, 44]*/
            /*[10, 11, 44]*/
            double *_imopVarPre398;
            /*[10, 11, 44]*/
            double *_imopVarPre399;
            /*[10, 11, 44]*/
            double ( *_imopVarPre400 )[5];
            /*[10, 11, 44]*/
            _imopVarPre398 = rhs[i][jsize][k];
            /*[10, 11, 44]*/
            _imopVarPre399 = rhs[i][jsize - 1][k];
            /*[10, 11, 44]*/
            _imopVarPre400 = lhs[i][jsize][k][0];
            /*[10, 11, 44]*/
            matvec_sub(_imopVarPre400, _imopVarPre399, _imopVarPre398);
            /*[10, 11, 44]*/
            /*[10, 11, 44]*/
            double ( *_imopVarPre404 )[5];
            /*[10, 11, 44]*/
            double ( *_imopVarPre405 )[5];
            /*[10, 11, 44]*/
            double ( *_imopVarPre406 )[5];
            /*[10, 11, 44]*/
            _imopVarPre404 = lhs[i][jsize][k][1];
            /*[10, 11, 44]*/
            _imopVarPre405 = lhs[i][jsize - 1][k][2];
            /*[10, 11, 44]*/
            _imopVarPre406 = lhs[i][jsize][k][0];
            /*[10, 11, 44]*/
            matmul_sub(_imopVarPre406, _imopVarPre405, _imopVarPre404);
            /*[10, 11, 44]*/
            /*[10, 11, 44]*/
            double *_imopVarPre409;
            /*[10, 11, 44]*/
            double ( *_imopVarPre410 )[5];
            /*[10, 11, 44]*/
            _imopVarPre409 = rhs[i][jsize][k];
            /*[10, 11, 44]*/
            _imopVarPre410 = lhs[i][jsize][k][1];
            /*[10, 11, 44]*/
            binvrhs(_imopVarPre410, _imopVarPre409);
            /*[10, 11, 44]*/
        }
    }
    /*[10, 11, 44]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[10, 11, 44]*/
#pragma omp barrier
}
/*[12]*/
static void z_solve() {
/*[12]*/
    /*[12]*/
    lhsz();
    /*[33]*/
    /*[33]*/
    z_solve_cell();
    /*[13, 43]*/
    /*[13, 43]*/
    z_backsubstitute();
    /*[13]*/
}
/*[13, 43]*/
static void z_backsubstitute() {
/*[13, 43]*/
    /*[13, 43]*/
    int i;
    /*[13, 43]*/
    int j;
    /*[13, 43]*/
    int k;
    /*[13, 43]*/
    int m;
    /*[13, 43]*/
    int n;
    /*[13, 43]*/
#pragma omp for nowait
    /*[13, 43]*/
    /*[13, 43]*/
    /*[13, 43]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[13, 43]*/
        /*[13, 43]*/
        /*[13, 43]*/
        /*[13, 43]*/
        /*[13, 43]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[13, 43]*/
            /*[13, 43]*/
            /*[13, 43]*/
            /*[13, 43]*/
            /*[13, 43]*/
            for (k = grid_points[2] - 2; k >= 0; k--) {
            /*[13, 43]*/
                /*[13, 43]*/
                /*[13, 43]*/
                /*[13, 43]*/
                /*[13, 43]*/
                for (m = 0; m < 5; m++) {
                /*[13, 43]*/
                    /*[13, 43]*/
                    /*[13, 43]*/
                    /*[13, 43]*/
                    /*[13, 43]*/
                    for (n = 0; n < 5; n++) {
                    /*[13, 43]*/
                        /*[13, 43]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - lhs[i][j][k][2][m][n] * rhs[i][j][k + 1][n];
                    }
                }
            }
        }
    }
    /*[13, 43]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[13, 43]*/
#pragma omp barrier
}
/*[33]*/
static void z_solve_cell() {
/*[33]*/
    /*[33]*/
    int i;
    /*[33]*/
    int j;
    /*[33]*/
    int k;
    /*[33]*/
    int ksize;
    /*[33]*/
    ksize = grid_points[2] - 1;
    /*[33]*/
#pragma omp for nowait
    /*[33]*/
    /*[33]*/
    /*[33]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[33]*/
        /*[33]*/
        /*[33]*/
        /*[33]*/
        /*[33]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[33]*/
            /*[33]*/
            double *_imopVarPre414;
            /*[33]*/
            double ( *_imopVarPre415 )[5];
            /*[33]*/
            double ( *_imopVarPre416 )[5];
            /*[33]*/
            _imopVarPre414 = rhs[i][j][0];
            /*[33]*/
            _imopVarPre415 = lhs[i][j][0][2];
            /*[33]*/
            _imopVarPre416 = lhs[i][j][0][1];
            /*[33]*/
            binvcrhs(_imopVarPre416, _imopVarPre415, _imopVarPre414);
            /*[33]*/
        }
    }
    /*[33]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[33]*/
#pragma omp barrier
    /*[42]*/
    /*[13, 42, 43]*/
    /*[13, 43]*/
    /*[42]*/
    for (k = 1; k < ksize; k++) {
    /*[13, 42, 43]*/
        /*[13, 42, 43]*/
#pragma omp for nowait
        /*[13, 42, 43]*/
        /*[13, 42, 43]*/
        /*[13, 42, 43]*/
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*[13, 42, 43]*/
            /*[13, 42, 43]*/
            /*[13, 42, 43]*/
            /*[13, 42, 43]*/
            /*[13, 42, 43]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
            /*[13, 42, 43]*/
                /*[13, 42, 43]*/
                double *_imopVarPre420;
                /*[13, 42, 43]*/
                double *_imopVarPre421;
                /*[13, 42, 43]*/
                double ( *_imopVarPre422 )[5];
                /*[13, 42, 43]*/
                _imopVarPre420 = rhs[i][j][k];
                /*[13, 42, 43]*/
                _imopVarPre421 = rhs[i][j][k - 1];
                /*[13, 42, 43]*/
                _imopVarPre422 = lhs[i][j][k][0];
                /*[13, 42, 43]*/
                matvec_sub(_imopVarPre422, _imopVarPre421, _imopVarPre420);
                /*[13, 42, 43]*/
                /*[13, 42, 43]*/
                double ( *_imopVarPre426 )[5];
                /*[13, 42, 43]*/
                double ( *_imopVarPre427 )[5];
                /*[13, 42, 43]*/
                double ( *_imopVarPre428 )[5];
                /*[13, 42, 43]*/
                _imopVarPre426 = lhs[i][j][k][1];
                /*[13, 42, 43]*/
                _imopVarPre427 = lhs[i][j][k - 1][2];
                /*[13, 42, 43]*/
                _imopVarPre428 = lhs[i][j][k][0];
                /*[13, 42, 43]*/
                matmul_sub(_imopVarPre428, _imopVarPre427, _imopVarPre426);
                /*[13, 42, 43]*/
                /*[13, 42, 43]*/
                double *_imopVarPre432;
                /*[13, 42, 43]*/
                double ( *_imopVarPre433 )[5];
                /*[13, 42, 43]*/
                double ( *_imopVarPre434 )[5];
                /*[13, 42, 43]*/
                _imopVarPre432 = rhs[i][j][k];
                /*[13, 42, 43]*/
                _imopVarPre433 = lhs[i][j][k][2];
                /*[13, 42, 43]*/
                _imopVarPre434 = lhs[i][j][k][1];
                /*[13, 42, 43]*/
                binvcrhs(_imopVarPre434, _imopVarPre433, _imopVarPre432);
                /*[13, 42, 43]*/
            }
        }
        /*[13, 42, 43]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[13, 42, 43]*/
#pragma omp barrier
    }
    /*[13, 42, 43]*/
#pragma omp for nowait
    /*[13, 42, 43]*/
    /*[13, 42, 43]*/
    /*[13, 42, 43]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*[13, 42, 43]*/
        /*[13, 42, 43]*/
        /*[13, 42, 43]*/
        /*[13, 42, 43]*/
        /*[13, 42, 43]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*[13, 42, 43]*/
            /*[13, 42, 43]*/
            double *_imopVarPre438;
            /*[13, 42, 43]*/
            double *_imopVarPre439;
            /*[13, 42, 43]*/
            double ( *_imopVarPre440 )[5];
            /*[13, 42, 43]*/
            _imopVarPre438 = rhs[i][j][ksize];
            /*[13, 42, 43]*/
            _imopVarPre439 = rhs[i][j][ksize - 1];
            /*[13, 42, 43]*/
            _imopVarPre440 = lhs[i][j][ksize][0];
            /*[13, 42, 43]*/
            matvec_sub(_imopVarPre440, _imopVarPre439, _imopVarPre438);
            /*[13, 42, 43]*/
            /*[13, 42, 43]*/
            double ( *_imopVarPre444 )[5];
            /*[13, 42, 43]*/
            double ( *_imopVarPre445 )[5];
            /*[13, 42, 43]*/
            double ( *_imopVarPre446 )[5];
            /*[13, 42, 43]*/
            _imopVarPre444 = lhs[i][j][ksize][1];
            /*[13, 42, 43]*/
            _imopVarPre445 = lhs[i][j][ksize - 1][2];
            /*[13, 42, 43]*/
            _imopVarPre446 = lhs[i][j][ksize][0];
            /*[13, 42, 43]*/
            matmul_sub(_imopVarPre446, _imopVarPre445, _imopVarPre444);
            /*[13, 42, 43]*/
            /*[13, 42, 43]*/
            double *_imopVarPre449;
            /*[13, 42, 43]*/
            double ( *_imopVarPre450 )[5];
            /*[13, 42, 43]*/
            _imopVarPre449 = rhs[i][j][ksize];
            /*[13, 42, 43]*/
            _imopVarPre450 = lhs[i][j][ksize][1];
            /*[13, 42, 43]*/
            binvrhs(_imopVarPre450, _imopVarPre449);
            /*[13, 42, 43]*/
        }
    }
    /*[13, 42, 43]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[13, 42, 43]*/
#pragma omp barrier
}
