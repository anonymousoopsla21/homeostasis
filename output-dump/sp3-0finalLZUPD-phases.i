
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
extern double pow(double , double );
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
static double ce[13][5];
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
static double bt;
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
static double u[5][12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double us[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double vs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double ws[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double qs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double ainv[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double rho_i[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double speed[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double square[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double rhs[5][12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double forcing[5][12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double lhs[15][12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*[]*/
static double cv[12];
/*[]*/
static double rhon[12];
/*[]*/
static double rhos[12];
/*[]*/
static double rhoq[12];
/*[]*/
static double cuf[12];
/*[]*/
static double q[12];
/*[]*/
static double ue[5][12];
/*[]*/
static double buf[5][12];
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
static void ninvr(void );
/*[]*/
static void pinvr(void );
/*[]*/
static void compute_rhs(void );
/*[]*/
static void set_constants(void );
/*[]*/
static void txinvr(void );
/*[]*/
static void tzetar(void );
/*[]*/
static void verify(int no_time_steps, char *class , boolean *verified);
/*[]*/
static void x_solve(void );
/*[]*/
static void y_solve(void );
/*[]*/
static void z_solve(void );
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
    double mflops;
    /*[]*/
    double tmax;
    /*[]*/
    int nthreads = 1;
    /*[]*/
    boolean verified;
    /*[]*/
    char class;
    /*[]*/
    FILE *fp;
    /*[]*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - SP Benchmark\n\n");
    /*[]*/
    /*[]*/
    fp = fopen("inputsp.data", "r");
    /*[]*/
    /*[]*/
    /*[]*/
    if (fp != ((void *) 0)) {
    /*[]*/
        /*[]*/
        printf(" Reading from input file inputsp.data\n");
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
        fscanf(fp, "%lf", _imopVarPre145);
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
        printf(" No input file inputsp.data. Using compiled defaults");
        /*[]*/
        /*[]*/
        niter = 100;
        /*[]*/
        dt = 0.015;
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
    _imopVarPre160 = (grid_points[0] > 12);
    /*[]*/
    /*[]*/
    if (!_imopVarPre160) {
    /*[]*/
        /*[]*/
        _imopVarPre161 = (grid_points[1] > 12);
        /*[]*/
        /*[]*/
        if (!_imopVarPre161) {
        /*[]*/
            /*[]*/
            _imopVarPre161 = (grid_points[2] > 12);
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
        printf("%d, %d, %d\n", _imopVarPre167, _imopVarPre166, _imopVarPre165);
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
    /*[]*/
    if (tmax != 0) {
    /*[]*/
        /*[]*/
        double _imopVarPre179;
        /*[]*/
        double _imopVarPre180;
        /*[]*/
        _imopVarPre179 = (double) 12;
        /*[]*/
        _imopVarPre180 = pow(_imopVarPre179, 3.0);
        /*[]*/
        /*[]*/
        mflops = (881.174 * _imopVarPre180 - 4683.91 * (((double) 12) * ((double) 12)) + 11484.5 * (double) 12 - 19272.4) * (double) niter / (tmax * 1000000.0);
    } else {
    /*[]*/
        /*[]*/
        mflops = 0.0;
    }
    /*[]*/
    int _imopVarPre184;
    /*[]*/
    int _imopVarPre185;
    /*[]*/
    int _imopVarPre186;
    /*[]*/
    _imopVarPre184 = grid_points[2];
    /*[]*/
    _imopVarPre185 = grid_points[1];
    /*[]*/
    _imopVarPre186 = grid_points[0];
    /*[]*/
    c_print_results("SP", class, _imopVarPre186, _imopVarPre185, _imopVarPre184, niter, nthreads, tmax, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "(none)");
    /*[]*/
}
/*[]*/
static void add() {
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
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[]*/
                    /*[]*/
                    u[m][i][j][k] = u[m][i][j][k] + rhs[m][i][j][k];
                }
            }
        }
    }
}
/*[]*/
static void adi() {
/*[]*/
    /*[2]*/
#pragma omp parallel
    {
    /*[2]*/
        /*[2]*/
        compute_rhs();
        /*[3, 4]*/
    }
    /*[]*/
    txinvr();
    /*[]*/
    /*[5]*/
#pragma omp parallel
    {
    /*[5]*/
        /*[5]*/
        x_solve();
        /*[6, 7, 8, 9, 10, 11, 12]*/
        /*[6, 7, 8, 9, 10, 11, 12]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 8, 9, 10, 11, 12]*/
#pragma omp barrier
        /*[6, 7, 8, 9, 10, 11]*/
        y_solve();
        /*[10, 11]*/
    }
    /*[]*/
    z_solve();
    /*[]*/
    /*[]*/
    add();
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
    for (i = 0; i <= grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        xi = (double) i * dnxm1;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j <= grid_points[1] - 1; j++) {
        /*[]*/
            /*[]*/
            eta = (double) j * dnym1;
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
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
                    add = u[m][i][j][k] - u_exact[m];
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
        for (d = 0; d < 3; d++) {
        /*[]*/
            /*[]*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*[]*/
        double _imopVarPre188;
        /*[]*/
        double _imopVarPre189;
        /*[]*/
        _imopVarPre188 = rms[m];
        /*[]*/
        _imopVarPre189 = sqrt(_imopVarPre188);
        /*[]*/
        /*[]*/
        rms[m] = _imopVarPre189;
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
    for (i = 0; i <= grid_points[0] - 2; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j <= grid_points[1] - 2; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 0; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 5; m++) {
                /*[]*/
                    /*[]*/
                    add = rhs[m][i][j][k];
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
        for (d = 0; d < 3; d++) {
        /*[]*/
            /*[]*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*[]*/
        double _imopVarPre191;
        /*[]*/
        double _imopVarPre192;
        /*[]*/
        _imopVarPre191 = rms[m];
        /*[]*/
        _imopVarPre192 = sqrt(_imopVarPre191);
        /*[]*/
        /*[]*/
        rms[m] = _imopVarPre192;
    }
}
/*[]*/
static void exact_rhs() {
/*[]*/
    /*[]*/
    double dtemp[5];
    /*[]*/
    double xi;
    /*[]*/
    double eta;
    /*[]*/
    double zeta;
    /*[]*/
    double dtpp;
    /*[]*/
    int m;
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    int ip1;
    /*[]*/
    int im1;
    /*[]*/
    int jp1;
    /*[]*/
    int jm1;
    /*[]*/
    int km1;
    /*[]*/
    int kp1;
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
        for (i = 0; i <= grid_points[0] - 1; i++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
            /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (k = 0; k <= grid_points[2] - 1; k++) {
                /*[]*/
                    /*[]*/
                    forcing[m][i][j][k] = 0.0;
                }
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (k = 1; k <= grid_points[2] - 2; k++) {
    /*[]*/
        /*[]*/
        zeta = (double) k * dnzm1;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[]*/
            /*[]*/
            eta = (double) j * dnym1;
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
            /*[]*/
                /*[]*/
                xi = (double) i * dnxm1;
                /*[]*/
                exact_solution(xi, eta, zeta, dtemp);
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 5; m++) {
                /*[]*/
                    /*[]*/
                    ue[m][i] = dtemp[m];
                }
                /*[]*/
                dtpp = 1.0 / dtemp[0];
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 1; m < 5; m++) {
                /*[]*/
                    /*[]*/
                    buf[m][i] = dtpp * dtemp[m];
                }
                /*[]*/
                cuf[i] = buf[1][i] * buf[1][i];
                /*[]*/
                buf[0][i] = cuf[i] + buf[2][i] * buf[2][i] + buf[3][i] * buf[3][i];
                /*[]*/
                q[i] = 0.5 * (buf[1][i] * ue[1][i] + buf[2][i] * ue[2][i] + buf[3][i] * ue[3][i]);
            }
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[]*/
                /*[]*/
                im1 = i - 1;
                /*[]*/
                ip1 = i + 1;
                /*[]*/
                forcing[0][i][j][k] = forcing[0][i][j][k] - tx2 * (ue[1][ip1] - ue[1][im1]) + dx1tx1 * (ue[0][ip1] - 2.0 * ue[0][i] + ue[0][im1]);
                /*[]*/
                forcing[1][i][j][k] = forcing[1][i][j][k] - tx2 * ((ue[1][ip1] * buf[1][ip1] + c2 * (ue[4][ip1] - q[ip1])) - (ue[1][im1] * buf[1][im1] + c2 * (ue[4][im1] - q[im1]))) + xxcon1 * (buf[1][ip1] - 2.0 * buf[1][i] + buf[1][im1]) + dx2tx1 * (ue[1][ip1] - 2.0 * ue[1][i] + ue[1][im1]);
                /*[]*/
                forcing[2][i][j][k] = forcing[2][i][j][k] - tx2 * (ue[2][ip1] * buf[1][ip1] - ue[2][im1] * buf[1][im1]) + xxcon2 * (buf[2][ip1] - 2.0 * buf[2][i] + buf[2][im1]) + dx3tx1 * (ue[2][ip1] - 2.0 * ue[2][i] + ue[2][im1]);
                /*[]*/
                forcing[3][i][j][k] = forcing[3][i][j][k] - tx2 * (ue[3][ip1] * buf[1][ip1] - ue[3][im1] * buf[1][im1]) + xxcon2 * (buf[3][ip1] - 2.0 * buf[3][i] + buf[3][im1]) + dx4tx1 * (ue[3][ip1] - 2.0 * ue[3][i] + ue[3][im1]);
                /*[]*/
                forcing[4][i][j][k] = forcing[4][i][j][k] - tx2 * (buf[1][ip1] * (c1 * ue[4][ip1] - c2 * q[ip1]) - buf[1][im1] * (c1 * ue[4][im1] - c2 * q[im1])) + 0.5 * xxcon3 * (buf[0][ip1] - 2.0 * buf[0][i] + buf[0][im1]) + xxcon4 * (cuf[ip1] - 2.0 * cuf[i] + cuf[im1]) + xxcon5 * (buf[4][ip1] - 2.0 * buf[4][i] + buf[4][im1]) + dx5tx1 * (ue[4][ip1] - 2.0 * ue[4][i] + ue[4][im1]);
            }
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 5; m++) {
            /*[]*/
                /*[]*/
                i = 1;
                /*[]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (5.0 * ue[m][i] - 4.0 * ue[m][i + 1] + ue[m][i + 2]);
                /*[]*/
                i = 2;
                /*[]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (-4.0 * ue[m][i - 1] + 6.0 * ue[m][i] - 4.0 * ue[m][i + 1] + ue[m][i + 2]);
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
                for (i = 3; i <= grid_points[0] - 4; i++) {
                /*[]*/
                    /*[]*/
                    forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][i - 2] - 4.0 * ue[m][i - 1] + 6.0 * ue[m][i] - 4.0 * ue[m][i + 1] + ue[m][i + 2]);
                }
            }
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 5; m++) {
            /*[]*/
                /*[]*/
                i = grid_points[0] - 3;
                /*[]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][i - 2] - 4.0 * ue[m][i - 1] + 6.0 * ue[m][i] - 4.0 * ue[m][i + 1]);
                /*[]*/
                i = grid_points[0] - 2;
                /*[]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][i - 2] - 4.0 * ue[m][i - 1] + 5.0 * ue[m][i]);
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (k = 1; k <= grid_points[2] - 2; k++) {
    /*[]*/
        /*[]*/
        zeta = (double) k * dnzm1;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[]*/
            /*[]*/
            xi = (double) i * dnxm1;
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
            /*[]*/
                /*[]*/
                eta = (double) j * dnym1;
                /*[]*/
                exact_solution(xi, eta, zeta, dtemp);
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 5; m++) {
                /*[]*/
                    /*[]*/
                    ue[m][j] = dtemp[m];
                }
                /*[]*/
                dtpp = 1.0 / dtemp[0];
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 1; m < 5; m++) {
                /*[]*/
                    /*[]*/
                    buf[m][j] = dtpp * dtemp[m];
                }
                /*[]*/
                cuf[j] = buf[2][j] * buf[2][j];
                /*[]*/
                buf[0][j] = cuf[j] + buf[1][j] * buf[1][j] + buf[3][j] * buf[3][j];
                /*[]*/
                q[j] = 0.5 * (buf[1][j] * ue[1][j] + buf[2][j] * ue[2][j] + buf[3][j] * ue[3][j]);
            }
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[]*/
                /*[]*/
                jm1 = j - 1;
                /*[]*/
                jp1 = j + 1;
                /*[]*/
                forcing[0][i][j][k] = forcing[0][i][j][k] - ty2 * (ue[2][jp1] - ue[2][jm1]) + dy1ty1 * (ue[0][jp1] - 2.0 * ue[0][j] + ue[0][jm1]);
                /*[]*/
                forcing[1][i][j][k] = forcing[1][i][j][k] - ty2 * (ue[1][jp1] * buf[2][jp1] - ue[1][jm1] * buf[2][jm1]) + yycon2 * (buf[1][jp1] - 2.0 * buf[1][j] + buf[1][jm1]) + dy2ty1 * (ue[1][jp1] - 2.0 * ue[1][j] + ue[1][jm1]);
                /*[]*/
                forcing[2][i][j][k] = forcing[2][i][j][k] - ty2 * ((ue[2][jp1] * buf[2][jp1] + c2 * (ue[4][jp1] - q[jp1])) - (ue[2][jm1] * buf[2][jm1] + c2 * (ue[4][jm1] - q[jm1]))) + yycon1 * (buf[2][jp1] - 2.0 * buf[2][j] + buf[2][jm1]) + dy3ty1 * (ue[2][jp1] - 2.0 * ue[2][j] + ue[2][jm1]);
                /*[]*/
                forcing[3][i][j][k] = forcing[3][i][j][k] - ty2 * (ue[3][jp1] * buf[2][jp1] - ue[3][jm1] * buf[2][jm1]) + yycon2 * (buf[3][jp1] - 2.0 * buf[3][j] + buf[3][jm1]) + dy4ty1 * (ue[3][jp1] - 2.0 * ue[3][j] + ue[3][jm1]);
                /*[]*/
                forcing[4][i][j][k] = forcing[4][i][j][k] - ty2 * (buf[2][jp1] * (c1 * ue[4][jp1] - c2 * q[jp1]) - buf[2][jm1] * (c1 * ue[4][jm1] - c2 * q[jm1])) + 0.5 * yycon3 * (buf[0][jp1] - 2.0 * buf[0][j] + buf[0][jm1]) + yycon4 * (cuf[jp1] - 2.0 * cuf[j] + cuf[jm1]) + yycon5 * (buf[4][jp1] - 2.0 * buf[4][j] + buf[4][jm1]) + dy5ty1 * (ue[4][jp1] - 2.0 * ue[4][j] + ue[4][jm1]);
            }
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 5; m++) {
            /*[]*/
                /*[]*/
                j = 1;
                /*[]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (5.0 * ue[m][j] - 4.0 * ue[m][j + 1] + ue[m][j + 2]);
                /*[]*/
                j = 2;
                /*[]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (-4.0 * ue[m][j - 1] + 6.0 * ue[m][j] - 4.0 * ue[m][j + 1] + ue[m][j + 2]);
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
                for (j = 3; j <= grid_points[1] - 4; j++) {
                /*[]*/
                    /*[]*/
                    forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][j - 2] - 4.0 * ue[m][j - 1] + 6.0 * ue[m][j] - 4.0 * ue[m][j + 1] + ue[m][j + 2]);
                }
            }
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 5; m++) {
            /*[]*/
                /*[]*/
                j = grid_points[1] - 3;
                /*[]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][j - 2] - 4.0 * ue[m][j - 1] + 6.0 * ue[m][j] - 4.0 * ue[m][j + 1]);
                /*[]*/
                j = grid_points[1] - 2;
                /*[]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][j - 2] - 4.0 * ue[m][j - 1] + 5.0 * ue[m][j]);
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
    /*[]*/
        /*[]*/
        eta = (double) j * dnym1;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[]*/
            /*[]*/
            xi = (double) i * dnxm1;
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
            /*[]*/
                /*[]*/
                zeta = (double) k * dnzm1;
                /*[]*/
                exact_solution(xi, eta, zeta, dtemp);
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 5; m++) {
                /*[]*/
                    /*[]*/
                    ue[m][k] = dtemp[m];
                }
                /*[]*/
                dtpp = 1.0 / dtemp[0];
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 1; m < 5; m++) {
                /*[]*/
                    /*[]*/
                    buf[m][k] = dtpp * dtemp[m];
                }
                /*[]*/
                cuf[k] = buf[3][k] * buf[3][k];
                /*[]*/
                buf[0][k] = cuf[k] + buf[1][k] * buf[1][k] + buf[2][k] * buf[2][k];
                /*[]*/
                q[k] = 0.5 * (buf[1][k] * ue[1][k] + buf[2][k] * ue[2][k] + buf[3][k] * ue[3][k]);
            }
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                km1 = k - 1;
                /*[]*/
                kp1 = k + 1;
                /*[]*/
                forcing[0][i][j][k] = forcing[0][i][j][k] - tz2 * (ue[3][kp1] - ue[3][km1]) + dz1tz1 * (ue[0][kp1] - 2.0 * ue[0][k] + ue[0][km1]);
                /*[]*/
                forcing[1][i][j][k] = forcing[1][i][j][k] - tz2 * (ue[1][kp1] * buf[3][kp1] - ue[1][km1] * buf[3][km1]) + zzcon2 * (buf[1][kp1] - 2.0 * buf[1][k] + buf[1][km1]) + dz2tz1 * (ue[1][kp1] - 2.0 * ue[1][k] + ue[1][km1]);
                /*[]*/
                forcing[2][i][j][k] = forcing[2][i][j][k] - tz2 * (ue[2][kp1] * buf[3][kp1] - ue[2][km1] * buf[3][km1]) + zzcon2 * (buf[2][kp1] - 2.0 * buf[2][k] + buf[2][km1]) + dz3tz1 * (ue[2][kp1] - 2.0 * ue[2][k] + ue[2][km1]);
                /*[]*/
                forcing[3][i][j][k] = forcing[3][i][j][k] - tz2 * ((ue[3][kp1] * buf[3][kp1] + c2 * (ue[4][kp1] - q[kp1])) - (ue[3][km1] * buf[3][km1] + c2 * (ue[4][km1] - q[km1]))) + zzcon1 * (buf[3][kp1] - 2.0 * buf[3][k] + buf[3][km1]) + dz4tz1 * (ue[3][kp1] - 2.0 * ue[3][k] + ue[3][km1]);
                /*[]*/
                forcing[4][i][j][k] = forcing[4][i][j][k] - tz2 * (buf[3][kp1] * (c1 * ue[4][kp1] - c2 * q[kp1]) - buf[3][km1] * (c1 * ue[4][km1] - c2 * q[km1])) + 0.5 * zzcon3 * (buf[0][kp1] - 2.0 * buf[0][k] + buf[0][km1]) + zzcon4 * (cuf[kp1] - 2.0 * cuf[k] + cuf[km1]) + zzcon5 * (buf[4][kp1] - 2.0 * buf[4][k] + buf[4][km1]) + dz5tz1 * (ue[4][kp1] - 2.0 * ue[4][k] + ue[4][km1]);
            }
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 5; m++) {
            /*[]*/
                /*[]*/
                k = 1;
                /*[]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (5.0 * ue[m][k] - 4.0 * ue[m][k + 1] + ue[m][k + 2]);
                /*[]*/
                k = 2;
                /*[]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (-4.0 * ue[m][k - 1] + 6.0 * ue[m][k] - 4.0 * ue[m][k + 1] + ue[m][k + 2]);
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
                for (k = 3; k <= grid_points[2] - 4; k++) {
                /*[]*/
                    /*[]*/
                    forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][k - 2] - 4.0 * ue[m][k - 1] + 6.0 * ue[m][k] - 4.0 * ue[m][k + 1] + ue[m][k + 2]);
                }
            }
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 5; m++) {
            /*[]*/
                /*[]*/
                k = grid_points[2] - 3;
                /*[]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][k - 2] - 4.0 * ue[m][k - 1] + 6.0 * ue[m][k] - 4.0 * ue[m][k + 1]);
                /*[]*/
                k = grid_points[2] - 2;
                /*[]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][k - 2] - 4.0 * ue[m][k - 1] + 5.0 * ue[m][k]);
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
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[]*/
                    /*[]*/
                    forcing[m][i][j][k] = -1.0 * forcing[m][i][j][k];
                }
            }
        }
    }
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void exact_solution(double xi, double eta , double zeta , double dtemp[5]) {
/*[]*/
    /*[]*/
    int m;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        dtemp[m] = ce[0][m] + xi * (ce[1][m] + xi * (ce[4][m] + xi * (ce[7][m] + xi * ce[10][m]))) + eta * (ce[2][m] + eta * (ce[5][m] + eta * (ce[8][m] + eta * ce[11][m]))) + zeta * (ce[3][m] + zeta * (ce[6][m] + zeta * (ce[9][m] + zeta * ce[12][m])));
    }
}
/*[]*/
static void initialize() {
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
    int ix;
    /*[]*/
    int iy;
    /*[]*/
    int iz;
    /*[]*/
    double xi;
    /*[]*/
    double eta;
    /*[]*/
    double zeta;
    /*[]*/
    double Pface[2][3][5];
    /*[]*/
    double Pxi;
    /*[]*/
    double Peta;
    /*[]*/
    double Pzeta;
    /*[]*/
    double temp[5];
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i <= 12 - 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j <= 12 - 1; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 0; k <= 12 - 1; k++) {
            /*[]*/
                /*[]*/
                u[0][i][j][k] = 1.0;
                /*[]*/
                u[1][i][j][k] = 0.0;
                /*[]*/
                u[2][i][j][k] = 0.0;
                /*[]*/
                u[3][i][j][k] = 0.0;
                /*[]*/
                u[4][i][j][k] = 1.0;
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i <= grid_points[0] - 1; i++) {
    /*[]*/
        /*[]*/
        xi = (double) i * dnxm1;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j <= grid_points[1] - 1; j++) {
        /*[]*/
            /*[]*/
            eta = (double) j * dnym1;
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
            /*[]*/
                /*[]*/
                zeta = (double) k * dnzm1;
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (ix = 0; ix < 2; ix++) {
                /*[]*/
                    /*[]*/
                    double *_imopVarPre195;
                    /*[]*/
                    double _imopVarPre196;
                    /*[]*/
                    _imopVarPre195 = &Pface[ix][0][0];
                    /*[]*/
                    _imopVarPre196 = (double) ix;
                    /*[]*/
                    exact_solution(_imopVarPre196, eta, zeta, _imopVarPre195);
                    /*[]*/
                }
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (iy = 0; iy < 2; iy++) {
                /*[]*/
                    /*[]*/
                    double *_imopVarPre199;
                    /*[]*/
                    double _imopVarPre200;
                    /*[]*/
                    _imopVarPre199 = &Pface[iy][1][0];
                    /*[]*/
                    _imopVarPre200 = (double) iy;
                    /*[]*/
                    exact_solution(xi, _imopVarPre200, zeta, _imopVarPre199);
                    /*[]*/
                }
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (iz = 0; iz < 2; iz++) {
                /*[]*/
                    /*[]*/
                    double *_imopVarPre203;
                    /*[]*/
                    double _imopVarPre204;
                    /*[]*/
                    _imopVarPre203 = &Pface[iz][2][0];
                    /*[]*/
                    _imopVarPre204 = (double) iz;
                    /*[]*/
                    exact_solution(xi, eta, _imopVarPre204, _imopVarPre203);
                    /*[]*/
                }
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 5; m++) {
                /*[]*/
                    /*[]*/
                    Pxi = xi * Pface[1][0][m] + (1.0 - xi) * Pface[0][0][m];
                    /*[]*/
                    Peta = eta * Pface[1][1][m] + (1.0 - eta) * Pface[0][1][m];
                    /*[]*/
                    Pzeta = zeta * Pface[1][2][m] + (1.0 - zeta) * Pface[0][2][m];
                    /*[]*/
                    u[m][i][j][k] = Pxi + Peta + Pzeta - Pxi * Peta - Pxi * Pzeta - Peta * Pzeta + Pxi * Peta * Pzeta;
                }
            }
        }
    }
    /*[]*/
    xi = 0.0;
    /*[]*/
    i = 0;
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
            exact_solution(xi, eta, zeta, temp);
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 5; m++) {
            /*[]*/
                /*[]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*[]*/
    xi = 1.0;
    /*[]*/
    i = grid_points[0] - 1;
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
            exact_solution(xi, eta, zeta, temp);
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 5; m++) {
            /*[]*/
                /*[]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*[]*/
    eta = 0.0;
    /*[]*/
    j = 0;
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
        for (k = 0; k < grid_points[2]; k++) {
        /*[]*/
            /*[]*/
            zeta = (double) k * dnzm1;
            /*[]*/
            exact_solution(xi, eta, zeta, temp);
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 5; m++) {
            /*[]*/
                /*[]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*[]*/
    eta = 1.0;
    /*[]*/
    j = grid_points[1] - 1;
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
        for (k = 0; k < grid_points[2]; k++) {
        /*[]*/
            /*[]*/
            zeta = (double) k * dnzm1;
            /*[]*/
            exact_solution(xi, eta, zeta, temp);
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 5; m++) {
            /*[]*/
                /*[]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*[]*/
    zeta = 0.0;
    /*[]*/
    k = 0;
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
            exact_solution(xi, eta, zeta, temp);
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 5; m++) {
            /*[]*/
                /*[]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*[]*/
    zeta = 1.0;
    /*[]*/
    k = grid_points[2] - 1;
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
            exact_solution(xi, eta, zeta, temp);
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 5; m++) {
            /*[]*/
                /*[]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
}
/*[]*/
static void lhsinit() {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    int n;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (n = 0; n < 15; n++) {
    /*[]*/
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
                    lhs[n][i][j][k] = 0.0;
                }
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (n = 0; n < 3; n++) {
    /*[]*/
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
                    lhs[5 * n + 2][i][j][k] = 1.0;
                }
            }
        }
    }
}
/*[5]*/
static void lhsx() {
/*[5]*/
    /*[5]*/
    double ru1;
    /*[5]*/
    int i;
    /*[5]*/
    int j;
    /*[5]*/
    int k;
    /*[5]*/
    /*[5, 7, 9, 11, 12, 13]*/
    /*[5, 7, 9, 11, 12, 13]*/
    /*[5]*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
    /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        /*[7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[5, 7, 9, 11, 12, 13]*/
            /*[5, 7, 9, 11, 12, 13]*/
#pragma omp for nowait
            /*[5, 7, 9, 11, 12, 13]*/
            /*[5, 7, 9, 11, 12, 13]*/
            /*[5, 7, 9, 11, 12, 13]*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
            /*[5, 7, 9, 11, 12, 13]*/
                /*[5, 7, 9, 11, 12, 13]*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*[5, 7, 9, 11, 12, 13]*/
                cv[i] = us[i][j][k];
                /*[5, 7, 9, 11, 12, 13]*/
                int _imopVarPre715;
                /*[5, 7, 9, 11, 12, 13]*/
                double _imopVarPre716;
                /*[5, 7, 9, 11, 12, 13]*/
                int _imopVarPre717;
                /*[5, 7, 9, 11, 12, 13]*/
                double _imopVarPre718;
                /*[5, 7, 9, 11, 12, 13]*/
                int _imopVarPre725;
                /*[5, 7, 9, 11, 12, 13]*/
                double _imopVarPre726;
                /*[5, 7, 9, 11, 12, 13]*/
                int _imopVarPre727;
                /*[5, 7, 9, 11, 12, 13]*/
                double _imopVarPre728;
                /*[5, 7, 9, 11, 12, 13]*/
                int _imopVarPre821;
                /*[5, 7, 9, 11, 12, 13]*/
                double _imopVarPre822;
                /*[5, 7, 9, 11, 12, 13]*/
                int _imopVarPre823;
                /*[5, 7, 9, 11, 12, 13]*/
                double _imopVarPre824;
                /*[5, 7, 9, 11, 12, 13]*/
                int _imopVarPre831;
                /*[5, 7, 9, 11, 12, 13]*/
                double _imopVarPre832;
                /*[5, 7, 9, 11, 12, 13]*/
                _imopVarPre715 = ((dxmax + ru1) > dx1);
                /*[5, 7, 9, 11, 12, 13]*/
                /*[5, 7, 9, 11, 12, 13]*/
                if (_imopVarPre715) {
                /*[5, 7, 9, 11, 12, 13]*/
                    /*[5, 7, 9, 11, 12, 13]*/
                    _imopVarPre716 = (dxmax + ru1);
                } else {
                /*[5, 7, 9, 11, 12, 13]*/
                    /*[5, 7, 9, 11, 12, 13]*/
                    _imopVarPre716 = dx1;
                }
                /*[5, 7, 9, 11, 12, 13]*/
                _imopVarPre717 = ((dx5 + c1c5 * ru1) > _imopVarPre716);
                /*[5, 7, 9, 11, 12, 13]*/
                /*[5, 7, 9, 11, 12, 13]*/
                if (_imopVarPre717) {
                /*[5, 7, 9, 11, 12, 13]*/
                    /*[5, 7, 9, 11, 12, 13]*/
                    _imopVarPre718 = (dx5 + c1c5 * ru1);
                } else {
                /*[5, 7, 9, 11, 12, 13]*/
                    /*[5, 7, 9, 11, 12, 13]*/
                    _imopVarPre725 = ((dxmax + ru1) > dx1);
                    /*[5, 7, 9, 11, 12, 13]*/
                    /*[5, 7, 9, 11, 12, 13]*/
                    if (_imopVarPre725) {
                    /*[5, 7, 9, 11, 12, 13]*/
                        /*[5, 7, 9, 11, 12, 13]*/
                        _imopVarPre726 = (dxmax + ru1);
                    } else {
                    /*[5, 7, 9, 11, 12, 13]*/
                        /*[5, 7, 9, 11, 12, 13]*/
                        _imopVarPre726 = dx1;
                    }
                    /*[5, 7, 9, 11, 12, 13]*/
                    _imopVarPre718 = _imopVarPre726;
                }
                /*[5, 7, 9, 11, 12, 13]*/
                _imopVarPre727 = ((dx2 + con43 * ru1) > _imopVarPre718);
                /*[5, 7, 9, 11, 12, 13]*/
                /*[5, 7, 9, 11, 12, 13]*/
                if (_imopVarPre727) {
                /*[5, 7, 9, 11, 12, 13]*/
                    /*[5, 7, 9, 11, 12, 13]*/
                    _imopVarPre728 = (dx2 + con43 * ru1);
                } else {
                /*[5, 7, 9, 11, 12, 13]*/
                    /*[5, 7, 9, 11, 12, 13]*/
                    _imopVarPre821 = ((dxmax + ru1) > dx1);
                    /*[5, 7, 9, 11, 12, 13]*/
                    /*[5, 7, 9, 11, 12, 13]*/
                    if (_imopVarPre821) {
                    /*[5, 7, 9, 11, 12, 13]*/
                        /*[5, 7, 9, 11, 12, 13]*/
                        _imopVarPre822 = (dxmax + ru1);
                    } else {
                    /*[5, 7, 9, 11, 12, 13]*/
                        /*[5, 7, 9, 11, 12, 13]*/
                        _imopVarPre822 = dx1;
                    }
                    /*[5, 7, 9, 11, 12, 13]*/
                    _imopVarPre823 = ((dx5 + c1c5 * ru1) > _imopVarPre822);
                    /*[5, 7, 9, 11, 12, 13]*/
                    /*[5, 7, 9, 11, 12, 13]*/
                    if (_imopVarPre823) {
                    /*[5, 7, 9, 11, 12, 13]*/
                        /*[5, 7, 9, 11, 12, 13]*/
                        _imopVarPre824 = (dx5 + c1c5 * ru1);
                    } else {
                    /*[5, 7, 9, 11, 12, 13]*/
                        /*[5, 7, 9, 11, 12, 13]*/
                        _imopVarPre831 = ((dxmax + ru1) > dx1);
                        /*[5, 7, 9, 11, 12, 13]*/
                        /*[5, 7, 9, 11, 12, 13]*/
                        if (_imopVarPre831) {
                        /*[5, 7, 9, 11, 12, 13]*/
                            /*[5, 7, 9, 11, 12, 13]*/
                            _imopVarPre832 = (dxmax + ru1);
                        } else {
                        /*[5, 7, 9, 11, 12, 13]*/
                            /*[5, 7, 9, 11, 12, 13]*/
                            _imopVarPre832 = dx1;
                        }
                        /*[5, 7, 9, 11, 12, 13]*/
                        _imopVarPre824 = _imopVarPre832;
                    }
                    /*[5, 7, 9, 11, 12, 13]*/
                    _imopVarPre728 = _imopVarPre824;
                }
                /*[5, 7, 9, 11, 12, 13]*/
                rhon[i] = _imopVarPre728;
            }
            /*[5, 7, 9, 11, 12, 13]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[5, 7, 9, 11, 12, 13]*/
#pragma omp barrier
            /*[6, 8, 10, 14, 15]*/
#pragma omp for nowait
            /*[6, 8, 10, 14, 15]*/
            /*[6, 8, 10, 14, 15]*/
            /*[6, 8, 10, 14, 15]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[6, 8, 10, 14, 15]*/
                /*[6, 8, 10, 14, 15]*/
                lhs[0][i][j][k] = 0.0;
                /*[6, 8, 10, 14, 15]*/
                lhs[1][i][j][k] = -dttx2 * cv[i - 1] - dttx1 * rhon[i - 1];
                /*[6, 8, 10, 14, 15]*/
                lhs[2][i][j][k] = 1.0 + c2dttx1 * rhon[i];
                /*[6, 8, 10, 14, 15]*/
                lhs[3][i][j][k] = dttx2 * cv[i + 1] - dttx1 * rhon[i + 1];
                /*[6, 8, 10, 14, 15]*/
                lhs[4][i][j][k] = 0.0;
            }
            /*[6, 8, 10, 14, 15]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 8, 10, 14, 15]*/
#pragma omp barrier
        }
    }
    /*[5, 7, 9, 11, 12, 13]*/
    i = 1;
    /*[5, 7, 9, 11, 12, 13]*/
#pragma omp for nowait
    /*[5, 7, 9, 11, 12, 13]*/
    /*[5, 7, 9, 11, 12, 13]*/
    /*[5, 7, 9, 11, 12, 13]*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
    /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[5, 7, 9, 11, 12, 13]*/
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[1][i + 1][j][k] = lhs[1][i + 1][j][k] - comz4;
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[2][i + 1][j][k] = lhs[2][i + 1][j][k] + comz6;
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[3][i + 1][j][k] = lhs[3][i + 1][j][k] - comz4;
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[4][i + 1][j][k] = lhs[4][i + 1][j][k] + comz1;
        }
    }
    /*[5, 7, 9, 11, 12, 13]*/
#pragma omp for nowait
    /*[5, 7, 9, 11, 12, 13]*/
    /*[5, 7, 9, 11, 12, 13]*/
    /*[5, 7, 9, 11, 12, 13]*/
    for (i = 3; i <= grid_points[0] - 4; i++) {
    /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[5, 7, 9, 11, 12, 13]*/
            /*[5, 7, 9, 11, 12, 13]*/
            /*[5, 7, 9, 11, 12, 13]*/
            /*[5, 7, 9, 11, 12, 13]*/
            /*[5, 7, 9, 11, 12, 13]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[5, 7, 9, 11, 12, 13]*/
                /*[5, 7, 9, 11, 12, 13]*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*[5, 7, 9, 11, 12, 13]*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*[5, 7, 9, 11, 12, 13]*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*[5, 7, 9, 11, 12, 13]*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*[5, 7, 9, 11, 12, 13]*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            }
        }
    }
    /*[5, 7, 9, 11, 12, 13]*/
    i = grid_points[0] - 3;
    /*[5, 7, 9, 11, 12, 13]*/
#pragma omp for nowait
    /*[5, 7, 9, 11, 12, 13]*/
    /*[5, 7, 9, 11, 12, 13]*/
    /*[5, 7, 9, 11, 12, 13]*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
    /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        /*[5, 7, 9, 11, 12, 13]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[5, 7, 9, 11, 12, 13]*/
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[0][i + 1][j][k] = lhs[0][i + 1][j][k] + comz1;
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[1][i + 1][j][k] = lhs[1][i + 1][j][k] - comz4;
            /*[5, 7, 9, 11, 12, 13]*/
            lhs[2][i + 1][j][k] = lhs[2][i + 1][j][k] + comz5;
        }
    }
    /*[5, 7, 9, 11, 12, 13]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[5, 7, 9, 11, 12, 13]*/
#pragma omp barrier
    /*[6, 8, 10, 14, 15]*/
#pragma omp for nowait
    /*[6, 8, 10, 14, 15]*/
    /*[6, 8, 10, 14, 15]*/
    /*[6, 8, 10, 14, 15]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[6, 8, 10, 14, 15]*/
        /*[6, 8, 10, 14, 15]*/
        /*[6, 8, 10, 14, 15]*/
        /*[6, 8, 10, 14, 15]*/
        /*[6, 8, 10, 14, 15]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[6, 8, 10, 14, 15]*/
            /*[6, 8, 10, 14, 15]*/
            /*[6, 8, 10, 14, 15]*/
            /*[6, 8, 10, 14, 15]*/
            /*[6, 8, 10, 14, 15]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[6, 8, 10, 14, 15]*/
                /*[6, 8, 10, 14, 15]*/
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*[6, 8, 10, 14, 15]*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dttx2 * speed[i - 1][j][k];
                /*[6, 8, 10, 14, 15]*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*[6, 8, 10, 14, 15]*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dttx2 * speed[i + 1][j][k];
                /*[6, 8, 10, 14, 15]*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*[6, 8, 10, 14, 15]*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*[6, 8, 10, 14, 15]*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dttx2 * speed[i - 1][j][k];
                /*[6, 8, 10, 14, 15]*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*[6, 8, 10, 14, 15]*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dttx2 * speed[i + 1][j][k];
                /*[6, 8, 10, 14, 15]*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
            }
        }
    }
    /*[6, 8, 10, 14, 15]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[6, 8, 10, 14, 15]*/
#pragma omp barrier
}
/*[6, 7, 8, 9, 10, 11]*/
static void lhsy() {
/*[6, 7, 8, 9, 10, 11]*/
    /*[6, 7, 8, 9, 10, 11]*/
    double ru1;
    /*[6, 7, 8, 9, 10, 11]*/
    int i;
    /*[6, 7, 8, 9, 10, 11]*/
    int j;
    /*[6, 7, 8, 9, 10, 11]*/
    int k;
    /*[6, 7, 8, 9, 10, 11]*/
    /*[6, 7, 8, 9, 10, 11]*/
    /*[6, 7, 8, 9, 10, 11]*/
    /*[6, 7, 8, 9, 10, 11]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        /*[8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[6, 7, 8, 9, 10, 11]*/
            /*[6, 7, 8, 9, 10, 11]*/
#pragma omp for nowait
            /*[6, 7, 8, 9, 10, 11]*/
            /*[6, 7, 8, 9, 10, 11]*/
            /*[6, 7, 8, 9, 10, 11]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
            /*[6, 7, 8, 9, 10, 11]*/
                /*[6, 7, 8, 9, 10, 11]*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*[6, 7, 8, 9, 10, 11]*/
                cv[j] = vs[i][j][k];
                /*[6, 7, 8, 9, 10, 11]*/
                int _imopVarPre1343;
                /*[6, 7, 8, 9, 10, 11]*/
                double _imopVarPre1344;
                /*[6, 7, 8, 9, 10, 11]*/
                int _imopVarPre1345;
                /*[6, 7, 8, 9, 10, 11]*/
                double _imopVarPre1346;
                /*[6, 7, 8, 9, 10, 11]*/
                int _imopVarPre1353;
                /*[6, 7, 8, 9, 10, 11]*/
                double _imopVarPre1354;
                /*[6, 7, 8, 9, 10, 11]*/
                int _imopVarPre1355;
                /*[6, 7, 8, 9, 10, 11]*/
                double _imopVarPre1356;
                /*[6, 7, 8, 9, 10, 11]*/
                int _imopVarPre1449;
                /*[6, 7, 8, 9, 10, 11]*/
                double _imopVarPre1450;
                /*[6, 7, 8, 9, 10, 11]*/
                int _imopVarPre1451;
                /*[6, 7, 8, 9, 10, 11]*/
                double _imopVarPre1452;
                /*[6, 7, 8, 9, 10, 11]*/
                int _imopVarPre1459;
                /*[6, 7, 8, 9, 10, 11]*/
                double _imopVarPre1460;
                /*[6, 7, 8, 9, 10, 11]*/
                _imopVarPre1343 = ((dymax + ru1) > dy1);
                /*[6, 7, 8, 9, 10, 11]*/
                /*[6, 7, 8, 9, 10, 11]*/
                if (_imopVarPre1343) {
                /*[6, 7, 8, 9, 10, 11]*/
                    /*[6, 7, 8, 9, 10, 11]*/
                    _imopVarPre1344 = (dymax + ru1);
                } else {
                /*[6, 7, 8, 9, 10, 11]*/
                    /*[6, 7, 8, 9, 10, 11]*/
                    _imopVarPre1344 = dy1;
                }
                /*[6, 7, 8, 9, 10, 11]*/
                _imopVarPre1345 = ((dy5 + c1c5 * ru1) > _imopVarPre1344);
                /*[6, 7, 8, 9, 10, 11]*/
                /*[6, 7, 8, 9, 10, 11]*/
                if (_imopVarPre1345) {
                /*[6, 7, 8, 9, 10, 11]*/
                    /*[6, 7, 8, 9, 10, 11]*/
                    _imopVarPre1346 = (dy5 + c1c5 * ru1);
                } else {
                /*[6, 7, 8, 9, 10, 11]*/
                    /*[6, 7, 8, 9, 10, 11]*/
                    _imopVarPre1353 = ((dymax + ru1) > dy1);
                    /*[6, 7, 8, 9, 10, 11]*/
                    /*[6, 7, 8, 9, 10, 11]*/
                    if (_imopVarPre1353) {
                    /*[6, 7, 8, 9, 10, 11]*/
                        /*[6, 7, 8, 9, 10, 11]*/
                        _imopVarPre1354 = (dymax + ru1);
                    } else {
                    /*[6, 7, 8, 9, 10, 11]*/
                        /*[6, 7, 8, 9, 10, 11]*/
                        _imopVarPre1354 = dy1;
                    }
                    /*[6, 7, 8, 9, 10, 11]*/
                    _imopVarPre1346 = _imopVarPre1354;
                }
                /*[6, 7, 8, 9, 10, 11]*/
                _imopVarPre1355 = ((dy3 + con43 * ru1) > _imopVarPre1346);
                /*[6, 7, 8, 9, 10, 11]*/
                /*[6, 7, 8, 9, 10, 11]*/
                if (_imopVarPre1355) {
                /*[6, 7, 8, 9, 10, 11]*/
                    /*[6, 7, 8, 9, 10, 11]*/
                    _imopVarPre1356 = (dy3 + con43 * ru1);
                } else {
                /*[6, 7, 8, 9, 10, 11]*/
                    /*[6, 7, 8, 9, 10, 11]*/
                    _imopVarPre1449 = ((dymax + ru1) > dy1);
                    /*[6, 7, 8, 9, 10, 11]*/
                    /*[6, 7, 8, 9, 10, 11]*/
                    if (_imopVarPre1449) {
                    /*[6, 7, 8, 9, 10, 11]*/
                        /*[6, 7, 8, 9, 10, 11]*/
                        _imopVarPre1450 = (dymax + ru1);
                    } else {
                    /*[6, 7, 8, 9, 10, 11]*/
                        /*[6, 7, 8, 9, 10, 11]*/
                        _imopVarPre1450 = dy1;
                    }
                    /*[6, 7, 8, 9, 10, 11]*/
                    _imopVarPre1451 = ((dy5 + c1c5 * ru1) > _imopVarPre1450);
                    /*[6, 7, 8, 9, 10, 11]*/
                    /*[6, 7, 8, 9, 10, 11]*/
                    if (_imopVarPre1451) {
                    /*[6, 7, 8, 9, 10, 11]*/
                        /*[6, 7, 8, 9, 10, 11]*/
                        _imopVarPre1452 = (dy5 + c1c5 * ru1);
                    } else {
                    /*[6, 7, 8, 9, 10, 11]*/
                        /*[6, 7, 8, 9, 10, 11]*/
                        _imopVarPre1459 = ((dymax + ru1) > dy1);
                        /*[6, 7, 8, 9, 10, 11]*/
                        /*[6, 7, 8, 9, 10, 11]*/
                        if (_imopVarPre1459) {
                        /*[6, 7, 8, 9, 10, 11]*/
                            /*[6, 7, 8, 9, 10, 11]*/
                            _imopVarPre1460 = (dymax + ru1);
                        } else {
                        /*[6, 7, 8, 9, 10, 11]*/
                            /*[6, 7, 8, 9, 10, 11]*/
                            _imopVarPre1460 = dy1;
                        }
                        /*[6, 7, 8, 9, 10, 11]*/
                        _imopVarPre1452 = _imopVarPre1460;
                    }
                    /*[6, 7, 8, 9, 10, 11]*/
                    _imopVarPre1356 = _imopVarPre1452;
                }
                /*[6, 7, 8, 9, 10, 11]*/
                rhoq[j] = _imopVarPre1356;
            }
            /*[6, 7, 8, 9, 10, 11]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 8, 9, 10, 11]*/
#pragma omp barrier
            /*[7, 8, 9, 10, 11]*/
#pragma omp for nowait
            /*[7, 8, 9, 10, 11]*/
            /*[7, 8, 9, 10, 11]*/
            /*[7, 8, 9, 10, 11]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[7, 8, 9, 10, 11]*/
                /*[7, 8, 9, 10, 11]*/
                lhs[0][i][j][k] = 0.0;
                /*[7, 8, 9, 10, 11]*/
                lhs[1][i][j][k] = -dtty2 * cv[j - 1] - dtty1 * rhoq[j - 1];
                /*[7, 8, 9, 10, 11]*/
                lhs[2][i][j][k] = 1.0 + c2dtty1 * rhoq[j];
                /*[7, 8, 9, 10, 11]*/
                lhs[3][i][j][k] = dtty2 * cv[j + 1] - dtty1 * rhoq[j + 1];
                /*[7, 8, 9, 10, 11]*/
                lhs[4][i][j][k] = 0.0;
            }
            /*[7, 8, 9, 10, 11]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[7, 8, 9, 10, 11]*/
#pragma omp barrier
        }
    }
    /*[6, 7, 8, 9, 10, 11]*/
    j = 1;
    /*[6, 7, 8, 9, 10, 11]*/
#pragma omp for nowait
    /*[6, 7, 8, 9, 10, 11]*/
    /*[6, 7, 8, 9, 10, 11]*/
    /*[6, 7, 8, 9, 10, 11]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[6, 7, 8, 9, 10, 11]*/
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[1][i][j + 1][k] = lhs[1][i][j + 1][k] - comz4;
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[2][i][j + 1][k] = lhs[2][i][j + 1][k] + comz6;
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[3][i][j + 1][k] = lhs[3][i][j + 1][k] - comz4;
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[4][i][j + 1][k] = lhs[4][i][j + 1][k] + comz1;
        }
    }
    /*[6, 7, 8, 9, 10, 11]*/
#pragma omp for nowait
    /*[6, 7, 8, 9, 10, 11]*/
    /*[6, 7, 8, 9, 10, 11]*/
    /*[6, 7, 8, 9, 10, 11]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        for (j = 3; j <= grid_points[1] - 4; j++) {
        /*[6, 7, 8, 9, 10, 11]*/
            /*[6, 7, 8, 9, 10, 11]*/
            /*[6, 7, 8, 9, 10, 11]*/
            /*[6, 7, 8, 9, 10, 11]*/
            /*[6, 7, 8, 9, 10, 11]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[6, 7, 8, 9, 10, 11]*/
                /*[6, 7, 8, 9, 10, 11]*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*[6, 7, 8, 9, 10, 11]*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*[6, 7, 8, 9, 10, 11]*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*[6, 7, 8, 9, 10, 11]*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*[6, 7, 8, 9, 10, 11]*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            }
        }
    }
    /*[6, 7, 8, 9, 10, 11]*/
    j = grid_points[1] - 3;
    /*[6, 7, 8, 9, 10, 11]*/
#pragma omp for nowait
    /*[6, 7, 8, 9, 10, 11]*/
    /*[6, 7, 8, 9, 10, 11]*/
    /*[6, 7, 8, 9, 10, 11]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        /*[6, 7, 8, 9, 10, 11]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[6, 7, 8, 9, 10, 11]*/
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[0][i][j + 1][k] = lhs[0][i][j + 1][k] + comz1;
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[1][i][j + 1][k] = lhs[1][i][j + 1][k] - comz4;
            /*[6, 7, 8, 9, 10, 11]*/
            lhs[2][i][j + 1][k] = lhs[2][i][j + 1][k] + comz5;
        }
    }
    /*[6, 7, 8, 9, 10, 11]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[6, 7, 8, 9, 10, 11]*/
#pragma omp barrier
    /*[7, 8, 9, 10, 11]*/
#pragma omp for nowait
    /*[7, 8, 9, 10, 11]*/
    /*[7, 8, 9, 10, 11]*/
    /*[7, 8, 9, 10, 11]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[7, 8, 9, 10, 11]*/
        /*[7, 8, 9, 10, 11]*/
        /*[7, 8, 9, 10, 11]*/
        /*[7, 8, 9, 10, 11]*/
        /*[7, 8, 9, 10, 11]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[7, 8, 9, 10, 11]*/
            /*[7, 8, 9, 10, 11]*/
            /*[7, 8, 9, 10, 11]*/
            /*[7, 8, 9, 10, 11]*/
            /*[7, 8, 9, 10, 11]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[7, 8, 9, 10, 11]*/
                /*[7, 8, 9, 10, 11]*/
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*[7, 8, 9, 10, 11]*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dtty2 * speed[i][j - 1][k];
                /*[7, 8, 9, 10, 11]*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*[7, 8, 9, 10, 11]*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dtty2 * speed[i][j + 1][k];
                /*[7, 8, 9, 10, 11]*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*[7, 8, 9, 10, 11]*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*[7, 8, 9, 10, 11]*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dtty2 * speed[i][j - 1][k];
                /*[7, 8, 9, 10, 11]*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*[7, 8, 9, 10, 11]*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dtty2 * speed[i][j + 1][k];
                /*[7, 8, 9, 10, 11]*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
            }
        }
    }
    /*[7, 8, 9, 10, 11]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[7, 8, 9, 10, 11]*/
#pragma omp barrier
}
/*[16]*/
static void lhsz() {
/*[16]*/
    /*[16]*/
    double ru1;
    /*[16]*/
    int i;
    /*[16]*/
    int j;
    /*[16]*/
    int k;
    /*[16]*/
    /*[16, 17, 18, 19]*/
    /*[16, 17, 18, 19]*/
    /*[16]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        /*[17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[16, 17, 18, 19]*/
            /*[16, 17, 18, 19]*/
#pragma omp for nowait
            /*[16, 17, 18, 19]*/
            /*[16, 17, 18, 19]*/
            /*[16, 17, 18, 19]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
            /*[16, 17, 18, 19]*/
                /*[16, 17, 18, 19]*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*[16, 17, 18, 19]*/
                cv[k] = ws[i][j][k];
                /*[16, 17, 18, 19]*/
                int _imopVarPre1971;
                /*[16, 17, 18, 19]*/
                double _imopVarPre1972;
                /*[16, 17, 18, 19]*/
                int _imopVarPre1973;
                /*[16, 17, 18, 19]*/
                double _imopVarPre1974;
                /*[16, 17, 18, 19]*/
                int _imopVarPre1981;
                /*[16, 17, 18, 19]*/
                double _imopVarPre1982;
                /*[16, 17, 18, 19]*/
                int _imopVarPre1983;
                /*[16, 17, 18, 19]*/
                double _imopVarPre1984;
                /*[16, 17, 18, 19]*/
                int _imopVarPre2077;
                /*[16, 17, 18, 19]*/
                double _imopVarPre2078;
                /*[16, 17, 18, 19]*/
                int _imopVarPre2079;
                /*[16, 17, 18, 19]*/
                double _imopVarPre2080;
                /*[16, 17, 18, 19]*/
                int _imopVarPre2087;
                /*[16, 17, 18, 19]*/
                double _imopVarPre2088;
                /*[16, 17, 18, 19]*/
                _imopVarPre1971 = ((dzmax + ru1) > dz1);
                /*[16, 17, 18, 19]*/
                /*[16, 17, 18, 19]*/
                if (_imopVarPre1971) {
                /*[16, 17, 18, 19]*/
                    /*[16, 17, 18, 19]*/
                    _imopVarPre1972 = (dzmax + ru1);
                } else {
                /*[16, 17, 18, 19]*/
                    /*[16, 17, 18, 19]*/
                    _imopVarPre1972 = dz1;
                }
                /*[16, 17, 18, 19]*/
                _imopVarPre1973 = ((dz5 + c1c5 * ru1) > _imopVarPre1972);
                /*[16, 17, 18, 19]*/
                /*[16, 17, 18, 19]*/
                if (_imopVarPre1973) {
                /*[16, 17, 18, 19]*/
                    /*[16, 17, 18, 19]*/
                    _imopVarPre1974 = (dz5 + c1c5 * ru1);
                } else {
                /*[16, 17, 18, 19]*/
                    /*[16, 17, 18, 19]*/
                    _imopVarPre1981 = ((dzmax + ru1) > dz1);
                    /*[16, 17, 18, 19]*/
                    /*[16, 17, 18, 19]*/
                    if (_imopVarPre1981) {
                    /*[16, 17, 18, 19]*/
                        /*[16, 17, 18, 19]*/
                        _imopVarPre1982 = (dzmax + ru1);
                    } else {
                    /*[16, 17, 18, 19]*/
                        /*[16, 17, 18, 19]*/
                        _imopVarPre1982 = dz1;
                    }
                    /*[16, 17, 18, 19]*/
                    _imopVarPre1974 = _imopVarPre1982;
                }
                /*[16, 17, 18, 19]*/
                _imopVarPre1983 = ((dz4 + con43 * ru1) > _imopVarPre1974);
                /*[16, 17, 18, 19]*/
                /*[16, 17, 18, 19]*/
                if (_imopVarPre1983) {
                /*[16, 17, 18, 19]*/
                    /*[16, 17, 18, 19]*/
                    _imopVarPre1984 = (dz4 + con43 * ru1);
                } else {
                /*[16, 17, 18, 19]*/
                    /*[16, 17, 18, 19]*/
                    _imopVarPre2077 = ((dzmax + ru1) > dz1);
                    /*[16, 17, 18, 19]*/
                    /*[16, 17, 18, 19]*/
                    if (_imopVarPre2077) {
                    /*[16, 17, 18, 19]*/
                        /*[16, 17, 18, 19]*/
                        _imopVarPre2078 = (dzmax + ru1);
                    } else {
                    /*[16, 17, 18, 19]*/
                        /*[16, 17, 18, 19]*/
                        _imopVarPre2078 = dz1;
                    }
                    /*[16, 17, 18, 19]*/
                    _imopVarPre2079 = ((dz5 + c1c5 * ru1) > _imopVarPre2078);
                    /*[16, 17, 18, 19]*/
                    /*[16, 17, 18, 19]*/
                    if (_imopVarPre2079) {
                    /*[16, 17, 18, 19]*/
                        /*[16, 17, 18, 19]*/
                        _imopVarPre2080 = (dz5 + c1c5 * ru1);
                    } else {
                    /*[16, 17, 18, 19]*/
                        /*[16, 17, 18, 19]*/
                        _imopVarPre2087 = ((dzmax + ru1) > dz1);
                        /*[16, 17, 18, 19]*/
                        /*[16, 17, 18, 19]*/
                        if (_imopVarPre2087) {
                        /*[16, 17, 18, 19]*/
                            /*[16, 17, 18, 19]*/
                            _imopVarPre2088 = (dzmax + ru1);
                        } else {
                        /*[16, 17, 18, 19]*/
                            /*[16, 17, 18, 19]*/
                            _imopVarPre2088 = dz1;
                        }
                        /*[16, 17, 18, 19]*/
                        _imopVarPre2080 = _imopVarPre2088;
                    }
                    /*[16, 17, 18, 19]*/
                    _imopVarPre1984 = _imopVarPre2080;
                }
                /*[16, 17, 18, 19]*/
                rhos[k] = _imopVarPre1984;
            }
            /*[16, 17, 18, 19]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[16, 17, 18, 19]*/
#pragma omp barrier
            /*[20, 21, 22]*/
#pragma omp for nowait
            /*[20, 21, 22]*/
            /*[20, 21, 22]*/
            /*[20, 21, 22]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[20, 21, 22]*/
                /*[20, 21, 22]*/
                lhs[0][i][j][k] = 0.0;
                /*[20, 21, 22]*/
                lhs[1][i][j][k] = -dttz2 * cv[k - 1] - dttz1 * rhos[k - 1];
                /*[20, 21, 22]*/
                lhs[2][i][j][k] = 1.0 + c2dttz1 * rhos[k];
                /*[20, 21, 22]*/
                lhs[3][i][j][k] = dttz2 * cv[k + 1] - dttz1 * rhos[k + 1];
                /*[20, 21, 22]*/
                lhs[4][i][j][k] = 0.0;
            }
            /*[20, 21, 22]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[20, 21, 22]*/
#pragma omp barrier
        }
    }
    /*[16, 17, 18, 19]*/
    k = 1;
    /*[16, 17, 18, 19]*/
#pragma omp for nowait
    /*[16, 17, 18, 19]*/
    /*[16, 17, 18, 19]*/
    /*[16, 17, 18, 19]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[16, 17, 18, 19]*/
            /*[16, 17, 18, 19]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*[16, 17, 18, 19]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*[16, 17, 18, 19]*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*[16, 17, 18, 19]*/
            lhs[1][i][j][k + 1] = lhs[1][i][j][k + 1] - comz4;
            /*[16, 17, 18, 19]*/
            lhs[2][i][j][k + 1] = lhs[2][i][j][k + 1] + comz6;
            /*[16, 17, 18, 19]*/
            lhs[3][i][j][k + 1] = lhs[3][i][j][k + 1] - comz4;
            /*[16, 17, 18, 19]*/
            lhs[4][i][j][k + 1] = lhs[4][i][j][k + 1] + comz1;
        }
    }
    /*[16, 17, 18, 19]*/
#pragma omp for nowait
    /*[16, 17, 18, 19]*/
    /*[16, 17, 18, 19]*/
    /*[16, 17, 18, 19]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[16, 17, 18, 19]*/
            /*[16, 17, 18, 19]*/
            /*[16, 17, 18, 19]*/
            /*[16, 17, 18, 19]*/
            /*[16, 17, 18, 19]*/
            for (k = 3; k <= grid_points[2] - 4; k++) {
            /*[16, 17, 18, 19]*/
                /*[16, 17, 18, 19]*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*[16, 17, 18, 19]*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*[16, 17, 18, 19]*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*[16, 17, 18, 19]*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*[16, 17, 18, 19]*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            }
        }
    }
    /*[16, 17, 18, 19]*/
    k = grid_points[2] - 3;
    /*[16, 17, 18, 19]*/
#pragma omp for nowait
    /*[16, 17, 18, 19]*/
    /*[16, 17, 18, 19]*/
    /*[16, 17, 18, 19]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        /*[16, 17, 18, 19]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[16, 17, 18, 19]*/
            /*[16, 17, 18, 19]*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*[16, 17, 18, 19]*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*[16, 17, 18, 19]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*[16, 17, 18, 19]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*[16, 17, 18, 19]*/
            lhs[0][i][j][k + 1] = lhs[0][i][j][k + 1] + comz1;
            /*[16, 17, 18, 19]*/
            lhs[1][i][j][k + 1] = lhs[1][i][j][k + 1] - comz4;
            /*[16, 17, 18, 19]*/
            lhs[2][i][j][k + 1] = lhs[2][i][j][k + 1] + comz5;
        }
    }
    /*[16, 17, 18, 19]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[16, 17, 18, 19]*/
#pragma omp barrier
    /*[20, 21, 22]*/
#pragma omp for nowait
    /*[20, 21, 22]*/
    /*[20, 21, 22]*/
    /*[20, 21, 22]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[20, 21, 22]*/
        /*[20, 21, 22]*/
        /*[20, 21, 22]*/
        /*[20, 21, 22]*/
        /*[20, 21, 22]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[20, 21, 22]*/
            /*[20, 21, 22]*/
            /*[20, 21, 22]*/
            /*[20, 21, 22]*/
            /*[20, 21, 22]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[20, 21, 22]*/
                /*[20, 21, 22]*/
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*[20, 21, 22]*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dttz2 * speed[i][j][k - 1];
                /*[20, 21, 22]*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*[20, 21, 22]*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dttz2 * speed[i][j][k + 1];
                /*[20, 21, 22]*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*[20, 21, 22]*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*[20, 21, 22]*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dttz2 * speed[i][j][k - 1];
                /*[20, 21, 22]*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*[20, 21, 22]*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dttz2 * speed[i][j][k + 1];
                /*[20, 21, 22]*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
            }
        }
    }
    /*[20, 21, 22]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[20, 21, 22]*/
#pragma omp barrier
}
/*[6, 7, 8, 9, 10, 11, 12]*/
static void ninvr() {
/*[6, 7, 8, 9, 10, 11, 12]*/
    /*[6, 7, 8, 9, 10, 11, 12]*/
    int i;
    /*[6, 7, 8, 9, 10, 11, 12]*/
    int j;
    /*[6, 7, 8, 9, 10, 11, 12]*/
    int k;
    /*[6, 7, 8, 9, 10, 11, 12]*/
    double r1;
    /*[6, 7, 8, 9, 10, 11, 12]*/
    double r2;
    /*[6, 7, 8, 9, 10, 11, 12]*/
    double r3;
    /*[6, 7, 8, 9, 10, 11, 12]*/
    double r4;
    /*[6, 7, 8, 9, 10, 11, 12]*/
    double r5;
    /*[6, 7, 8, 9, 10, 11, 12]*/
    double t1;
    /*[6, 7, 8, 9, 10, 11, 12]*/
    double t2;
    /*[6, 7, 8, 9, 10, 11, 12]*/
#pragma omp for nowait
    /*[6, 7, 8, 9, 10, 11, 12]*/
    /*[6, 7, 8, 9, 10, 11, 12]*/
    /*[6, 7, 8, 9, 10, 11, 12]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[6, 7, 8, 9, 10, 11, 12]*/
        /*[6, 7, 8, 9, 10, 11, 12]*/
        /*[6, 7, 8, 9, 10, 11, 12]*/
        /*[6, 7, 8, 9, 10, 11, 12]*/
        /*[6, 7, 8, 9, 10, 11, 12]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[6, 7, 8, 9, 10, 11, 12]*/
            /*[6, 7, 8, 9, 10, 11, 12]*/
            /*[6, 7, 8, 9, 10, 11, 12]*/
            /*[6, 7, 8, 9, 10, 11, 12]*/
            /*[6, 7, 8, 9, 10, 11, 12]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[6, 7, 8, 9, 10, 11, 12]*/
                /*[6, 7, 8, 9, 10, 11, 12]*/
                r1 = rhs[0][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12]*/
                r2 = rhs[1][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12]*/
                r3 = rhs[2][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12]*/
                r4 = rhs[3][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12]*/
                r5 = rhs[4][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12]*/
                t1 = bt * r3;
                /*[6, 7, 8, 9, 10, 11, 12]*/
                t2 = 0.5 * (r4 + r5);
                /*[6, 7, 8, 9, 10, 11, 12]*/
                rhs[0][i][j][k] = -r2;
                /*[6, 7, 8, 9, 10, 11, 12]*/
                rhs[1][i][j][k] = r1;
                /*[6, 7, 8, 9, 10, 11, 12]*/
                rhs[2][i][j][k] = bt * (r4 - r5);
                /*[6, 7, 8, 9, 10, 11, 12]*/
                rhs[3][i][j][k] = -t1 + t2;
                /*[6, 7, 8, 9, 10, 11, 12]*/
                rhs[4][i][j][k] = t1 + t2;
            }
        }
    }
}
/*[10, 11]*/
static void pinvr() {
/*[10, 11]*/
    /*[10, 11]*/
    int i;
    /*[10, 11]*/
    int j;
    /*[10, 11]*/
    int k;
    /*[10, 11]*/
    double r1;
    /*[10, 11]*/
    double r2;
    /*[10, 11]*/
    double r3;
    /*[10, 11]*/
    double r4;
    /*[10, 11]*/
    double r5;
    /*[10, 11]*/
    double t1;
    /*[10, 11]*/
    double t2;
    /*[10, 11]*/
#pragma omp for nowait
    /*[10, 11]*/
    /*[10, 11]*/
    /*[10, 11]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[10, 11]*/
        /*[10, 11]*/
        /*[10, 11]*/
        /*[10, 11]*/
        /*[10, 11]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[10, 11]*/
            /*[10, 11]*/
            /*[10, 11]*/
            /*[10, 11]*/
            /*[10, 11]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[10, 11]*/
                /*[10, 11]*/
                r1 = rhs[0][i][j][k];
                /*[10, 11]*/
                r2 = rhs[1][i][j][k];
                /*[10, 11]*/
                r3 = rhs[2][i][j][k];
                /*[10, 11]*/
                r4 = rhs[3][i][j][k];
                /*[10, 11]*/
                r5 = rhs[4][i][j][k];
                /*[10, 11]*/
                t1 = bt * r1;
                /*[10, 11]*/
                t2 = 0.5 * (r4 + r5);
                /*[10, 11]*/
                rhs[0][i][j][k] = bt * (r4 - r5);
                /*[10, 11]*/
                rhs[1][i][j][k] = -r3;
                /*[10, 11]*/
                rhs[2][i][j][k] = r2;
                /*[10, 11]*/
                rhs[3][i][j][k] = -t1 + t2;
                /*[10, 11]*/
                rhs[4][i][j][k] = t1 + t2;
            }
        }
    }
}
/*[2, 23]*/
static void compute_rhs() {
/*[2, 23]*/
    /*[2, 23]*/
    int i;
    /*[2, 23]*/
    int j;
    /*[2, 23]*/
    int k;
    /*[2, 23]*/
    int m;
    /*[2, 23]*/
    double aux;
    /*[2, 23]*/
    double rho_inv;
    /*[2, 23]*/
    double uijk;
    /*[2, 23]*/
    double up1;
    /*[2, 23]*/
    double um1;
    /*[2, 23]*/
    double vijk;
    /*[2, 23]*/
    double vp1;
    /*[2, 23]*/
    double vm1;
    /*[2, 23]*/
    double wijk;
    /*[2, 23]*/
    double wp1;
    /*[2, 23]*/
    double wm1;
    /*[2, 23]*/
#pragma omp for nowait
    /*[2, 23]*/
    /*[2, 23]*/
    /*[2, 23]*/
    for (i = 0; i <= grid_points[0] - 1; i++) {
    /*[2, 23]*/
        /*[2, 23]*/
        /*[2, 23]*/
        /*[2, 23]*/
        /*[2, 23]*/
        for (j = 0; j <= grid_points[1] - 1; j++) {
        /*[2, 23]*/
            /*[2, 23]*/
            /*[2, 23]*/
            /*[2, 23]*/
            /*[2, 23]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
            /*[2, 23]*/
                /*[2, 23]*/
                rho_inv = 1.0 / u[0][i][j][k];
                /*[2, 23]*/
                rho_i[i][j][k] = rho_inv;
                /*[2, 23]*/
                us[i][j][k] = u[1][i][j][k] * rho_inv;
                /*[2, 23]*/
                vs[i][j][k] = u[2][i][j][k] * rho_inv;
                /*[2, 23]*/
                ws[i][j][k] = u[3][i][j][k] * rho_inv;
                /*[2, 23]*/
                square[i][j][k] = 0.5 * (u[1][i][j][k] * u[1][i][j][k] + u[2][i][j][k] * u[2][i][j][k] + u[3][i][j][k] * u[3][i][j][k]) * rho_inv;
                /*[2, 23]*/
                qs[i][j][k] = square[i][j][k] * rho_inv;
                /*[2, 23]*/
                aux = c1c2 * rho_inv * (u[4][i][j][k] - square[i][j][k]);
                /*[2, 23]*/
                aux = sqrt(aux);
                /*[2, 23]*/
                /*[2, 23]*/
                speed[i][j][k] = aux;
                /*[2, 23]*/
                ainv[i][j][k] = 1.0 / aux;
            }
        }
    }
    /*[2, 23]*/
    /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[2, 23]*/
    for (m = 0; m < 5; m++) {
    /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp for nowait
        /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        for (i = 0; i <= grid_points[0] - 1; i++) {
        /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
            /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                for (k = 0; k <= grid_points[2] - 1; k++) {
                /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                    /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                    rhs[m][i][j][k] = forcing[m][i][j][k];
                }
            }
        }
        /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp barrier
    }
    /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp for nowait
    /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                uijk = us[i][j][k];
                /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                up1 = us[i + 1][j][k];
                /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                um1 = us[i - 1][j][k];
                /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                rhs[0][i][j][k] = rhs[0][i][j][k] + dx1tx1 * (u[0][i + 1][j][k] - 2.0 * u[0][i][j][k] + u[0][i - 1][j][k]) - tx2 * (u[1][i + 1][j][k] - u[1][i - 1][j][k]);
                /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                rhs[1][i][j][k] = rhs[1][i][j][k] + dx2tx1 * (u[1][i + 1][j][k] - 2.0 * u[1][i][j][k] + u[1][i - 1][j][k]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[1][i + 1][j][k] * up1 - u[1][i - 1][j][k] * um1 + (u[4][i + 1][j][k] - square[i + 1][j][k] - u[4][i - 1][j][k] + square[i - 1][j][k]) * c2);
                /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                rhs[2][i][j][k] = rhs[2][i][j][k] + dx3tx1 * (u[2][i + 1][j][k] - 2.0 * u[2][i][j][k] + u[2][i - 1][j][k]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[2][i + 1][j][k] * up1 - u[2][i - 1][j][k] * um1);
                /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                rhs[3][i][j][k] = rhs[3][i][j][k] + dx4tx1 * (u[3][i + 1][j][k] - 2.0 * u[3][i][j][k] + u[3][i - 1][j][k]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[3][i + 1][j][k] * up1 - u[3][i - 1][j][k] * um1);
                /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                rhs[4][i][j][k] = rhs[4][i][j][k] + dx5tx1 * (u[4][i + 1][j][k] - 2.0 * u[4][i][j][k] + u[4][i - 1][j][k]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[4][i + 1][j][k] * rho_i[i + 1][j][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i - 1][j][k] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[4][i + 1][j][k] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[4][i - 1][j][k] - c2 * square[i - 1][j][k]) * um1);
            }
        }
    }
    /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[2, 3, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp barrier
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    i = 1;
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp for nowait
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
            }
        }
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp barrier
    }
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    i = 2;
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp for nowait
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
            }
        }
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp barrier
    }
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp for nowait
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        for (i = 3 * 1; i <= grid_points[0] - 3 * 1 - 1; i++) {
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                }
            }
        }
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp barrier
    }
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    i = grid_points[0] - 3;
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp for nowait
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k]);
            }
        }
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp barrier
    }
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    i = grid_points[0] - 2;
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp for nowait
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 5.0 * u[m][i][j][k]);
            }
        }
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp barrier
    }
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[3, 4, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]*/
#pragma omp barrier
    /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
#pragma omp for nowait
    /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
    /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
    /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
        /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
        /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
        /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
        /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
            /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
            /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
            /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
            /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
                /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
                vijk = vs[i][j][k];
                /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
                vp1 = vs[i][j + 1][k];
                /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
                vm1 = vs[i][j - 1][k];
                /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
                rhs[0][i][j][k] = rhs[0][i][j][k] + dy1ty1 * (u[0][i][j + 1][k] - 2.0 * u[0][i][j][k] + u[0][i][j - 1][k]) - ty2 * (u[2][i][j + 1][k] - u[2][i][j - 1][k]);
                /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
                rhs[1][i][j][k] = rhs[1][i][j][k] + dy2ty1 * (u[1][i][j + 1][k] - 2.0 * u[1][i][j][k] + u[1][i][j - 1][k]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[1][i][j + 1][k] * vp1 - u[1][i][j - 1][k] * vm1);
                /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
                rhs[2][i][j][k] = rhs[2][i][j][k] + dy3ty1 * (u[2][i][j + 1][k] - 2.0 * u[2][i][j][k] + u[2][i][j - 1][k]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[2][i][j + 1][k] * vp1 - u[2][i][j - 1][k] * vm1 + (u[4][i][j + 1][k] - square[i][j + 1][k] - u[4][i][j - 1][k] + square[i][j - 1][k]) * c2);
                /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
                rhs[3][i][j][k] = rhs[3][i][j][k] + dy4ty1 * (u[3][i][j + 1][k] - 2.0 * u[3][i][j][k] + u[3][i][j - 1][k]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[3][i][j + 1][k] * vp1 - u[3][i][j - 1][k] * vm1);
                /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
                rhs[4][i][j][k] = rhs[4][i][j][k] + dy5ty1 * (u[4][i][j + 1][k] - 2.0 * u[4][i][j][k] + u[4][i][j - 1][k]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[4][i][j + 1][k] * rho_i[i][j + 1][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j - 1][k] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[4][i][j + 1][k] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[4][i][j - 1][k] - c2 * square[i][j - 1][k]) * vm1);
            }
        }
    }
    /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[3, 4, 25, 26, 27, 28, 29, 31, 32, 33]*/
#pragma omp barrier
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    j = 1;
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    /*[3, 4, 27, 28, 29, 33]*/
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
#pragma omp for nowait
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
            }
        }
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
#pragma omp barrier
    }
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    j = 2;
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    /*[3, 4, 27, 28, 29, 33]*/
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
#pragma omp for nowait
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
            }
        }
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
#pragma omp barrier
    }
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    /*[3, 4, 27, 28, 29, 33]*/
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
#pragma omp for nowait
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            for (j = 3 * 1; j <= grid_points[1] - 3 * 1 - 1; j++) {
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                }
            }
        }
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
#pragma omp barrier
    }
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    j = grid_points[1] - 3;
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    /*[3, 4, 27, 28, 29, 33]*/
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
#pragma omp for nowait
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k]);
            }
        }
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
#pragma omp barrier
    }
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    j = grid_points[1] - 2;
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    /*[3, 4, 27, 28, 29, 33]*/
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
#pragma omp for nowait
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                /*[3, 4, 26, 27, 28, 29, 32, 33]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 5.0 * u[m][i][j][k]);
            }
        }
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 26, 27, 28, 29, 32, 33]*/
#pragma omp barrier
    }
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[3, 4, 26, 27, 28, 29, 32, 33]*/
#pragma omp barrier
    /*[3, 4, 27, 28, 29, 33]*/
#pragma omp for nowait
    /*[3, 4, 27, 28, 29, 33]*/
    /*[3, 4, 27, 28, 29, 33]*/
    /*[3, 4, 27, 28, 29, 33]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[3, 4, 27, 28, 29, 33]*/
        /*[3, 4, 27, 28, 29, 33]*/
        /*[3, 4, 27, 28, 29, 33]*/
        /*[3, 4, 27, 28, 29, 33]*/
        /*[3, 4, 27, 28, 29, 33]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[3, 4, 27, 28, 29, 33]*/
            /*[3, 4, 27, 28, 29, 33]*/
            /*[3, 4, 27, 28, 29, 33]*/
            /*[3, 4, 27, 28, 29, 33]*/
            /*[3, 4, 27, 28, 29, 33]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[3, 4, 27, 28, 29, 33]*/
                /*[3, 4, 27, 28, 29, 33]*/
                wijk = ws[i][j][k];
                /*[3, 4, 27, 28, 29, 33]*/
                wp1 = ws[i][j][k + 1];
                /*[3, 4, 27, 28, 29, 33]*/
                wm1 = ws[i][j][k - 1];
                /*[3, 4, 27, 28, 29, 33]*/
                rhs[0][i][j][k] = rhs[0][i][j][k] + dz1tz1 * (u[0][i][j][k + 1] - 2.0 * u[0][i][j][k] + u[0][i][j][k - 1]) - tz2 * (u[3][i][j][k + 1] - u[3][i][j][k - 1]);
                /*[3, 4, 27, 28, 29, 33]*/
                rhs[1][i][j][k] = rhs[1][i][j][k] + dz2tz1 * (u[1][i][j][k + 1] - 2.0 * u[1][i][j][k] + u[1][i][j][k - 1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[1][i][j][k + 1] * wp1 - u[1][i][j][k - 1] * wm1);
                /*[3, 4, 27, 28, 29, 33]*/
                rhs[2][i][j][k] = rhs[2][i][j][k] + dz3tz1 * (u[2][i][j][k + 1] - 2.0 * u[2][i][j][k] + u[2][i][j][k - 1]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[2][i][j][k + 1] * wp1 - u[2][i][j][k - 1] * wm1);
                /*[3, 4, 27, 28, 29, 33]*/
                rhs[3][i][j][k] = rhs[3][i][j][k] + dz4tz1 * (u[3][i][j][k + 1] - 2.0 * u[3][i][j][k] + u[3][i][j][k - 1]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[3][i][j][k + 1] * wp1 - u[3][i][j][k - 1] * wm1 + (u[4][i][j][k + 1] - square[i][j][k + 1] - u[4][i][j][k - 1] + square[i][j][k - 1]) * c2);
                /*[3, 4, 27, 28, 29, 33]*/
                rhs[4][i][j][k] = rhs[4][i][j][k] + dz5tz1 * (u[4][i][j][k + 1] - 2.0 * u[4][i][j][k] + u[4][i][j][k - 1]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[4][i][j][k + 1] * rho_i[i][j][k + 1] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j][k - 1] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[4][i][j][k + 1] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[4][i][j][k - 1] - c2 * square[i][j][k - 1]) * wm1);
            }
        }
    }
    /*[3, 4, 27, 28, 29, 33]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[3, 4, 27, 28, 29, 33]*/
#pragma omp barrier
    /*[3, 4, 28, 29]*/
    k = 1;
    /*[3, 4, 28, 29]*/
    /*[3, 4, 28, 29]*/
    /*[4, 29]*/
    /*[3, 4, 28, 29]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
#pragma omp for nowait
        /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[3, 4, 28, 29]*/
                /*[3, 4, 28, 29]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
            }
        }
        /*[3, 4, 28, 29]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 28, 29]*/
#pragma omp barrier
    }
    /*[3, 4, 28, 29]*/
    k = 2;
    /*[3, 4, 28, 29]*/
    /*[3, 4, 28, 29]*/
    /*[4, 29]*/
    /*[3, 4, 28, 29]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
#pragma omp for nowait
        /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[3, 4, 28, 29]*/
                /*[3, 4, 28, 29]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
            }
        }
        /*[3, 4, 28, 29]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 28, 29]*/
#pragma omp barrier
    }
    /*[3, 4, 28, 29]*/
    /*[3, 4, 28, 29]*/
    /*[4, 29]*/
    /*[3, 4, 28, 29]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
#pragma omp for nowait
        /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[3, 4, 28, 29]*/
                /*[3, 4, 28, 29]*/
                /*[3, 4, 28, 29]*/
                /*[3, 4, 28, 29]*/
                /*[3, 4, 28, 29]*/
                for (k = 3 * 1; k <= grid_points[2] - 3 * 1 - 1; k++) {
                /*[3, 4, 28, 29]*/
                    /*[3, 4, 28, 29]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                }
            }
        }
        /*[3, 4, 28, 29]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 28, 29]*/
#pragma omp barrier
    }
    /*[3, 4, 28, 29]*/
    k = grid_points[2] - 3;
    /*[3, 4, 28, 29]*/
    /*[3, 4, 28, 29]*/
    /*[4, 29]*/
    /*[3, 4, 28, 29]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
#pragma omp for nowait
        /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[3, 4, 28, 29]*/
                /*[3, 4, 28, 29]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1]);
            }
        }
        /*[3, 4, 28, 29]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 28, 29]*/
#pragma omp barrier
    }
    /*[3, 4, 28, 29]*/
    k = grid_points[2] - 2;
    /*[3, 4, 28, 29]*/
    /*[3, 4, 28, 29]*/
    /*[4, 29]*/
    /*[3, 4, 28, 29]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
#pragma omp for nowait
        /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[3, 4, 28, 29]*/
                /*[3, 4, 28, 29]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 5.0 * u[m][i][j][k]);
            }
        }
        /*[3, 4, 28, 29]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 28, 29]*/
#pragma omp barrier
    }
    /*[3, 4, 28, 29]*/
    /*[3, 4, 28, 29]*/
    /*[4, 29]*/
    /*[3, 4, 28, 29]*/
    for (m = 0; m < 5; m++) {
    /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
#pragma omp for nowait
        /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
        /*[3, 4, 28, 29]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            /*[3, 4, 28, 29]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[3, 4, 28, 29]*/
                /*[3, 4, 28, 29]*/
                /*[3, 4, 28, 29]*/
                /*[3, 4, 28, 29]*/
                /*[3, 4, 28, 29]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[3, 4, 28, 29]*/
                    /*[3, 4, 28, 29]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] * dt;
                }
            }
        }
        /*[3, 4, 28, 29]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 28, 29]*/
#pragma omp barrier
    }
}
/*[]*/
static void set_constants() {
/*[]*/
    /*[]*/
    ce[0][0] = 2.0;
    /*[]*/
    ce[1][0] = 0.0;
    /*[]*/
    ce[2][0] = 0.0;
    /*[]*/
    ce[3][0] = 4.0;
    /*[]*/
    ce[4][0] = 5.0;
    /*[]*/
    ce[5][0] = 3.0;
    /*[]*/
    ce[6][0] = 0.5;
    /*[]*/
    ce[7][0] = 0.02;
    /*[]*/
    ce[8][0] = 0.01;
    /*[]*/
    ce[9][0] = 0.03;
    /*[]*/
    ce[10][0] = 0.5;
    /*[]*/
    ce[11][0] = 0.4;
    /*[]*/
    ce[12][0] = 0.3;
    /*[]*/
    ce[0][1] = 1.0;
    /*[]*/
    ce[1][1] = 0.0;
    /*[]*/
    ce[2][1] = 0.0;
    /*[]*/
    ce[3][1] = 0.0;
    /*[]*/
    ce[4][1] = 1.0;
    /*[]*/
    ce[5][1] = 2.0;
    /*[]*/
    ce[6][1] = 3.0;
    /*[]*/
    ce[7][1] = 0.01;
    /*[]*/
    ce[8][1] = 0.03;
    /*[]*/
    ce[9][1] = 0.02;
    /*[]*/
    ce[10][1] = 0.4;
    /*[]*/
    ce[11][1] = 0.3;
    /*[]*/
    ce[12][1] = 0.5;
    /*[]*/
    ce[0][2] = 2.0;
    /*[]*/
    ce[1][2] = 2.0;
    /*[]*/
    ce[2][2] = 0.0;
    /*[]*/
    ce[3][2] = 0.0;
    /*[]*/
    ce[4][2] = 0.0;
    /*[]*/
    ce[5][2] = 2.0;
    /*[]*/
    ce[6][2] = 3.0;
    /*[]*/
    ce[7][2] = 0.04;
    /*[]*/
    ce[8][2] = 0.03;
    /*[]*/
    ce[9][2] = 0.05;
    /*[]*/
    ce[10][2] = 0.3;
    /*[]*/
    ce[11][2] = 0.5;
    /*[]*/
    ce[12][2] = 0.4;
    /*[]*/
    ce[0][3] = 2.0;
    /*[]*/
    ce[1][3] = 2.0;
    /*[]*/
    ce[2][3] = 0.0;
    /*[]*/
    ce[3][3] = 0.0;
    /*[]*/
    ce[4][3] = 0.0;
    /*[]*/
    ce[5][3] = 2.0;
    /*[]*/
    ce[6][3] = 3.0;
    /*[]*/
    ce[7][3] = 0.03;
    /*[]*/
    ce[8][3] = 0.05;
    /*[]*/
    ce[9][3] = 0.04;
    /*[]*/
    ce[10][3] = 0.2;
    /*[]*/
    ce[11][3] = 0.1;
    /*[]*/
    ce[12][3] = 0.3;
    /*[]*/
    ce[0][4] = 5.0;
    /*[]*/
    ce[1][4] = 4.0;
    /*[]*/
    ce[2][4] = 3.0;
    /*[]*/
    ce[3][4] = 2.0;
    /*[]*/
    ce[4][4] = 0.1;
    /*[]*/
    ce[5][4] = 0.4;
    /*[]*/
    ce[6][4] = 0.3;
    /*[]*/
    ce[7][4] = 0.05;
    /*[]*/
    ce[8][4] = 0.04;
    /*[]*/
    ce[9][4] = 0.03;
    /*[]*/
    ce[10][4] = 0.1;
    /*[]*/
    ce[11][4] = 0.3;
    /*[]*/
    ce[12][4] = 0.2;
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
    bt = sqrt(0.5);
    /*[]*/
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
    int _imopVarPre2091;
    /*[]*/
    double _imopVarPre2092;
    /*[]*/
    _imopVarPre2091 = (dx3 > dx4);
    /*[]*/
    /*[]*/
    if (_imopVarPre2091) {
    /*[]*/
        /*[]*/
        _imopVarPre2092 = dx3;
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre2092 = dx4;
    }
    /*[]*/
    dxmax = _imopVarPre2092;
    /*[]*/
    int _imopVarPre2095;
    /*[]*/
    double _imopVarPre2096;
    /*[]*/
    _imopVarPre2095 = (dy2 > dy4);
    /*[]*/
    /*[]*/
    if (_imopVarPre2095) {
    /*[]*/
        /*[]*/
        _imopVarPre2096 = dy2;
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre2096 = dy4;
    }
    /*[]*/
    dymax = _imopVarPre2096;
    /*[]*/
    int _imopVarPre2099;
    /*[]*/
    double _imopVarPre2100;
    /*[]*/
    _imopVarPre2099 = (dz2 > dz3);
    /*[]*/
    /*[]*/
    if (_imopVarPre2099) {
    /*[]*/
        /*[]*/
        _imopVarPre2100 = dz2;
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre2100 = dz3;
    }
    /*[]*/
    dzmax = _imopVarPre2100;
    /*[]*/
    int _imopVarPre2141;
    /*[]*/
    double _imopVarPre2142;
    /*[]*/
    int _imopVarPre2143;
    /*[]*/
    double _imopVarPre2144;
    /*[]*/
    int _imopVarPre2151;
    /*[]*/
    double _imopVarPre2152;
    /*[]*/
    _imopVarPre2141 = (dy1 > dz1);
    /*[]*/
    /*[]*/
    if (_imopVarPre2141) {
    /*[]*/
        /*[]*/
        _imopVarPre2142 = dy1;
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre2142 = dz1;
    }
    /*[]*/
    _imopVarPre2143 = (dx1 > _imopVarPre2142);
    /*[]*/
    /*[]*/
    if (_imopVarPre2143) {
    /*[]*/
        /*[]*/
        _imopVarPre2144 = dx1;
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre2151 = (dy1 > dz1);
        /*[]*/
        /*[]*/
        if (_imopVarPre2151) {
        /*[]*/
            /*[]*/
            _imopVarPre2152 = dy1;
        } else {
        /*[]*/
            /*[]*/
            _imopVarPre2152 = dz1;
        }
        /*[]*/
        _imopVarPre2144 = _imopVarPre2152;
    }
    /*[]*/
    dssp = 0.25 * _imopVarPre2144;
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
static void txinvr() {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    double t1;
    /*[]*/
    double t2;
    /*[]*/
    double t3;
    /*[]*/
    double ac;
    /*[]*/
    double ru1;
    /*[]*/
    double uu;
    /*[]*/
    double vv;
    /*[]*/
    double ww;
    /*[]*/
    double r1;
    /*[]*/
    double r2;
    /*[]*/
    double r3;
    /*[]*/
    double r4;
    /*[]*/
    double r5;
    /*[]*/
    double ac2inv;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                ru1 = rho_i[i][j][k];
                /*[]*/
                uu = us[i][j][k];
                /*[]*/
                vv = vs[i][j][k];
                /*[]*/
                ww = ws[i][j][k];
                /*[]*/
                ac = speed[i][j][k];
                /*[]*/
                ac2inv = ainv[i][j][k] * ainv[i][j][k];
                /*[]*/
                r1 = rhs[0][i][j][k];
                /*[]*/
                r2 = rhs[1][i][j][k];
                /*[]*/
                r3 = rhs[2][i][j][k];
                /*[]*/
                r4 = rhs[3][i][j][k];
                /*[]*/
                r5 = rhs[4][i][j][k];
                /*[]*/
                t1 = c2 * ac2inv * (qs[i][j][k] * r1 - uu * r2 - vv * r3 - ww * r4 + r5);
                /*[]*/
                t2 = bt * ru1 * (uu * r1 - r2);
                /*[]*/
                t3 = (bt * ru1 * ac) * t1;
                /*[]*/
                rhs[0][i][j][k] = r1 - t1;
                /*[]*/
                rhs[1][i][j][k] = -ru1 * (ww * r1 - r4);
                /*[]*/
                rhs[2][i][j][k] = ru1 * (vv * r1 - r3);
                /*[]*/
                rhs[3][i][j][k] = -t2 + t3;
                /*[]*/
                rhs[4][i][j][k] = t2 + t3;
            }
        }
    }
}
/*[]*/
static void tzetar() {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    double t1;
    /*[]*/
    double t2;
    /*[]*/
    double t3;
    /*[]*/
    double ac;
    /*[]*/
    double xvel;
    /*[]*/
    double yvel;
    /*[]*/
    double zvel;
    /*[]*/
    double r1;
    /*[]*/
    double r2;
    /*[]*/
    double r3;
    /*[]*/
    double r4;
    /*[]*/
    double r5;
    /*[]*/
    double btuz;
    /*[]*/
    double acinv;
    /*[]*/
    double ac2u;
    /*[]*/
    double uzik1;
    /*[]*/
#pragma omp for private(i, j, k, t1, t2, t3, ac, xvel, yvel, zvel, r1, r2, r3, r4, r5, btuz, ac2u, uzik1) nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                xvel = us[i][j][k];
                /*[]*/
                yvel = vs[i][j][k];
                /*[]*/
                zvel = ws[i][j][k];
                /*[]*/
                ac = speed[i][j][k];
                /*[]*/
                acinv = ainv[i][j][k];
                /*[]*/
                ac2u = ac * ac;
                /*[]*/
                r1 = rhs[0][i][j][k];
                /*[]*/
                r2 = rhs[1][i][j][k];
                /*[]*/
                r3 = rhs[2][i][j][k];
                /*[]*/
                r4 = rhs[3][i][j][k];
                /*[]*/
                r5 = rhs[4][i][j][k];
                /*[]*/
                uzik1 = u[0][i][j][k];
                /*[]*/
                btuz = bt * uzik1;
                /*[]*/
                t1 = btuz * acinv * (r4 + r5);
                /*[]*/
                t2 = r3 + t1;
                /*[]*/
                t3 = btuz * (r4 - r5);
                /*[]*/
                rhs[0][i][j][k] = t2;
                /*[]*/
                rhs[1][i][j][k] = -uzik1 * r2 + xvel * t2;
                /*[]*/
                rhs[2][i][j][k] = uzik1 * r1 + yvel * t2;
                /*[]*/
                rhs[3][i][j][k] = zvel * t2 + t3;
                /*[]*/
                rhs[4][i][j][k] = uzik1 * (-xvel * r2 + yvel * r1) + qs[i][j][k] * t2 + c2iv * ac2u * t1 + zvel * t3;
            }
        }
    }
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
    /*[23]*/
#pragma omp parallel
    {
    /*[23]*/
        /*[23]*/
        compute_rhs();
        /*[28, 29]*/
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
    int _imopVarPre2156;
    /*[]*/
    int _imopVarPre2157;
    /*[]*/
    int _imopVarPre2158;
    /*[]*/
    _imopVarPre2156 = grid_points[0] == 12;
    /*[]*/
    /*[]*/
    if (_imopVarPre2156) {
    /*[]*/
        /*[]*/
        _imopVarPre2157 = grid_points[1] == 12;
        /*[]*/
        /*[]*/
        if (_imopVarPre2157) {
        /*[]*/
            /*[]*/
            _imopVarPre2158 = grid_points[2] == 12;
            /*[]*/
            /*[]*/
            if (_imopVarPre2158) {
            /*[]*/
                /*[]*/
                _imopVarPre2158 = no_time_steps == 100;
            }
            /*[]*/
            _imopVarPre2157 = _imopVarPre2158;
        }
        /*[]*/
        _imopVarPre2156 = _imopVarPre2157;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre2156) {
    /*[]*/
        /*[]*/
        *class = 'S';
        /*[]*/
        dtref = 1.5e-2;
        /*[]*/
        xcrref[0] = 2.7470315451339479e-02;
        /*[]*/
        xcrref[1] = 1.0360746705285417e-02;
        /*[]*/
        xcrref[2] = 1.6235745065095532e-02;
        /*[]*/
        xcrref[3] = 1.5840557224455615e-02;
        /*[]*/
        xcrref[4] = 3.4849040609362460e-02;
        /*[]*/
        xceref[0] = 2.7289258557377227e-05;
        /*[]*/
        xceref[1] = 1.0364446640837285e-05;
        /*[]*/
        xceref[2] = 1.6154798287166471e-05;
        /*[]*/
        xceref[3] = 1.5750704994480102e-05;
        /*[]*/
        xceref[4] = 3.4177666183390531e-05;
    } else {
    /*[]*/
        /*[]*/
        int _imopVarPre2162;
        /*[]*/
        int _imopVarPre2163;
        /*[]*/
        int _imopVarPre2164;
        /*[]*/
        _imopVarPre2162 = grid_points[0] == 36;
        /*[]*/
        /*[]*/
        if (_imopVarPre2162) {
        /*[]*/
            /*[]*/
            _imopVarPre2163 = grid_points[1] == 36;
            /*[]*/
            /*[]*/
            if (_imopVarPre2163) {
            /*[]*/
                /*[]*/
                _imopVarPre2164 = grid_points[2] == 36;
                /*[]*/
                /*[]*/
                if (_imopVarPre2164) {
                /*[]*/
                    /*[]*/
                    _imopVarPre2164 = no_time_steps == 400;
                }
                /*[]*/
                _imopVarPre2163 = _imopVarPre2164;
            }
            /*[]*/
            _imopVarPre2162 = _imopVarPre2163;
        }
        /*[]*/
        /*[]*/
        if (_imopVarPre2162) {
        /*[]*/
            /*[]*/
            *class = 'W';
            /*[]*/
            dtref = 1.5e-3;
            /*[]*/
            xcrref[0] = 0.1893253733584e-02;
            /*[]*/
            xcrref[1] = 0.1717075447775e-03;
            /*[]*/
            xcrref[2] = 0.2778153350936e-03;
            /*[]*/
            xcrref[3] = 0.2887475409984e-03;
            /*[]*/
            xcrref[4] = 0.3143611161242e-02;
            /*[]*/
            xceref[0] = 0.7542088599534e-04;
            /*[]*/
            xceref[1] = 0.6512852253086e-05;
            /*[]*/
            xceref[2] = 0.1049092285688e-04;
            /*[]*/
            xceref[3] = 0.1128838671535e-04;
            /*[]*/
            xceref[4] = 0.1212845639773e-03;
        } else {
        /*[]*/
            /*[]*/
            int _imopVarPre2168;
            /*[]*/
            int _imopVarPre2169;
            /*[]*/
            int _imopVarPre2170;
            /*[]*/
            _imopVarPre2168 = grid_points[0] == 64;
            /*[]*/
            /*[]*/
            if (_imopVarPre2168) {
            /*[]*/
                /*[]*/
                _imopVarPre2169 = grid_points[1] == 64;
                /*[]*/
                /*[]*/
                if (_imopVarPre2169) {
                /*[]*/
                    /*[]*/
                    _imopVarPre2170 = grid_points[2] == 64;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre2170) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre2170 = no_time_steps == 400;
                    }
                    /*[]*/
                    _imopVarPre2169 = _imopVarPre2170;
                }
                /*[]*/
                _imopVarPre2168 = _imopVarPre2169;
            }
            /*[]*/
            /*[]*/
            if (_imopVarPre2168) {
            /*[]*/
                /*[]*/
                *class = 'A';
                /*[]*/
                dtref = 1.5e-3;
                /*[]*/
                xcrref[0] = 2.4799822399300195;
                /*[]*/
                xcrref[1] = 1.1276337964368832;
                /*[]*/
                xcrref[2] = 1.5028977888770491;
                /*[]*/
                xcrref[3] = 1.4217816211695179;
                /*[]*/
                xcrref[4] = 2.1292113035138280;
                /*[]*/
                xceref[0] = 1.0900140297820550e-04;
                /*[]*/
                xceref[1] = 3.7343951769282091e-05;
                /*[]*/
                xceref[2] = 5.0092785406541633e-05;
                /*[]*/
                xceref[3] = 4.7671093939528255e-05;
                /*[]*/
                xceref[4] = 1.3621613399213001e-04;
            } else {
            /*[]*/
                /*[]*/
                int _imopVarPre2174;
                /*[]*/
                int _imopVarPre2175;
                /*[]*/
                int _imopVarPre2176;
                /*[]*/
                _imopVarPre2174 = grid_points[0] == 102;
                /*[]*/
                /*[]*/
                if (_imopVarPre2174) {
                /*[]*/
                    /*[]*/
                    _imopVarPre2175 = grid_points[1] == 102;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre2175) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre2176 = grid_points[2] == 102;
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre2176) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre2176 = no_time_steps == 400;
                        }
                        /*[]*/
                        _imopVarPre2175 = _imopVarPre2176;
                    }
                    /*[]*/
                    _imopVarPre2174 = _imopVarPre2175;
                }
                /*[]*/
                /*[]*/
                if (_imopVarPre2174) {
                /*[]*/
                    /*[]*/
                    *class = 'B';
                    /*[]*/
                    dtref = 1.0e-3;
                    /*[]*/
                    xcrref[0] = 0.6903293579998e+02;
                    /*[]*/
                    xcrref[1] = 0.3095134488084e+02;
                    /*[]*/
                    xcrref[2] = 0.4103336647017e+02;
                    /*[]*/
                    xcrref[3] = 0.3864769009604e+02;
                    /*[]*/
                    xcrref[4] = 0.5643482272596e+02;
                    /*[]*/
                    xceref[0] = 0.9810006190188e-02;
                    /*[]*/
                    xceref[1] = 0.1022827905670e-02;
                    /*[]*/
                    xceref[2] = 0.1720597911692e-02;
                    /*[]*/
                    xceref[3] = 0.1694479428231e-02;
                    /*[]*/
                    xceref[4] = 0.1847456263981e-01;
                } else {
                /*[]*/
                    /*[]*/
                    int _imopVarPre2180;
                    /*[]*/
                    int _imopVarPre2181;
                    /*[]*/
                    int _imopVarPre2182;
                    /*[]*/
                    _imopVarPre2180 = grid_points[0] == 162;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre2180) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre2181 = grid_points[1] == 162;
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre2181) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre2182 = grid_points[2] == 162;
                            /*[]*/
                            /*[]*/
                            if (_imopVarPre2182) {
                            /*[]*/
                                /*[]*/
                                _imopVarPre2182 = no_time_steps == 400;
                            }
                            /*[]*/
                            _imopVarPre2181 = _imopVarPre2182;
                        }
                        /*[]*/
                        _imopVarPre2180 = _imopVarPre2181;
                    }
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre2180) {
                    /*[]*/
                        /*[]*/
                        *class = 'C';
                        /*[]*/
                        dtref = 0.67e-3;
                        /*[]*/
                        xcrref[0] = 0.5881691581829e+03;
                        /*[]*/
                        xcrref[1] = 0.2454417603569e+03;
                        /*[]*/
                        xcrref[2] = 0.3293829191851e+03;
                        /*[]*/
                        xcrref[3] = 0.3081924971891e+03;
                        /*[]*/
                        xcrref[4] = 0.4597223799176e+03;
                        /*[]*/
                        xceref[0] = 0.2598120500183e+00;
                        /*[]*/
                        xceref[1] = 0.2590888922315e-01;
                        /*[]*/
                        xceref[2] = 0.5132886416320e-01;
                        /*[]*/
                        xceref[3] = 0.4806073419454e-01;
                        /*[]*/
                        xceref[4] = 0.5483377491301e+00;
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
        double _imopVarPre2184;
        /*[]*/
        double _imopVarPre2185;
        /*[]*/
        _imopVarPre2184 = (xcr[m] - xcrref[m]) / xcrref[m];
        /*[]*/
        _imopVarPre2185 = fabs(_imopVarPre2184);
        /*[]*/
        /*[]*/
        xcrdif[m] = _imopVarPre2185;
        /*[]*/
        double _imopVarPre2187;
        /*[]*/
        double _imopVarPre2188;
        /*[]*/
        _imopVarPre2187 = (xce[m] - xceref[m]) / xceref[m];
        /*[]*/
        _imopVarPre2188 = fabs(_imopVarPre2187);
        /*[]*/
        /*[]*/
        xcedif[m] = _imopVarPre2188;
    }
    /*[]*/
    /*[]*/
    if (*class != 'U') {
    /*[]*/
        /*[]*/
        char _imopVarPre2190;
        /*[]*/
        _imopVarPre2190 = *class;
        /*[]*/
        printf(" Verification being performed for class %1c\n", _imopVarPre2190);
        /*[]*/
        /*[]*/
        printf(" accuracy setting for epsilon = %20.13e\n", epsilon);
        /*[]*/
        /*[]*/
        double _imopVarPre2193;
        /*[]*/
        double _imopVarPre2194;
        /*[]*/
        _imopVarPre2193 = dt - dtref;
        /*[]*/
        _imopVarPre2194 = fabs(_imopVarPre2193);
        /*[]*/
        /*[]*/
        /*[]*/
        if (_imopVarPre2194 > epsilon) {
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
            double _imopVarPre2196;
            /*[]*/
            _imopVarPre2196 = xcr[m];
            /*[]*/
            printf("          %2d%20.13e\n", m, _imopVarPre2196);
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
                double _imopVarPre2200;
                /*[]*/
                double _imopVarPre2201;
                /*[]*/
                double _imopVarPre2202;
                /*[]*/
                _imopVarPre2200 = xcrdif[m];
                /*[]*/
                _imopVarPre2201 = xcrref[m];
                /*[]*/
                _imopVarPre2202 = xcr[m];
                /*[]*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2202, _imopVarPre2201, _imopVarPre2200);
                /*[]*/
            } else {
            /*[]*/
                /*[]*/
                double _imopVarPre2206;
                /*[]*/
                double _imopVarPre2207;
                /*[]*/
                double _imopVarPre2208;
                /*[]*/
                _imopVarPre2206 = xcrdif[m];
                /*[]*/
                _imopVarPre2207 = xcrref[m];
                /*[]*/
                _imopVarPre2208 = xcr[m];
                /*[]*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2208, _imopVarPre2207, _imopVarPre2206);
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
            double _imopVarPre2210;
            /*[]*/
            _imopVarPre2210 = xce[m];
            /*[]*/
            printf("          %2d%20.13e\n", m, _imopVarPre2210);
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
                double _imopVarPre2214;
                /*[]*/
                double _imopVarPre2215;
                /*[]*/
                double _imopVarPre2216;
                /*[]*/
                _imopVarPre2214 = xcedif[m];
                /*[]*/
                _imopVarPre2215 = xceref[m];
                /*[]*/
                _imopVarPre2216 = xce[m];
                /*[]*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2216, _imopVarPre2215, _imopVarPre2214);
                /*[]*/
            } else {
            /*[]*/
                /*[]*/
                double _imopVarPre2220;
                /*[]*/
                double _imopVarPre2221;
                /*[]*/
                double _imopVarPre2222;
                /*[]*/
                _imopVarPre2220 = xcedif[m];
                /*[]*/
                _imopVarPre2221 = xceref[m];
                /*[]*/
                _imopVarPre2222 = xce[m];
                /*[]*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2222, _imopVarPre2221, _imopVarPre2220);
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
        if (*verified) {
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
/*[5]*/
static void x_solve() {
/*[5]*/
    /*[5]*/
    int i;
    /*[5]*/
    int j;
    /*[5]*/
    int k;
    /*[5]*/
    int n;
    /*[5]*/
    int i1;
    /*[5]*/
    int i2;
    /*[5]*/
    int m;
    /*[5]*/
    double fac1;
    /*[5]*/
    double fac2;
    /*[5]*/
    lhsx();
    /*[7, 9, 11, 12, 13]*/
    /*[7, 9, 11, 12, 13]*/
    n = 0;
    /*[7, 9, 11, 12, 13]*/
    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    /*[7, 9, 11, 12, 13]*/
    for (i = 0; i <= grid_points[0] - 3; i++) {
    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
        i1 = i + 1;
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
        i2 = i + 2;
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
#pragma omp for nowait
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                for (m = 0; m < 3; m++) {
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                for (m = 0; m < 3; m++) {
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                }
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                for (m = 0; m < 3; m++) {
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                    rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                }
            }
        }
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
#pragma omp barrier
    }
    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
    i = grid_points[0] - 2;
    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
    i1 = grid_points[0] - 1;
    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
#pragma omp for nowait
    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            fac1 = 1.0 / lhs[n + 2][i][j][k];
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            for (m = 0; m < 3; m++) {
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
            }
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            for (m = 0; m < 3; m++) {
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
            }
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            fac2 = 1. / lhs[n + 2][i1][j][k];
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
            for (m = 0; m < 3; m++) {
            /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
                rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
            }
        }
    }
    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[6, 7, 8, 9, 10, 11, 12, 13, 15]*/
#pragma omp barrier
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12]*/
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    for (m = 3; m < 5; m++) {
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        n = (m - 3 + 1) * 5;
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        for (i = 0; i <= grid_points[0] - 3; i++) {
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            i1 = i + 1;
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            i2 = i + 2;
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
#pragma omp for nowait
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                }
            }
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
#pragma omp barrier
        }
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        i = grid_points[0] - 2;
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        i1 = grid_points[0] - 1;
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
#pragma omp for nowait
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                fac2 = 1. / lhs[n + 2][i1][j][k];
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
            }
        }
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
#pragma omp barrier
    }
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    i = grid_points[0] - 2;
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    i1 = grid_points[0] - 1;
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    n = 0;
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12]*/
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    for (m = 0; m < 3; m++) {
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
#pragma omp for nowait
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
            }
        }
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
#pragma omp barrier
    }
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12]*/
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    for (m = 3; m < 5; m++) {
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
#pragma omp for nowait
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                n = (m - 3 + 1) * 5;
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
            }
        }
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
#pragma omp barrier
    }
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    n = 0;
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12]*/
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    for (i = grid_points[0] - 3; i >= 0; i--) {
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        i1 = i + 1;
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        i2 = i + 2;
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
#pragma omp for nowait
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        for (m = 0; m < 3; m++) {
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                }
            }
        }
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
#pragma omp barrier
    }
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    for (m = 3; m < 5; m++) {
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        n = (m - 3 + 1) * 5;
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        /*[6, 7, 8, 9, 10, 11, 12]*/
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
        for (i = grid_points[0] - 3; i >= 0; i--) {
        /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            i1 = i + 1;
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            i2 = i + 2;
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
#pragma omp for nowait
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                }
            }
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 8, 9, 10, 11, 12, 15]*/
#pragma omp barrier
        }
    }
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[6, 7, 8, 9, 10, 11, 12, 15]*/
#pragma omp barrier
    /*[6, 7, 8, 9, 10, 11, 12]*/
    ninvr();
    /*[6, 7, 8, 9, 10, 11, 12]*/
}
/*[6, 7, 8, 9, 10, 11]*/
static void y_solve() {
/*[6, 7, 8, 9, 10, 11]*/
    /*[6, 7, 8, 9, 10, 11]*/
    int i;
    /*[6, 7, 8, 9, 10, 11]*/
    int j;
    /*[6, 7, 8, 9, 10, 11]*/
    int k;
    /*[6, 7, 8, 9, 10, 11]*/
    int n;
    /*[6, 7, 8, 9, 10, 11]*/
    int j1;
    /*[6, 7, 8, 9, 10, 11]*/
    int j2;
    /*[6, 7, 8, 9, 10, 11]*/
    int m;
    /*[6, 7, 8, 9, 10, 11]*/
    double fac1;
    /*[6, 7, 8, 9, 10, 11]*/
    double fac2;
    /*[6, 7, 8, 9, 10, 11]*/
    lhsy();
    /*[8, 9, 10, 11]*/
    /*[8, 9, 10, 11]*/
    n = 0;
    /*[8, 9, 10, 11]*/
    /*[8, 9, 10, 11]*/
    /*[9, 10, 11]*/
    /*[8, 9, 10, 11]*/
    for (j = 0; j <= grid_points[1] - 3; j++) {
    /*[8, 9, 10, 11]*/
        /*[8, 9, 10, 11]*/
        j1 = j + 1;
        /*[8, 9, 10, 11]*/
        j2 = j + 2;
        /*[8, 9, 10, 11]*/
#pragma omp for nowait
        /*[8, 9, 10, 11]*/
        /*[8, 9, 10, 11]*/
        /*[8, 9, 10, 11]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[8, 9, 10, 11]*/
                /*[8, 9, 10, 11]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*[8, 9, 10, 11]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[8, 9, 10, 11]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[8, 9, 10, 11]*/
                /*[8, 9, 10, 11]*/
                /*[8, 9, 10, 11]*/
                /*[8, 9, 10, 11]*/
                for (m = 0; m < 3; m++) {
                /*[8, 9, 10, 11]*/
                    /*[8, 9, 10, 11]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*[8, 9, 10, 11]*/
                lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                /*[8, 9, 10, 11]*/
                lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                /*[8, 9, 10, 11]*/
                /*[8, 9, 10, 11]*/
                /*[8, 9, 10, 11]*/
                /*[8, 9, 10, 11]*/
                for (m = 0; m < 3; m++) {
                /*[8, 9, 10, 11]*/
                    /*[8, 9, 10, 11]*/
                    rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                }
                /*[8, 9, 10, 11]*/
                lhs[n + 1][i][j2][k] = lhs[n + 1][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 3][i][j][k];
                /*[8, 9, 10, 11]*/
                lhs[n + 2][i][j2][k] = lhs[n + 2][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 4][i][j][k];
                /*[8, 9, 10, 11]*/
                /*[8, 9, 10, 11]*/
                /*[8, 9, 10, 11]*/
                /*[8, 9, 10, 11]*/
                for (m = 0; m < 3; m++) {
                /*[8, 9, 10, 11]*/
                    /*[8, 9, 10, 11]*/
                    rhs[m][i][j2][k] = rhs[m][i][j2][k] - lhs[n + 0][i][j2][k] * rhs[m][i][j][k];
                }
            }
        }
        /*[8, 9, 10, 11]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[8, 9, 10, 11]*/
#pragma omp barrier
    }
    /*[8, 9, 10, 11]*/
    j = grid_points[1] - 2;
    /*[8, 9, 10, 11]*/
    j1 = grid_points[1] - 1;
    /*[8, 9, 10, 11]*/
#pragma omp for nowait
    /*[8, 9, 10, 11]*/
    /*[8, 9, 10, 11]*/
    /*[8, 9, 10, 11]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[8, 9, 10, 11]*/
        /*[8, 9, 10, 11]*/
        /*[8, 9, 10, 11]*/
        /*[8, 9, 10, 11]*/
        /*[8, 9, 10, 11]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            fac1 = 1. / lhs[n + 2][i][j][k];
            /*[8, 9, 10, 11]*/
            lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
            /*[8, 9, 10, 11]*/
            lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
            /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            for (m = 0; m < 3; m++) {
            /*[8, 9, 10, 11]*/
                /*[8, 9, 10, 11]*/
                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
            }
            /*[8, 9, 10, 11]*/
            lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
            /*[8, 9, 10, 11]*/
            lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
            /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            for (m = 0; m < 3; m++) {
            /*[8, 9, 10, 11]*/
                /*[8, 9, 10, 11]*/
                rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
            }
            /*[8, 9, 10, 11]*/
            fac2 = 1. / lhs[n + 2][i][j1][k];
            /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            /*[8, 9, 10, 11]*/
            for (m = 0; m < 3; m++) {
            /*[8, 9, 10, 11]*/
                /*[8, 9, 10, 11]*/
                rhs[m][i][j1][k] = fac2 * rhs[m][i][j1][k];
            }
        }
    }
    /*[8, 9, 10, 11]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[8, 9, 10, 11]*/
#pragma omp barrier
    /*[9, 10, 11]*/
    /*[9, 10, 11]*/
    /*[10, 11]*/
    /*[9, 10, 11]*/
    for (m = 3; m < 5; m++) {
    /*[9, 10, 11]*/
        /*[9, 10, 11]*/
        n = (m - 3 + 1) * 5;
        /*[9, 10, 11]*/
        /*[9, 10, 11]*/
        /*[10, 11]*/
        /*[9, 10, 11]*/
        for (j = 0; j <= grid_points[1] - 3; j++) {
        /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            j1 = j + 1;
            /*[9, 10, 11]*/
            j2 = j + 2;
            /*[9, 10, 11]*/
#pragma omp for nowait
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[9, 10, 11]*/
                    /*[9, 10, 11]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[9, 10, 11]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[9, 10, 11]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[9, 10, 11]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*[9, 10, 11]*/
                    lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                    /*[9, 10, 11]*/
                    lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                    /*[9, 10, 11]*/
                    rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                    /*[9, 10, 11]*/
                    lhs[n + 1][i][j2][k] = lhs[n + 1][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 3][i][j][k];
                    /*[9, 10, 11]*/
                    lhs[n + 2][i][j2][k] = lhs[n + 2][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 4][i][j][k];
                    /*[9, 10, 11]*/
                    rhs[m][i][j2][k] = rhs[m][i][j2][k] - lhs[n + 0][i][j2][k] * rhs[m][i][j][k];
                }
            }
            /*[9, 10, 11]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[9, 10, 11]*/
#pragma omp barrier
        }
        /*[9, 10, 11]*/
        j = grid_points[1] - 2;
        /*[9, 10, 11]*/
        j1 = grid_points[1] - 1;
        /*[9, 10, 11]*/
#pragma omp for nowait
        /*[9, 10, 11]*/
        /*[9, 10, 11]*/
        /*[9, 10, 11]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*[9, 10, 11]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[9, 10, 11]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[9, 10, 11]*/
                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                /*[9, 10, 11]*/
                lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                /*[9, 10, 11]*/
                lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                /*[9, 10, 11]*/
                rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                /*[9, 10, 11]*/
                fac2 = 1. / lhs[n + 2][i][j1][k];
                /*[9, 10, 11]*/
                rhs[m][i][j1][k] = fac2 * rhs[m][i][j1][k];
            }
        }
        /*[9, 10, 11]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[9, 10, 11]*/
#pragma omp barrier
    }
    /*[9, 10, 11]*/
    j = grid_points[1] - 2;
    /*[9, 10, 11]*/
    j1 = grid_points[1] - 1;
    /*[9, 10, 11]*/
    n = 0;
    /*[9, 10, 11]*/
    /*[9, 10, 11]*/
    /*[10, 11]*/
    /*[9, 10, 11]*/
    for (m = 0; m < 3; m++) {
    /*[9, 10, 11]*/
        /*[9, 10, 11]*/
#pragma omp for nowait
        /*[9, 10, 11]*/
        /*[9, 10, 11]*/
        /*[9, 10, 11]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k];
            }
        }
        /*[9, 10, 11]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[9, 10, 11]*/
#pragma omp barrier
    }
    /*[9, 10, 11]*/
    /*[9, 10, 11]*/
    /*[10, 11]*/
    /*[9, 10, 11]*/
    for (m = 3; m < 5; m++) {
    /*[9, 10, 11]*/
        /*[9, 10, 11]*/
#pragma omp for nowait
        /*[9, 10, 11]*/
        /*[9, 10, 11]*/
        /*[9, 10, 11]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                n = (m - 3 + 1) * 5;
                /*[9, 10, 11]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k];
            }
        }
        /*[9, 10, 11]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[9, 10, 11]*/
#pragma omp barrier
    }
    /*[9, 10, 11]*/
    n = 0;
    /*[9, 10, 11]*/
    /*[9, 10, 11]*/
    /*[9, 10, 11]*/
    /*[9, 10, 11]*/
    for (m = 0; m < 3; m++) {
    /*[9, 10, 11]*/
        /*[9, 10, 11]*/
        /*[9, 10, 11]*/
        /*[10, 11]*/
        /*[9, 10, 11]*/
        for (j = grid_points[1] - 3; j >= 0; j--) {
        /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            j1 = j + 1;
            /*[9, 10, 11]*/
            j2 = j + 2;
            /*[9, 10, 11]*/
#pragma omp for nowait
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[9, 10, 11]*/
                    /*[9, 10, 11]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k] - lhs[n + 4][i][j][k] * rhs[m][i][j2][k];
                }
            }
            /*[9, 10, 11]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[9, 10, 11]*/
#pragma omp barrier
        }
    }
    /*[9, 10, 11]*/
    /*[9, 10, 11]*/
    /*[9, 10, 11]*/
    /*[9, 10, 11]*/
    for (m = 3; m < 5; m++) {
    /*[9, 10, 11]*/
        /*[9, 10, 11]*/
        n = (m - 3 + 1) * 5;
        /*[9, 10, 11]*/
        /*[9, 10, 11]*/
        /*[10, 11]*/
        /*[9, 10, 11]*/
        for (j = grid_points[1] - 3; j >= 0; j--) {
        /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            j1 = j + 1;
            /*[9, 10, 11]*/
            j2 = j1 + 1;
            /*[9, 10, 11]*/
#pragma omp for nowait
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            /*[9, 10, 11]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                /*[9, 10, 11]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[9, 10, 11]*/
                    /*[9, 10, 11]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k] - lhs[n + 4][i][j][k] * rhs[m][i][j2][k];
                }
            }
            /*[9, 10, 11]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[9, 10, 11]*/
#pragma omp barrier
        }
    }
    /*[9, 10, 11]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[9, 10, 11]*/
#pragma omp barrier
    /*[10, 11]*/
    pinvr();
    /*[10, 11]*/
}
/*[]*/
static void z_solve() {
/*[]*/
    /*[16]*/
#pragma omp parallel
    {
    /*[16]*/
        /*[16]*/
        int i;
        /*[16]*/
        int j;
        /*[16]*/
        int k;
        /*[16]*/
        int n;
        /*[16]*/
        int k1;
        /*[16]*/
        int k2;
        /*[16]*/
        int m;
        /*[16]*/
        double fac1;
        /*[16]*/
        double fac2;
        /*[16]*/
        lhsz();
        /*[17, 18, 19]*/
        /*[17, 18, 19]*/
        n = 0;
        /*[17, 18, 19]*/
#pragma omp for nowait
        /*[17, 18, 19]*/
        /*[17, 18, 19]*/
        /*[17, 18, 19]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[17, 18, 19]*/
            /*[17, 18, 19]*/
            /*[17, 18, 19]*/
            /*[17, 18, 19]*/
            /*[17, 18, 19]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[17, 18, 19]*/
                /*[17, 18, 19]*/
                /*[17, 18, 19]*/
                /*[17, 18, 19]*/
                /*[17, 18, 19]*/
                for (k = 0; k <= grid_points[2] - 3; k++) {
                /*[17, 18, 19]*/
                    /*[17, 18, 19]*/
                    k1 = k + 1;
                    /*[17, 18, 19]*/
                    k2 = k + 2;
                    /*[17, 18, 19]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[17, 18, 19]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[17, 18, 19]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[17, 18, 19]*/
                    /*[17, 18, 19]*/
                    /*[17, 18, 19]*/
                    /*[17, 18, 19]*/
                    for (m = 0; m < 3; m++) {
                    /*[17, 18, 19]*/
                        /*[17, 18, 19]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*[17, 18, 19]*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*[17, 18, 19]*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*[17, 18, 19]*/
                    /*[17, 18, 19]*/
                    /*[17, 18, 19]*/
                    /*[17, 18, 19]*/
                    for (m = 0; m < 3; m++) {
                    /*[17, 18, 19]*/
                        /*[17, 18, 19]*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    }
                    /*[17, 18, 19]*/
                    lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                    /*[17, 18, 19]*/
                    lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                    /*[17, 18, 19]*/
                    /*[17, 18, 19]*/
                    /*[17, 18, 19]*/
                    /*[17, 18, 19]*/
                    for (m = 0; m < 3; m++) {
                    /*[17, 18, 19]*/
                        /*[17, 18, 19]*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                    }
                }
            }
        }
        /*[17, 18, 19]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[17, 18, 19]*/
#pragma omp barrier
        /*[21, 22]*/
        k = grid_points[2] - 2;
        /*[21, 22]*/
        k1 = grid_points[2] - 1;
        /*[21, 22]*/
#pragma omp for nowait
        /*[21, 22]*/
        /*[21, 22]*/
        /*[21, 22]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[21, 22]*/
            /*[21, 22]*/
            /*[21, 22]*/
            /*[21, 22]*/
            /*[21, 22]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[21, 22]*/
                /*[21, 22]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*[21, 22]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[21, 22]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[21, 22]*/
                /*[21, 22]*/
                /*[21, 22]*/
                /*[21, 22]*/
                for (m = 0; m < 3; m++) {
                /*[21, 22]*/
                    /*[21, 22]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*[21, 22]*/
                lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                /*[21, 22]*/
                lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                /*[21, 22]*/
                /*[21, 22]*/
                /*[21, 22]*/
                /*[21, 22]*/
                for (m = 0; m < 3; m++) {
                /*[21, 22]*/
                    /*[21, 22]*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                }
                /*[21, 22]*/
                fac2 = 1. / lhs[n + 2][i][j][k1];
                /*[21, 22]*/
                /*[21, 22]*/
                /*[21, 22]*/
                /*[21, 22]*/
                for (m = 0; m < 3; m++) {
                /*[21, 22]*/
                    /*[21, 22]*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
        }
        /*[21, 22]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[21, 22]*/
#pragma omp barrier
        /*[18, 19]*/
        /*[18, 19]*/
        /*[19]*/
        /*[18, 19]*/
        for (m = 3; m < 5; m++) {
        /*[18, 19]*/
            /*[18, 19]*/
            n = (m - 3 + 1) * 5;
            /*[18, 19]*/
#pragma omp for nowait
            /*[18, 19]*/
            /*[18, 19]*/
            /*[18, 19]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[18, 19]*/
                /*[18, 19]*/
                /*[18, 19]*/
                /*[18, 19]*/
                /*[18, 19]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[18, 19]*/
                    /*[18, 19]*/
                    /*[18, 19]*/
                    /*[18, 19]*/
                    /*[18, 19]*/
                    for (k = 0; k <= grid_points[2] - 3; k++) {
                    /*[18, 19]*/
                        /*[18, 19]*/
                        k1 = k + 1;
                        /*[18, 19]*/
                        k2 = k + 2;
                        /*[18, 19]*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*[18, 19]*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*[18, 19]*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*[18, 19]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*[18, 19]*/
                        lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                        /*[18, 19]*/
                        lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                        /*[18, 19]*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                        /*[18, 19]*/
                        lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                        /*[18, 19]*/
                        lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                        /*[18, 19]*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                    }
                }
            }
            /*[18, 19]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[18, 19]*/
#pragma omp barrier
            /*[22]*/
            k = grid_points[2] - 2;
            /*[22]*/
            k1 = grid_points[2] - 1;
            /*[22]*/
#pragma omp for nowait
            /*[22]*/
            /*[22]*/
            /*[22]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[22]*/
                /*[22]*/
                /*[22]*/
                /*[22]*/
                /*[22]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[22]*/
                    /*[22]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[22]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[22]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[22]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*[22]*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*[22]*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*[22]*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    /*[22]*/
                    fac2 = 1. / lhs[n + 2][i][j][k1];
                    /*[22]*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
            /*[22]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[22]*/
#pragma omp barrier
        }
        /*[18, 19]*/
        k = grid_points[2] - 2;
        /*[18, 19]*/
        k1 = grid_points[2] - 1;
        /*[18, 19]*/
        n = 0;
        /*[18, 19]*/
        /*[18, 19, 22]*/
        /*[19, 22]*/
        /*[18, 19]*/
        for (m = 0; m < 3; m++) {
        /*[18, 19, 22]*/
            /*[18, 19, 22]*/
#pragma omp for nowait
            /*[18, 19, 22]*/
            /*[18, 19, 22]*/
            /*[18, 19, 22]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[18, 19, 22]*/
                    /*[18, 19, 22]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                }
            }
            /*[18, 19, 22]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[18, 19, 22]*/
#pragma omp barrier
        }
        /*[18, 19, 22]*/
        /*[18, 19, 22]*/
        /*[19, 22]*/
        /*[18, 19, 22]*/
        for (m = 3; m < 5; m++) {
        /*[18, 19, 22]*/
            /*[18, 19, 22]*/
            n = (m - 3 + 1) * 5;
            /*[18, 19, 22]*/
#pragma omp for nowait
            /*[18, 19, 22]*/
            /*[18, 19, 22]*/
            /*[18, 19, 22]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[18, 19, 22]*/
                    /*[18, 19, 22]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                }
            }
            /*[18, 19, 22]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[18, 19, 22]*/
#pragma omp barrier
        }
        /*[18, 19, 22]*/
        n = 0;
        /*[18, 19, 22]*/
        /*[18, 19, 22]*/
        /*[19, 22]*/
        /*[18, 19, 22]*/
        for (m = 0; m < 3; m++) {
        /*[18, 19, 22]*/
            /*[18, 19, 22]*/
#pragma omp for nowait
            /*[18, 19, 22]*/
            /*[18, 19, 22]*/
            /*[18, 19, 22]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[18, 19, 22]*/
                    /*[18, 19, 22]*/
                    /*[18, 19, 22]*/
                    /*[18, 19, 22]*/
                    /*[18, 19, 22]*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                    /*[18, 19, 22]*/
                        /*[18, 19, 22]*/
                        k1 = k + 1;
                        /*[18, 19, 22]*/
                        k2 = k + 2;
                        /*[18, 19, 22]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                    }
                }
            }
            /*[18, 19, 22]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[18, 19, 22]*/
#pragma omp barrier
        }
        /*[18, 19, 22]*/
        /*[18, 19, 22]*/
        /*[19, 22]*/
        /*[18, 19, 22]*/
        for (m = 3; m < 5; m++) {
        /*[18, 19, 22]*/
            /*[18, 19, 22]*/
            n = (m - 3 + 1) * 5;
            /*[18, 19, 22]*/
#pragma omp for nowait
            /*[18, 19, 22]*/
            /*[18, 19, 22]*/
            /*[18, 19, 22]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                /*[18, 19, 22]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[18, 19, 22]*/
                    /*[18, 19, 22]*/
                    /*[18, 19, 22]*/
                    /*[18, 19, 22]*/
                    /*[18, 19, 22]*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                    /*[18, 19, 22]*/
                        /*[18, 19, 22]*/
                        k1 = k + 1;
                        /*[18, 19, 22]*/
                        k2 = k + 2;
                        /*[18, 19, 22]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                    }
                }
            }
            /*[18, 19, 22]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[18, 19, 22]*/
#pragma omp barrier
        }
    }
    /*[]*/
    tzetar();
    /*[]*/
}
