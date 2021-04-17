
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
        double aux;
        /*[1]*/
        double rho_inv;
        /*[1]*/
        double uijk;
        /*[1]*/
        double up1;
        /*[1]*/
        double um1;
        /*[1]*/
        double vijk;
        /*[1]*/
        double vp1;
        /*[1]*/
        double vm1;
        /*[1]*/
        double wijk;
        /*[1]*/
        double wp1;
        /*[1]*/
        double wm1;
        /*[1]*/
#pragma omp for nowait
        /*[1]*/
        /*[1]*/
        /*[1]*/
        for (i = 0; i <= grid_points[0] - 1; i++) {
        /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
            /*[1]*/
                /*[1]*/
                /*[1]*/
                /*[1]*/
                /*[1]*/
                for (k = 0; k <= grid_points[2] - 1; k++) {
                /*[1]*/
                    /*[1]*/
                    rho_inv = 1.0 / u[0][i][j][k];
                    /*[1]*/
                    rho_i[i][j][k] = rho_inv;
                    /*[1]*/
                    us[i][j][k] = u[1][i][j][k] * rho_inv;
                    /*[1]*/
                    vs[i][j][k] = u[2][i][j][k] * rho_inv;
                    /*[1]*/
                    ws[i][j][k] = u[3][i][j][k] * rho_inv;
                    /*[1]*/
                    square[i][j][k] = 0.5 * (u[1][i][j][k] * u[1][i][j][k] + u[2][i][j][k] * u[2][i][j][k] + u[3][i][j][k] * u[3][i][j][k]) * rho_inv;
                    /*[1]*/
                    qs[i][j][k] = square[i][j][k] * rho_inv;
                    /*[1]*/
                    aux = c1c2 * rho_inv * (u[4][i][j][k] - square[i][j][k]);
                    /*[1]*/
                    aux = sqrt(aux);
                    /*[1]*/
                    /*[1]*/
                    speed[i][j][k] = aux;
                    /*[1]*/
                    ainv[i][j][k] = 1.0 / aux;
                }
            }
        }
        /*[1]*/
        /*[1, 2, 3, 4, 5, 6, 7]*/
        /*[2, 3, 4, 5, 6, 7]*/
        /*[1]*/
        for (m = 0; m < 5; m++) {
        /*[1, 2, 3, 4, 5, 6, 7]*/
            /*[1, 2, 3, 4, 5, 6, 7]*/
#pragma omp for nowait
            /*[1, 2, 3, 4, 5, 6, 7]*/
            /*[1, 2, 3, 4, 5, 6, 7]*/
            /*[1, 2, 3, 4, 5, 6, 7]*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
            /*[1, 2, 3, 4, 5, 6, 7]*/
                /*[1, 2, 3, 4, 5, 6, 7]*/
                /*[1, 2, 3, 4, 5, 6, 7]*/
                /*[1, 2, 3, 4, 5, 6, 7]*/
                /*[1, 2, 3, 4, 5, 6, 7]*/
                for (j = 0; j <= grid_points[1] - 1; j++) {
                /*[1, 2, 3, 4, 5, 6, 7]*/
                    /*[1, 2, 3, 4, 5, 6, 7]*/
                    /*[1, 2, 3, 4, 5, 6, 7]*/
                    /*[1, 2, 3, 4, 5, 6, 7]*/
                    /*[1, 2, 3, 4, 5, 6, 7]*/
                    for (k = 0; k <= grid_points[2] - 1; k++) {
                    /*[1, 2, 3, 4, 5, 6, 7]*/
                        /*[1, 2, 3, 4, 5, 6, 7]*/
                        rhs[m][i][j][k] = forcing[m][i][j][k];
                    }
                }
            }
            /*[1, 2, 3, 4, 5, 6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[1, 2, 3, 4, 5, 6, 7]*/
#pragma omp barrier
        }
        /*[1, 2, 3, 4, 5, 6, 7]*/
#pragma omp for nowait
        /*[1, 2, 3, 4, 5, 6, 7]*/
        /*[1, 2, 3, 4, 5, 6, 7]*/
        /*[1, 2, 3, 4, 5, 6, 7]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[1, 2, 3, 4, 5, 6, 7]*/
            /*[1, 2, 3, 4, 5, 6, 7]*/
            /*[1, 2, 3, 4, 5, 6, 7]*/
            /*[1, 2, 3, 4, 5, 6, 7]*/
            /*[1, 2, 3, 4, 5, 6, 7]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[1, 2, 3, 4, 5, 6, 7]*/
                /*[1, 2, 3, 4, 5, 6, 7]*/
                /*[1, 2, 3, 4, 5, 6, 7]*/
                /*[1, 2, 3, 4, 5, 6, 7]*/
                /*[1, 2, 3, 4, 5, 6, 7]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[1, 2, 3, 4, 5, 6, 7]*/
                    /*[1, 2, 3, 4, 5, 6, 7]*/
                    uijk = us[i][j][k];
                    /*[1, 2, 3, 4, 5, 6, 7]*/
                    up1 = us[i + 1][j][k];
                    /*[1, 2, 3, 4, 5, 6, 7]*/
                    um1 = us[i - 1][j][k];
                    /*[1, 2, 3, 4, 5, 6, 7]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dx1tx1 * (u[0][i + 1][j][k] - 2.0 * u[0][i][j][k] + u[0][i - 1][j][k]) - tx2 * (u[1][i + 1][j][k] - u[1][i - 1][j][k]);
                    /*[1, 2, 3, 4, 5, 6, 7]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dx2tx1 * (u[1][i + 1][j][k] - 2.0 * u[1][i][j][k] + u[1][i - 1][j][k]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[1][i + 1][j][k] * up1 - u[1][i - 1][j][k] * um1 + (u[4][i + 1][j][k] - square[i + 1][j][k] - u[4][i - 1][j][k] + square[i - 1][j][k]) * c2);
                    /*[1, 2, 3, 4, 5, 6, 7]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dx3tx1 * (u[2][i + 1][j][k] - 2.0 * u[2][i][j][k] + u[2][i - 1][j][k]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[2][i + 1][j][k] * up1 - u[2][i - 1][j][k] * um1);
                    /*[1, 2, 3, 4, 5, 6, 7]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dx4tx1 * (u[3][i + 1][j][k] - 2.0 * u[3][i][j][k] + u[3][i - 1][j][k]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[3][i + 1][j][k] * up1 - u[3][i - 1][j][k] * um1);
                    /*[1, 2, 3, 4, 5, 6, 7]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dx5tx1 * (u[4][i + 1][j][k] - 2.0 * u[4][i][j][k] + u[4][i - 1][j][k]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[4][i + 1][j][k] * rho_i[i + 1][j][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i - 1][j][k] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[4][i + 1][j][k] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[4][i - 1][j][k] - c2 * square[i - 1][j][k]) * um1);
                }
            }
        }
        /*[1, 2, 3, 4, 5, 6, 7]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[1, 2, 3, 4, 5, 6, 7]*/
#pragma omp barrier
        /*[2, 3, 4, 5, 6, 7]*/
        i = 1;
        /*[2, 3, 4, 5, 6, 7]*/
        /*[2, 3, 4, 5, 6, 7]*/
        /*[3, 4, 5, 6, 7]*/
        /*[2, 3, 4, 5, 6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
#pragma omp for nowait
            /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[2, 3, 4, 5, 6, 7]*/
                    /*[2, 3, 4, 5, 6, 7]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                }
            }
            /*[2, 3, 4, 5, 6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[2, 3, 4, 5, 6, 7]*/
#pragma omp barrier
        }
        /*[2, 3, 4, 5, 6, 7]*/
        i = 2;
        /*[2, 3, 4, 5, 6, 7]*/
        /*[2, 3, 4, 5, 6, 7]*/
        /*[3, 4, 5, 6, 7]*/
        /*[2, 3, 4, 5, 6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
#pragma omp for nowait
            /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[2, 3, 4, 5, 6, 7]*/
                    /*[2, 3, 4, 5, 6, 7]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                }
            }
            /*[2, 3, 4, 5, 6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[2, 3, 4, 5, 6, 7]*/
#pragma omp barrier
        }
        /*[2, 3, 4, 5, 6, 7]*/
        /*[2, 3, 4, 5, 6, 7]*/
        /*[3, 4, 5, 6, 7]*/
        /*[2, 3, 4, 5, 6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
#pragma omp for nowait
            /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
            for (i = 3 * 1; i <= grid_points[0] - 3 * 1 - 1; i++) {
            /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[2, 3, 4, 5, 6, 7]*/
                    /*[2, 3, 4, 5, 6, 7]*/
                    /*[2, 3, 4, 5, 6, 7]*/
                    /*[2, 3, 4, 5, 6, 7]*/
                    /*[2, 3, 4, 5, 6, 7]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[2, 3, 4, 5, 6, 7]*/
                        /*[2, 3, 4, 5, 6, 7]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                    }
                }
            }
            /*[2, 3, 4, 5, 6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[2, 3, 4, 5, 6, 7]*/
#pragma omp barrier
        }
        /*[2, 3, 4, 5, 6, 7]*/
        i = grid_points[0] - 3;
        /*[2, 3, 4, 5, 6, 7]*/
        /*[2, 3, 4, 5, 6, 7]*/
        /*[3, 4, 5, 6, 7]*/
        /*[2, 3, 4, 5, 6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
#pragma omp for nowait
            /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[2, 3, 4, 5, 6, 7]*/
                    /*[2, 3, 4, 5, 6, 7]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k]);
                }
            }
            /*[2, 3, 4, 5, 6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[2, 3, 4, 5, 6, 7]*/
#pragma omp barrier
        }
        /*[2, 3, 4, 5, 6, 7]*/
        i = grid_points[0] - 2;
        /*[2, 3, 4, 5, 6, 7]*/
        /*[2, 3, 4, 5, 6, 7]*/
        /*[3, 4, 5, 6, 7]*/
        /*[2, 3, 4, 5, 6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
#pragma omp for nowait
            /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
            /*[2, 3, 4, 5, 6, 7]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                /*[2, 3, 4, 5, 6, 7]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[2, 3, 4, 5, 6, 7]*/
                    /*[2, 3, 4, 5, 6, 7]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 5.0 * u[m][i][j][k]);
                }
            }
            /*[2, 3, 4, 5, 6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[2, 3, 4, 5, 6, 7]*/
#pragma omp barrier
        }
        /*[2, 3, 4, 5, 6, 7]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[2, 3, 4, 5, 6, 7]*/
#pragma omp barrier
        /*[3, 4, 5, 6, 7]*/
#pragma omp for nowait
        /*[3, 4, 5, 6, 7]*/
        /*[3, 4, 5, 6, 7]*/
        /*[3, 4, 5, 6, 7]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[3, 4, 5, 6, 7]*/
            /*[3, 4, 5, 6, 7]*/
            /*[3, 4, 5, 6, 7]*/
            /*[3, 4, 5, 6, 7]*/
            /*[3, 4, 5, 6, 7]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[3, 4, 5, 6, 7]*/
                /*[3, 4, 5, 6, 7]*/
                /*[3, 4, 5, 6, 7]*/
                /*[3, 4, 5, 6, 7]*/
                /*[3, 4, 5, 6, 7]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[3, 4, 5, 6, 7]*/
                    /*[3, 4, 5, 6, 7]*/
                    vijk = vs[i][j][k];
                    /*[3, 4, 5, 6, 7]*/
                    vp1 = vs[i][j + 1][k];
                    /*[3, 4, 5, 6, 7]*/
                    vm1 = vs[i][j - 1][k];
                    /*[3, 4, 5, 6, 7]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dy1ty1 * (u[0][i][j + 1][k] - 2.0 * u[0][i][j][k] + u[0][i][j - 1][k]) - ty2 * (u[2][i][j + 1][k] - u[2][i][j - 1][k]);
                    /*[3, 4, 5, 6, 7]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dy2ty1 * (u[1][i][j + 1][k] - 2.0 * u[1][i][j][k] + u[1][i][j - 1][k]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[1][i][j + 1][k] * vp1 - u[1][i][j - 1][k] * vm1);
                    /*[3, 4, 5, 6, 7]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dy3ty1 * (u[2][i][j + 1][k] - 2.0 * u[2][i][j][k] + u[2][i][j - 1][k]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[2][i][j + 1][k] * vp1 - u[2][i][j - 1][k] * vm1 + (u[4][i][j + 1][k] - square[i][j + 1][k] - u[4][i][j - 1][k] + square[i][j - 1][k]) * c2);
                    /*[3, 4, 5, 6, 7]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dy4ty1 * (u[3][i][j + 1][k] - 2.0 * u[3][i][j][k] + u[3][i][j - 1][k]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[3][i][j + 1][k] * vp1 - u[3][i][j - 1][k] * vm1);
                    /*[3, 4, 5, 6, 7]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dy5ty1 * (u[4][i][j + 1][k] - 2.0 * u[4][i][j][k] + u[4][i][j - 1][k]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[4][i][j + 1][k] * rho_i[i][j + 1][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j - 1][k] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[4][i][j + 1][k] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[4][i][j - 1][k] - c2 * square[i][j - 1][k]) * vm1);
                }
            }
        }
        /*[3, 4, 5, 6, 7]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3, 4, 5, 6, 7]*/
#pragma omp barrier
        /*[4, 5, 6, 7]*/
        j = 1;
        /*[4, 5, 6, 7]*/
        /*[4, 5, 6, 7]*/
        /*[5, 6, 7]*/
        /*[4, 5, 6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
#pragma omp for nowait
            /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[4, 5, 6, 7]*/
                    /*[4, 5, 6, 7]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                }
            }
            /*[4, 5, 6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[4, 5, 6, 7]*/
#pragma omp barrier
        }
        /*[4, 5, 6, 7]*/
        j = 2;
        /*[4, 5, 6, 7]*/
        /*[4, 5, 6, 7]*/
        /*[5, 6, 7]*/
        /*[4, 5, 6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
#pragma omp for nowait
            /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[4, 5, 6, 7]*/
                    /*[4, 5, 6, 7]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                }
            }
            /*[4, 5, 6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[4, 5, 6, 7]*/
#pragma omp barrier
        }
        /*[4, 5, 6, 7]*/
        /*[4, 5, 6, 7]*/
        /*[5, 6, 7]*/
        /*[4, 5, 6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
#pragma omp for nowait
            /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                for (j = 3 * 1; j <= grid_points[1] - 3 * 1 - 1; j++) {
                /*[4, 5, 6, 7]*/
                    /*[4, 5, 6, 7]*/
                    /*[4, 5, 6, 7]*/
                    /*[4, 5, 6, 7]*/
                    /*[4, 5, 6, 7]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[4, 5, 6, 7]*/
                        /*[4, 5, 6, 7]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                    }
                }
            }
            /*[4, 5, 6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[4, 5, 6, 7]*/
#pragma omp barrier
        }
        /*[4, 5, 6, 7]*/
        j = grid_points[1] - 3;
        /*[4, 5, 6, 7]*/
        /*[4, 5, 6, 7]*/
        /*[5, 6, 7]*/
        /*[4, 5, 6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
#pragma omp for nowait
            /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[4, 5, 6, 7]*/
                    /*[4, 5, 6, 7]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k]);
                }
            }
            /*[4, 5, 6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[4, 5, 6, 7]*/
#pragma omp barrier
        }
        /*[4, 5, 6, 7]*/
        j = grid_points[1] - 2;
        /*[4, 5, 6, 7]*/
        /*[4, 5, 6, 7]*/
        /*[5, 6, 7]*/
        /*[4, 5, 6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
#pragma omp for nowait
            /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
            /*[4, 5, 6, 7]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                /*[4, 5, 6, 7]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[4, 5, 6, 7]*/
                    /*[4, 5, 6, 7]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 5.0 * u[m][i][j][k]);
                }
            }
            /*[4, 5, 6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[4, 5, 6, 7]*/
#pragma omp barrier
        }
        /*[4, 5, 6, 7]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[4, 5, 6, 7]*/
#pragma omp barrier
        /*[5, 6, 7]*/
#pragma omp for nowait
        /*[5, 6, 7]*/
        /*[5, 6, 7]*/
        /*[5, 6, 7]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[5, 6, 7]*/
            /*[5, 6, 7]*/
            /*[5, 6, 7]*/
            /*[5, 6, 7]*/
            /*[5, 6, 7]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[5, 6, 7]*/
                /*[5, 6, 7]*/
                /*[5, 6, 7]*/
                /*[5, 6, 7]*/
                /*[5, 6, 7]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[5, 6, 7]*/
                    /*[5, 6, 7]*/
                    wijk = ws[i][j][k];
                    /*[5, 6, 7]*/
                    wp1 = ws[i][j][k + 1];
                    /*[5, 6, 7]*/
                    wm1 = ws[i][j][k - 1];
                    /*[5, 6, 7]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dz1tz1 * (u[0][i][j][k + 1] - 2.0 * u[0][i][j][k] + u[0][i][j][k - 1]) - tz2 * (u[3][i][j][k + 1] - u[3][i][j][k - 1]);
                    /*[5, 6, 7]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dz2tz1 * (u[1][i][j][k + 1] - 2.0 * u[1][i][j][k] + u[1][i][j][k - 1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[1][i][j][k + 1] * wp1 - u[1][i][j][k - 1] * wm1);
                    /*[5, 6, 7]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dz3tz1 * (u[2][i][j][k + 1] - 2.0 * u[2][i][j][k] + u[2][i][j][k - 1]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[2][i][j][k + 1] * wp1 - u[2][i][j][k - 1] * wm1);
                    /*[5, 6, 7]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dz4tz1 * (u[3][i][j][k + 1] - 2.0 * u[3][i][j][k] + u[3][i][j][k - 1]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[3][i][j][k + 1] * wp1 - u[3][i][j][k - 1] * wm1 + (u[4][i][j][k + 1] - square[i][j][k + 1] - u[4][i][j][k - 1] + square[i][j][k - 1]) * c2);
                    /*[5, 6, 7]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dz5tz1 * (u[4][i][j][k + 1] - 2.0 * u[4][i][j][k] + u[4][i][j][k - 1]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[4][i][j][k + 1] * rho_i[i][j][k + 1] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j][k - 1] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[4][i][j][k + 1] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[4][i][j][k - 1] - c2 * square[i][j][k - 1]) * wm1);
                }
            }
        }
        /*[5, 6, 7]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[5, 6, 7]*/
#pragma omp barrier
        /*[6, 7]*/
        k = 1;
        /*[6, 7]*/
        /*[6, 7]*/
        /*[7]*/
        /*[6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[6, 7]*/
            /*[6, 7]*/
#pragma omp for nowait
            /*[6, 7]*/
            /*[6, 7]*/
            /*[6, 7]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7]*/
                    /*[6, 7]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                }
            }
            /*[6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7]*/
#pragma omp barrier
        }
        /*[6, 7]*/
        k = 2;
        /*[6, 7]*/
        /*[6, 7]*/
        /*[7]*/
        /*[6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[6, 7]*/
            /*[6, 7]*/
#pragma omp for nowait
            /*[6, 7]*/
            /*[6, 7]*/
            /*[6, 7]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7]*/
                    /*[6, 7]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                }
            }
            /*[6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7]*/
#pragma omp barrier
        }
        /*[6, 7]*/
        /*[6, 7]*/
        /*[7]*/
        /*[6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[6, 7]*/
            /*[6, 7]*/
#pragma omp for nowait
            /*[6, 7]*/
            /*[6, 7]*/
            /*[6, 7]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7]*/
                    /*[6, 7]*/
                    /*[6, 7]*/
                    /*[6, 7]*/
                    /*[6, 7]*/
                    for (k = 3 * 1; k <= grid_points[2] - 3 * 1 - 1; k++) {
                    /*[6, 7]*/
                        /*[6, 7]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                    }
                }
            }
            /*[6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7]*/
#pragma omp barrier
        }
        /*[6, 7]*/
        k = grid_points[2] - 3;
        /*[6, 7]*/
        /*[6, 7]*/
        /*[7]*/
        /*[6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[6, 7]*/
            /*[6, 7]*/
#pragma omp for nowait
            /*[6, 7]*/
            /*[6, 7]*/
            /*[6, 7]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7]*/
                    /*[6, 7]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1]);
                }
            }
            /*[6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7]*/
#pragma omp barrier
        }
        /*[6, 7]*/
        k = grid_points[2] - 2;
        /*[6, 7]*/
        /*[6, 7]*/
        /*[7]*/
        /*[6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[6, 7]*/
            /*[6, 7]*/
#pragma omp for nowait
            /*[6, 7]*/
            /*[6, 7]*/
            /*[6, 7]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7]*/
                    /*[6, 7]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 5.0 * u[m][i][j][k]);
                }
            }
            /*[6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7]*/
#pragma omp barrier
        }
        /*[6, 7]*/
        /*[6, 7]*/
        /*[7]*/
        /*[6, 7]*/
        for (m = 0; m < 5; m++) {
        /*[6, 7]*/
            /*[6, 7]*/
#pragma omp for nowait
            /*[6, 7]*/
            /*[6, 7]*/
            /*[6, 7]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                /*[6, 7]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7]*/
                    /*[6, 7]*/
                    /*[6, 7]*/
                    /*[6, 7]*/
                    /*[6, 7]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[6, 7]*/
                        /*[6, 7]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] * dt;
                    }
                }
            }
            /*[6, 7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7]*/
#pragma omp barrier
        }
    }
    /*[6, 7]*/
    txinvr();
    /*[6, 7]*/
    /*[6, 7, 8]*/
#pragma omp parallel
    {
    /*[6, 7, 8]*/
        /*[6, 7, 8]*/
        int i;
        /*[6, 7, 8]*/
        int j;
        /*[6, 7, 8]*/
        int k;
        /*[6, 7, 8]*/
        int n;
        /*[6, 7, 8]*/
        int i1;
        /*[6, 7, 8]*/
        int i2;
        /*[6, 7, 8]*/
        int m;
        /*[6, 7, 8]*/
        double fac1;
        /*[6, 7, 8]*/
        double fac2;
        /*[6, 7, 8]*/
        double ru1;
        /*[6, 7, 8]*/
        int i_imopVarPre0;
        /*[6, 7, 8]*/
        int j_imopVarPre1;
        /*[6, 7, 8]*/
        int k_imopVarPre2;
        /*[6, 7, 8]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        /*[6, 7, 8]*/
        for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
#pragma omp for nowait
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                for (i_imopVarPre0 = 0; i_imopVarPre0 <= grid_points[0] - 1; i_imopVarPre0++) {
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    ru1 = c3c4 * rho_i[i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    cv[i_imopVarPre0] = us[i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    int _imopVarPre715;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    double _imopVarPre716;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    int _imopVarPre717;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    double _imopVarPre718;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    int _imopVarPre725;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    double _imopVarPre726;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    int _imopVarPre727;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    double _imopVarPre728;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    int _imopVarPre821;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    double _imopVarPre822;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    int _imopVarPre823;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    double _imopVarPre824;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    int _imopVarPre831;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    double _imopVarPre832;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    _imopVarPre715 = ((dxmax + ru1) > dx1);
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    if (_imopVarPre715) {
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        _imopVarPre716 = (dxmax + ru1);
                    } else {
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        _imopVarPre716 = dx1;
                    }
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    _imopVarPre717 = ((dx5 + c1c5 * ru1) > _imopVarPre716);
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    if (_imopVarPre717) {
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        _imopVarPre718 = (dx5 + c1c5 * ru1);
                    } else {
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        _imopVarPre725 = ((dxmax + ru1) > dx1);
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        if (_imopVarPre725) {
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            _imopVarPre726 = (dxmax + ru1);
                        } else {
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            _imopVarPre726 = dx1;
                        }
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        _imopVarPre718 = _imopVarPre726;
                    }
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    _imopVarPre727 = ((dx2 + con43 * ru1) > _imopVarPre718);
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    if (_imopVarPre727) {
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        _imopVarPre728 = (dx2 + con43 * ru1);
                    } else {
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        _imopVarPre821 = ((dxmax + ru1) > dx1);
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        if (_imopVarPre821) {
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            _imopVarPre822 = (dxmax + ru1);
                        } else {
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            _imopVarPre822 = dx1;
                        }
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        _imopVarPre823 = ((dx5 + c1c5 * ru1) > _imopVarPre822);
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        if (_imopVarPre823) {
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            _imopVarPre824 = (dx5 + c1c5 * ru1);
                        } else {
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            _imopVarPre831 = ((dxmax + ru1) > dx1);
                            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            if (_imopVarPre831) {
                            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                                _imopVarPre832 = (dxmax + ru1);
                            } else {
                            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                                _imopVarPre832 = dx1;
                            }
                            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                            _imopVarPre824 = _imopVarPre832;
                        }
                        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                        _imopVarPre728 = _imopVarPre824;
                    }
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    rhon[i_imopVarPre0] = _imopVarPre728;
                }
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
#pragma omp barrier
                /*[6, 7, 15, 16, 17, 18, 19, 20]*/
#pragma omp for nowait
                /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                for (i_imopVarPre0 = 1; i_imopVarPre0 <= grid_points[0] - 2; i_imopVarPre0++) {
                /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = 0.0;
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = -dttx2 * cv[i_imopVarPre0 - 1] - dttx1 * rhon[i_imopVarPre0 - 1];
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = 1.0 + c2dttx1 * rhon[i_imopVarPre0];
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = dttx2 * cv[i_imopVarPre0 + 1] - dttx1 * rhon[i_imopVarPre0 + 1];
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = 0.0;
                }
                /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[6, 7, 15, 16, 17, 18, 19, 20]*/
#pragma omp barrier
            }
        }
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        i_imopVarPre0 = 1;
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
#pragma omp for nowait
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz5;
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz6;
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[3][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[4][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz1;
            }
        }
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
#pragma omp for nowait
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        for (i_imopVarPre0 = 3; i_imopVarPre0 <= grid_points[0] - 4; i_imopVarPre0++) {
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz6;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                    /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                    lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
                }
            }
        }
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        i_imopVarPre0 = grid_points[0] - 3;
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
#pragma omp for nowait
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
            /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz6;
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[0][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz1;
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
                lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz5;
            }
        }
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 8, 9, 10, 11, 12, 13, 14]*/
#pragma omp barrier
        /*[6, 7, 15, 16, 17, 18, 19, 20]*/
#pragma omp for nowait
        /*[6, 7, 15, 16, 17, 18, 19, 20]*/
        /*[6, 7, 15, 16, 17, 18, 19, 20]*/
        /*[6, 7, 15, 16, 17, 18, 19, 20]*/
        for (i_imopVarPre0 = 1; i_imopVarPre0 <= grid_points[0] - 2; i_imopVarPre0++) {
        /*[6, 7, 15, 16, 17, 18, 19, 20]*/
            /*[6, 7, 15, 16, 17, 18, 19, 20]*/
            /*[6, 7, 15, 16, 17, 18, 19, 20]*/
            /*[6, 7, 15, 16, 17, 18, 19, 20]*/
            /*[6, 7, 15, 16, 17, 18, 19, 20]*/
            for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
            /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
                /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[0 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[1 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - dttx2 * speed[i_imopVarPre0 - 1][j_imopVarPre1][k_imopVarPre2];
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[2 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[3 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + dttx2 * speed[i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2];
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[4 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[0 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[1 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + dttx2 * speed[i_imopVarPre0 - 1][j_imopVarPre1][k_imopVarPre2];
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[2 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[3 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - dttx2 * speed[i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2];
                    /*[6, 7, 15, 16, 17, 18, 19, 20]*/
                    lhs[4 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                }
            }
        }
        /*[6, 7, 15, 16, 17, 18, 19, 20]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 15, 16, 17, 18, 19, 20]*/
#pragma omp barrier
        /*[6, 7, 9, 10, 11, 12, 13, 14]*/
        n = 0;
        /*[6, 7, 9, 10, 11, 12, 13, 14]*/
        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 14]*/
        for (i = 0; i <= grid_points[0] - 3; i++) {
        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
            i1 = i + 1;
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
            i2 = i + 2;
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
#pragma omp for nowait
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    for (m = 0; m < 3; m++) {
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    for (m = 0; m < 3; m++) {
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                        rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                    }
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    for (m = 0; m < 3; m++) {
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                        rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                    }
                }
            }
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
#pragma omp barrier
        }
        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
        i = grid_points[0] - 2;
        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
        i1 = grid_points[0] - 1;
        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
#pragma omp for nowait
        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                fac1 = 1.0 / lhs[n + 2][i][j][k];
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                for (m = 0; m < 3; m++) {
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                for (m = 0; m < 3; m++) {
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                }
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                fac2 = 1. / lhs[n + 2][i1][j][k];
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                for (m = 0; m < 3; m++) {
                /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
                    rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
                }
            }
        }
        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20]*/
#pragma omp barrier
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        for (m = 3; m < 5; m++) {
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            n = (m - 3 + 1) * 5;
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            for (i = 0; i <= grid_points[0] - 3; i++) {
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                i1 = i + 1;
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                i2 = i + 2;
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
#pragma omp for nowait
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                    }
                }
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
#pragma omp barrier
            }
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            i = grid_points[0] - 2;
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            i1 = grid_points[0] - 1;
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
#pragma omp for nowait
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    fac2 = 1. / lhs[n + 2][i1][j][k];
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
                }
            }
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
#pragma omp barrier
        }
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        i = grid_points[0] - 2;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        i1 = grid_points[0] - 1;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        n = 0;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        for (m = 0; m < 3; m++) {
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
#pragma omp for nowait
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
                }
            }
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
#pragma omp barrier
        }
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        for (m = 3; m < 5; m++) {
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
#pragma omp for nowait
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    n = (m - 3 + 1) * 5;
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
                }
            }
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
#pragma omp barrier
        }
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        n = 0;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        for (i = grid_points[0] - 3; i >= 0; i--) {
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            i1 = i + 1;
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            i2 = i + 2;
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
#pragma omp for nowait
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            for (m = 0; m < 3; m++) {
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                    }
                }
            }
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
#pragma omp barrier
        }
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        for (m = 3; m < 5; m++) {
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            n = (m - 3 + 1) * 5;
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
            for (i = grid_points[0] - 3; i >= 0; i--) {
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                i1 = i + 1;
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                i2 = i + 2;
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
#pragma omp for nowait
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                    }
                }
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
#pragma omp barrier
            }
        }
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20]*/
#pragma omp barrier
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        int i_imopVarPre78;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        int j_imopVarPre79;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        int k_imopVarPre80;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        double r1;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        double r2;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        double r3;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        double r4;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        double r5;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        double t1;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        double t2;
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
#pragma omp for nowait
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        for (i_imopVarPre78 = 1; i_imopVarPre78 <= grid_points[0] - 2; i_imopVarPre78++) {
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
            for (j_imopVarPre79 = 1; j_imopVarPre79 <= grid_points[1] - 2; j_imopVarPre79++) {
            /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                for (k_imopVarPre80 = 1; k_imopVarPre80 <= grid_points[2] - 2; k_imopVarPre80++) {
                /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                    r1 = rhs[0][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                    r2 = rhs[1][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                    r3 = rhs[2][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                    r4 = rhs[3][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                    r5 = rhs[4][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                    t1 = bt * r3;
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                    t2 = 0.5 * (r4 + r5);
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                    rhs[0][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = -r2;
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                    rhs[1][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = r1;
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                    rhs[2][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = bt * (r4 - r5);
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                    rhs[3][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = -t1 + t2;
                    /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
                    rhs[4][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = t1 + t2;
                }
            }
        }
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18]*/
#pragma omp barrier
        /*[6, 7, 10, 11, 12, 13, 15, 16, 17, 18]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 10, 11, 12, 13, 15, 16, 17, 18]*/
#pragma omp barrier
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        int i_imopVarPre90;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        int j_imopVarPre91;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        int k_imopVarPre92;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        int n_imopVarPre93;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        int j1;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        int j2;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        int m_imopVarPre94;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        double fac1_imopVarPre95;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        double fac2_imopVarPre96;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        double ru1_imopVarPre97;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        int i_imopVarPre81;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        int j_imopVarPre82;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        int k_imopVarPre83;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 11, 12, 13, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
#pragma omp for nowait
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                for (j_imopVarPre82 = 0; j_imopVarPre82 <= grid_points[1] - 1; j_imopVarPre82++) {
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    ru1_imopVarPre97 = c3c4 * rho_i[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    cv[j_imopVarPre82] = vs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    int _imopVarPre1343;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    double _imopVarPre1344;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    int _imopVarPre1345;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    double _imopVarPre1346;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    int _imopVarPre1353;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    double _imopVarPre1354;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    int _imopVarPre1355;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    double _imopVarPre1356;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    int _imopVarPre1449;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    double _imopVarPre1450;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    int _imopVarPre1451;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    double _imopVarPre1452;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    int _imopVarPre1459;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    double _imopVarPre1460;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    _imopVarPre1343 = ((dymax + ru1_imopVarPre97) > dy1);
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    if (_imopVarPre1343) {
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        _imopVarPre1344 = (dymax + ru1_imopVarPre97);
                    } else {
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        _imopVarPre1344 = dy1;
                    }
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    _imopVarPre1345 = ((dy5 + c1c5 * ru1_imopVarPre97) > _imopVarPre1344);
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    if (_imopVarPre1345) {
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        _imopVarPre1346 = (dy5 + c1c5 * ru1_imopVarPre97);
                    } else {
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        _imopVarPre1353 = ((dymax + ru1_imopVarPre97) > dy1);
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        if (_imopVarPre1353) {
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            _imopVarPre1354 = (dymax + ru1_imopVarPre97);
                        } else {
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            _imopVarPre1354 = dy1;
                        }
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        _imopVarPre1346 = _imopVarPre1354;
                    }
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    _imopVarPre1355 = ((dy3 + con43 * ru1_imopVarPre97) > _imopVarPre1346);
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    if (_imopVarPre1355) {
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        _imopVarPre1356 = (dy3 + con43 * ru1_imopVarPre97);
                    } else {
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        _imopVarPre1449 = ((dymax + ru1_imopVarPre97) > dy1);
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        if (_imopVarPre1449) {
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            _imopVarPre1450 = (dymax + ru1_imopVarPre97);
                        } else {
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            _imopVarPre1450 = dy1;
                        }
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        _imopVarPre1451 = ((dy5 + c1c5 * ru1_imopVarPre97) > _imopVarPre1450);
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        if (_imopVarPre1451) {
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            _imopVarPre1452 = (dy5 + c1c5 * ru1_imopVarPre97);
                        } else {
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            _imopVarPre1459 = ((dymax + ru1_imopVarPre97) > dy1);
                            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            if (_imopVarPre1459) {
                            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                                _imopVarPre1460 = (dymax + ru1_imopVarPre97);
                            } else {
                            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                                _imopVarPre1460 = dy1;
                            }
                            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                            _imopVarPre1452 = _imopVarPre1460;
                        }
                        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                        _imopVarPre1356 = _imopVarPre1452;
                    }
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    rhoq[j_imopVarPre82] = _imopVarPre1356;
                }
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
#pragma omp barrier
                /*[6, 7, 11, 12, 13, 16, 17, 18]*/
#pragma omp for nowait
                /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                for (j_imopVarPre82 = 1; j_imopVarPre82 <= grid_points[1] - 2; j_imopVarPre82++) {
                /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = 0.0;
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = -dtty2 * cv[j_imopVarPre82 - 1] - dtty1 * rhoq[j_imopVarPre82 - 1];
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = 1.0 + c2dtty1 * rhoq[j_imopVarPre82];
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = dtty2 * cv[j_imopVarPre82 + 1] - dtty1 * rhoq[j_imopVarPre82 + 1];
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = 0.0;
                }
                /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[6, 7, 11, 12, 13, 16, 17, 18]*/
#pragma omp barrier
            }
        }
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        j_imopVarPre82 = 1;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
#pragma omp for nowait
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz5;
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] - comz4;
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz6;
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[3][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] - comz4;
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[4][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz1;
            }
        }
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
#pragma omp for nowait
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            for (j_imopVarPre82 = 3; j_imopVarPre82 <= grid_points[1] - 4; j_imopVarPre82++) {
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz6;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                    /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                    lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
                }
            }
        }
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        j_imopVarPre82 = grid_points[1] - 3;
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
#pragma omp for nowait
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
            for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
            /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz6;
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[0][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz1;
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] - comz4;
                /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
                lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz5;
            }
        }
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 10, 11, 12, 13, 16, 17, 18]*/
#pragma omp barrier
        /*[6, 7, 11, 12, 13, 16, 17, 18]*/
#pragma omp for nowait
        /*[6, 7, 11, 12, 13, 16, 17, 18]*/
        /*[6, 7, 11, 12, 13, 16, 17, 18]*/
        /*[6, 7, 11, 12, 13, 16, 17, 18]*/
        for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
        /*[6, 7, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 11, 12, 13, 16, 17, 18]*/
            /*[6, 7, 11, 12, 13, 16, 17, 18]*/
            for (j_imopVarPre82 = 1; j_imopVarPre82 <= grid_points[1] - 2; j_imopVarPre82++) {
            /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
                /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[0 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[1 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - dtty2 * speed[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83];
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[2 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[3 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + dtty2 * speed[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83];
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[4 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[0 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[1 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + dtty2 * speed[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83];
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[2 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[3 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - dtty2 * speed[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83];
                    /*[6, 7, 11, 12, 13, 16, 17, 18]*/
                    lhs[4 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                }
            }
        }
        /*[6, 7, 11, 12, 13, 16, 17, 18]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 11, 12, 13, 16, 17, 18]*/
#pragma omp barrier
        /*[6, 7, 11, 12, 13, 17, 18]*/
        n_imopVarPre93 = 0;
        /*[6, 7, 11, 12, 13, 17, 18]*/
        /*[6, 7, 11, 12, 13, 17, 18]*/
        /*[6, 7, 12, 13, 17, 18]*/
        /*[6, 7, 11, 12, 13, 17, 18]*/
        for (j_imopVarPre91 = 0; j_imopVarPre91 <= grid_points[1] - 3; j_imopVarPre91++) {
        /*[6, 7, 11, 12, 13, 17, 18]*/
            /*[6, 7, 11, 12, 13, 17, 18]*/
            j1 = j_imopVarPre91 + 1;
            /*[6, 7, 11, 12, 13, 17, 18]*/
            j2 = j_imopVarPre91 + 2;
            /*[6, 7, 11, 12, 13, 17, 18]*/
#pragma omp for nowait
            /*[6, 7, 11, 12, 13, 17, 18]*/
            /*[6, 7, 11, 12, 13, 17, 18]*/
            /*[6, 7, 11, 12, 13, 17, 18]*/
            for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
            /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                /*[6, 7, 11, 12, 13, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    fac1_imopVarPre95 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                        /*[6, 7, 11, 12, 13, 17, 18]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    }
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                        /*[6, 7, 11, 12, 13, 17, 18]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    }
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    lhs[n_imopVarPre93 + 1][i_imopVarPre90][j2][k_imopVarPre92] = lhs[n_imopVarPre93 + 1][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    lhs[n_imopVarPre93 + 2][i_imopVarPre90][j2][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                        /*[6, 7, 11, 12, 13, 17, 18]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    }
                }
            }
            /*[6, 7, 11, 12, 13, 17, 18]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 11, 12, 13, 17, 18]*/
#pragma omp barrier
        }
        /*[6, 7, 11, 12, 13, 17, 18]*/
        j_imopVarPre91 = grid_points[1] - 2;
        /*[6, 7, 11, 12, 13, 17, 18]*/
        j1 = grid_points[1] - 1;
        /*[6, 7, 11, 12, 13, 17, 18]*/
#pragma omp for nowait
        /*[6, 7, 11, 12, 13, 17, 18]*/
        /*[6, 7, 11, 12, 13, 17, 18]*/
        /*[6, 7, 11, 12, 13, 17, 18]*/
        for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
        /*[6, 7, 11, 12, 13, 17, 18]*/
            /*[6, 7, 11, 12, 13, 17, 18]*/
            /*[6, 7, 11, 12, 13, 17, 18]*/
            /*[6, 7, 11, 12, 13, 17, 18]*/
            /*[6, 7, 11, 12, 13, 17, 18]*/
            for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
            /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                fac1_imopVarPre95 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                /*[6, 7, 11, 12, 13, 17, 18]*/
                lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                /*[6, 7, 11, 12, 13, 17, 18]*/
                lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                /*[6, 7, 11, 12, 13, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                }
                /*[6, 7, 11, 12, 13, 17, 18]*/
                lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                /*[6, 7, 11, 12, 13, 17, 18]*/
                lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                /*[6, 7, 11, 12, 13, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                }
                /*[6, 7, 11, 12, 13, 17, 18]*/
                fac2_imopVarPre96 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92];
                /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                /*[6, 7, 11, 12, 13, 17, 18]*/
                for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                /*[6, 7, 11, 12, 13, 17, 18]*/
                    /*[6, 7, 11, 12, 13, 17, 18]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = fac2_imopVarPre96 * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92];
                }
            }
        }
        /*[6, 7, 11, 12, 13, 17, 18]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 11, 12, 13, 17, 18]*/
#pragma omp barrier
        /*[6, 7, 12, 13, 17, 18]*/
        /*[6, 7, 12, 13, 17, 18]*/
        /*[6, 7, 12, 13, 18]*/
        /*[6, 7, 12, 13, 17, 18]*/
        for (m_imopVarPre94 = 3; m_imopVarPre94 < 5; m_imopVarPre94++) {
        /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            n_imopVarPre93 = (m_imopVarPre94 - 3 + 1) * 5;
            /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            for (j_imopVarPre91 = 0; j_imopVarPre91 <= grid_points[1] - 3; j_imopVarPre91++) {
            /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                j1 = j_imopVarPre91 + 1;
                /*[6, 7, 12, 13, 17, 18]*/
                j2 = j_imopVarPre91 + 2;
                /*[6, 7, 12, 13, 17, 18]*/
#pragma omp for nowait
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
                /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                    /*[6, 7, 12, 13, 17, 18]*/
                        /*[6, 7, 12, 13, 17, 18]*/
                        fac1_imopVarPre95 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[6, 7, 12, 13, 17, 18]*/
                        lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[6, 7, 12, 13, 17, 18]*/
                        lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[6, 7, 12, 13, 17, 18]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[6, 7, 12, 13, 17, 18]*/
                        lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[6, 7, 12, 13, 17, 18]*/
                        lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[6, 7, 12, 13, 17, 18]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[6, 7, 12, 13, 17, 18]*/
                        lhs[n_imopVarPre93 + 1][i_imopVarPre90][j2][k_imopVarPre92] = lhs[n_imopVarPre93 + 1][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[6, 7, 12, 13, 17, 18]*/
                        lhs[n_imopVarPre93 + 2][i_imopVarPre90][j2][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[6, 7, 12, 13, 17, 18]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    }
                }
                /*[6, 7, 12, 13, 17, 18]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[6, 7, 12, 13, 17, 18]*/
#pragma omp barrier
            }
            /*[6, 7, 12, 13, 17, 18]*/
            j_imopVarPre91 = grid_points[1] - 2;
            /*[6, 7, 12, 13, 17, 18]*/
            j1 = grid_points[1] - 1;
            /*[6, 7, 12, 13, 17, 18]*/
#pragma omp for nowait
            /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
            /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    fac1_imopVarPre95 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 12, 13, 17, 18]*/
                    lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 12, 13, 17, 18]*/
                    lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 12, 13, 17, 18]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 12, 13, 17, 18]*/
                    lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 12, 13, 17, 18]*/
                    lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 12, 13, 17, 18]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[6, 7, 12, 13, 17, 18]*/
                    fac2_imopVarPre96 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92];
                    /*[6, 7, 12, 13, 17, 18]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = fac2_imopVarPre96 * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92];
                }
            }
            /*[6, 7, 12, 13, 17, 18]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 12, 13, 17, 18]*/
#pragma omp barrier
        }
        /*[6, 7, 12, 13, 17, 18]*/
        j_imopVarPre91 = grid_points[1] - 2;
        /*[6, 7, 12, 13, 17, 18]*/
        j1 = grid_points[1] - 1;
        /*[6, 7, 12, 13, 17, 18]*/
        n_imopVarPre93 = 0;
        /*[6, 7, 12, 13, 17, 18]*/
        /*[6, 7, 12, 13, 17, 18]*/
        /*[6, 7, 12, 13, 18]*/
        /*[6, 7, 12, 13, 17, 18]*/
        for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
        /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
#pragma omp for nowait
            /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
            /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] - lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92];
                }
            }
            /*[6, 7, 12, 13, 17, 18]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 12, 13, 17, 18]*/
#pragma omp barrier
        }
        /*[6, 7, 12, 13, 17, 18]*/
        /*[6, 7, 12, 13, 17, 18]*/
        /*[6, 7, 12, 13, 18]*/
        /*[6, 7, 12, 13, 17, 18]*/
        for (m_imopVarPre94 = 3; m_imopVarPre94 < 5; m_imopVarPre94++) {
        /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
#pragma omp for nowait
            /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
            /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    n_imopVarPre93 = (m_imopVarPre94 - 3 + 1) * 5;
                    /*[6, 7, 12, 13, 17, 18]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] - lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92];
                }
            }
            /*[6, 7, 12, 13, 17, 18]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 12, 13, 17, 18]*/
#pragma omp barrier
        }
        /*[6, 7, 12, 13, 17, 18]*/
        n_imopVarPre93 = 0;
        /*[6, 7, 12, 13, 17, 18]*/
        /*[6, 7, 12, 13, 17, 18]*/
        /*[6, 7, 12, 13, 17, 18]*/
        /*[6, 7, 12, 13, 17, 18]*/
        for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
        /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            for (j_imopVarPre91 = grid_points[1] - 3; j_imopVarPre91 >= 0; j_imopVarPre91--) {
            /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                j1 = j_imopVarPre91 + 1;
                /*[6, 7, 12, 13, 17, 18]*/
                j2 = j_imopVarPre91 + 2;
                /*[6, 7, 12, 13, 17, 18]*/
#pragma omp for nowait
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
                /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                    /*[6, 7, 12, 13, 17, 18]*/
                        /*[6, 7, 12, 13, 17, 18]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] - lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92];
                    }
                }
                /*[6, 7, 12, 13, 17, 18]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[6, 7, 12, 13, 17, 18]*/
#pragma omp barrier
            }
        }
        /*[6, 7, 12, 13, 17, 18]*/
        /*[6, 7, 12, 13, 17, 18]*/
        /*[6, 7, 12, 13, 17, 18]*/
        /*[6, 7, 12, 13, 17, 18]*/
        for (m_imopVarPre94 = 3; m_imopVarPre94 < 5; m_imopVarPre94++) {
        /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            n_imopVarPre93 = (m_imopVarPre94 - 3 + 1) * 5;
            /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            /*[6, 7, 12, 13, 18]*/
            /*[6, 7, 12, 13, 17, 18]*/
            for (j_imopVarPre91 = grid_points[1] - 3; j_imopVarPre91 >= 0; j_imopVarPre91--) {
            /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                j1 = j_imopVarPre91 + 1;
                /*[6, 7, 12, 13, 17, 18]*/
                j2 = j1 + 1;
                /*[6, 7, 12, 13, 17, 18]*/
#pragma omp for nowait
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                /*[6, 7, 12, 13, 17, 18]*/
                for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
                /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    /*[6, 7, 12, 13, 17, 18]*/
                    for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                    /*[6, 7, 12, 13, 17, 18]*/
                        /*[6, 7, 12, 13, 17, 18]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] - lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92];
                    }
                }
                /*[6, 7, 12, 13, 17, 18]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[6, 7, 12, 13, 17, 18]*/
#pragma omp barrier
            }
        }
        /*[6, 7, 12, 13, 17, 18]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 12, 13, 17, 18]*/
#pragma omp barrier
        /*[6, 7, 12, 13, 18]*/
        int i_imopVarPre87;
        /*[6, 7, 12, 13, 18]*/
        int j_imopVarPre88;
        /*[6, 7, 12, 13, 18]*/
        int k_imopVarPre89;
        /*[6, 7, 12, 13, 18]*/
        double r1_imopVarPre98;
        /*[6, 7, 12, 13, 18]*/
        double r2_imopVarPre99;
        /*[6, 7, 12, 13, 18]*/
        double r3_imopVarPre100;
        /*[6, 7, 12, 13, 18]*/
        double r4_imopVarPre101;
        /*[6, 7, 12, 13, 18]*/
        double r5_imopVarPre102;
        /*[6, 7, 12, 13, 18]*/
        double t1_imopVarPre103;
        /*[6, 7, 12, 13, 18]*/
        double t2_imopVarPre104;
        /*[6, 7, 12, 13, 18]*/
#pragma omp for nowait
        /*[6, 7, 12, 13, 18]*/
        /*[6, 7, 12, 13, 18]*/
        /*[6, 7, 12, 13, 18]*/
        for (i_imopVarPre87 = 1; i_imopVarPre87 <= grid_points[0] - 2; i_imopVarPre87++) {
        /*[6, 7, 12, 13, 18]*/
            /*[6, 7, 12, 13, 18]*/
            /*[6, 7, 12, 13, 18]*/
            /*[6, 7, 12, 13, 18]*/
            /*[6, 7, 12, 13, 18]*/
            for (j_imopVarPre88 = 1; j_imopVarPre88 <= grid_points[1] - 2; j_imopVarPre88++) {
            /*[6, 7, 12, 13, 18]*/
                /*[6, 7, 12, 13, 18]*/
                /*[6, 7, 12, 13, 18]*/
                /*[6, 7, 12, 13, 18]*/
                /*[6, 7, 12, 13, 18]*/
                for (k_imopVarPre89 = 1; k_imopVarPre89 <= grid_points[2] - 2; k_imopVarPre89++) {
                /*[6, 7, 12, 13, 18]*/
                    /*[6, 7, 12, 13, 18]*/
                    r1_imopVarPre98 = rhs[0][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                    /*[6, 7, 12, 13, 18]*/
                    r2_imopVarPre99 = rhs[1][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                    /*[6, 7, 12, 13, 18]*/
                    r3_imopVarPre100 = rhs[2][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                    /*[6, 7, 12, 13, 18]*/
                    r4_imopVarPre101 = rhs[3][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                    /*[6, 7, 12, 13, 18]*/
                    r5_imopVarPre102 = rhs[4][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                    /*[6, 7, 12, 13, 18]*/
                    t1_imopVarPre103 = bt * r1_imopVarPre98;
                    /*[6, 7, 12, 13, 18]*/
                    t2_imopVarPre104 = 0.5 * (r4_imopVarPre101 + r5_imopVarPre102);
                    /*[6, 7, 12, 13, 18]*/
                    rhs[0][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = bt * (r4_imopVarPre101 - r5_imopVarPre102);
                    /*[6, 7, 12, 13, 18]*/
                    rhs[1][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = -r3_imopVarPre100;
                    /*[6, 7, 12, 13, 18]*/
                    rhs[2][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = r2_imopVarPre99;
                    /*[6, 7, 12, 13, 18]*/
                    rhs[3][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = -t1_imopVarPre103 + t2_imopVarPre104;
                    /*[6, 7, 12, 13, 18]*/
                    rhs[4][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = t1_imopVarPre103 + t2_imopVarPre104;
                }
            }
        }
        /*[6, 7, 12, 13, 18]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 12, 13, 18]*/
#pragma omp barrier
    }
    /*[6, 7, 13, 18, 21]*/
#pragma omp parallel
    {
    /*[6, 7, 13, 18, 21]*/
        /*[6, 7, 13, 18, 21]*/
        int i;
        /*[6, 7, 13, 18, 21]*/
        int j;
        /*[6, 7, 13, 18, 21]*/
        int k;
        /*[6, 7, 13, 18, 21]*/
        int n;
        /*[6, 7, 13, 18, 21]*/
        int k1;
        /*[6, 7, 13, 18, 21]*/
        int k2;
        /*[6, 7, 13, 18, 21]*/
        int m;
        /*[6, 7, 13, 18, 21]*/
        double fac1;
        /*[6, 7, 13, 18, 21]*/
        double fac2;
        /*[6, 7, 13, 18, 21]*/
        double ru1;
        /*[6, 7, 13, 18, 21]*/
        int i_imopVarPre84;
        /*[6, 7, 13, 18, 21]*/
        int j_imopVarPre85;
        /*[6, 7, 13, 18, 21]*/
        int k_imopVarPre86;
        /*[6, 7, 13, 18, 21]*/
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        /*[6, 7, 13, 18, 21]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
#pragma omp for nowait
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                for (k_imopVarPre86 = 0; k_imopVarPre86 <= grid_points[2] - 1; k_imopVarPre86++) {
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    ru1 = c3c4 * rho_i[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    cv[k_imopVarPre86] = ws[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    int _imopVarPre1971;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    double _imopVarPre1972;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    int _imopVarPre1973;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    double _imopVarPre1974;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    int _imopVarPre1981;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    double _imopVarPre1982;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    int _imopVarPre1983;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    double _imopVarPre1984;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    int _imopVarPre2077;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    double _imopVarPre2078;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    int _imopVarPre2079;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    double _imopVarPre2080;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    int _imopVarPre2087;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    double _imopVarPre2088;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    _imopVarPre1971 = ((dzmax + ru1) > dz1);
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    if (_imopVarPre1971) {
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        _imopVarPre1972 = (dzmax + ru1);
                    } else {
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        _imopVarPre1972 = dz1;
                    }
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    _imopVarPre1973 = ((dz5 + c1c5 * ru1) > _imopVarPre1972);
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    if (_imopVarPre1973) {
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        _imopVarPre1974 = (dz5 + c1c5 * ru1);
                    } else {
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        _imopVarPre1981 = ((dzmax + ru1) > dz1);
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        if (_imopVarPre1981) {
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            _imopVarPre1982 = (dzmax + ru1);
                        } else {
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            _imopVarPre1982 = dz1;
                        }
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        _imopVarPre1974 = _imopVarPre1982;
                    }
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    _imopVarPre1983 = ((dz4 + con43 * ru1) > _imopVarPre1974);
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    if (_imopVarPre1983) {
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        _imopVarPre1984 = (dz4 + con43 * ru1);
                    } else {
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        _imopVarPre2077 = ((dzmax + ru1) > dz1);
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        if (_imopVarPre2077) {
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            _imopVarPre2078 = (dzmax + ru1);
                        } else {
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            _imopVarPre2078 = dz1;
                        }
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        _imopVarPre2079 = ((dz5 + c1c5 * ru1) > _imopVarPre2078);
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        if (_imopVarPre2079) {
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            _imopVarPre2080 = (dz5 + c1c5 * ru1);
                        } else {
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            _imopVarPre2087 = ((dzmax + ru1) > dz1);
                            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            if (_imopVarPre2087) {
                            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                                _imopVarPre2088 = (dzmax + ru1);
                            } else {
                            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                                _imopVarPre2088 = dz1;
                            }
                            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                            _imopVarPre2080 = _imopVarPre2088;
                        }
                        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                        _imopVarPre1984 = _imopVarPre2080;
                    }
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    rhos[k_imopVarPre86] = _imopVarPre1984;
                }
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
#pragma omp barrier
                /*[6, 7, 13, 18, 25, 26, 27]*/
#pragma omp for nowait
                /*[6, 7, 13, 18, 25, 26, 27]*/
                /*[6, 7, 13, 18, 25, 26, 27]*/
                /*[6, 7, 13, 18, 25, 26, 27]*/
                for (k_imopVarPre86 = 1; k_imopVarPre86 <= grid_points[2] - 2; k_imopVarPre86++) {
                /*[6, 7, 13, 18, 25, 26, 27]*/
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = 0.0;
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = -dttz2 * cv[k_imopVarPre86 - 1] - dttz1 * rhos[k_imopVarPre86 - 1];
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = 1.0 + c2dttz1 * rhos[k_imopVarPre86];
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = dttz2 * cv[k_imopVarPre86 + 1] - dttz1 * rhos[k_imopVarPre86 + 1];
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = 0.0;
                }
                /*[6, 7, 13, 18, 25, 26, 27]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[6, 7, 13, 18, 25, 26, 27]*/
#pragma omp barrier
            }
        }
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        k_imopVarPre86 = 1;
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
#pragma omp for nowait
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz5;
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] - comz4;
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz6;
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] - comz4;
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz1;
            }
        }
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
#pragma omp for nowait
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                for (k_imopVarPre86 = 3; k_imopVarPre86 <= grid_points[2] - 4; k_imopVarPre86++) {
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz6;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                    /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                    lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                }
            }
        }
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        k_imopVarPre86 = grid_points[2] - 3;
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
#pragma omp for nowait
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz6;
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz1;
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] - comz4;
                /*[6, 7, 13, 18, 21, 22, 23, 24]*/
                lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz5;
            }
        }
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 13, 18, 21, 22, 23, 24]*/
#pragma omp barrier
        /*[6, 7, 13, 18, 25, 26, 27]*/
#pragma omp for nowait
        /*[6, 7, 13, 18, 25, 26, 27]*/
        /*[6, 7, 13, 18, 25, 26, 27]*/
        /*[6, 7, 13, 18, 25, 26, 27]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[6, 7, 13, 18, 25, 26, 27]*/
            /*[6, 7, 13, 18, 25, 26, 27]*/
            /*[6, 7, 13, 18, 25, 26, 27]*/
            /*[6, 7, 13, 18, 25, 26, 27]*/
            /*[6, 7, 13, 18, 25, 26, 27]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[6, 7, 13, 18, 25, 26, 27]*/
                /*[6, 7, 13, 18, 25, 26, 27]*/
                /*[6, 7, 13, 18, 25, 26, 27]*/
                /*[6, 7, 13, 18, 25, 26, 27]*/
                /*[6, 7, 13, 18, 25, 26, 27]*/
                for (k_imopVarPre86 = 1; k_imopVarPre86 <= grid_points[2] - 2; k_imopVarPre86++) {
                /*[6, 7, 13, 18, 25, 26, 27]*/
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[0 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[1 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 - 1];
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[2 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[3 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1];
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[4 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[0 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[1 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 - 1];
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[2 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[3 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1];
                    /*[6, 7, 13, 18, 25, 26, 27]*/
                    lhs[4 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                }
            }
        }
        /*[6, 7, 13, 18, 25, 26, 27]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 13, 18, 25, 26, 27]*/
#pragma omp barrier
        /*[6, 7, 13, 18, 22, 23, 24]*/
        n = 0;
        /*[6, 7, 13, 18, 22, 23, 24]*/
#pragma omp for nowait
        /*[6, 7, 13, 18, 22, 23, 24]*/
        /*[6, 7, 13, 18, 22, 23, 24]*/
        /*[6, 7, 13, 18, 22, 23, 24]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[6, 7, 13, 18, 22, 23, 24]*/
            /*[6, 7, 13, 18, 22, 23, 24]*/
            /*[6, 7, 13, 18, 22, 23, 24]*/
            /*[6, 7, 13, 18, 22, 23, 24]*/
            /*[6, 7, 13, 18, 22, 23, 24]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[6, 7, 13, 18, 22, 23, 24]*/
                /*[6, 7, 13, 18, 22, 23, 24]*/
                /*[6, 7, 13, 18, 22, 23, 24]*/
                /*[6, 7, 13, 18, 22, 23, 24]*/
                /*[6, 7, 13, 18, 22, 23, 24]*/
                for (k = 0; k <= grid_points[2] - 3; k++) {
                /*[6, 7, 13, 18, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    k1 = k + 1;
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    k2 = k + 2;
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    for (m = 0; m < 3; m++) {
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                        /*[6, 7, 13, 18, 22, 23, 24]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    for (m = 0; m < 3; m++) {
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                        /*[6, 7, 13, 18, 22, 23, 24]*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    }
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                    for (m = 0; m < 3; m++) {
                    /*[6, 7, 13, 18, 22, 23, 24]*/
                        /*[6, 7, 13, 18, 22, 23, 24]*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                    }
                }
            }
        }
        /*[6, 7, 13, 18, 22, 23, 24]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 13, 18, 22, 23, 24]*/
#pragma omp barrier
        /*[6, 7, 13, 18, 26, 27]*/
        k = grid_points[2] - 2;
        /*[6, 7, 13, 18, 26, 27]*/
        k1 = grid_points[2] - 1;
        /*[6, 7, 13, 18, 26, 27]*/
#pragma omp for nowait
        /*[6, 7, 13, 18, 26, 27]*/
        /*[6, 7, 13, 18, 26, 27]*/
        /*[6, 7, 13, 18, 26, 27]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[6, 7, 13, 18, 26, 27]*/
            /*[6, 7, 13, 18, 26, 27]*/
            /*[6, 7, 13, 18, 26, 27]*/
            /*[6, 7, 13, 18, 26, 27]*/
            /*[6, 7, 13, 18, 26, 27]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[6, 7, 13, 18, 26, 27]*/
                /*[6, 7, 13, 18, 26, 27]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*[6, 7, 13, 18, 26, 27]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[6, 7, 13, 18, 26, 27]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[6, 7, 13, 18, 26, 27]*/
                /*[6, 7, 13, 18, 26, 27]*/
                /*[6, 7, 13, 18, 26, 27]*/
                /*[6, 7, 13, 18, 26, 27]*/
                for (m = 0; m < 3; m++) {
                /*[6, 7, 13, 18, 26, 27]*/
                    /*[6, 7, 13, 18, 26, 27]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*[6, 7, 13, 18, 26, 27]*/
                lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                /*[6, 7, 13, 18, 26, 27]*/
                lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                /*[6, 7, 13, 18, 26, 27]*/
                /*[6, 7, 13, 18, 26, 27]*/
                /*[6, 7, 13, 18, 26, 27]*/
                /*[6, 7, 13, 18, 26, 27]*/
                for (m = 0; m < 3; m++) {
                /*[6, 7, 13, 18, 26, 27]*/
                    /*[6, 7, 13, 18, 26, 27]*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                }
                /*[6, 7, 13, 18, 26, 27]*/
                fac2 = 1. / lhs[n + 2][i][j][k1];
                /*[6, 7, 13, 18, 26, 27]*/
                /*[6, 7, 13, 18, 26, 27]*/
                /*[6, 7, 13, 18, 26, 27]*/
                /*[6, 7, 13, 18, 26, 27]*/
                for (m = 0; m < 3; m++) {
                /*[6, 7, 13, 18, 26, 27]*/
                    /*[6, 7, 13, 18, 26, 27]*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
        }
        /*[6, 7, 13, 18, 26, 27]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6, 7, 13, 18, 26, 27]*/
#pragma omp barrier
        /*[6, 7, 13, 18, 23, 24]*/
        /*[6, 7, 13, 18, 23, 24]*/
        /*[6, 7, 13, 18, 24]*/
        /*[6, 7, 13, 18, 23, 24]*/
        for (m = 3; m < 5; m++) {
        /*[6, 7, 13, 18, 23, 24]*/
            /*[6, 7, 13, 18, 23, 24]*/
            n = (m - 3 + 1) * 5;
            /*[6, 7, 13, 18, 23, 24]*/
#pragma omp for nowait
            /*[6, 7, 13, 18, 23, 24]*/
            /*[6, 7, 13, 18, 23, 24]*/
            /*[6, 7, 13, 18, 23, 24]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[6, 7, 13, 18, 23, 24]*/
                /*[6, 7, 13, 18, 23, 24]*/
                /*[6, 7, 13, 18, 23, 24]*/
                /*[6, 7, 13, 18, 23, 24]*/
                /*[6, 7, 13, 18, 23, 24]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7, 13, 18, 23, 24]*/
                    /*[6, 7, 13, 18, 23, 24]*/
                    /*[6, 7, 13, 18, 23, 24]*/
                    /*[6, 7, 13, 18, 23, 24]*/
                    /*[6, 7, 13, 18, 23, 24]*/
                    for (k = 0; k <= grid_points[2] - 3; k++) {
                    /*[6, 7, 13, 18, 23, 24]*/
                        /*[6, 7, 13, 18, 23, 24]*/
                        k1 = k + 1;
                        /*[6, 7, 13, 18, 23, 24]*/
                        k2 = k + 2;
                        /*[6, 7, 13, 18, 23, 24]*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*[6, 7, 13, 18, 23, 24]*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*[6, 7, 13, 18, 23, 24]*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*[6, 7, 13, 18, 23, 24]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*[6, 7, 13, 18, 23, 24]*/
                        lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                        /*[6, 7, 13, 18, 23, 24]*/
                        lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                        /*[6, 7, 13, 18, 23, 24]*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                        /*[6, 7, 13, 18, 23, 24]*/
                        lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                        /*[6, 7, 13, 18, 23, 24]*/
                        lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                        /*[6, 7, 13, 18, 23, 24]*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                    }
                }
            }
            /*[6, 7, 13, 18, 23, 24]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 13, 18, 23, 24]*/
#pragma omp barrier
            /*[6, 7, 13, 18, 27]*/
            k = grid_points[2] - 2;
            /*[6, 7, 13, 18, 27]*/
            k1 = grid_points[2] - 1;
            /*[6, 7, 13, 18, 27]*/
#pragma omp for nowait
            /*[6, 7, 13, 18, 27]*/
            /*[6, 7, 13, 18, 27]*/
            /*[6, 7, 13, 18, 27]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[6, 7, 13, 18, 27]*/
                /*[6, 7, 13, 18, 27]*/
                /*[6, 7, 13, 18, 27]*/
                /*[6, 7, 13, 18, 27]*/
                /*[6, 7, 13, 18, 27]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7, 13, 18, 27]*/
                    /*[6, 7, 13, 18, 27]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[6, 7, 13, 18, 27]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[6, 7, 13, 18, 27]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[6, 7, 13, 18, 27]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*[6, 7, 13, 18, 27]*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*[6, 7, 13, 18, 27]*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*[6, 7, 13, 18, 27]*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    /*[6, 7, 13, 18, 27]*/
                    fac2 = 1. / lhs[n + 2][i][j][k1];
                    /*[6, 7, 13, 18, 27]*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
            /*[6, 7, 13, 18, 27]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 13, 18, 27]*/
#pragma omp barrier
        }
        /*[6, 7, 13, 18, 23, 24]*/
        k = grid_points[2] - 2;
        /*[6, 7, 13, 18, 23, 24]*/
        k1 = grid_points[2] - 1;
        /*[6, 7, 13, 18, 23, 24]*/
        n = 0;
        /*[6, 7, 13, 18, 23, 24]*/
        /*[6, 7, 13, 18, 23, 24, 27]*/
        /*[6, 7, 13, 18, 24, 27]*/
        /*[6, 7, 13, 18, 23, 24]*/
        for (m = 0; m < 3; m++) {
        /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
#pragma omp for nowait
            /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7, 13, 18, 23, 24, 27]*/
                    /*[6, 7, 13, 18, 23, 24, 27]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                }
            }
            /*[6, 7, 13, 18, 23, 24, 27]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 13, 18, 23, 24, 27]*/
#pragma omp barrier
        }
        /*[6, 7, 13, 18, 23, 24, 27]*/
        /*[6, 7, 13, 18, 23, 24, 27]*/
        /*[6, 7, 13, 18, 24, 27]*/
        /*[6, 7, 13, 18, 23, 24, 27]*/
        for (m = 3; m < 5; m++) {
        /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            n = (m - 3 + 1) * 5;
            /*[6, 7, 13, 18, 23, 24, 27]*/
#pragma omp for nowait
            /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7, 13, 18, 23, 24, 27]*/
                    /*[6, 7, 13, 18, 23, 24, 27]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                }
            }
            /*[6, 7, 13, 18, 23, 24, 27]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 13, 18, 23, 24, 27]*/
#pragma omp barrier
        }
        /*[6, 7, 13, 18, 23, 24, 27]*/
        n = 0;
        /*[6, 7, 13, 18, 23, 24, 27]*/
        /*[6, 7, 13, 18, 23, 24, 27]*/
        /*[6, 7, 13, 18, 24, 27]*/
        /*[6, 7, 13, 18, 23, 24, 27]*/
        for (m = 0; m < 3; m++) {
        /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
#pragma omp for nowait
            /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7, 13, 18, 23, 24, 27]*/
                    /*[6, 7, 13, 18, 23, 24, 27]*/
                    /*[6, 7, 13, 18, 23, 24, 27]*/
                    /*[6, 7, 13, 18, 23, 24, 27]*/
                    /*[6, 7, 13, 18, 23, 24, 27]*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                    /*[6, 7, 13, 18, 23, 24, 27]*/
                        /*[6, 7, 13, 18, 23, 24, 27]*/
                        k1 = k + 1;
                        /*[6, 7, 13, 18, 23, 24, 27]*/
                        k2 = k + 2;
                        /*[6, 7, 13, 18, 23, 24, 27]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                    }
                }
            }
            /*[6, 7, 13, 18, 23, 24, 27]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 13, 18, 23, 24, 27]*/
#pragma omp barrier
        }
        /*[6, 7, 13, 18, 23, 24, 27]*/
        /*[6, 7, 13, 18, 23, 24, 27]*/
        /*[6, 7, 13, 18, 24, 27]*/
        /*[6, 7, 13, 18, 23, 24, 27]*/
        for (m = 3; m < 5; m++) {
        /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            n = (m - 3 + 1) * 5;
            /*[6, 7, 13, 18, 23, 24, 27]*/
#pragma omp for nowait
            /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[6, 7, 13, 18, 23, 24, 27]*/
                    /*[6, 7, 13, 18, 23, 24, 27]*/
                    /*[6, 7, 13, 18, 23, 24, 27]*/
                    /*[6, 7, 13, 18, 23, 24, 27]*/
                    /*[6, 7, 13, 18, 23, 24, 27]*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                    /*[6, 7, 13, 18, 23, 24, 27]*/
                        /*[6, 7, 13, 18, 23, 24, 27]*/
                        k1 = k + 1;
                        /*[6, 7, 13, 18, 23, 24, 27]*/
                        k2 = k + 2;
                        /*[6, 7, 13, 18, 23, 24, 27]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                    }
                }
            }
            /*[6, 7, 13, 18, 23, 24, 27]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6, 7, 13, 18, 23, 24, 27]*/
#pragma omp barrier
        }
    }
    /*[6, 7, 13, 18, 23, 24, 27]*/
    tzetar();
    /*[6, 7, 13, 18, 23, 24, 27]*/
    /*[6, 7, 13, 18, 23, 24, 27]*/
    add();
    /*[6, 7, 13, 18, 23, 24, 27]*/
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
        /*[28]*/
#pragma omp parallel
        {
        /*[28]*/
            /*[28]*/
            int _imopVarPre168;
            /*[28]*/
#pragma omp master
            {
            /*[28]*/
                /*[28]*/
                _imopVarPre168 = step % 20 == 0;
                /*[28]*/
                /*[28]*/
                if (!_imopVarPre168) {
                /*[28]*/
                    /*[28]*/
                    _imopVarPre168 = step == 1;
                }
                /*[28]*/
                /*[28]*/
                if (_imopVarPre168) {
                /*[28]*/
                    /*[28]*/
                    printf(" Time step %4d\n", step);
                    /*[28]*/
                }
            }
            /*[28]*/
            int i;
            /*[28]*/
            int j;
            /*[28]*/
            int k;
            /*[28]*/
            int m;
            /*[28]*/
            double aux;
            /*[28]*/
            double rho_inv;
            /*[28]*/
            double uijk;
            /*[28]*/
            double up1;
            /*[28]*/
            double um1;
            /*[28]*/
            double vijk;
            /*[28]*/
            double vp1;
            /*[28]*/
            double vm1;
            /*[28]*/
            double wijk;
            /*[28]*/
            double wp1;
            /*[28]*/
            double wm1;
            /*[28]*/
#pragma omp for nowait
            /*[28]*/
            /*[28]*/
            /*[28]*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
            /*[28]*/
                /*[28]*/
                /*[28]*/
                /*[28]*/
                /*[28]*/
                for (j = 0; j <= grid_points[1] - 1; j++) {
                /*[28]*/
                    /*[28]*/
                    /*[28]*/
                    /*[28]*/
                    /*[28]*/
                    for (k = 0; k <= grid_points[2] - 1; k++) {
                    /*[28]*/
                        /*[28]*/
                        rho_inv = 1.0 / u[0][i][j][k];
                        /*[28]*/
                        rho_i[i][j][k] = rho_inv;
                        /*[28]*/
                        us[i][j][k] = u[1][i][j][k] * rho_inv;
                        /*[28]*/
                        vs[i][j][k] = u[2][i][j][k] * rho_inv;
                        /*[28]*/
                        ws[i][j][k] = u[3][i][j][k] * rho_inv;
                        /*[28]*/
                        square[i][j][k] = 0.5 * (u[1][i][j][k] * u[1][i][j][k] + u[2][i][j][k] * u[2][i][j][k] + u[3][i][j][k] * u[3][i][j][k]) * rho_inv;
                        /*[28]*/
                        qs[i][j][k] = square[i][j][k] * rho_inv;
                        /*[28]*/
                        aux = c1c2 * rho_inv * (u[4][i][j][k] - square[i][j][k]);
                        /*[28]*/
                        aux = sqrt(aux);
                        /*[28]*/
                        /*[28]*/
                        speed[i][j][k] = aux;
                        /*[28]*/
                        ainv[i][j][k] = 1.0 / aux;
                    }
                }
            }
            /*[28]*/
            /*[28, 29, 30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            /*[28]*/
            for (m = 0; m < 5; m++) {
            /*[28, 29, 30, 31, 32, 33, 34]*/
                /*[28, 29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
                /*[28, 29, 30, 31, 32, 33, 34]*/
                /*[28, 29, 30, 31, 32, 33, 34]*/
                /*[28, 29, 30, 31, 32, 33, 34]*/
                for (i = 0; i <= grid_points[0] - 1; i++) {
                /*[28, 29, 30, 31, 32, 33, 34]*/
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                    for (j = 0; j <= grid_points[1] - 1; j++) {
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        for (k = 0; k <= grid_points[2] - 1; k++) {
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                            /*[28, 29, 30, 31, 32, 33, 34]*/
                            rhs[m][i][j][k] = forcing[m][i][j][k];
                        }
                    }
                }
                /*[28, 29, 30, 31, 32, 33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[28, 29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
            }
            /*[28, 29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
            /*[28, 29, 30, 31, 32, 33, 34]*/
            /*[28, 29, 30, 31, 32, 33, 34]*/
            /*[28, 29, 30, 31, 32, 33, 34]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[28, 29, 30, 31, 32, 33, 34]*/
                /*[28, 29, 30, 31, 32, 33, 34]*/
                /*[28, 29, 30, 31, 32, 33, 34]*/
                /*[28, 29, 30, 31, 32, 33, 34]*/
                /*[28, 29, 30, 31, 32, 33, 34]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[28, 29, 30, 31, 32, 33, 34]*/
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[28, 29, 30, 31, 32, 33, 34]*/
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        uijk = us[i][j][k];
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        up1 = us[i + 1][j][k];
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        um1 = us[i - 1][j][k];
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        rhs[0][i][j][k] = rhs[0][i][j][k] + dx1tx1 * (u[0][i + 1][j][k] - 2.0 * u[0][i][j][k] + u[0][i - 1][j][k]) - tx2 * (u[1][i + 1][j][k] - u[1][i - 1][j][k]);
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        rhs[1][i][j][k] = rhs[1][i][j][k] + dx2tx1 * (u[1][i + 1][j][k] - 2.0 * u[1][i][j][k] + u[1][i - 1][j][k]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[1][i + 1][j][k] * up1 - u[1][i - 1][j][k] * um1 + (u[4][i + 1][j][k] - square[i + 1][j][k] - u[4][i - 1][j][k] + square[i - 1][j][k]) * c2);
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        rhs[2][i][j][k] = rhs[2][i][j][k] + dx3tx1 * (u[2][i + 1][j][k] - 2.0 * u[2][i][j][k] + u[2][i - 1][j][k]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[2][i + 1][j][k] * up1 - u[2][i - 1][j][k] * um1);
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        rhs[3][i][j][k] = rhs[3][i][j][k] + dx4tx1 * (u[3][i + 1][j][k] - 2.0 * u[3][i][j][k] + u[3][i - 1][j][k]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[3][i + 1][j][k] * up1 - u[3][i - 1][j][k] * um1);
                        /*[28, 29, 30, 31, 32, 33, 34]*/
                        rhs[4][i][j][k] = rhs[4][i][j][k] + dx5tx1 * (u[4][i + 1][j][k] - 2.0 * u[4][i][j][k] + u[4][i - 1][j][k]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[4][i + 1][j][k] * rho_i[i + 1][j][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i - 1][j][k] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[4][i + 1][j][k] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[4][i - 1][j][k] - c2 * square[i - 1][j][k]) * um1);
                    }
                }
            }
            /*[28, 29, 30, 31, 32, 33, 34]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[28, 29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
            /*[29, 30, 31, 32, 33, 34]*/
            i = 1;
            /*[29, 30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            /*[30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
                /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[29, 30, 31, 32, 33, 34]*/
                        /*[29, 30, 31, 32, 33, 34]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                    }
                }
                /*[29, 30, 31, 32, 33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
            }
            /*[29, 30, 31, 32, 33, 34]*/
            i = 2;
            /*[29, 30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            /*[30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
                /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[29, 30, 31, 32, 33, 34]*/
                        /*[29, 30, 31, 32, 33, 34]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                    }
                }
                /*[29, 30, 31, 32, 33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
            }
            /*[29, 30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            /*[30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
                /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                for (i = 3 * 1; i <= grid_points[0] - 3 * 1 - 1; i++) {
                /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*[29, 30, 31, 32, 33, 34]*/
                        /*[29, 30, 31, 32, 33, 34]*/
                        /*[29, 30, 31, 32, 33, 34]*/
                        /*[29, 30, 31, 32, 33, 34]*/
                        /*[29, 30, 31, 32, 33, 34]*/
                        for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*[29, 30, 31, 32, 33, 34]*/
                            /*[29, 30, 31, 32, 33, 34]*/
                            rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                        }
                    }
                }
                /*[29, 30, 31, 32, 33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
            }
            /*[29, 30, 31, 32, 33, 34]*/
            i = grid_points[0] - 3;
            /*[29, 30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            /*[30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
                /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[29, 30, 31, 32, 33, 34]*/
                        /*[29, 30, 31, 32, 33, 34]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k]);
                    }
                }
                /*[29, 30, 31, 32, 33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
            }
            /*[29, 30, 31, 32, 33, 34]*/
            i = grid_points[0] - 2;
            /*[29, 30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            /*[30, 31, 32, 33, 34]*/
            /*[29, 30, 31, 32, 33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
#pragma omp for nowait
                /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                /*[29, 30, 31, 32, 33, 34]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    /*[29, 30, 31, 32, 33, 34]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[29, 30, 31, 32, 33, 34]*/
                        /*[29, 30, 31, 32, 33, 34]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 5.0 * u[m][i][j][k]);
                    }
                }
                /*[29, 30, 31, 32, 33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[29, 30, 31, 32, 33, 34]*/
#pragma omp barrier
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
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[30, 31, 32, 33, 34]*/
                /*[30, 31, 32, 33, 34]*/
                /*[30, 31, 32, 33, 34]*/
                /*[30, 31, 32, 33, 34]*/
                /*[30, 31, 32, 33, 34]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[30, 31, 32, 33, 34]*/
                    /*[30, 31, 32, 33, 34]*/
                    /*[30, 31, 32, 33, 34]*/
                    /*[30, 31, 32, 33, 34]*/
                    /*[30, 31, 32, 33, 34]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[30, 31, 32, 33, 34]*/
                        /*[30, 31, 32, 33, 34]*/
                        vijk = vs[i][j][k];
                        /*[30, 31, 32, 33, 34]*/
                        vp1 = vs[i][j + 1][k];
                        /*[30, 31, 32, 33, 34]*/
                        vm1 = vs[i][j - 1][k];
                        /*[30, 31, 32, 33, 34]*/
                        rhs[0][i][j][k] = rhs[0][i][j][k] + dy1ty1 * (u[0][i][j + 1][k] - 2.0 * u[0][i][j][k] + u[0][i][j - 1][k]) - ty2 * (u[2][i][j + 1][k] - u[2][i][j - 1][k]);
                        /*[30, 31, 32, 33, 34]*/
                        rhs[1][i][j][k] = rhs[1][i][j][k] + dy2ty1 * (u[1][i][j + 1][k] - 2.0 * u[1][i][j][k] + u[1][i][j - 1][k]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[1][i][j + 1][k] * vp1 - u[1][i][j - 1][k] * vm1);
                        /*[30, 31, 32, 33, 34]*/
                        rhs[2][i][j][k] = rhs[2][i][j][k] + dy3ty1 * (u[2][i][j + 1][k] - 2.0 * u[2][i][j][k] + u[2][i][j - 1][k]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[2][i][j + 1][k] * vp1 - u[2][i][j - 1][k] * vm1 + (u[4][i][j + 1][k] - square[i][j + 1][k] - u[4][i][j - 1][k] + square[i][j - 1][k]) * c2);
                        /*[30, 31, 32, 33, 34]*/
                        rhs[3][i][j][k] = rhs[3][i][j][k] + dy4ty1 * (u[3][i][j + 1][k] - 2.0 * u[3][i][j][k] + u[3][i][j - 1][k]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[3][i][j + 1][k] * vp1 - u[3][i][j - 1][k] * vm1);
                        /*[30, 31, 32, 33, 34]*/
                        rhs[4][i][j][k] = rhs[4][i][j][k] + dy5ty1 * (u[4][i][j + 1][k] - 2.0 * u[4][i][j][k] + u[4][i][j - 1][k]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[4][i][j + 1][k] * rho_i[i][j + 1][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j - 1][k] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[4][i][j + 1][k] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[4][i][j - 1][k] - c2 * square[i][j - 1][k]) * vm1);
                    }
                }
            }
            /*[30, 31, 32, 33, 34]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[30, 31, 32, 33, 34]*/
#pragma omp barrier
            /*[31, 32, 33, 34]*/
            j = 1;
            /*[31, 32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            /*[32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
#pragma omp for nowait
                /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[31, 32, 33, 34]*/
                        /*[31, 32, 33, 34]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                    }
                }
                /*[31, 32, 33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[31, 32, 33, 34]*/
#pragma omp barrier
            }
            /*[31, 32, 33, 34]*/
            j = 2;
            /*[31, 32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            /*[32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
#pragma omp for nowait
                /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[31, 32, 33, 34]*/
                        /*[31, 32, 33, 34]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                    }
                }
                /*[31, 32, 33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[31, 32, 33, 34]*/
#pragma omp barrier
            }
            /*[31, 32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            /*[32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
#pragma omp for nowait
                /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    for (j = 3 * 1; j <= grid_points[1] - 3 * 1 - 1; j++) {
                    /*[31, 32, 33, 34]*/
                        /*[31, 32, 33, 34]*/
                        /*[31, 32, 33, 34]*/
                        /*[31, 32, 33, 34]*/
                        /*[31, 32, 33, 34]*/
                        for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*[31, 32, 33, 34]*/
                            /*[31, 32, 33, 34]*/
                            rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                        }
                    }
                }
                /*[31, 32, 33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[31, 32, 33, 34]*/
#pragma omp barrier
            }
            /*[31, 32, 33, 34]*/
            j = grid_points[1] - 3;
            /*[31, 32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            /*[32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
#pragma omp for nowait
                /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[31, 32, 33, 34]*/
                        /*[31, 32, 33, 34]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k]);
                    }
                }
                /*[31, 32, 33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[31, 32, 33, 34]*/
#pragma omp barrier
            }
            /*[31, 32, 33, 34]*/
            j = grid_points[1] - 2;
            /*[31, 32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            /*[32, 33, 34]*/
            /*[31, 32, 33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
#pragma omp for nowait
                /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
                /*[31, 32, 33, 34]*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    /*[31, 32, 33, 34]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[31, 32, 33, 34]*/
                        /*[31, 32, 33, 34]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 5.0 * u[m][i][j][k]);
                    }
                }
                /*[31, 32, 33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[31, 32, 33, 34]*/
#pragma omp barrier
            }
            /*[31, 32, 33, 34]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[31, 32, 33, 34]*/
#pragma omp barrier
            /*[32, 33, 34]*/
#pragma omp for nowait
            /*[32, 33, 34]*/
            /*[32, 33, 34]*/
            /*[32, 33, 34]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[32, 33, 34]*/
                /*[32, 33, 34]*/
                /*[32, 33, 34]*/
                /*[32, 33, 34]*/
                /*[32, 33, 34]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[32, 33, 34]*/
                    /*[32, 33, 34]*/
                    /*[32, 33, 34]*/
                    /*[32, 33, 34]*/
                    /*[32, 33, 34]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[32, 33, 34]*/
                        /*[32, 33, 34]*/
                        wijk = ws[i][j][k];
                        /*[32, 33, 34]*/
                        wp1 = ws[i][j][k + 1];
                        /*[32, 33, 34]*/
                        wm1 = ws[i][j][k - 1];
                        /*[32, 33, 34]*/
                        rhs[0][i][j][k] = rhs[0][i][j][k] + dz1tz1 * (u[0][i][j][k + 1] - 2.0 * u[0][i][j][k] + u[0][i][j][k - 1]) - tz2 * (u[3][i][j][k + 1] - u[3][i][j][k - 1]);
                        /*[32, 33, 34]*/
                        rhs[1][i][j][k] = rhs[1][i][j][k] + dz2tz1 * (u[1][i][j][k + 1] - 2.0 * u[1][i][j][k] + u[1][i][j][k - 1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[1][i][j][k + 1] * wp1 - u[1][i][j][k - 1] * wm1);
                        /*[32, 33, 34]*/
                        rhs[2][i][j][k] = rhs[2][i][j][k] + dz3tz1 * (u[2][i][j][k + 1] - 2.0 * u[2][i][j][k] + u[2][i][j][k - 1]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[2][i][j][k + 1] * wp1 - u[2][i][j][k - 1] * wm1);
                        /*[32, 33, 34]*/
                        rhs[3][i][j][k] = rhs[3][i][j][k] + dz4tz1 * (u[3][i][j][k + 1] - 2.0 * u[3][i][j][k] + u[3][i][j][k - 1]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[3][i][j][k + 1] * wp1 - u[3][i][j][k - 1] * wm1 + (u[4][i][j][k + 1] - square[i][j][k + 1] - u[4][i][j][k - 1] + square[i][j][k - 1]) * c2);
                        /*[32, 33, 34]*/
                        rhs[4][i][j][k] = rhs[4][i][j][k] + dz5tz1 * (u[4][i][j][k + 1] - 2.0 * u[4][i][j][k] + u[4][i][j][k - 1]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[4][i][j][k + 1] * rho_i[i][j][k + 1] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j][k - 1] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[4][i][j][k + 1] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[4][i][j][k - 1] - c2 * square[i][j][k - 1]) * wm1);
                    }
                }
            }
            /*[32, 33, 34]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[32, 33, 34]*/
#pragma omp barrier
            /*[33, 34]*/
            k = 1;
            /*[33, 34]*/
            /*[33, 34]*/
            /*[34]*/
            /*[33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[33, 34]*/
                /*[33, 34]*/
#pragma omp for nowait
                /*[33, 34]*/
                /*[33, 34]*/
                /*[33, 34]*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*[33, 34]*/
                        /*[33, 34]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                    }
                }
                /*[33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[33, 34]*/
#pragma omp barrier
            }
            /*[33, 34]*/
            k = 2;
            /*[33, 34]*/
            /*[33, 34]*/
            /*[34]*/
            /*[33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[33, 34]*/
                /*[33, 34]*/
#pragma omp for nowait
                /*[33, 34]*/
                /*[33, 34]*/
                /*[33, 34]*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*[33, 34]*/
                        /*[33, 34]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                    }
                }
                /*[33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[33, 34]*/
#pragma omp barrier
            }
            /*[33, 34]*/
            /*[33, 34]*/
            /*[34]*/
            /*[33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[33, 34]*/
                /*[33, 34]*/
#pragma omp for nowait
                /*[33, 34]*/
                /*[33, 34]*/
                /*[33, 34]*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*[33, 34]*/
                        /*[33, 34]*/
                        /*[33, 34]*/
                        /*[33, 34]*/
                        /*[33, 34]*/
                        for (k = 3 * 1; k <= grid_points[2] - 3 * 1 - 1; k++) {
                        /*[33, 34]*/
                            /*[33, 34]*/
                            rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                        }
                    }
                }
                /*[33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[33, 34]*/
#pragma omp barrier
            }
            /*[33, 34]*/
            k = grid_points[2] - 3;
            /*[33, 34]*/
            /*[33, 34]*/
            /*[34]*/
            /*[33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[33, 34]*/
                /*[33, 34]*/
#pragma omp for nowait
                /*[33, 34]*/
                /*[33, 34]*/
                /*[33, 34]*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*[33, 34]*/
                        /*[33, 34]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1]);
                    }
                }
                /*[33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[33, 34]*/
#pragma omp barrier
            }
            /*[33, 34]*/
            k = grid_points[2] - 2;
            /*[33, 34]*/
            /*[33, 34]*/
            /*[34]*/
            /*[33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[33, 34]*/
                /*[33, 34]*/
#pragma omp for nowait
                /*[33, 34]*/
                /*[33, 34]*/
                /*[33, 34]*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*[33, 34]*/
                        /*[33, 34]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 5.0 * u[m][i][j][k]);
                    }
                }
                /*[33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[33, 34]*/
#pragma omp barrier
            }
            /*[33, 34]*/
            /*[33, 34]*/
            /*[34]*/
            /*[33, 34]*/
            for (m = 0; m < 5; m++) {
            /*[33, 34]*/
                /*[33, 34]*/
#pragma omp for nowait
                /*[33, 34]*/
                /*[33, 34]*/
                /*[33, 34]*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    /*[33, 34]*/
                    for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*[33, 34]*/
                        /*[33, 34]*/
                        /*[33, 34]*/
                        /*[33, 34]*/
                        /*[33, 34]*/
                        for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*[33, 34]*/
                            /*[33, 34]*/
                            rhs[m][i][j][k] = rhs[m][i][j][k] * dt;
                        }
                    }
                }
                /*[33, 34]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[33, 34]*/
#pragma omp barrier
            }
        }
        /*[]*/
        txinvr();
        /*[]*/
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
            int n;
            /*[35]*/
            int i1;
            /*[35]*/
            int i2;
            /*[35]*/
            int m;
            /*[35]*/
            double fac1;
            /*[35]*/
            double fac2;
            /*[35]*/
            double ru1;
            /*[35]*/
            int i_imopVarPre0;
            /*[35]*/
            int j_imopVarPre1;
            /*[35]*/
            int k_imopVarPre2;
            /*[35]*/
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            /*[35]*/
            for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
#pragma omp for nowait
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    for (i_imopVarPre0 = 0; i_imopVarPre0 <= grid_points[0] - 1; i_imopVarPre0++) {
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        ru1 = c3c4 * rho_i[i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        cv[i_imopVarPre0] = us[i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        int _imopVarPre715;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        double _imopVarPre716;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        int _imopVarPre717;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        double _imopVarPre718;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        int _imopVarPre725;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        double _imopVarPre726;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        int _imopVarPre727;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        double _imopVarPre728;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        int _imopVarPre821;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        double _imopVarPre822;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        int _imopVarPre823;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        double _imopVarPre824;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        int _imopVarPre831;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        double _imopVarPre832;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        _imopVarPre715 = ((dxmax + ru1) > dx1);
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        if (_imopVarPre715) {
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            _imopVarPre716 = (dxmax + ru1);
                        } else {
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            _imopVarPre716 = dx1;
                        }
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        _imopVarPre717 = ((dx5 + c1c5 * ru1) > _imopVarPre716);
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        if (_imopVarPre717) {
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            _imopVarPre718 = (dx5 + c1c5 * ru1);
                        } else {
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            _imopVarPre725 = ((dxmax + ru1) > dx1);
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            if (_imopVarPre725) {
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                _imopVarPre726 = (dxmax + ru1);
                            } else {
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                _imopVarPre726 = dx1;
                            }
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            _imopVarPre718 = _imopVarPre726;
                        }
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        _imopVarPre727 = ((dx2 + con43 * ru1) > _imopVarPre718);
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        if (_imopVarPre727) {
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            _imopVarPre728 = (dx2 + con43 * ru1);
                        } else {
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            _imopVarPre821 = ((dxmax + ru1) > dx1);
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            if (_imopVarPre821) {
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                _imopVarPre822 = (dxmax + ru1);
                            } else {
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                _imopVarPre822 = dx1;
                            }
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            _imopVarPre823 = ((dx5 + c1c5 * ru1) > _imopVarPre822);
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            if (_imopVarPre823) {
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                _imopVarPre824 = (dx5 + c1c5 * ru1);
                            } else {
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                _imopVarPre831 = ((dxmax + ru1) > dx1);
                                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                if (_imopVarPre831) {
                                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                    _imopVarPre832 = (dxmax + ru1);
                                } else {
                                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                    _imopVarPre832 = dx1;
                                }
                                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                                _imopVarPre824 = _imopVarPre832;
                            }
                            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                            _imopVarPre728 = _imopVarPre824;
                        }
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        rhon[i_imopVarPre0] = _imopVarPre728;
                    }
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
#pragma omp barrier
                    /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
#pragma omp for nowait
                    /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                    /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                    /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                    for (i_imopVarPre0 = 1; i_imopVarPre0 <= grid_points[0] - 2; i_imopVarPre0++) {
                    /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = 0.0;
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = -dttx2 * cv[i_imopVarPre0 - 1] - dttx1 * rhon[i_imopVarPre0 - 1];
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = 1.0 + c2dttx1 * rhon[i_imopVarPre0];
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = dttx2 * cv[i_imopVarPre0 + 1] - dttx1 * rhon[i_imopVarPre0 + 1];
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = 0.0;
                    }
                    /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
#pragma omp barrier
                }
            }
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            i_imopVarPre0 = 1;
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
#pragma omp for nowait
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz5;
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] - comz4;
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz6;
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[3][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] - comz4;
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[4][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz1;
                }
            }
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
#pragma omp for nowait
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            for (i_imopVarPre0 = 3; i_imopVarPre0 <= grid_points[0] - 4; i_imopVarPre0++) {
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz6;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                        /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                        lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
                    }
                }
            }
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            i_imopVarPre0 = grid_points[0] - 3;
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
#pragma omp for nowait
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
                /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz6;
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[0][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz1;
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] - comz4;
                    /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
                    lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz5;
                }
            }
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[35, 36, 37, 38, 39, 40, 41, 42, 43, 44]*/
#pragma omp barrier
            /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
#pragma omp for nowait
            /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
            /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
            /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
            for (i_imopVarPre0 = 1; i_imopVarPre0 <= grid_points[0] - 2; i_imopVarPre0++) {
            /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
                /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                    /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                    /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                    /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                    /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                    for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
                    /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[0 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[1 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - dttx2 * speed[i_imopVarPre0 - 1][j_imopVarPre1][k_imopVarPre2];
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[2 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[3 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + dttx2 * speed[i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2];
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[4 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[0 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[1 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + dttx2 * speed[i_imopVarPre0 - 1][j_imopVarPre1][k_imopVarPre2];
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[2 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[3 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - dttx2 * speed[i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2];
                        /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
                        lhs[4 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    }
                }
            }
            /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[45, 46, 47, 48, 49, 50, 51, 52, 53, 54]*/
#pragma omp barrier
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            n = 0;
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44]*/
            for (i = 0; i <= grid_points[0] - 3; i++) {
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                i1 = i + 1;
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                i2 = i + 2;
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp for nowait
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        for (m = 0; m < 3; m++) {
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        }
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        for (m = 0; m < 3; m++) {
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                        }
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        for (m = 0; m < 3; m++) {
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                        }
                    }
                }
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp barrier
            }
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            i = grid_points[0] - 2;
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            i1 = grid_points[0] - 1;
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp for nowait
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    fac1 = 1.0 / lhs[n + 2][i][j][k];
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    for (m = 0; m < 3; m++) {
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    for (m = 0; m < 3; m++) {
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                    }
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    fac2 = 1. / lhs[n + 2][i1][j][k];
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    for (m = 0; m < 3; m++) {
                    /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
                    }
                }
            }
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp barrier
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            for (m = 3; m < 5; m++) {
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                n = (m - 3 + 1) * 5;
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                for (i = 0; i <= grid_points[0] - 3; i++) {
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    i1 = i + 1;
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    i2 = i + 2;
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp for nowait
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            fac1 = 1. / lhs[n + 2][i][j][k];
                            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                        }
                    }
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp barrier
                }
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                i = grid_points[0] - 2;
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                i1 = grid_points[0] - 1;
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp for nowait
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        fac2 = 1. / lhs[n + 2][i1][j][k];
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
                    }
                }
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp barrier
            }
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            i = grid_points[0] - 2;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            i1 = grid_points[0] - 1;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            n = 0;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            for (m = 0; m < 3; m++) {
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp for nowait
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
                    }
                }
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp barrier
            }
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            for (m = 3; m < 5; m++) {
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp for nowait
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        n = (m - 3 + 1) * 5;
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
                    }
                }
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp barrier
            }
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            n = 0;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            for (i = grid_points[0] - 3; i >= 0; i--) {
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                i1 = i + 1;
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                i2 = i + 2;
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp for nowait
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                for (m = 0; m < 3; m++) {
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                        }
                    }
                }
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp barrier
            }
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            for (m = 3; m < 5; m++) {
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                n = (m - 3 + 1) * 5;
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                for (i = grid_points[0] - 3; i >= 0; i--) {
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    i1 = i + 1;
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    i2 = i + 2;
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp for nowait
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                        for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                            rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                        }
                    }
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp barrier
                }
            }
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54]*/
#pragma omp barrier
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            int i_imopVarPre78;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            int j_imopVarPre79;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            int k_imopVarPre80;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            double r1;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            double r2;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            double r3;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            double r4;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            double r5;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            double t1;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            double t2;
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
#pragma omp for nowait
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            for (i_imopVarPre78 = 1; i_imopVarPre78 <= grid_points[0] - 2; i_imopVarPre78++) {
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                for (j_imopVarPre79 = 1; j_imopVarPre79 <= grid_points[1] - 2; j_imopVarPre79++) {
                /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                    for (k_imopVarPre80 = 1; k_imopVarPre80 <= grid_points[2] - 2; k_imopVarPre80++) {
                    /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                        r1 = rhs[0][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                        r2 = rhs[1][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                        r3 = rhs[2][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                        r4 = rhs[3][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                        r5 = rhs[4][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                        t1 = bt * r3;
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                        t2 = 0.5 * (r4 + r5);
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                        rhs[0][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = -r2;
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                        rhs[1][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = r1;
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                        rhs[2][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = bt * (r4 - r5);
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                        rhs[3][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = -t1 + t2;
                        /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
                        rhs[4][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = t1 + t2;
                    }
                }
            }
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
#pragma omp barrier
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 51, 52, 53, 54]*/
#pragma omp barrier
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            int i_imopVarPre90;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            int j_imopVarPre91;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            int k_imopVarPre92;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            int n_imopVarPre93;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            int j1;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            int j2;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            int m_imopVarPre94;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            double fac1_imopVarPre95;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            double fac2_imopVarPre96;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            double ru1_imopVarPre97;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            int i_imopVarPre81;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            int j_imopVarPre82;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            int k_imopVarPre83;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
#pragma omp for nowait
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    for (j_imopVarPre82 = 0; j_imopVarPre82 <= grid_points[1] - 1; j_imopVarPre82++) {
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        ru1_imopVarPre97 = c3c4 * rho_i[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        cv[j_imopVarPre82] = vs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        int _imopVarPre1343;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        double _imopVarPre1344;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        int _imopVarPre1345;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        double _imopVarPre1346;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        int _imopVarPre1353;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        double _imopVarPre1354;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        int _imopVarPre1355;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        double _imopVarPre1356;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        int _imopVarPre1449;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        double _imopVarPre1450;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        int _imopVarPre1451;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        double _imopVarPre1452;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        int _imopVarPre1459;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        double _imopVarPre1460;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        _imopVarPre1343 = ((dymax + ru1_imopVarPre97) > dy1);
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        if (_imopVarPre1343) {
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            _imopVarPre1344 = (dymax + ru1_imopVarPre97);
                        } else {
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            _imopVarPre1344 = dy1;
                        }
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        _imopVarPre1345 = ((dy5 + c1c5 * ru1_imopVarPre97) > _imopVarPre1344);
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        if (_imopVarPre1345) {
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            _imopVarPre1346 = (dy5 + c1c5 * ru1_imopVarPre97);
                        } else {
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            _imopVarPre1353 = ((dymax + ru1_imopVarPre97) > dy1);
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            if (_imopVarPre1353) {
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                _imopVarPre1354 = (dymax + ru1_imopVarPre97);
                            } else {
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                _imopVarPre1354 = dy1;
                            }
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            _imopVarPre1346 = _imopVarPre1354;
                        }
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        _imopVarPre1355 = ((dy3 + con43 * ru1_imopVarPre97) > _imopVarPre1346);
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        if (_imopVarPre1355) {
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            _imopVarPre1356 = (dy3 + con43 * ru1_imopVarPre97);
                        } else {
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            _imopVarPre1449 = ((dymax + ru1_imopVarPre97) > dy1);
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            if (_imopVarPre1449) {
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                _imopVarPre1450 = (dymax + ru1_imopVarPre97);
                            } else {
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                _imopVarPre1450 = dy1;
                            }
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            _imopVarPre1451 = ((dy5 + c1c5 * ru1_imopVarPre97) > _imopVarPre1450);
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            if (_imopVarPre1451) {
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                _imopVarPre1452 = (dy5 + c1c5 * ru1_imopVarPre97);
                            } else {
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                _imopVarPre1459 = ((dymax + ru1_imopVarPre97) > dy1);
                                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                if (_imopVarPre1459) {
                                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                    _imopVarPre1460 = (dymax + ru1_imopVarPre97);
                                } else {
                                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                    _imopVarPre1460 = dy1;
                                }
                                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                                _imopVarPre1452 = _imopVarPre1460;
                            }
                            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                            _imopVarPre1356 = _imopVarPre1452;
                        }
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        rhoq[j_imopVarPre82] = _imopVarPre1356;
                    }
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
#pragma omp barrier
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
#pragma omp for nowait
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    for (j_imopVarPre82 = 1; j_imopVarPre82 <= grid_points[1] - 2; j_imopVarPre82++) {
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = 0.0;
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = -dtty2 * cv[j_imopVarPre82 - 1] - dtty1 * rhoq[j_imopVarPre82 - 1];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = 1.0 + c2dtty1 * rhoq[j_imopVarPre82];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = dtty2 * cv[j_imopVarPre82 + 1] - dtty1 * rhoq[j_imopVarPre82 + 1];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = 0.0;
                    }
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
#pragma omp barrier
                }
            }
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            j_imopVarPre82 = 1;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
#pragma omp for nowait
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz5;
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] - comz4;
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz6;
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[3][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] - comz4;
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[4][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz1;
                }
            }
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
#pragma omp for nowait
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                for (j_imopVarPre82 = 3; j_imopVarPre82 <= grid_points[1] - 4; j_imopVarPre82++) {
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz6;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                        /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
                    }
                }
            }
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            j_imopVarPre82 = grid_points[1] - 3;
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
#pragma omp for nowait
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
                /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz6;
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[0][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz1;
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] - comz4;
                    /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz5;
                }
            }
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[36, 37, 38, 41, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
#pragma omp barrier
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
#pragma omp for nowait
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                for (j_imopVarPre82 = 1; j_imopVarPre82 <= grid_points[1] - 2; j_imopVarPre82++) {
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                    for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[0 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[1 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - dtty2 * speed[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[2 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[3 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + dtty2 * speed[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[4 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[0 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[1 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + dtty2 * speed[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[2 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[3 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - dtty2 * speed[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
                        lhs[4 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    }
                }
            }
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 52, 53, 54]*/
#pragma omp barrier
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
            n_imopVarPre93 = 0;
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
            for (j_imopVarPre91 = 0; j_imopVarPre91 <= grid_points[1] - 3; j_imopVarPre91++) {
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                j1 = j_imopVarPre91 + 1;
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                j2 = j_imopVarPre91 + 2;
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp for nowait
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        fac1_imopVarPre95 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        }
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        }
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        lhs[n_imopVarPre93 + 1][i_imopVarPre90][j2][k_imopVarPre92] = lhs[n_imopVarPre93 + 1][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        lhs[n_imopVarPre93 + 2][i_imopVarPre90][j2][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        }
                    }
                }
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp barrier
            }
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
            j_imopVarPre91 = grid_points[1] - 2;
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
            j1 = grid_points[1] - 1;
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp for nowait
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
            for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    fac1_imopVarPre95 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    }
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    }
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    fac2_imopVarPre96 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92];
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                    /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = fac2_imopVarPre96 * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92];
                    }
                }
            }
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[36, 37, 38, 42, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp barrier
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            for (m_imopVarPre94 = 3; m_imopVarPre94 < 5; m_imopVarPre94++) {
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                n_imopVarPre93 = (m_imopVarPre94 - 3 + 1) * 5;
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                for (j_imopVarPre91 = 0; j_imopVarPre91 <= grid_points[1] - 3; j_imopVarPre91++) {
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    j1 = j_imopVarPre91 + 1;
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    j2 = j_imopVarPre91 + 2;
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp for nowait
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            fac1_imopVarPre95 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            lhs[n_imopVarPre93 + 1][i_imopVarPre90][j2][k_imopVarPre92] = lhs[n_imopVarPre93 + 1][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            lhs[n_imopVarPre93 + 2][i_imopVarPre90][j2][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        }
                    }
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp barrier
                }
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                j_imopVarPre91 = grid_points[1] - 2;
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                j1 = grid_points[1] - 1;
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp for nowait
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        fac1_imopVarPre95 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        fac2_imopVarPre96 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92];
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = fac2_imopVarPre96 * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92];
                    }
                }
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp barrier
            }
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            j_imopVarPre91 = grid_points[1] - 2;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            j1 = grid_points[1] - 1;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            n_imopVarPre93 = 0;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp for nowait
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] - lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92];
                    }
                }
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp barrier
            }
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            for (m_imopVarPre94 = 3; m_imopVarPre94 < 5; m_imopVarPre94++) {
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp for nowait
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        n_imopVarPre93 = (m_imopVarPre94 - 3 + 1) * 5;
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] - lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92];
                    }
                }
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp barrier
            }
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            n_imopVarPre93 = 0;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                for (j_imopVarPre91 = grid_points[1] - 3; j_imopVarPre91 >= 0; j_imopVarPre91--) {
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    j1 = j_imopVarPre91 + 1;
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    j2 = j_imopVarPre91 + 2;
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp for nowait
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] - lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92];
                        }
                    }
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp barrier
                }
            }
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            for (m_imopVarPre94 = 3; m_imopVarPre94 < 5; m_imopVarPre94++) {
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                n_imopVarPre93 = (m_imopVarPre94 - 3 + 1) * 5;
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                for (j_imopVarPre91 = grid_points[1] - 3; j_imopVarPre91 >= 0; j_imopVarPre91--) {
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    j1 = j_imopVarPre91 + 1;
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    j2 = j1 + 1;
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp for nowait
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                        for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                            rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] - lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92];
                        }
                    }
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp barrier
                }
            }
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 53, 54]*/
#pragma omp barrier
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            int i_imopVarPre87;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            int j_imopVarPre88;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            int k_imopVarPre89;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            double r1_imopVarPre98;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            double r2_imopVarPre99;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            double r3_imopVarPre100;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            double r4_imopVarPre101;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            double r5_imopVarPre102;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            double t1_imopVarPre103;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            double t2_imopVarPre104;
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
#pragma omp for nowait
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            for (i_imopVarPre87 = 1; i_imopVarPre87 <= grid_points[0] - 2; i_imopVarPre87++) {
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                for (j_imopVarPre88 = 1; j_imopVarPre88 <= grid_points[1] - 2; j_imopVarPre88++) {
                /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                    for (k_imopVarPre89 = 1; k_imopVarPre89 <= grid_points[2] - 2; k_imopVarPre89++) {
                    /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                        r1_imopVarPre98 = rhs[0][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                        r2_imopVarPre99 = rhs[1][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                        r3_imopVarPre100 = rhs[2][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                        r4_imopVarPre101 = rhs[3][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                        r5_imopVarPre102 = rhs[4][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                        t1_imopVarPre103 = bt * r1_imopVarPre98;
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                        t2_imopVarPre104 = 0.5 * (r4_imopVarPre101 + r5_imopVarPre102);
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                        rhs[0][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = bt * (r4_imopVarPre101 - r5_imopVarPre102);
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                        rhs[1][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = -r3_imopVarPre100;
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                        rhs[2][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = r2_imopVarPre99;
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                        rhs[3][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = -t1_imopVarPre103 + t2_imopVarPre104;
                        /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
                        rhs[4][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = t1_imopVarPre103 + t2_imopVarPre104;
                    }
                }
            }
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[36, 37, 38, 43, 44, 45, 46, 47, 49, 54]*/
#pragma omp barrier
            /*[36, 37, 38, 44, 45, 46, 47, 49, 54]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[36, 37, 38, 44, 45, 46, 47, 49, 54]*/
#pragma omp barrier
            {
            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                int i;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                int j;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                int k;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                int n;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                int k1;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                int k2;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                int m;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                double fac1;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                double fac2;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                double ru1;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                int i_imopVarPre84;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                int j_imopVarPre85;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                int k_imopVarPre86;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
#pragma omp for nowait
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        for (k_imopVarPre86 = 0; k_imopVarPre86 <= grid_points[2] - 1; k_imopVarPre86++) {
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            ru1 = c3c4 * rho_i[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            cv[k_imopVarPre86] = ws[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            int _imopVarPre1971;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            double _imopVarPre1972;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            int _imopVarPre1973;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            double _imopVarPre1974;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            int _imopVarPre1981;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            double _imopVarPre1982;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            int _imopVarPre1983;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            double _imopVarPre1984;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            int _imopVarPre2077;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            double _imopVarPre2078;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            int _imopVarPre2079;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            double _imopVarPre2080;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            int _imopVarPre2087;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            double _imopVarPre2088;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            _imopVarPre1971 = ((dzmax + ru1) > dz1);
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            if (_imopVarPre1971) {
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                _imopVarPre1972 = (dzmax + ru1);
                            } else {
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                _imopVarPre1972 = dz1;
                            }
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            _imopVarPre1973 = ((dz5 + c1c5 * ru1) > _imopVarPre1972);
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            if (_imopVarPre1973) {
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                _imopVarPre1974 = (dz5 + c1c5 * ru1);
                            } else {
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                _imopVarPre1981 = ((dzmax + ru1) > dz1);
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                if (_imopVarPre1981) {
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    _imopVarPre1982 = (dzmax + ru1);
                                } else {
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    _imopVarPre1982 = dz1;
                                }
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                _imopVarPre1974 = _imopVarPre1982;
                            }
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            _imopVarPre1983 = ((dz4 + con43 * ru1) > _imopVarPre1974);
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            if (_imopVarPre1983) {
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                _imopVarPre1984 = (dz4 + con43 * ru1);
                            } else {
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                _imopVarPre2077 = ((dzmax + ru1) > dz1);
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                if (_imopVarPre2077) {
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    _imopVarPre2078 = (dzmax + ru1);
                                } else {
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    _imopVarPre2078 = dz1;
                                }
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                _imopVarPre2079 = ((dz5 + c1c5 * ru1) > _imopVarPre2078);
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                if (_imopVarPre2079) {
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    _imopVarPre2080 = (dz5 + c1c5 * ru1);
                                } else {
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    _imopVarPre2087 = ((dzmax + ru1) > dz1);
                                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    if (_imopVarPre2087) {
                                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                        _imopVarPre2088 = (dzmax + ru1);
                                    } else {
                                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                        _imopVarPre2088 = dz1;
                                    }
                                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                    _imopVarPre2080 = _imopVarPre2088;
                                }
                                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                                _imopVarPre1984 = _imopVarPre2080;
                            }
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            rhos[k_imopVarPre86] = _imopVarPre1984;
                        }
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        // #pragma omp dummyFlush BARRIER_START
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
#pragma omp barrier
                        /*[36, 37, 38, 45, 46, 47, 49]*/
#pragma omp for nowait
                        /*[36, 37, 38, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 45, 46, 47, 49]*/
                        for (k_imopVarPre86 = 1; k_imopVarPre86 <= grid_points[2] - 2; k_imopVarPre86++) {
                        /*[36, 37, 38, 45, 46, 47, 49]*/
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = 0.0;
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = -dttz2 * cv[k_imopVarPre86 - 1] - dttz1 * rhos[k_imopVarPre86 - 1];
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = 1.0 + c2dttz1 * rhos[k_imopVarPre86];
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = dttz2 * cv[k_imopVarPre86 + 1] - dttz1 * rhos[k_imopVarPre86 + 1];
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = 0.0;
                        }
                        /*[36, 37, 38, 45, 46, 47, 49]*/
                        // #pragma omp dummyFlush BARRIER_START
                        /*[36, 37, 38, 45, 46, 47, 49]*/
#pragma omp barrier
                    }
                }
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                k_imopVarPre86 = 1;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
#pragma omp for nowait
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz5;
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] - comz4;
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz6;
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] - comz4;
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz1;
                    }
                }
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
#pragma omp for nowait
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        for (k_imopVarPre86 = 3; k_imopVarPre86 <= grid_points[2] - 4; k_imopVarPre86++) {
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz6;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                            /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                            lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                        }
                    }
                }
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                k_imopVarPre86 = grid_points[2] - 3;
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
#pragma omp for nowait
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                    for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
                    /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz6;
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz1;
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] - comz4;
                        /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                        lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz5;
                    }
                }
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[36, 37, 38, 44, 45, 46, 47, 49]*/
#pragma omp barrier
                /*[36, 37, 38, 45, 46, 47, 49]*/
#pragma omp for nowait
                /*[36, 37, 38, 45, 46, 47, 49]*/
                /*[36, 37, 38, 45, 46, 47, 49]*/
                /*[36, 37, 38, 45, 46, 47, 49]*/
                for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
                /*[36, 37, 38, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 45, 46, 47, 49]*/
                    /*[36, 37, 38, 45, 46, 47, 49]*/
                    for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
                    /*[36, 37, 38, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 45, 46, 47, 49]*/
                        /*[36, 37, 38, 45, 46, 47, 49]*/
                        for (k_imopVarPre86 = 1; k_imopVarPre86 <= grid_points[2] - 2; k_imopVarPre86++) {
                        /*[36, 37, 38, 45, 46, 47, 49]*/
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[0 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[1 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 - 1];
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[2 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[3 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1];
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[4 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[0 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[1 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 - 1];
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[2 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[3 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1];
                            /*[36, 37, 38, 45, 46, 47, 49]*/
                            lhs[4 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                        }
                    }
                }
                /*[36, 37, 38, 45, 46, 47, 49]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[36, 37, 38, 45, 46, 47, 49]*/
#pragma omp barrier
                /*[36, 37, 38, 46, 47, 49]*/
                n = 0;
                /*[36, 37, 38, 46, 47, 49]*/
#pragma omp for nowait
                /*[36, 37, 38, 46, 47, 49]*/
                /*[36, 37, 38, 46, 47, 49]*/
                /*[36, 37, 38, 46, 47, 49]*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*[36, 37, 38, 46, 47, 49]*/
                    /*[36, 37, 38, 46, 47, 49]*/
                    /*[36, 37, 38, 46, 47, 49]*/
                    /*[36, 37, 38, 46, 47, 49]*/
                    /*[36, 37, 38, 46, 47, 49]*/
                    for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*[36, 37, 38, 46, 47, 49]*/
                        /*[36, 37, 38, 46, 47, 49]*/
                        /*[36, 37, 38, 46, 47, 49]*/
                        /*[36, 37, 38, 46, 47, 49]*/
                        /*[36, 37, 38, 46, 47, 49]*/
                        for (k = 0; k <= grid_points[2] - 3; k++) {
                        /*[36, 37, 38, 46, 47, 49]*/
                            /*[36, 37, 38, 46, 47, 49]*/
                            k1 = k + 1;
                            /*[36, 37, 38, 46, 47, 49]*/
                            k2 = k + 2;
                            /*[36, 37, 38, 46, 47, 49]*/
                            fac1 = 1. / lhs[n + 2][i][j][k];
                            /*[36, 37, 38, 46, 47, 49]*/
                            lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                            /*[36, 37, 38, 46, 47, 49]*/
                            lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                            /*[36, 37, 38, 46, 47, 49]*/
                            /*[36, 37, 38, 46, 47, 49]*/
                            /*[36, 37, 38, 46, 47, 49]*/
                            /*[36, 37, 38, 46, 47, 49]*/
                            for (m = 0; m < 3; m++) {
                            /*[36, 37, 38, 46, 47, 49]*/
                                /*[36, 37, 38, 46, 47, 49]*/
                                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                            }
                            /*[36, 37, 38, 46, 47, 49]*/
                            lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                            /*[36, 37, 38, 46, 47, 49]*/
                            lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                            /*[36, 37, 38, 46, 47, 49]*/
                            /*[36, 37, 38, 46, 47, 49]*/
                            /*[36, 37, 38, 46, 47, 49]*/
                            /*[36, 37, 38, 46, 47, 49]*/
                            for (m = 0; m < 3; m++) {
                            /*[36, 37, 38, 46, 47, 49]*/
                                /*[36, 37, 38, 46, 47, 49]*/
                                rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                            }
                            /*[36, 37, 38, 46, 47, 49]*/
                            lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                            /*[36, 37, 38, 46, 47, 49]*/
                            lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                            /*[36, 37, 38, 46, 47, 49]*/
                            /*[36, 37, 38, 46, 47, 49]*/
                            /*[36, 37, 38, 46, 47, 49]*/
                            /*[36, 37, 38, 46, 47, 49]*/
                            for (m = 0; m < 3; m++) {
                            /*[36, 37, 38, 46, 47, 49]*/
                                /*[36, 37, 38, 46, 47, 49]*/
                                rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                            }
                        }
                    }
                }
                /*[36, 37, 38, 46, 47, 49]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[36, 37, 38, 46, 47, 49]*/
#pragma omp barrier
                /*[37, 38, 46, 47, 49]*/
                k = grid_points[2] - 2;
                /*[37, 38, 46, 47, 49]*/
                k1 = grid_points[2] - 1;
                /*[37, 38, 46, 47, 49]*/
#pragma omp for nowait
                /*[37, 38, 46, 47, 49]*/
                /*[37, 38, 46, 47, 49]*/
                /*[37, 38, 46, 47, 49]*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*[37, 38, 46, 47, 49]*/
                    /*[37, 38, 46, 47, 49]*/
                    /*[37, 38, 46, 47, 49]*/
                    /*[37, 38, 46, 47, 49]*/
                    /*[37, 38, 46, 47, 49]*/
                    for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*[37, 38, 46, 47, 49]*/
                        /*[37, 38, 46, 47, 49]*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*[37, 38, 46, 47, 49]*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*[37, 38, 46, 47, 49]*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*[37, 38, 46, 47, 49]*/
                        /*[37, 38, 46, 47, 49]*/
                        /*[37, 38, 46, 47, 49]*/
                        /*[37, 38, 46, 47, 49]*/
                        for (m = 0; m < 3; m++) {
                        /*[37, 38, 46, 47, 49]*/
                            /*[37, 38, 46, 47, 49]*/
                            rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        }
                        /*[37, 38, 46, 47, 49]*/
                        lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                        /*[37, 38, 46, 47, 49]*/
                        lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                        /*[37, 38, 46, 47, 49]*/
                        /*[37, 38, 46, 47, 49]*/
                        /*[37, 38, 46, 47, 49]*/
                        /*[37, 38, 46, 47, 49]*/
                        for (m = 0; m < 3; m++) {
                        /*[37, 38, 46, 47, 49]*/
                            /*[37, 38, 46, 47, 49]*/
                            rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                        }
                        /*[37, 38, 46, 47, 49]*/
                        fac2 = 1. / lhs[n + 2][i][j][k1];
                        /*[37, 38, 46, 47, 49]*/
                        /*[37, 38, 46, 47, 49]*/
                        /*[37, 38, 46, 47, 49]*/
                        /*[37, 38, 46, 47, 49]*/
                        for (m = 0; m < 3; m++) {
                        /*[37, 38, 46, 47, 49]*/
                            /*[37, 38, 46, 47, 49]*/
                            rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                        }
                    }
                }
                /*[37, 38, 46, 47, 49]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[37, 38, 46, 47, 49]*/
#pragma omp barrier
                /*[37, 38, 47, 49]*/
                /*[37, 38, 47, 49]*/
                /*[38, 49]*/
                /*[37, 38, 47, 49]*/
                for (m = 3; m < 5; m++) {
                /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
                    n = (m - 3 + 1) * 5;
                    /*[37, 38, 47, 49]*/
#pragma omp for nowait
                    /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
                    for (i = 1; i <= grid_points[0] - 2; i++) {
                    /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        for (j = 1; j <= grid_points[1] - 2; j++) {
                        /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            for (k = 0; k <= grid_points[2] - 3; k++) {
                            /*[37, 38, 47, 49]*/
                                /*[37, 38, 47, 49]*/
                                k1 = k + 1;
                                /*[37, 38, 47, 49]*/
                                k2 = k + 2;
                                /*[37, 38, 47, 49]*/
                                fac1 = 1. / lhs[n + 2][i][j][k];
                                /*[37, 38, 47, 49]*/
                                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                                /*[37, 38, 47, 49]*/
                                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                                /*[37, 38, 47, 49]*/
                                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                                /*[37, 38, 47, 49]*/
                                lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                                /*[37, 38, 47, 49]*/
                                lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                                /*[37, 38, 47, 49]*/
                                rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                                /*[37, 38, 47, 49]*/
                                lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                                /*[37, 38, 47, 49]*/
                                lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                                /*[37, 38, 47, 49]*/
                                rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                            }
                        }
                    }
                    /*[37, 38, 47, 49]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[37, 38, 47, 49]*/
#pragma omp barrier
                    /*[38, 47, 49]*/
                    k = grid_points[2] - 2;
                    /*[38, 47, 49]*/
                    k1 = grid_points[2] - 1;
                    /*[38, 47, 49]*/
#pragma omp for nowait
                    /*[38, 47, 49]*/
                    /*[38, 47, 49]*/
                    /*[38, 47, 49]*/
                    for (i = 1; i <= grid_points[0] - 2; i++) {
                    /*[38, 47, 49]*/
                        /*[38, 47, 49]*/
                        /*[38, 47, 49]*/
                        /*[38, 47, 49]*/
                        /*[38, 47, 49]*/
                        for (j = 1; j <= grid_points[1] - 2; j++) {
                        /*[38, 47, 49]*/
                            /*[38, 47, 49]*/
                            fac1 = 1. / lhs[n + 2][i][j][k];
                            /*[38, 47, 49]*/
                            lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                            /*[38, 47, 49]*/
                            lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                            /*[38, 47, 49]*/
                            rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                            /*[38, 47, 49]*/
                            lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                            /*[38, 47, 49]*/
                            lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                            /*[38, 47, 49]*/
                            rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                            /*[38, 47, 49]*/
                            fac2 = 1. / lhs[n + 2][i][j][k1];
                            /*[38, 47, 49]*/
                            rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                        }
                    }
                    /*[38, 47, 49]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[38, 47, 49]*/
#pragma omp barrier
                }
                /*[37, 38, 47, 49]*/
                k = grid_points[2] - 2;
                /*[37, 38, 47, 49]*/
                k1 = grid_points[2] - 1;
                /*[37, 38, 47, 49]*/
                n = 0;
                /*[37, 38, 47, 49]*/
                /*[37, 38, 47, 49]*/
                /*[38, 47, 49]*/
                /*[37, 38, 47, 49]*/
                for (m = 0; m < 3; m++) {
                /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
#pragma omp for nowait
                    /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
                    for (i = 1; i <= grid_points[0] - 2; i++) {
                    /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        for (j = 1; j <= grid_points[1] - 2; j++) {
                        /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                        }
                    }
                    /*[37, 38, 47, 49]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[37, 38, 47, 49]*/
#pragma omp barrier
                }
                /*[37, 38, 47, 49]*/
                /*[37, 38, 47, 49]*/
                /*[38, 47, 49]*/
                /*[37, 38, 47, 49]*/
                for (m = 3; m < 5; m++) {
                /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
                    n = (m - 3 + 1) * 5;
                    /*[37, 38, 47, 49]*/
#pragma omp for nowait
                    /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
                    for (i = 1; i <= grid_points[0] - 2; i++) {
                    /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        for (j = 1; j <= grid_points[1] - 2; j++) {
                        /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                        }
                    }
                    /*[37, 38, 47, 49]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[37, 38, 47, 49]*/
#pragma omp barrier
                }
                /*[37, 38, 47, 49]*/
                n = 0;
                /*[37, 38, 47, 49]*/
                /*[37, 38, 47, 49]*/
                /*[38, 47, 49]*/
                /*[37, 38, 47, 49]*/
                for (m = 0; m < 3; m++) {
                /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
#pragma omp for nowait
                    /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
                    for (i = 1; i <= grid_points[0] - 2; i++) {
                    /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        for (j = 1; j <= grid_points[1] - 2; j++) {
                        /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            for (k = grid_points[2] - 3; k >= 0; k--) {
                            /*[37, 38, 47, 49]*/
                                /*[37, 38, 47, 49]*/
                                k1 = k + 1;
                                /*[37, 38, 47, 49]*/
                                k2 = k + 2;
                                /*[37, 38, 47, 49]*/
                                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                            }
                        }
                    }
                    /*[37, 38, 47, 49]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[37, 38, 47, 49]*/
#pragma omp barrier
                }
                /*[37, 38, 47, 49]*/
                /*[37, 38, 47, 49]*/
                /*[38, 47, 49]*/
                /*[37, 38, 47, 49]*/
                for (m = 3; m < 5; m++) {
                /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
                    n = (m - 3 + 1) * 5;
                    /*[37, 38, 47, 49]*/
#pragma omp for nowait
                    /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
                    /*[37, 38, 47, 49]*/
                    for (i = 1; i <= grid_points[0] - 2; i++) {
                    /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        /*[37, 38, 47, 49]*/
                        for (j = 1; j <= grid_points[1] - 2; j++) {
                        /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            /*[37, 38, 47, 49]*/
                            for (k = grid_points[2] - 3; k >= 0; k--) {
                            /*[37, 38, 47, 49]*/
                                /*[37, 38, 47, 49]*/
                                k1 = k + 1;
                                /*[37, 38, 47, 49]*/
                                k2 = k + 2;
                                /*[37, 38, 47, 49]*/
                                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                            }
                        }
                    }
                    /*[37, 38, 47, 49]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[37, 38, 47, 49]*/
#pragma omp barrier
                }
            }
        }
        /*[]*/
        tzetar();
        /*[]*/
        /*[]*/
        add();
        /*[]*/
    }
    /*[55]*/
#pragma omp parallel
    {
    /*[55]*/
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
    char *class_imopVarPre106;
    /*[]*/
    int *verified_imopVarPre107;
    /*[]*/
    no_time_steps = niter;
    /*[]*/
    class_imopVarPre106 = _imopVarPre172;
    /*[]*/
    verified_imopVarPre107 = _imopVarPre171;
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
    /*[56]*/
#pragma omp parallel
    {
    /*[56]*/
        /*[56]*/
        int i;
        /*[56]*/
        int j;
        /*[56]*/
        int k;
        /*[56]*/
        int m_imopVarPre105;
        /*[56]*/
        double aux;
        /*[56]*/
        double rho_inv;
        /*[56]*/
        double uijk;
        /*[56]*/
        double up1;
        /*[56]*/
        double um1;
        /*[56]*/
        double vijk;
        /*[56]*/
        double vp1;
        /*[56]*/
        double vm1;
        /*[56]*/
        double wijk;
        /*[56]*/
        double wp1;
        /*[56]*/
        double wm1;
        /*[56]*/
#pragma omp for nowait
        /*[56]*/
        /*[56]*/
        /*[56]*/
        for (i = 0; i <= grid_points[0] - 1; i++) {
        /*[56]*/
            /*[56]*/
            /*[56]*/
            /*[56]*/
            /*[56]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
            /*[56]*/
                /*[56]*/
                /*[56]*/
                /*[56]*/
                /*[56]*/
                for (k = 0; k <= grid_points[2] - 1; k++) {
                /*[56]*/
                    /*[56]*/
                    rho_inv = 1.0 / u[0][i][j][k];
                    /*[56]*/
                    rho_i[i][j][k] = rho_inv;
                    /*[56]*/
                    us[i][j][k] = u[1][i][j][k] * rho_inv;
                    /*[56]*/
                    vs[i][j][k] = u[2][i][j][k] * rho_inv;
                    /*[56]*/
                    ws[i][j][k] = u[3][i][j][k] * rho_inv;
                    /*[56]*/
                    square[i][j][k] = 0.5 * (u[1][i][j][k] * u[1][i][j][k] + u[2][i][j][k] * u[2][i][j][k] + u[3][i][j][k] * u[3][i][j][k]) * rho_inv;
                    /*[56]*/
                    qs[i][j][k] = square[i][j][k] * rho_inv;
                    /*[56]*/
                    aux = c1c2 * rho_inv * (u[4][i][j][k] - square[i][j][k]);
                    /*[56]*/
                    aux = sqrt(aux);
                    /*[56]*/
                    /*[56]*/
                    speed[i][j][k] = aux;
                    /*[56]*/
                    ainv[i][j][k] = 1.0 / aux;
                }
            }
        }
        /*[56]*/
        /*[56, 57, 58, 59, 60, 61, 62]*/
        /*[57, 58, 59, 60, 61, 62]*/
        /*[56]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[56, 57, 58, 59, 60, 61, 62]*/
            /*[56, 57, 58, 59, 60, 61, 62]*/
#pragma omp for nowait
            /*[56, 57, 58, 59, 60, 61, 62]*/
            /*[56, 57, 58, 59, 60, 61, 62]*/
            /*[56, 57, 58, 59, 60, 61, 62]*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
            /*[56, 57, 58, 59, 60, 61, 62]*/
                /*[56, 57, 58, 59, 60, 61, 62]*/
                /*[56, 57, 58, 59, 60, 61, 62]*/
                /*[56, 57, 58, 59, 60, 61, 62]*/
                /*[56, 57, 58, 59, 60, 61, 62]*/
                for (j = 0; j <= grid_points[1] - 1; j++) {
                /*[56, 57, 58, 59, 60, 61, 62]*/
                    /*[56, 57, 58, 59, 60, 61, 62]*/
                    /*[56, 57, 58, 59, 60, 61, 62]*/
                    /*[56, 57, 58, 59, 60, 61, 62]*/
                    /*[56, 57, 58, 59, 60, 61, 62]*/
                    for (k = 0; k <= grid_points[2] - 1; k++) {
                    /*[56, 57, 58, 59, 60, 61, 62]*/
                        /*[56, 57, 58, 59, 60, 61, 62]*/
                        rhs[m_imopVarPre105][i][j][k] = forcing[m_imopVarPre105][i][j][k];
                    }
                }
            }
            /*[56, 57, 58, 59, 60, 61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[56, 57, 58, 59, 60, 61, 62]*/
#pragma omp barrier
        }
        /*[56, 57, 58, 59, 60, 61, 62]*/
#pragma omp for nowait
        /*[56, 57, 58, 59, 60, 61, 62]*/
        /*[56, 57, 58, 59, 60, 61, 62]*/
        /*[56, 57, 58, 59, 60, 61, 62]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[56, 57, 58, 59, 60, 61, 62]*/
            /*[56, 57, 58, 59, 60, 61, 62]*/
            /*[56, 57, 58, 59, 60, 61, 62]*/
            /*[56, 57, 58, 59, 60, 61, 62]*/
            /*[56, 57, 58, 59, 60, 61, 62]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[56, 57, 58, 59, 60, 61, 62]*/
                /*[56, 57, 58, 59, 60, 61, 62]*/
                /*[56, 57, 58, 59, 60, 61, 62]*/
                /*[56, 57, 58, 59, 60, 61, 62]*/
                /*[56, 57, 58, 59, 60, 61, 62]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[56, 57, 58, 59, 60, 61, 62]*/
                    /*[56, 57, 58, 59, 60, 61, 62]*/
                    uijk = us[i][j][k];
                    /*[56, 57, 58, 59, 60, 61, 62]*/
                    up1 = us[i + 1][j][k];
                    /*[56, 57, 58, 59, 60, 61, 62]*/
                    um1 = us[i - 1][j][k];
                    /*[56, 57, 58, 59, 60, 61, 62]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dx1tx1 * (u[0][i + 1][j][k] - 2.0 * u[0][i][j][k] + u[0][i - 1][j][k]) - tx2 * (u[1][i + 1][j][k] - u[1][i - 1][j][k]);
                    /*[56, 57, 58, 59, 60, 61, 62]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dx2tx1 * (u[1][i + 1][j][k] - 2.0 * u[1][i][j][k] + u[1][i - 1][j][k]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[1][i + 1][j][k] * up1 - u[1][i - 1][j][k] * um1 + (u[4][i + 1][j][k] - square[i + 1][j][k] - u[4][i - 1][j][k] + square[i - 1][j][k]) * c2);
                    /*[56, 57, 58, 59, 60, 61, 62]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dx3tx1 * (u[2][i + 1][j][k] - 2.0 * u[2][i][j][k] + u[2][i - 1][j][k]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[2][i + 1][j][k] * up1 - u[2][i - 1][j][k] * um1);
                    /*[56, 57, 58, 59, 60, 61, 62]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dx4tx1 * (u[3][i + 1][j][k] - 2.0 * u[3][i][j][k] + u[3][i - 1][j][k]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[3][i + 1][j][k] * up1 - u[3][i - 1][j][k] * um1);
                    /*[56, 57, 58, 59, 60, 61, 62]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dx5tx1 * (u[4][i + 1][j][k] - 2.0 * u[4][i][j][k] + u[4][i - 1][j][k]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[4][i + 1][j][k] * rho_i[i + 1][j][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i - 1][j][k] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[4][i + 1][j][k] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[4][i - 1][j][k] - c2 * square[i - 1][j][k]) * um1);
                }
            }
        }
        /*[56, 57, 58, 59, 60, 61, 62]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[56, 57, 58, 59, 60, 61, 62]*/
#pragma omp barrier
        /*[57, 58, 59, 60, 61, 62]*/
        i = 1;
        /*[57, 58, 59, 60, 61, 62]*/
        /*[57, 58, 59, 60, 61, 62]*/
        /*[58, 59, 60, 61, 62]*/
        /*[57, 58, 59, 60, 61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
#pragma omp for nowait
            /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[57, 58, 59, 60, 61, 62]*/
                    /*[57, 58, 59, 60, 61, 62]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (5.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i + 1][j][k] + u[m_imopVarPre105][i + 2][j][k]);
                }
            }
            /*[57, 58, 59, 60, 61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[57, 58, 59, 60, 61, 62]*/
#pragma omp barrier
        }
        /*[57, 58, 59, 60, 61, 62]*/
        i = 2;
        /*[57, 58, 59, 60, 61, 62]*/
        /*[57, 58, 59, 60, 61, 62]*/
        /*[58, 59, 60, 61, 62]*/
        /*[57, 58, 59, 60, 61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
#pragma omp for nowait
            /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[57, 58, 59, 60, 61, 62]*/
                    /*[57, 58, 59, 60, 61, 62]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (-4.0 * u[m_imopVarPre105][i - 1][j][k] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i + 1][j][k] + u[m_imopVarPre105][i + 2][j][k]);
                }
            }
            /*[57, 58, 59, 60, 61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[57, 58, 59, 60, 61, 62]*/
#pragma omp barrier
        }
        /*[57, 58, 59, 60, 61, 62]*/
        /*[57, 58, 59, 60, 61, 62]*/
        /*[58, 59, 60, 61, 62]*/
        /*[57, 58, 59, 60, 61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
#pragma omp for nowait
            /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
            for (i = 3 * 1; i <= grid_points[0] - 3 * 1 - 1; i++) {
            /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[57, 58, 59, 60, 61, 62]*/
                    /*[57, 58, 59, 60, 61, 62]*/
                    /*[57, 58, 59, 60, 61, 62]*/
                    /*[57, 58, 59, 60, 61, 62]*/
                    /*[57, 58, 59, 60, 61, 62]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[57, 58, 59, 60, 61, 62]*/
                        /*[57, 58, 59, 60, 61, 62]*/
                        rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i - 2][j][k] - 4.0 * u[m_imopVarPre105][i - 1][j][k] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i + 1][j][k] + u[m_imopVarPre105][i + 2][j][k]);
                    }
                }
            }
            /*[57, 58, 59, 60, 61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[57, 58, 59, 60, 61, 62]*/
#pragma omp barrier
        }
        /*[57, 58, 59, 60, 61, 62]*/
        i = grid_points[0] - 3;
        /*[57, 58, 59, 60, 61, 62]*/
        /*[57, 58, 59, 60, 61, 62]*/
        /*[58, 59, 60, 61, 62]*/
        /*[57, 58, 59, 60, 61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
#pragma omp for nowait
            /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[57, 58, 59, 60, 61, 62]*/
                    /*[57, 58, 59, 60, 61, 62]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i - 2][j][k] - 4.0 * u[m_imopVarPre105][i - 1][j][k] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i + 1][j][k]);
                }
            }
            /*[57, 58, 59, 60, 61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[57, 58, 59, 60, 61, 62]*/
#pragma omp barrier
        }
        /*[57, 58, 59, 60, 61, 62]*/
        i = grid_points[0] - 2;
        /*[57, 58, 59, 60, 61, 62]*/
        /*[57, 58, 59, 60, 61, 62]*/
        /*[58, 59, 60, 61, 62]*/
        /*[57, 58, 59, 60, 61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
#pragma omp for nowait
            /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
            /*[57, 58, 59, 60, 61, 62]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                /*[57, 58, 59, 60, 61, 62]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[57, 58, 59, 60, 61, 62]*/
                    /*[57, 58, 59, 60, 61, 62]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i - 2][j][k] - 4.0 * u[m_imopVarPre105][i - 1][j][k] + 5.0 * u[m_imopVarPre105][i][j][k]);
                }
            }
            /*[57, 58, 59, 60, 61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[57, 58, 59, 60, 61, 62]*/
#pragma omp barrier
        }
        /*[57, 58, 59, 60, 61, 62]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[57, 58, 59, 60, 61, 62]*/
#pragma omp barrier
        /*[58, 59, 60, 61, 62]*/
#pragma omp for nowait
        /*[58, 59, 60, 61, 62]*/
        /*[58, 59, 60, 61, 62]*/
        /*[58, 59, 60, 61, 62]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[58, 59, 60, 61, 62]*/
            /*[58, 59, 60, 61, 62]*/
            /*[58, 59, 60, 61, 62]*/
            /*[58, 59, 60, 61, 62]*/
            /*[58, 59, 60, 61, 62]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[58, 59, 60, 61, 62]*/
                /*[58, 59, 60, 61, 62]*/
                /*[58, 59, 60, 61, 62]*/
                /*[58, 59, 60, 61, 62]*/
                /*[58, 59, 60, 61, 62]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[58, 59, 60, 61, 62]*/
                    /*[58, 59, 60, 61, 62]*/
                    vijk = vs[i][j][k];
                    /*[58, 59, 60, 61, 62]*/
                    vp1 = vs[i][j + 1][k];
                    /*[58, 59, 60, 61, 62]*/
                    vm1 = vs[i][j - 1][k];
                    /*[58, 59, 60, 61, 62]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dy1ty1 * (u[0][i][j + 1][k] - 2.0 * u[0][i][j][k] + u[0][i][j - 1][k]) - ty2 * (u[2][i][j + 1][k] - u[2][i][j - 1][k]);
                    /*[58, 59, 60, 61, 62]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dy2ty1 * (u[1][i][j + 1][k] - 2.0 * u[1][i][j][k] + u[1][i][j - 1][k]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[1][i][j + 1][k] * vp1 - u[1][i][j - 1][k] * vm1);
                    /*[58, 59, 60, 61, 62]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dy3ty1 * (u[2][i][j + 1][k] - 2.0 * u[2][i][j][k] + u[2][i][j - 1][k]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[2][i][j + 1][k] * vp1 - u[2][i][j - 1][k] * vm1 + (u[4][i][j + 1][k] - square[i][j + 1][k] - u[4][i][j - 1][k] + square[i][j - 1][k]) * c2);
                    /*[58, 59, 60, 61, 62]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dy4ty1 * (u[3][i][j + 1][k] - 2.0 * u[3][i][j][k] + u[3][i][j - 1][k]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[3][i][j + 1][k] * vp1 - u[3][i][j - 1][k] * vm1);
                    /*[58, 59, 60, 61, 62]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dy5ty1 * (u[4][i][j + 1][k] - 2.0 * u[4][i][j][k] + u[4][i][j - 1][k]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[4][i][j + 1][k] * rho_i[i][j + 1][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j - 1][k] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[4][i][j + 1][k] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[4][i][j - 1][k] - c2 * square[i][j - 1][k]) * vm1);
                }
            }
        }
        /*[58, 59, 60, 61, 62]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[58, 59, 60, 61, 62]*/
#pragma omp barrier
        /*[59, 60, 61, 62]*/
        j = 1;
        /*[59, 60, 61, 62]*/
        /*[59, 60, 61, 62]*/
        /*[60, 61, 62]*/
        /*[59, 60, 61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
#pragma omp for nowait
            /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[59, 60, 61, 62]*/
                    /*[59, 60, 61, 62]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (5.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j + 1][k] + u[m_imopVarPre105][i][j + 2][k]);
                }
            }
            /*[59, 60, 61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[59, 60, 61, 62]*/
#pragma omp barrier
        }
        /*[59, 60, 61, 62]*/
        j = 2;
        /*[59, 60, 61, 62]*/
        /*[59, 60, 61, 62]*/
        /*[60, 61, 62]*/
        /*[59, 60, 61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
#pragma omp for nowait
            /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[59, 60, 61, 62]*/
                    /*[59, 60, 61, 62]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (-4.0 * u[m_imopVarPre105][i][j - 1][k] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j + 1][k] + u[m_imopVarPre105][i][j + 2][k]);
                }
            }
            /*[59, 60, 61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[59, 60, 61, 62]*/
#pragma omp barrier
        }
        /*[59, 60, 61, 62]*/
        /*[59, 60, 61, 62]*/
        /*[60, 61, 62]*/
        /*[59, 60, 61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
#pragma omp for nowait
            /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                for (j = 3 * 1; j <= grid_points[1] - 3 * 1 - 1; j++) {
                /*[59, 60, 61, 62]*/
                    /*[59, 60, 61, 62]*/
                    /*[59, 60, 61, 62]*/
                    /*[59, 60, 61, 62]*/
                    /*[59, 60, 61, 62]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[59, 60, 61, 62]*/
                        /*[59, 60, 61, 62]*/
                        rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i][j - 2][k] - 4.0 * u[m_imopVarPre105][i][j - 1][k] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j + 1][k] + u[m_imopVarPre105][i][j + 2][k]);
                    }
                }
            }
            /*[59, 60, 61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[59, 60, 61, 62]*/
#pragma omp barrier
        }
        /*[59, 60, 61, 62]*/
        j = grid_points[1] - 3;
        /*[59, 60, 61, 62]*/
        /*[59, 60, 61, 62]*/
        /*[60, 61, 62]*/
        /*[59, 60, 61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
#pragma omp for nowait
            /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[59, 60, 61, 62]*/
                    /*[59, 60, 61, 62]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i][j - 2][k] - 4.0 * u[m_imopVarPre105][i][j - 1][k] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j + 1][k]);
                }
            }
            /*[59, 60, 61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[59, 60, 61, 62]*/
#pragma omp barrier
        }
        /*[59, 60, 61, 62]*/
        j = grid_points[1] - 2;
        /*[59, 60, 61, 62]*/
        /*[59, 60, 61, 62]*/
        /*[60, 61, 62]*/
        /*[59, 60, 61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
#pragma omp for nowait
            /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
            /*[59, 60, 61, 62]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                /*[59, 60, 61, 62]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[59, 60, 61, 62]*/
                    /*[59, 60, 61, 62]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i][j - 2][k] - 4.0 * u[m_imopVarPre105][i][j - 1][k] + 5.0 * u[m_imopVarPre105][i][j][k]);
                }
            }
            /*[59, 60, 61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[59, 60, 61, 62]*/
#pragma omp barrier
        }
        /*[59, 60, 61, 62]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[59, 60, 61, 62]*/
#pragma omp barrier
        /*[60, 61, 62]*/
#pragma omp for nowait
        /*[60, 61, 62]*/
        /*[60, 61, 62]*/
        /*[60, 61, 62]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[60, 61, 62]*/
            /*[60, 61, 62]*/
            /*[60, 61, 62]*/
            /*[60, 61, 62]*/
            /*[60, 61, 62]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[60, 61, 62]*/
                /*[60, 61, 62]*/
                /*[60, 61, 62]*/
                /*[60, 61, 62]*/
                /*[60, 61, 62]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[60, 61, 62]*/
                    /*[60, 61, 62]*/
                    wijk = ws[i][j][k];
                    /*[60, 61, 62]*/
                    wp1 = ws[i][j][k + 1];
                    /*[60, 61, 62]*/
                    wm1 = ws[i][j][k - 1];
                    /*[60, 61, 62]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dz1tz1 * (u[0][i][j][k + 1] - 2.0 * u[0][i][j][k] + u[0][i][j][k - 1]) - tz2 * (u[3][i][j][k + 1] - u[3][i][j][k - 1]);
                    /*[60, 61, 62]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dz2tz1 * (u[1][i][j][k + 1] - 2.0 * u[1][i][j][k] + u[1][i][j][k - 1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[1][i][j][k + 1] * wp1 - u[1][i][j][k - 1] * wm1);
                    /*[60, 61, 62]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dz3tz1 * (u[2][i][j][k + 1] - 2.0 * u[2][i][j][k] + u[2][i][j][k - 1]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[2][i][j][k + 1] * wp1 - u[2][i][j][k - 1] * wm1);
                    /*[60, 61, 62]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dz4tz1 * (u[3][i][j][k + 1] - 2.0 * u[3][i][j][k] + u[3][i][j][k - 1]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[3][i][j][k + 1] * wp1 - u[3][i][j][k - 1] * wm1 + (u[4][i][j][k + 1] - square[i][j][k + 1] - u[4][i][j][k - 1] + square[i][j][k - 1]) * c2);
                    /*[60, 61, 62]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dz5tz1 * (u[4][i][j][k + 1] - 2.0 * u[4][i][j][k] + u[4][i][j][k - 1]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[4][i][j][k + 1] * rho_i[i][j][k + 1] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j][k - 1] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[4][i][j][k + 1] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[4][i][j][k - 1] - c2 * square[i][j][k - 1]) * wm1);
                }
            }
        }
        /*[60, 61, 62]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[60, 61, 62]*/
#pragma omp barrier
        /*[61, 62]*/
        k = 1;
        /*[61, 62]*/
        /*[61, 62]*/
        /*[62]*/
        /*[61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[61, 62]*/
            /*[61, 62]*/
#pragma omp for nowait
            /*[61, 62]*/
            /*[61, 62]*/
            /*[61, 62]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[61, 62]*/
                    /*[61, 62]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (5.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j][k + 1] + u[m_imopVarPre105][i][j][k + 2]);
                }
            }
            /*[61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[61, 62]*/
#pragma omp barrier
        }
        /*[61, 62]*/
        k = 2;
        /*[61, 62]*/
        /*[61, 62]*/
        /*[62]*/
        /*[61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[61, 62]*/
            /*[61, 62]*/
#pragma omp for nowait
            /*[61, 62]*/
            /*[61, 62]*/
            /*[61, 62]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[61, 62]*/
                    /*[61, 62]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (-4.0 * u[m_imopVarPre105][i][j][k - 1] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j][k + 1] + u[m_imopVarPre105][i][j][k + 2]);
                }
            }
            /*[61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[61, 62]*/
#pragma omp barrier
        }
        /*[61, 62]*/
        /*[61, 62]*/
        /*[62]*/
        /*[61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[61, 62]*/
            /*[61, 62]*/
#pragma omp for nowait
            /*[61, 62]*/
            /*[61, 62]*/
            /*[61, 62]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[61, 62]*/
                    /*[61, 62]*/
                    /*[61, 62]*/
                    /*[61, 62]*/
                    /*[61, 62]*/
                    for (k = 3 * 1; k <= grid_points[2] - 3 * 1 - 1; k++) {
                    /*[61, 62]*/
                        /*[61, 62]*/
                        rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i][j][k - 2] - 4.0 * u[m_imopVarPre105][i][j][k - 1] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j][k + 1] + u[m_imopVarPre105][i][j][k + 2]);
                    }
                }
            }
            /*[61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[61, 62]*/
#pragma omp barrier
        }
        /*[61, 62]*/
        k = grid_points[2] - 3;
        /*[61, 62]*/
        /*[61, 62]*/
        /*[62]*/
        /*[61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[61, 62]*/
            /*[61, 62]*/
#pragma omp for nowait
            /*[61, 62]*/
            /*[61, 62]*/
            /*[61, 62]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[61, 62]*/
                    /*[61, 62]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i][j][k - 2] - 4.0 * u[m_imopVarPre105][i][j][k - 1] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j][k + 1]);
                }
            }
            /*[61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[61, 62]*/
#pragma omp barrier
        }
        /*[61, 62]*/
        k = grid_points[2] - 2;
        /*[61, 62]*/
        /*[61, 62]*/
        /*[62]*/
        /*[61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[61, 62]*/
            /*[61, 62]*/
#pragma omp for nowait
            /*[61, 62]*/
            /*[61, 62]*/
            /*[61, 62]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[61, 62]*/
                    /*[61, 62]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i][j][k - 2] - 4.0 * u[m_imopVarPre105][i][j][k - 1] + 5.0 * u[m_imopVarPre105][i][j][k]);
                }
            }
            /*[61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[61, 62]*/
#pragma omp barrier
        }
        /*[61, 62]*/
        /*[61, 62]*/
        /*[62]*/
        /*[61, 62]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[61, 62]*/
            /*[61, 62]*/
#pragma omp for nowait
            /*[61, 62]*/
            /*[61, 62]*/
            /*[61, 62]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[61, 62]*/
                    /*[61, 62]*/
                    /*[61, 62]*/
                    /*[61, 62]*/
                    /*[61, 62]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[61, 62]*/
                        /*[61, 62]*/
                        rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] * dt;
                    }
                }
            }
            /*[61, 62]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[61, 62]*/
#pragma omp barrier
        }
    }
    /*[61, 62]*/
    rhs_norm(xcr);
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    for (m = 0; m < 5; m++) {
    /*[61, 62]*/
        /*[61, 62]*/
        xcr[m] = xcr[m] / dt;
    }
    /*[61, 62]*/
    *class_imopVarPre106 = 'U';
    /*[61, 62]*/
    *verified_imopVarPre107 = 1;
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    for (m = 0; m < 5; m++) {
    /*[61, 62]*/
        /*[61, 62]*/
        xcrref[m] = 1.0;
        /*[61, 62]*/
        xceref[m] = 1.0;
    }
    /*[61, 62]*/
    int _imopVarPre2156;
    /*[61, 62]*/
    int _imopVarPre2157;
    /*[61, 62]*/
    int _imopVarPre2158;
    /*[61, 62]*/
    _imopVarPre2156 = grid_points[0] == 12;
    /*[61, 62]*/
    /*[61, 62]*/
    if (_imopVarPre2156) {
    /*[61, 62]*/
        /*[61, 62]*/
        _imopVarPre2157 = grid_points[1] == 12;
        /*[61, 62]*/
        /*[61, 62]*/
        if (_imopVarPre2157) {
        /*[61, 62]*/
            /*[61, 62]*/
            _imopVarPre2158 = grid_points[2] == 12;
            /*[61, 62]*/
            /*[61, 62]*/
            if (_imopVarPre2158) {
            /*[61, 62]*/
                /*[61, 62]*/
                _imopVarPre2158 = no_time_steps == 100;
            }
            /*[61, 62]*/
            _imopVarPre2157 = _imopVarPre2158;
        }
        /*[61, 62]*/
        _imopVarPre2156 = _imopVarPre2157;
    }
    /*[61, 62]*/
    /*[61, 62]*/
    if (_imopVarPre2156) {
    /*[61, 62]*/
        /*[61, 62]*/
        *class_imopVarPre106 = 'S';
        /*[61, 62]*/
        dtref = 1.5e-2;
        /*[61, 62]*/
        xcrref[0] = 2.7470315451339479e-02;
        /*[61, 62]*/
        xcrref[1] = 1.0360746705285417e-02;
        /*[61, 62]*/
        xcrref[2] = 1.6235745065095532e-02;
        /*[61, 62]*/
        xcrref[3] = 1.5840557224455615e-02;
        /*[61, 62]*/
        xcrref[4] = 3.4849040609362460e-02;
        /*[61, 62]*/
        xceref[0] = 2.7289258557377227e-05;
        /*[61, 62]*/
        xceref[1] = 1.0364446640837285e-05;
        /*[61, 62]*/
        xceref[2] = 1.6154798287166471e-05;
        /*[61, 62]*/
        xceref[3] = 1.5750704994480102e-05;
        /*[61, 62]*/
        xceref[4] = 3.4177666183390531e-05;
    } else {
    /*[61, 62]*/
        /*[61, 62]*/
        int _imopVarPre2162;
        /*[61, 62]*/
        int _imopVarPre2163;
        /*[61, 62]*/
        int _imopVarPre2164;
        /*[61, 62]*/
        _imopVarPre2162 = grid_points[0] == 36;
        /*[61, 62]*/
        /*[61, 62]*/
        if (_imopVarPre2162) {
        /*[61, 62]*/
            /*[61, 62]*/
            _imopVarPre2163 = grid_points[1] == 36;
            /*[61, 62]*/
            /*[61, 62]*/
            if (_imopVarPre2163) {
            /*[61, 62]*/
                /*[61, 62]*/
                _imopVarPre2164 = grid_points[2] == 36;
                /*[61, 62]*/
                /*[61, 62]*/
                if (_imopVarPre2164) {
                /*[61, 62]*/
                    /*[61, 62]*/
                    _imopVarPre2164 = no_time_steps == 400;
                }
                /*[61, 62]*/
                _imopVarPre2163 = _imopVarPre2164;
            }
            /*[61, 62]*/
            _imopVarPre2162 = _imopVarPre2163;
        }
        /*[61, 62]*/
        /*[61, 62]*/
        if (_imopVarPre2162) {
        /*[61, 62]*/
            /*[61, 62]*/
            *class_imopVarPre106 = 'W';
            /*[61, 62]*/
            dtref = 1.5e-3;
            /*[61, 62]*/
            xcrref[0] = 0.1893253733584e-02;
            /*[61, 62]*/
            xcrref[1] = 0.1717075447775e-03;
            /*[61, 62]*/
            xcrref[2] = 0.2778153350936e-03;
            /*[61, 62]*/
            xcrref[3] = 0.2887475409984e-03;
            /*[61, 62]*/
            xcrref[4] = 0.3143611161242e-02;
            /*[61, 62]*/
            xceref[0] = 0.7542088599534e-04;
            /*[61, 62]*/
            xceref[1] = 0.6512852253086e-05;
            /*[61, 62]*/
            xceref[2] = 0.1049092285688e-04;
            /*[61, 62]*/
            xceref[3] = 0.1128838671535e-04;
            /*[61, 62]*/
            xceref[4] = 0.1212845639773e-03;
        } else {
        /*[61, 62]*/
            /*[61, 62]*/
            int _imopVarPre2168;
            /*[61, 62]*/
            int _imopVarPre2169;
            /*[61, 62]*/
            int _imopVarPre2170;
            /*[61, 62]*/
            _imopVarPre2168 = grid_points[0] == 64;
            /*[61, 62]*/
            /*[61, 62]*/
            if (_imopVarPre2168) {
            /*[61, 62]*/
                /*[61, 62]*/
                _imopVarPre2169 = grid_points[1] == 64;
                /*[61, 62]*/
                /*[61, 62]*/
                if (_imopVarPre2169) {
                /*[61, 62]*/
                    /*[61, 62]*/
                    _imopVarPre2170 = grid_points[2] == 64;
                    /*[61, 62]*/
                    /*[61, 62]*/
                    if (_imopVarPre2170) {
                    /*[61, 62]*/
                        /*[61, 62]*/
                        _imopVarPre2170 = no_time_steps == 400;
                    }
                    /*[61, 62]*/
                    _imopVarPre2169 = _imopVarPre2170;
                }
                /*[61, 62]*/
                _imopVarPre2168 = _imopVarPre2169;
            }
            /*[61, 62]*/
            /*[61, 62]*/
            if (_imopVarPre2168) {
            /*[61, 62]*/
                /*[61, 62]*/
                *class_imopVarPre106 = 'A';
                /*[61, 62]*/
                dtref = 1.5e-3;
                /*[61, 62]*/
                xcrref[0] = 2.4799822399300195;
                /*[61, 62]*/
                xcrref[1] = 1.1276337964368832;
                /*[61, 62]*/
                xcrref[2] = 1.5028977888770491;
                /*[61, 62]*/
                xcrref[3] = 1.4217816211695179;
                /*[61, 62]*/
                xcrref[4] = 2.1292113035138280;
                /*[61, 62]*/
                xceref[0] = 1.0900140297820550e-04;
                /*[61, 62]*/
                xceref[1] = 3.7343951769282091e-05;
                /*[61, 62]*/
                xceref[2] = 5.0092785406541633e-05;
                /*[61, 62]*/
                xceref[3] = 4.7671093939528255e-05;
                /*[61, 62]*/
                xceref[4] = 1.3621613399213001e-04;
            } else {
            /*[61, 62]*/
                /*[61, 62]*/
                int _imopVarPre2174;
                /*[61, 62]*/
                int _imopVarPre2175;
                /*[61, 62]*/
                int _imopVarPre2176;
                /*[61, 62]*/
                _imopVarPre2174 = grid_points[0] == 102;
                /*[61, 62]*/
                /*[61, 62]*/
                if (_imopVarPre2174) {
                /*[61, 62]*/
                    /*[61, 62]*/
                    _imopVarPre2175 = grid_points[1] == 102;
                    /*[61, 62]*/
                    /*[61, 62]*/
                    if (_imopVarPre2175) {
                    /*[61, 62]*/
                        /*[61, 62]*/
                        _imopVarPre2176 = grid_points[2] == 102;
                        /*[61, 62]*/
                        /*[61, 62]*/
                        if (_imopVarPre2176) {
                        /*[61, 62]*/
                            /*[61, 62]*/
                            _imopVarPre2176 = no_time_steps == 400;
                        }
                        /*[61, 62]*/
                        _imopVarPre2175 = _imopVarPre2176;
                    }
                    /*[61, 62]*/
                    _imopVarPre2174 = _imopVarPre2175;
                }
                /*[61, 62]*/
                /*[61, 62]*/
                if (_imopVarPre2174) {
                /*[61, 62]*/
                    /*[61, 62]*/
                    *class_imopVarPre106 = 'B';
                    /*[61, 62]*/
                    dtref = 1.0e-3;
                    /*[61, 62]*/
                    xcrref[0] = 0.6903293579998e+02;
                    /*[61, 62]*/
                    xcrref[1] = 0.3095134488084e+02;
                    /*[61, 62]*/
                    xcrref[2] = 0.4103336647017e+02;
                    /*[61, 62]*/
                    xcrref[3] = 0.3864769009604e+02;
                    /*[61, 62]*/
                    xcrref[4] = 0.5643482272596e+02;
                    /*[61, 62]*/
                    xceref[0] = 0.9810006190188e-02;
                    /*[61, 62]*/
                    xceref[1] = 0.1022827905670e-02;
                    /*[61, 62]*/
                    xceref[2] = 0.1720597911692e-02;
                    /*[61, 62]*/
                    xceref[3] = 0.1694479428231e-02;
                    /*[61, 62]*/
                    xceref[4] = 0.1847456263981e-01;
                } else {
                /*[61, 62]*/
                    /*[61, 62]*/
                    int _imopVarPre2180;
                    /*[61, 62]*/
                    int _imopVarPre2181;
                    /*[61, 62]*/
                    int _imopVarPre2182;
                    /*[61, 62]*/
                    _imopVarPre2180 = grid_points[0] == 162;
                    /*[61, 62]*/
                    /*[61, 62]*/
                    if (_imopVarPre2180) {
                    /*[61, 62]*/
                        /*[61, 62]*/
                        _imopVarPre2181 = grid_points[1] == 162;
                        /*[61, 62]*/
                        /*[61, 62]*/
                        if (_imopVarPre2181) {
                        /*[61, 62]*/
                            /*[61, 62]*/
                            _imopVarPre2182 = grid_points[2] == 162;
                            /*[61, 62]*/
                            /*[61, 62]*/
                            if (_imopVarPre2182) {
                            /*[61, 62]*/
                                /*[61, 62]*/
                                _imopVarPre2182 = no_time_steps == 400;
                            }
                            /*[61, 62]*/
                            _imopVarPre2181 = _imopVarPre2182;
                        }
                        /*[61, 62]*/
                        _imopVarPre2180 = _imopVarPre2181;
                    }
                    /*[61, 62]*/
                    /*[61, 62]*/
                    if (_imopVarPre2180) {
                    /*[61, 62]*/
                        /*[61, 62]*/
                        *class_imopVarPre106 = 'C';
                        /*[61, 62]*/
                        dtref = 0.67e-3;
                        /*[61, 62]*/
                        xcrref[0] = 0.5881691581829e+03;
                        /*[61, 62]*/
                        xcrref[1] = 0.2454417603569e+03;
                        /*[61, 62]*/
                        xcrref[2] = 0.3293829191851e+03;
                        /*[61, 62]*/
                        xcrref[3] = 0.3081924971891e+03;
                        /*[61, 62]*/
                        xcrref[4] = 0.4597223799176e+03;
                        /*[61, 62]*/
                        xceref[0] = 0.2598120500183e+00;
                        /*[61, 62]*/
                        xceref[1] = 0.2590888922315e-01;
                        /*[61, 62]*/
                        xceref[2] = 0.5132886416320e-01;
                        /*[61, 62]*/
                        xceref[3] = 0.4806073419454e-01;
                        /*[61, 62]*/
                        xceref[4] = 0.5483377491301e+00;
                    } else {
                    /*[61, 62]*/
                        /*[61, 62]*/
                        *verified_imopVarPre107 = 0;
                    }
                }
            }
        }
    }
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    for (m = 0; m < 5; m++) {
    /*[61, 62]*/
        /*[61, 62]*/
        double _imopVarPre2184;
        /*[61, 62]*/
        double _imopVarPre2185;
        /*[61, 62]*/
        _imopVarPre2184 = (xcr[m] - xcrref[m]) / xcrref[m];
        /*[61, 62]*/
        _imopVarPre2185 = fabs(_imopVarPre2184);
        /*[61, 62]*/
        /*[61, 62]*/
        xcrdif[m] = _imopVarPre2185;
        /*[61, 62]*/
        double _imopVarPre2187;
        /*[61, 62]*/
        double _imopVarPre2188;
        /*[61, 62]*/
        _imopVarPre2187 = (xce[m] - xceref[m]) / xceref[m];
        /*[61, 62]*/
        _imopVarPre2188 = fabs(_imopVarPre2187);
        /*[61, 62]*/
        /*[61, 62]*/
        xcedif[m] = _imopVarPre2188;
    }
    /*[61, 62]*/
    /*[61, 62]*/
    if (*class_imopVarPre106 != 'U') {
    /*[61, 62]*/
        /*[61, 62]*/
        char _imopVarPre2190;
        /*[61, 62]*/
        _imopVarPre2190 = *class_imopVarPre106;
        /*[61, 62]*/
        printf(" Verification being performed for class %1c\n", _imopVarPre2190);
        /*[61, 62]*/
        /*[61, 62]*/
        printf(" accuracy setting for epsilon = %20.13e\n", epsilon);
        /*[61, 62]*/
        /*[61, 62]*/
        double _imopVarPre2193;
        /*[61, 62]*/
        double _imopVarPre2194;
        /*[61, 62]*/
        _imopVarPre2193 = dt - dtref;
        /*[61, 62]*/
        _imopVarPre2194 = fabs(_imopVarPre2193);
        /*[61, 62]*/
        /*[61, 62]*/
        /*[61, 62]*/
        if (_imopVarPre2194 > epsilon) {
        /*[61, 62]*/
            /*[61, 62]*/
            *verified_imopVarPre107 = 0;
            /*[61, 62]*/
            *class_imopVarPre106 = 'U';
            /*[61, 62]*/
            printf(" DT does not match the reference value of %15.8e\n", dtref);
            /*[61, 62]*/
        }
    } else {
    /*[61, 62]*/
        /*[61, 62]*/
        printf(" Unknown class\n");
        /*[61, 62]*/
    }
    /*[61, 62]*/
    /*[61, 62]*/
    if (*class_imopVarPre106 != 'U') {
    /*[61, 62]*/
        /*[61, 62]*/
        printf(" Comparison of RMS-norms of residual\n");
        /*[61, 62]*/
    } else {
    /*[61, 62]*/
        /*[61, 62]*/
        printf(" RMS-norms of residual\n");
        /*[61, 62]*/
    }
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    for (m = 0; m < 5; m++) {
    /*[61, 62]*/
        /*[61, 62]*/
        /*[61, 62]*/
        if (*class_imopVarPre106 == 'U') {
        /*[61, 62]*/
            /*[61, 62]*/
            double _imopVarPre2196;
            /*[61, 62]*/
            _imopVarPre2196 = xcr[m];
            /*[61, 62]*/
            printf("          %2d%20.13e\n", m, _imopVarPre2196);
            /*[61, 62]*/
        } else {
        /*[61, 62]*/
            /*[61, 62]*/
            /*[61, 62]*/
            if (xcrdif[m] > epsilon) {
            /*[61, 62]*/
                /*[61, 62]*/
                *verified_imopVarPre107 = 0;
                /*[61, 62]*/
                double _imopVarPre2200;
                /*[61, 62]*/
                double _imopVarPre2201;
                /*[61, 62]*/
                double _imopVarPre2202;
                /*[61, 62]*/
                _imopVarPre2200 = xcrdif[m];
                /*[61, 62]*/
                _imopVarPre2201 = xcrref[m];
                /*[61, 62]*/
                _imopVarPre2202 = xcr[m];
                /*[61, 62]*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2202, _imopVarPre2201, _imopVarPre2200);
                /*[61, 62]*/
            } else {
            /*[61, 62]*/
                /*[61, 62]*/
                double _imopVarPre2206;
                /*[61, 62]*/
                double _imopVarPre2207;
                /*[61, 62]*/
                double _imopVarPre2208;
                /*[61, 62]*/
                _imopVarPre2206 = xcrdif[m];
                /*[61, 62]*/
                _imopVarPre2207 = xcrref[m];
                /*[61, 62]*/
                _imopVarPre2208 = xcr[m];
                /*[61, 62]*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2208, _imopVarPre2207, _imopVarPre2206);
                /*[61, 62]*/
            }
        }
    }
    /*[61, 62]*/
    /*[61, 62]*/
    if (*class_imopVarPre106 != 'U') {
    /*[61, 62]*/
        /*[61, 62]*/
        printf(" Comparison of RMS-norms of solution error\n");
        /*[61, 62]*/
    } else {
    /*[61, 62]*/
        /*[61, 62]*/
        printf(" RMS-norms of solution error\n");
        /*[61, 62]*/
    }
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    for (m = 0; m < 5; m++) {
    /*[61, 62]*/
        /*[61, 62]*/
        /*[61, 62]*/
        if (*class_imopVarPre106 == 'U') {
        /*[61, 62]*/
            /*[61, 62]*/
            double _imopVarPre2210;
            /*[61, 62]*/
            _imopVarPre2210 = xce[m];
            /*[61, 62]*/
            printf("          %2d%20.13e\n", m, _imopVarPre2210);
            /*[61, 62]*/
        } else {
        /*[61, 62]*/
            /*[61, 62]*/
            /*[61, 62]*/
            if (xcedif[m] > epsilon) {
            /*[61, 62]*/
                /*[61, 62]*/
                *verified_imopVarPre107 = 0;
                /*[61, 62]*/
                double _imopVarPre2214;
                /*[61, 62]*/
                double _imopVarPre2215;
                /*[61, 62]*/
                double _imopVarPre2216;
                /*[61, 62]*/
                _imopVarPre2214 = xcedif[m];
                /*[61, 62]*/
                _imopVarPre2215 = xceref[m];
                /*[61, 62]*/
                _imopVarPre2216 = xce[m];
                /*[61, 62]*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2216, _imopVarPre2215, _imopVarPre2214);
                /*[61, 62]*/
            } else {
            /*[61, 62]*/
                /*[61, 62]*/
                double _imopVarPre2220;
                /*[61, 62]*/
                double _imopVarPre2221;
                /*[61, 62]*/
                double _imopVarPre2222;
                /*[61, 62]*/
                _imopVarPre2220 = xcedif[m];
                /*[61, 62]*/
                _imopVarPre2221 = xceref[m];
                /*[61, 62]*/
                _imopVarPre2222 = xce[m];
                /*[61, 62]*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2222, _imopVarPre2221, _imopVarPre2220);
                /*[61, 62]*/
            }
        }
    }
    /*[61, 62]*/
    /*[61, 62]*/
    if (*class_imopVarPre106 == 'U') {
    /*[61, 62]*/
        /*[61, 62]*/
        printf(" No reference values provided\n");
        /*[61, 62]*/
        /*[61, 62]*/
        printf(" No verification performed\n");
        /*[61, 62]*/
    } else {
    /*[61, 62]*/
        /*[61, 62]*/
        /*[61, 62]*/
        if (*verified_imopVarPre107) {
        /*[61, 62]*/
            /*[61, 62]*/
            printf(" Verification Successful\n");
            /*[61, 62]*/
        } else {
        /*[61, 62]*/
            /*[61, 62]*/
            printf(" Verification failed\n");
            /*[61, 62]*/
        }
    }
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
/*[6, 7, 13, 18, 23, 24, 27]*/
/*[6, 7, 13, 18, 23, 24, 27]*/
static void add(void ) {
/*[6, 7, 13, 18, 23, 24, 27]*/
    /*[6, 7, 13, 18, 23, 24, 27]*/
    int i;
    /*[6, 7, 13, 18, 23, 24, 27]*/
    int j;
    /*[6, 7, 13, 18, 23, 24, 27]*/
    int k;
    /*[6, 7, 13, 18, 23, 24, 27]*/
    int m;
    /*[6, 7, 13, 18, 23, 24, 27]*/
#pragma omp for nowait
    /*[6, 7, 13, 18, 23, 24, 27]*/
    /*[6, 7, 13, 18, 23, 24, 27]*/
    /*[6, 7, 13, 18, 23, 24, 27]*/
    for (m = 0; m < 5; m++) {
    /*[6, 7, 13, 18, 23, 24, 27]*/
        /*[6, 7, 13, 18, 23, 24, 27]*/
        /*[6, 7, 13, 18, 23, 24, 27]*/
        /*[6, 7, 13, 18, 23, 24, 27]*/
        /*[6, 7, 13, 18, 23, 24, 27]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            /*[6, 7, 13, 18, 23, 24, 27]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                /*[6, 7, 13, 18, 23, 24, 27]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[6, 7, 13, 18, 23, 24, 27]*/
                    /*[6, 7, 13, 18, 23, 24, 27]*/
                    u[m][i][j][k] = u[m][i][j][k] + rhs[m][i][j][k];
                }
            }
        }
    }
}
/*[]*/
/*[]*/
static void adi(void ) {
/*[]*/
    /*[63]*/
#pragma omp parallel
    {
    /*[63]*/
        /*[63]*/
        int i;
        /*[63]*/
        int j;
        /*[63]*/
        int k;
        /*[63]*/
        int m;
        /*[63]*/
        double aux;
        /*[63]*/
        double rho_inv;
        /*[63]*/
        double uijk;
        /*[63]*/
        double up1;
        /*[63]*/
        double um1;
        /*[63]*/
        double vijk;
        /*[63]*/
        double vp1;
        /*[63]*/
        double vm1;
        /*[63]*/
        double wijk;
        /*[63]*/
        double wp1;
        /*[63]*/
        double wm1;
        /*[63]*/
#pragma omp for nowait
        /*[63]*/
        /*[63]*/
        /*[63]*/
        for (i = 0; i <= grid_points[0] - 1; i++) {
        /*[63]*/
            /*[63]*/
            /*[63]*/
            /*[63]*/
            /*[63]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
            /*[63]*/
                /*[63]*/
                /*[63]*/
                /*[63]*/
                /*[63]*/
                for (k = 0; k <= grid_points[2] - 1; k++) {
                /*[63]*/
                    /*[63]*/
                    rho_inv = 1.0 / u[0][i][j][k];
                    /*[63]*/
                    rho_i[i][j][k] = rho_inv;
                    /*[63]*/
                    us[i][j][k] = u[1][i][j][k] * rho_inv;
                    /*[63]*/
                    vs[i][j][k] = u[2][i][j][k] * rho_inv;
                    /*[63]*/
                    ws[i][j][k] = u[3][i][j][k] * rho_inv;
                    /*[63]*/
                    square[i][j][k] = 0.5 * (u[1][i][j][k] * u[1][i][j][k] + u[2][i][j][k] * u[2][i][j][k] + u[3][i][j][k] * u[3][i][j][k]) * rho_inv;
                    /*[63]*/
                    qs[i][j][k] = square[i][j][k] * rho_inv;
                    /*[63]*/
                    aux = c1c2 * rho_inv * (u[4][i][j][k] - square[i][j][k]);
                    /*[63]*/
                    aux = sqrt(aux);
                    /*[63]*/
                    /*[63]*/
                    speed[i][j][k] = aux;
                    /*[63]*/
                    ainv[i][j][k] = 1.0 / aux;
                }
            }
        }
        /*[63]*/
        /*[63, 64, 65, 66, 67, 68, 69]*/
        /*[64, 65, 66, 67, 68, 69]*/
        /*[63]*/
        for (m = 0; m < 5; m++) {
        /*[63, 64, 65, 66, 67, 68, 69]*/
            /*[63, 64, 65, 66, 67, 68, 69]*/
#pragma omp for nowait
            /*[63, 64, 65, 66, 67, 68, 69]*/
            /*[63, 64, 65, 66, 67, 68, 69]*/
            /*[63, 64, 65, 66, 67, 68, 69]*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
            /*[63, 64, 65, 66, 67, 68, 69]*/
                /*[63, 64, 65, 66, 67, 68, 69]*/
                /*[63, 64, 65, 66, 67, 68, 69]*/
                /*[63, 64, 65, 66, 67, 68, 69]*/
                /*[63, 64, 65, 66, 67, 68, 69]*/
                for (j = 0; j <= grid_points[1] - 1; j++) {
                /*[63, 64, 65, 66, 67, 68, 69]*/
                    /*[63, 64, 65, 66, 67, 68, 69]*/
                    /*[63, 64, 65, 66, 67, 68, 69]*/
                    /*[63, 64, 65, 66, 67, 68, 69]*/
                    /*[63, 64, 65, 66, 67, 68, 69]*/
                    for (k = 0; k <= grid_points[2] - 1; k++) {
                    /*[63, 64, 65, 66, 67, 68, 69]*/
                        /*[63, 64, 65, 66, 67, 68, 69]*/
                        rhs[m][i][j][k] = forcing[m][i][j][k];
                    }
                }
            }
            /*[63, 64, 65, 66, 67, 68, 69]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[63, 64, 65, 66, 67, 68, 69]*/
#pragma omp barrier
        }
        /*[63, 64, 65, 66, 67, 68, 69]*/
#pragma omp for nowait
        /*[63, 64, 65, 66, 67, 68, 69]*/
        /*[63, 64, 65, 66, 67, 68, 69]*/
        /*[63, 64, 65, 66, 67, 68, 69]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[63, 64, 65, 66, 67, 68, 69]*/
            /*[63, 64, 65, 66, 67, 68, 69]*/
            /*[63, 64, 65, 66, 67, 68, 69]*/
            /*[63, 64, 65, 66, 67, 68, 69]*/
            /*[63, 64, 65, 66, 67, 68, 69]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[63, 64, 65, 66, 67, 68, 69]*/
                /*[63, 64, 65, 66, 67, 68, 69]*/
                /*[63, 64, 65, 66, 67, 68, 69]*/
                /*[63, 64, 65, 66, 67, 68, 69]*/
                /*[63, 64, 65, 66, 67, 68, 69]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[63, 64, 65, 66, 67, 68, 69]*/
                    /*[63, 64, 65, 66, 67, 68, 69]*/
                    uijk = us[i][j][k];
                    /*[63, 64, 65, 66, 67, 68, 69]*/
                    up1 = us[i + 1][j][k];
                    /*[63, 64, 65, 66, 67, 68, 69]*/
                    um1 = us[i - 1][j][k];
                    /*[63, 64, 65, 66, 67, 68, 69]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dx1tx1 * (u[0][i + 1][j][k] - 2.0 * u[0][i][j][k] + u[0][i - 1][j][k]) - tx2 * (u[1][i + 1][j][k] - u[1][i - 1][j][k]);
                    /*[63, 64, 65, 66, 67, 68, 69]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dx2tx1 * (u[1][i + 1][j][k] - 2.0 * u[1][i][j][k] + u[1][i - 1][j][k]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[1][i + 1][j][k] * up1 - u[1][i - 1][j][k] * um1 + (u[4][i + 1][j][k] - square[i + 1][j][k] - u[4][i - 1][j][k] + square[i - 1][j][k]) * c2);
                    /*[63, 64, 65, 66, 67, 68, 69]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dx3tx1 * (u[2][i + 1][j][k] - 2.0 * u[2][i][j][k] + u[2][i - 1][j][k]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[2][i + 1][j][k] * up1 - u[2][i - 1][j][k] * um1);
                    /*[63, 64, 65, 66, 67, 68, 69]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dx4tx1 * (u[3][i + 1][j][k] - 2.0 * u[3][i][j][k] + u[3][i - 1][j][k]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[3][i + 1][j][k] * up1 - u[3][i - 1][j][k] * um1);
                    /*[63, 64, 65, 66, 67, 68, 69]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dx5tx1 * (u[4][i + 1][j][k] - 2.0 * u[4][i][j][k] + u[4][i - 1][j][k]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[4][i + 1][j][k] * rho_i[i + 1][j][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i - 1][j][k] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[4][i + 1][j][k] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[4][i - 1][j][k] - c2 * square[i - 1][j][k]) * um1);
                }
            }
        }
        /*[63, 64, 65, 66, 67, 68, 69]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[63, 64, 65, 66, 67, 68, 69]*/
#pragma omp barrier
        /*[64, 65, 66, 67, 68, 69]*/
        i = 1;
        /*[64, 65, 66, 67, 68, 69]*/
        /*[64, 65, 66, 67, 68, 69]*/
        /*[64, 65, 66, 68, 69]*/
        /*[64, 65, 66, 67, 68, 69]*/
        for (m = 0; m < 5; m++) {
        /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
#pragma omp for nowait
            /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[64, 65, 66, 67, 68, 69]*/
                    /*[64, 65, 66, 67, 68, 69]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                }
            }
            /*[64, 65, 66, 67, 68, 69]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[64, 65, 66, 67, 68, 69]*/
#pragma omp barrier
        }
        /*[64, 65, 66, 67, 68, 69]*/
        i = 2;
        /*[64, 65, 66, 67, 68, 69]*/
        /*[64, 65, 66, 67, 68, 69]*/
        /*[64, 65, 66, 68, 69]*/
        /*[64, 65, 66, 67, 68, 69]*/
        for (m = 0; m < 5; m++) {
        /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
#pragma omp for nowait
            /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[64, 65, 66, 67, 68, 69]*/
                    /*[64, 65, 66, 67, 68, 69]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                }
            }
            /*[64, 65, 66, 67, 68, 69]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[64, 65, 66, 67, 68, 69]*/
#pragma omp barrier
        }
        /*[64, 65, 66, 67, 68, 69]*/
        /*[64, 65, 66, 67, 68, 69]*/
        /*[64, 65, 66, 68, 69]*/
        /*[64, 65, 66, 67, 68, 69]*/
        for (m = 0; m < 5; m++) {
        /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
#pragma omp for nowait
            /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
            for (i = 3 * 1; i <= grid_points[0] - 3 * 1 - 1; i++) {
            /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[64, 65, 66, 67, 68, 69]*/
                    /*[64, 65, 66, 67, 68, 69]*/
                    /*[64, 65, 66, 67, 68, 69]*/
                    /*[64, 65, 66, 67, 68, 69]*/
                    /*[64, 65, 66, 67, 68, 69]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[64, 65, 66, 67, 68, 69]*/
                        /*[64, 65, 66, 67, 68, 69]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                    }
                }
            }
            /*[64, 65, 66, 67, 68, 69]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[64, 65, 66, 67, 68, 69]*/
#pragma omp barrier
        }
        /*[64, 65, 66, 67, 68, 69]*/
        i = grid_points[0] - 3;
        /*[64, 65, 66, 67, 68, 69]*/
        /*[64, 65, 66, 67, 68, 69]*/
        /*[64, 65, 66, 68, 69]*/
        /*[64, 65, 66, 67, 68, 69]*/
        for (m = 0; m < 5; m++) {
        /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
#pragma omp for nowait
            /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[64, 65, 66, 67, 68, 69]*/
                    /*[64, 65, 66, 67, 68, 69]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k]);
                }
            }
            /*[64, 65, 66, 67, 68, 69]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[64, 65, 66, 67, 68, 69]*/
#pragma omp barrier
        }
        /*[64, 65, 66, 67, 68, 69]*/
        i = grid_points[0] - 2;
        /*[64, 65, 66, 67, 68, 69]*/
        /*[64, 65, 66, 67, 68, 69]*/
        /*[64, 65, 66, 68, 69]*/
        /*[64, 65, 66, 67, 68, 69]*/
        for (m = 0; m < 5; m++) {
        /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
#pragma omp for nowait
            /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
            /*[64, 65, 66, 67, 68, 69]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                /*[64, 65, 66, 67, 68, 69]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[64, 65, 66, 67, 68, 69]*/
                    /*[64, 65, 66, 67, 68, 69]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 5.0 * u[m][i][j][k]);
                }
            }
            /*[64, 65, 66, 67, 68, 69]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[64, 65, 66, 67, 68, 69]*/
#pragma omp barrier
        }
        /*[64, 65, 66, 67, 68, 69]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[64, 65, 66, 67, 68, 69]*/
#pragma omp barrier
        /*[64, 65, 66, 68, 69]*/
#pragma omp for nowait
        /*[64, 65, 66, 68, 69]*/
        /*[64, 65, 66, 68, 69]*/
        /*[64, 65, 66, 68, 69]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[64, 65, 66, 68, 69]*/
            /*[64, 65, 66, 68, 69]*/
            /*[64, 65, 66, 68, 69]*/
            /*[64, 65, 66, 68, 69]*/
            /*[64, 65, 66, 68, 69]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[64, 65, 66, 68, 69]*/
                /*[64, 65, 66, 68, 69]*/
                /*[64, 65, 66, 68, 69]*/
                /*[64, 65, 66, 68, 69]*/
                /*[64, 65, 66, 68, 69]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[64, 65, 66, 68, 69]*/
                    /*[64, 65, 66, 68, 69]*/
                    vijk = vs[i][j][k];
                    /*[64, 65, 66, 68, 69]*/
                    vp1 = vs[i][j + 1][k];
                    /*[64, 65, 66, 68, 69]*/
                    vm1 = vs[i][j - 1][k];
                    /*[64, 65, 66, 68, 69]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dy1ty1 * (u[0][i][j + 1][k] - 2.0 * u[0][i][j][k] + u[0][i][j - 1][k]) - ty2 * (u[2][i][j + 1][k] - u[2][i][j - 1][k]);
                    /*[64, 65, 66, 68, 69]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dy2ty1 * (u[1][i][j + 1][k] - 2.0 * u[1][i][j][k] + u[1][i][j - 1][k]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[1][i][j + 1][k] * vp1 - u[1][i][j - 1][k] * vm1);
                    /*[64, 65, 66, 68, 69]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dy3ty1 * (u[2][i][j + 1][k] - 2.0 * u[2][i][j][k] + u[2][i][j - 1][k]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[2][i][j + 1][k] * vp1 - u[2][i][j - 1][k] * vm1 + (u[4][i][j + 1][k] - square[i][j + 1][k] - u[4][i][j - 1][k] + square[i][j - 1][k]) * c2);
                    /*[64, 65, 66, 68, 69]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dy4ty1 * (u[3][i][j + 1][k] - 2.0 * u[3][i][j][k] + u[3][i][j - 1][k]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[3][i][j + 1][k] * vp1 - u[3][i][j - 1][k] * vm1);
                    /*[64, 65, 66, 68, 69]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dy5ty1 * (u[4][i][j + 1][k] - 2.0 * u[4][i][j][k] + u[4][i][j - 1][k]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[4][i][j + 1][k] * rho_i[i][j + 1][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j - 1][k] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[4][i][j + 1][k] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[4][i][j - 1][k] - c2 * square[i][j - 1][k]) * vm1);
                }
            }
        }
        /*[64, 65, 66, 68, 69]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[64, 65, 66, 68, 69]*/
#pragma omp barrier
        /*[64, 65, 66, 69]*/
        j = 1;
        /*[64, 65, 66, 69]*/
        /*[64, 65, 66, 69]*/
        /*[64, 65, 66]*/
        /*[64, 65, 66, 69]*/
        for (m = 0; m < 5; m++) {
        /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
#pragma omp for nowait
            /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[64, 65, 66, 69]*/
                    /*[64, 65, 66, 69]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                }
            }
            /*[64, 65, 66, 69]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[64, 65, 66, 69]*/
#pragma omp barrier
        }
        /*[64, 65, 66, 69]*/
        j = 2;
        /*[64, 65, 66, 69]*/
        /*[64, 65, 66, 69]*/
        /*[64, 65, 66]*/
        /*[64, 65, 66, 69]*/
        for (m = 0; m < 5; m++) {
        /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
#pragma omp for nowait
            /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[64, 65, 66, 69]*/
                    /*[64, 65, 66, 69]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                }
            }
            /*[64, 65, 66, 69]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[64, 65, 66, 69]*/
#pragma omp barrier
        }
        /*[64, 65, 66, 69]*/
        /*[64, 65, 66, 69]*/
        /*[64, 65, 66]*/
        /*[64, 65, 66, 69]*/
        for (m = 0; m < 5; m++) {
        /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
#pragma omp for nowait
            /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                for (j = 3 * 1; j <= grid_points[1] - 3 * 1 - 1; j++) {
                /*[64, 65, 66, 69]*/
                    /*[64, 65, 66, 69]*/
                    /*[64, 65, 66, 69]*/
                    /*[64, 65, 66, 69]*/
                    /*[64, 65, 66, 69]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[64, 65, 66, 69]*/
                        /*[64, 65, 66, 69]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                    }
                }
            }
            /*[64, 65, 66, 69]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[64, 65, 66, 69]*/
#pragma omp barrier
        }
        /*[64, 65, 66, 69]*/
        j = grid_points[1] - 3;
        /*[64, 65, 66, 69]*/
        /*[64, 65, 66, 69]*/
        /*[64, 65, 66]*/
        /*[64, 65, 66, 69]*/
        for (m = 0; m < 5; m++) {
        /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
#pragma omp for nowait
            /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[64, 65, 66, 69]*/
                    /*[64, 65, 66, 69]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k]);
                }
            }
            /*[64, 65, 66, 69]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[64, 65, 66, 69]*/
#pragma omp barrier
        }
        /*[64, 65, 66, 69]*/
        j = grid_points[1] - 2;
        /*[64, 65, 66, 69]*/
        /*[64, 65, 66, 69]*/
        /*[64, 65, 66]*/
        /*[64, 65, 66, 69]*/
        for (m = 0; m < 5; m++) {
        /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
#pragma omp for nowait
            /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
            /*[64, 65, 66, 69]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                /*[64, 65, 66, 69]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[64, 65, 66, 69]*/
                    /*[64, 65, 66, 69]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 5.0 * u[m][i][j][k]);
                }
            }
            /*[64, 65, 66, 69]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[64, 65, 66, 69]*/
#pragma omp barrier
        }
        /*[64, 65, 66, 69]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[64, 65, 66, 69]*/
#pragma omp barrier
        /*[64, 65, 66]*/
#pragma omp for nowait
        /*[64, 65, 66]*/
        /*[64, 65, 66]*/
        /*[64, 65, 66]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[64, 65, 66]*/
            /*[64, 65, 66]*/
            /*[64, 65, 66]*/
            /*[64, 65, 66]*/
            /*[64, 65, 66]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[64, 65, 66]*/
                /*[64, 65, 66]*/
                /*[64, 65, 66]*/
                /*[64, 65, 66]*/
                /*[64, 65, 66]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[64, 65, 66]*/
                    /*[64, 65, 66]*/
                    wijk = ws[i][j][k];
                    /*[64, 65, 66]*/
                    wp1 = ws[i][j][k + 1];
                    /*[64, 65, 66]*/
                    wm1 = ws[i][j][k - 1];
                    /*[64, 65, 66]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dz1tz1 * (u[0][i][j][k + 1] - 2.0 * u[0][i][j][k] + u[0][i][j][k - 1]) - tz2 * (u[3][i][j][k + 1] - u[3][i][j][k - 1]);
                    /*[64, 65, 66]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dz2tz1 * (u[1][i][j][k + 1] - 2.0 * u[1][i][j][k] + u[1][i][j][k - 1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[1][i][j][k + 1] * wp1 - u[1][i][j][k - 1] * wm1);
                    /*[64, 65, 66]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dz3tz1 * (u[2][i][j][k + 1] - 2.0 * u[2][i][j][k] + u[2][i][j][k - 1]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[2][i][j][k + 1] * wp1 - u[2][i][j][k - 1] * wm1);
                    /*[64, 65, 66]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dz4tz1 * (u[3][i][j][k + 1] - 2.0 * u[3][i][j][k] + u[3][i][j][k - 1]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[3][i][j][k + 1] * wp1 - u[3][i][j][k - 1] * wm1 + (u[4][i][j][k + 1] - square[i][j][k + 1] - u[4][i][j][k - 1] + square[i][j][k - 1]) * c2);
                    /*[64, 65, 66]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dz5tz1 * (u[4][i][j][k + 1] - 2.0 * u[4][i][j][k] + u[4][i][j][k - 1]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[4][i][j][k + 1] * rho_i[i][j][k + 1] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j][k - 1] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[4][i][j][k + 1] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[4][i][j][k - 1] - c2 * square[i][j][k - 1]) * wm1);
                }
            }
        }
        /*[64, 65, 66]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[64, 65, 66]*/
#pragma omp barrier
        /*[65, 66]*/
        k = 1;
        /*[65, 66]*/
        /*[65, 66]*/
        /*[66]*/
        /*[65, 66]*/
        for (m = 0; m < 5; m++) {
        /*[65, 66]*/
            /*[65, 66]*/
#pragma omp for nowait
            /*[65, 66]*/
            /*[65, 66]*/
            /*[65, 66]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[65, 66]*/
                    /*[65, 66]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                }
            }
            /*[65, 66]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[65, 66]*/
#pragma omp barrier
        }
        /*[65, 66]*/
        k = 2;
        /*[65, 66]*/
        /*[65, 66]*/
        /*[66]*/
        /*[65, 66]*/
        for (m = 0; m < 5; m++) {
        /*[65, 66]*/
            /*[65, 66]*/
#pragma omp for nowait
            /*[65, 66]*/
            /*[65, 66]*/
            /*[65, 66]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[65, 66]*/
                    /*[65, 66]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                }
            }
            /*[65, 66]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[65, 66]*/
#pragma omp barrier
        }
        /*[65, 66]*/
        /*[65, 66]*/
        /*[66]*/
        /*[65, 66]*/
        for (m = 0; m < 5; m++) {
        /*[65, 66]*/
            /*[65, 66]*/
#pragma omp for nowait
            /*[65, 66]*/
            /*[65, 66]*/
            /*[65, 66]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[65, 66]*/
                    /*[65, 66]*/
                    /*[65, 66]*/
                    /*[65, 66]*/
                    /*[65, 66]*/
                    for (k = 3 * 1; k <= grid_points[2] - 3 * 1 - 1; k++) {
                    /*[65, 66]*/
                        /*[65, 66]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                    }
                }
            }
            /*[65, 66]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[65, 66]*/
#pragma omp barrier
        }
        /*[65, 66]*/
        k = grid_points[2] - 3;
        /*[65, 66]*/
        /*[65, 66]*/
        /*[66]*/
        /*[65, 66]*/
        for (m = 0; m < 5; m++) {
        /*[65, 66]*/
            /*[65, 66]*/
#pragma omp for nowait
            /*[65, 66]*/
            /*[65, 66]*/
            /*[65, 66]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[65, 66]*/
                    /*[65, 66]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1]);
                }
            }
            /*[65, 66]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[65, 66]*/
#pragma omp barrier
        }
        /*[65, 66]*/
        k = grid_points[2] - 2;
        /*[65, 66]*/
        /*[65, 66]*/
        /*[66]*/
        /*[65, 66]*/
        for (m = 0; m < 5; m++) {
        /*[65, 66]*/
            /*[65, 66]*/
#pragma omp for nowait
            /*[65, 66]*/
            /*[65, 66]*/
            /*[65, 66]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[65, 66]*/
                    /*[65, 66]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 5.0 * u[m][i][j][k]);
                }
            }
            /*[65, 66]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[65, 66]*/
#pragma omp barrier
        }
        /*[65, 66]*/
        /*[65, 66]*/
        /*[66]*/
        /*[65, 66]*/
        for (m = 0; m < 5; m++) {
        /*[65, 66]*/
            /*[65, 66]*/
#pragma omp for nowait
            /*[65, 66]*/
            /*[65, 66]*/
            /*[65, 66]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                /*[65, 66]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[65, 66]*/
                    /*[65, 66]*/
                    /*[65, 66]*/
                    /*[65, 66]*/
                    /*[65, 66]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[65, 66]*/
                        /*[65, 66]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] * dt;
                    }
                }
            }
            /*[65, 66]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[65, 66]*/
#pragma omp barrier
        }
    }
    /*[]*/
    txinvr();
    /*[]*/
    /*[70]*/
#pragma omp parallel
    {
    /*[70]*/
        /*[70]*/
        int i;
        /*[70]*/
        int j;
        /*[70]*/
        int k;
        /*[70]*/
        int n;
        /*[70]*/
        int i1;
        /*[70]*/
        int i2;
        /*[70]*/
        int m;
        /*[70]*/
        double fac1;
        /*[70]*/
        double fac2;
        /*[70]*/
        double ru1;
        /*[70]*/
        int i_imopVarPre0;
        /*[70]*/
        int j_imopVarPre1;
        /*[70]*/
        int k_imopVarPre2;
        /*[70]*/
        /*[70, 71, 72, 73, 74, 75, 76]*/
        /*[70, 71, 72, 73, 74, 75, 76]*/
        /*[70]*/
        for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
        /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
            /*[70, 71, 72, 73, 74, 75, 76]*/
                /*[70, 71, 72, 73, 74, 75, 76]*/
#pragma omp for nowait
                /*[70, 71, 72, 73, 74, 75, 76]*/
                /*[70, 71, 72, 73, 74, 75, 76]*/
                /*[70, 71, 72, 73, 74, 75, 76]*/
                for (i_imopVarPre0 = 0; i_imopVarPre0 <= grid_points[0] - 1; i_imopVarPre0++) {
                /*[70, 71, 72, 73, 74, 75, 76]*/
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    ru1 = c3c4 * rho_i[i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    cv[i_imopVarPre0] = us[i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    int _imopVarPre715;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    double _imopVarPre716;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    int _imopVarPre717;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    double _imopVarPre718;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    int _imopVarPre725;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    double _imopVarPre726;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    int _imopVarPre727;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    double _imopVarPre728;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    int _imopVarPre821;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    double _imopVarPre822;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    int _imopVarPre823;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    double _imopVarPre824;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    int _imopVarPre831;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    double _imopVarPre832;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    _imopVarPre715 = ((dxmax + ru1) > dx1);
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    if (_imopVarPre715) {
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        _imopVarPre716 = (dxmax + ru1);
                    } else {
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        _imopVarPre716 = dx1;
                    }
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    _imopVarPre717 = ((dx5 + c1c5 * ru1) > _imopVarPre716);
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    if (_imopVarPre717) {
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        _imopVarPre718 = (dx5 + c1c5 * ru1);
                    } else {
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        _imopVarPre725 = ((dxmax + ru1) > dx1);
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        if (_imopVarPre725) {
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                            /*[70, 71, 72, 73, 74, 75, 76]*/
                            _imopVarPre726 = (dxmax + ru1);
                        } else {
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                            /*[70, 71, 72, 73, 74, 75, 76]*/
                            _imopVarPre726 = dx1;
                        }
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        _imopVarPre718 = _imopVarPre726;
                    }
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    _imopVarPre727 = ((dx2 + con43 * ru1) > _imopVarPre718);
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    if (_imopVarPre727) {
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        _imopVarPre728 = (dx2 + con43 * ru1);
                    } else {
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        _imopVarPre821 = ((dxmax + ru1) > dx1);
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        if (_imopVarPre821) {
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                            /*[70, 71, 72, 73, 74, 75, 76]*/
                            _imopVarPre822 = (dxmax + ru1);
                        } else {
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                            /*[70, 71, 72, 73, 74, 75, 76]*/
                            _imopVarPre822 = dx1;
                        }
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        _imopVarPre823 = ((dx5 + c1c5 * ru1) > _imopVarPre822);
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        if (_imopVarPre823) {
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                            /*[70, 71, 72, 73, 74, 75, 76]*/
                            _imopVarPre824 = (dx5 + c1c5 * ru1);
                        } else {
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                            /*[70, 71, 72, 73, 74, 75, 76]*/
                            _imopVarPre831 = ((dxmax + ru1) > dx1);
                            /*[70, 71, 72, 73, 74, 75, 76]*/
                            /*[70, 71, 72, 73, 74, 75, 76]*/
                            if (_imopVarPre831) {
                            /*[70, 71, 72, 73, 74, 75, 76]*/
                                /*[70, 71, 72, 73, 74, 75, 76]*/
                                _imopVarPre832 = (dxmax + ru1);
                            } else {
                            /*[70, 71, 72, 73, 74, 75, 76]*/
                                /*[70, 71, 72, 73, 74, 75, 76]*/
                                _imopVarPre832 = dx1;
                            }
                            /*[70, 71, 72, 73, 74, 75, 76]*/
                            _imopVarPre824 = _imopVarPre832;
                        }
                        /*[70, 71, 72, 73, 74, 75, 76]*/
                        _imopVarPre728 = _imopVarPre824;
                    }
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    rhon[i_imopVarPre0] = _imopVarPre728;
                }
                /*[70, 71, 72, 73, 74, 75, 76]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[70, 71, 72, 73, 74, 75, 76]*/
#pragma omp barrier
                /*[77, 78, 79, 80, 81, 82]*/
#pragma omp for nowait
                /*[77, 78, 79, 80, 81, 82]*/
                /*[77, 78, 79, 80, 81, 82]*/
                /*[77, 78, 79, 80, 81, 82]*/
                for (i_imopVarPre0 = 1; i_imopVarPre0 <= grid_points[0] - 2; i_imopVarPre0++) {
                /*[77, 78, 79, 80, 81, 82]*/
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = 0.0;
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = -dttx2 * cv[i_imopVarPre0 - 1] - dttx1 * rhon[i_imopVarPre0 - 1];
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = 1.0 + c2dttx1 * rhon[i_imopVarPre0];
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = dttx2 * cv[i_imopVarPre0 + 1] - dttx1 * rhon[i_imopVarPre0 + 1];
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = 0.0;
                }
                /*[77, 78, 79, 80, 81, 82]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[77, 78, 79, 80, 81, 82]*/
#pragma omp barrier
            }
        }
        /*[70, 71, 72, 73, 74, 75, 76]*/
        i_imopVarPre0 = 1;
        /*[70, 71, 72, 73, 74, 75, 76]*/
#pragma omp for nowait
        /*[70, 71, 72, 73, 74, 75, 76]*/
        /*[70, 71, 72, 73, 74, 75, 76]*/
        /*[70, 71, 72, 73, 74, 75, 76]*/
        for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
        /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
            /*[70, 71, 72, 73, 74, 75, 76]*/
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz5;
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz6;
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[3][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[4][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz1;
            }
        }
        /*[70, 71, 72, 73, 74, 75, 76]*/
#pragma omp for nowait
        /*[70, 71, 72, 73, 74, 75, 76]*/
        /*[70, 71, 72, 73, 74, 75, 76]*/
        /*[70, 71, 72, 73, 74, 75, 76]*/
        for (i_imopVarPre0 = 3; i_imopVarPre0 <= grid_points[0] - 4; i_imopVarPre0++) {
        /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
            /*[70, 71, 72, 73, 74, 75, 76]*/
                /*[70, 71, 72, 73, 74, 75, 76]*/
                /*[70, 71, 72, 73, 74, 75, 76]*/
                /*[70, 71, 72, 73, 74, 75, 76]*/
                /*[70, 71, 72, 73, 74, 75, 76]*/
                for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
                /*[70, 71, 72, 73, 74, 75, 76]*/
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz6;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                    /*[70, 71, 72, 73, 74, 75, 76]*/
                    lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
                }
            }
        }
        /*[70, 71, 72, 73, 74, 75, 76]*/
        i_imopVarPre0 = grid_points[0] - 3;
        /*[70, 71, 72, 73, 74, 75, 76]*/
#pragma omp for nowait
        /*[70, 71, 72, 73, 74, 75, 76]*/
        /*[70, 71, 72, 73, 74, 75, 76]*/
        /*[70, 71, 72, 73, 74, 75, 76]*/
        for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
        /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            /*[70, 71, 72, 73, 74, 75, 76]*/
            for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
            /*[70, 71, 72, 73, 74, 75, 76]*/
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz6;
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[0][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz1;
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[70, 71, 72, 73, 74, 75, 76]*/
                lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz5;
            }
        }
        /*[70, 71, 72, 73, 74, 75, 76]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[70, 71, 72, 73, 74, 75, 76]*/
#pragma omp barrier
        /*[77, 78, 79, 80, 81, 82]*/
#pragma omp for nowait
        /*[77, 78, 79, 80, 81, 82]*/
        /*[77, 78, 79, 80, 81, 82]*/
        /*[77, 78, 79, 80, 81, 82]*/
        for (i_imopVarPre0 = 1; i_imopVarPre0 <= grid_points[0] - 2; i_imopVarPre0++) {
        /*[77, 78, 79, 80, 81, 82]*/
            /*[77, 78, 79, 80, 81, 82]*/
            /*[77, 78, 79, 80, 81, 82]*/
            /*[77, 78, 79, 80, 81, 82]*/
            /*[77, 78, 79, 80, 81, 82]*/
            for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
            /*[77, 78, 79, 80, 81, 82]*/
                /*[77, 78, 79, 80, 81, 82]*/
                /*[77, 78, 79, 80, 81, 82]*/
                /*[77, 78, 79, 80, 81, 82]*/
                /*[77, 78, 79, 80, 81, 82]*/
                for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
                /*[77, 78, 79, 80, 81, 82]*/
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[0 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[1 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - dttx2 * speed[i_imopVarPre0 - 1][j_imopVarPre1][k_imopVarPre2];
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[2 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[3 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + dttx2 * speed[i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2];
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[4 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[0 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[1 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + dttx2 * speed[i_imopVarPre0 - 1][j_imopVarPre1][k_imopVarPre2];
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[2 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[3 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - dttx2 * speed[i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2];
                    /*[77, 78, 79, 80, 81, 82]*/
                    lhs[4 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                }
            }
        }
        /*[77, 78, 79, 80, 81, 82]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[77, 78, 79, 80, 81, 82]*/
#pragma omp barrier
        /*[71, 72, 73, 74, 75, 76]*/
        n = 0;
        /*[71, 72, 73, 74, 75, 76]*/
        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[71, 72, 73, 74, 75, 76]*/
        for (i = 0; i <= grid_points[0] - 3; i++) {
        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            i1 = i + 1;
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            i2 = i + 2;
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp for nowait
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    for (m = 0; m < 3; m++) {
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    for (m = 0; m < 3; m++) {
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                    }
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    for (m = 0; m < 3; m++) {
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                    }
                }
            }
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp barrier
        }
        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        i = grid_points[0] - 2;
        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        i1 = grid_points[0] - 1;
        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp for nowait
        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                fac1 = 1.0 / lhs[n + 2][i][j][k];
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                for (m = 0; m < 3; m++) {
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                for (m = 0; m < 3; m++) {
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                }
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                fac2 = 1. / lhs[n + 2][i1][j][k];
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                for (m = 0; m < 3; m++) {
                /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
                }
            }
        }
        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp barrier
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        for (m = 3; m < 5; m++) {
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            n = (m - 3 + 1) * 5;
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            for (i = 0; i <= grid_points[0] - 3; i++) {
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                i1 = i + 1;
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                i2 = i + 2;
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp for nowait
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                    }
                }
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp barrier
            }
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            i = grid_points[0] - 2;
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            i1 = grid_points[0] - 1;
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp for nowait
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    fac2 = 1. / lhs[n + 2][i1][j][k];
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
                }
            }
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp barrier
        }
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        i = grid_points[0] - 2;
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        i1 = grid_points[0] - 1;
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        n = 0;
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        for (m = 0; m < 3; m++) {
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp for nowait
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
                }
            }
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp barrier
        }
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        for (m = 3; m < 5; m++) {
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp for nowait
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    n = (m - 3 + 1) * 5;
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
                }
            }
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp barrier
        }
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        n = 0;
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        for (i = grid_points[0] - 3; i >= 0; i--) {
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            i1 = i + 1;
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            i2 = i + 2;
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp for nowait
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            for (m = 0; m < 3; m++) {
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                    }
                }
            }
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp barrier
        }
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        for (m = 3; m < 5; m++) {
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            n = (m - 3 + 1) * 5;
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
            for (i = grid_points[0] - 3; i >= 0; i--) {
            /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                i1 = i + 1;
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                i2 = i + 2;
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp for nowait
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                    }
                }
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp barrier
            }
        }
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[72, 73, 74, 75, 76, 78, 79, 80, 81, 82]*/
#pragma omp barrier
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        int i_imopVarPre78;
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        int j_imopVarPre79;
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        int k_imopVarPre80;
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        double r1;
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        double r2;
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        double r3;
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        double r4;
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        double r5;
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        double t1;
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        double t2;
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
#pragma omp for nowait
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        for (i_imopVarPre78 = 1; i_imopVarPre78 <= grid_points[0] - 2; i_imopVarPre78++) {
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
            /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
            for (j_imopVarPre79 = 1; j_imopVarPre79 <= grid_points[1] - 2; j_imopVarPre79++) {
            /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                for (k_imopVarPre80 = 1; k_imopVarPre80 <= grid_points[2] - 2; k_imopVarPre80++) {
                /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                    /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                    r1 = rhs[0][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                    /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                    r2 = rhs[1][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                    /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                    r3 = rhs[2][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                    /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                    r4 = rhs[3][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                    /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                    r5 = rhs[4][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                    /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                    t1 = bt * r3;
                    /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                    t2 = 0.5 * (r4 + r5);
                    /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                    rhs[0][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = -r2;
                    /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                    rhs[1][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = r1;
                    /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                    rhs[2][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = bt * (r4 - r5);
                    /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                    rhs[3][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = -t1 + t2;
                    /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
                    rhs[4][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = t1 + t2;
                }
            }
        }
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[72, 73, 74, 75, 76, 79, 80, 81, 82]*/
#pragma omp barrier
        /*[73, 74, 75, 76, 79, 80, 81, 82]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[73, 74, 75, 76, 79, 80, 81, 82]*/
#pragma omp barrier
        /*[73, 74, 75, 76, 80, 81, 82]*/
        int i_imopVarPre90;
        /*[73, 74, 75, 76, 80, 81, 82]*/
        int j_imopVarPre91;
        /*[73, 74, 75, 76, 80, 81, 82]*/
        int k_imopVarPre92;
        /*[73, 74, 75, 76, 80, 81, 82]*/
        int n_imopVarPre93;
        /*[73, 74, 75, 76, 80, 81, 82]*/
        int j1;
        /*[73, 74, 75, 76, 80, 81, 82]*/
        int j2;
        /*[73, 74, 75, 76, 80, 81, 82]*/
        int m_imopVarPre94;
        /*[73, 74, 75, 76, 80, 81, 82]*/
        double fac1_imopVarPre95;
        /*[73, 74, 75, 76, 80, 81, 82]*/
        double fac2_imopVarPre96;
        /*[73, 74, 75, 76, 80, 81, 82]*/
        double ru1_imopVarPre97;
        /*[73, 74, 75, 76, 80, 81, 82]*/
        int i_imopVarPre81;
        /*[73, 74, 75, 76, 80, 81, 82]*/
        int j_imopVarPre82;
        /*[73, 74, 75, 76, 80, 81, 82]*/
        int k_imopVarPre83;
        /*[73, 74, 75, 76, 80, 81, 82]*/
        /*[73, 74, 75, 76, 80, 81, 82]*/
        /*[73, 74, 75, 76, 80, 81, 82]*/
        /*[73, 74, 75, 76, 80, 81, 82]*/
        for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
        /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[74, 75, 76, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
            /*[73, 74, 75, 76, 80, 81, 82]*/
                /*[73, 74, 75, 76, 80, 81, 82]*/
#pragma omp for nowait
                /*[73, 74, 75, 76, 80, 81, 82]*/
                /*[73, 74, 75, 76, 80, 81, 82]*/
                /*[73, 74, 75, 76, 80, 81, 82]*/
                for (j_imopVarPre82 = 0; j_imopVarPre82 <= grid_points[1] - 1; j_imopVarPre82++) {
                /*[73, 74, 75, 76, 80, 81, 82]*/
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    ru1_imopVarPre97 = c3c4 * rho_i[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    cv[j_imopVarPre82] = vs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    int _imopVarPre1343;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    double _imopVarPre1344;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    int _imopVarPre1345;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    double _imopVarPre1346;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    int _imopVarPre1353;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    double _imopVarPre1354;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    int _imopVarPre1355;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    double _imopVarPre1356;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    int _imopVarPre1449;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    double _imopVarPre1450;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    int _imopVarPre1451;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    double _imopVarPre1452;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    int _imopVarPre1459;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    double _imopVarPre1460;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    _imopVarPre1343 = ((dymax + ru1_imopVarPre97) > dy1);
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    if (_imopVarPre1343) {
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        _imopVarPre1344 = (dymax + ru1_imopVarPre97);
                    } else {
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        _imopVarPre1344 = dy1;
                    }
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    _imopVarPre1345 = ((dy5 + c1c5 * ru1_imopVarPre97) > _imopVarPre1344);
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    if (_imopVarPre1345) {
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        _imopVarPre1346 = (dy5 + c1c5 * ru1_imopVarPre97);
                    } else {
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        _imopVarPre1353 = ((dymax + ru1_imopVarPre97) > dy1);
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        if (_imopVarPre1353) {
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                            /*[73, 74, 75, 76, 80, 81, 82]*/
                            _imopVarPre1354 = (dymax + ru1_imopVarPre97);
                        } else {
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                            /*[73, 74, 75, 76, 80, 81, 82]*/
                            _imopVarPre1354 = dy1;
                        }
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        _imopVarPre1346 = _imopVarPre1354;
                    }
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    _imopVarPre1355 = ((dy3 + con43 * ru1_imopVarPre97) > _imopVarPre1346);
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    if (_imopVarPre1355) {
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        _imopVarPre1356 = (dy3 + con43 * ru1_imopVarPre97);
                    } else {
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        _imopVarPre1449 = ((dymax + ru1_imopVarPre97) > dy1);
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        if (_imopVarPre1449) {
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                            /*[73, 74, 75, 76, 80, 81, 82]*/
                            _imopVarPre1450 = (dymax + ru1_imopVarPre97);
                        } else {
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                            /*[73, 74, 75, 76, 80, 81, 82]*/
                            _imopVarPre1450 = dy1;
                        }
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        _imopVarPre1451 = ((dy5 + c1c5 * ru1_imopVarPre97) > _imopVarPre1450);
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        if (_imopVarPre1451) {
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                            /*[73, 74, 75, 76, 80, 81, 82]*/
                            _imopVarPre1452 = (dy5 + c1c5 * ru1_imopVarPre97);
                        } else {
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                            /*[73, 74, 75, 76, 80, 81, 82]*/
                            _imopVarPre1459 = ((dymax + ru1_imopVarPre97) > dy1);
                            /*[73, 74, 75, 76, 80, 81, 82]*/
                            /*[73, 74, 75, 76, 80, 81, 82]*/
                            if (_imopVarPre1459) {
                            /*[73, 74, 75, 76, 80, 81, 82]*/
                                /*[73, 74, 75, 76, 80, 81, 82]*/
                                _imopVarPre1460 = (dymax + ru1_imopVarPre97);
                            } else {
                            /*[73, 74, 75, 76, 80, 81, 82]*/
                                /*[73, 74, 75, 76, 80, 81, 82]*/
                                _imopVarPre1460 = dy1;
                            }
                            /*[73, 74, 75, 76, 80, 81, 82]*/
                            _imopVarPre1452 = _imopVarPre1460;
                        }
                        /*[73, 74, 75, 76, 80, 81, 82]*/
                        _imopVarPre1356 = _imopVarPre1452;
                    }
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    rhoq[j_imopVarPre82] = _imopVarPre1356;
                }
                /*[73, 74, 75, 76, 80, 81, 82]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[73, 74, 75, 76, 80, 81, 82]*/
#pragma omp barrier
                /*[74, 75, 76, 80, 81, 82]*/
#pragma omp for nowait
                /*[74, 75, 76, 80, 81, 82]*/
                /*[74, 75, 76, 80, 81, 82]*/
                /*[74, 75, 76, 80, 81, 82]*/
                for (j_imopVarPre82 = 1; j_imopVarPre82 <= grid_points[1] - 2; j_imopVarPre82++) {
                /*[74, 75, 76, 80, 81, 82]*/
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = 0.0;
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = -dtty2 * cv[j_imopVarPre82 - 1] - dtty1 * rhoq[j_imopVarPre82 - 1];
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = 1.0 + c2dtty1 * rhoq[j_imopVarPre82];
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = dtty2 * cv[j_imopVarPre82 + 1] - dtty1 * rhoq[j_imopVarPre82 + 1];
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = 0.0;
                }
                /*[74, 75, 76, 80, 81, 82]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[74, 75, 76, 80, 81, 82]*/
#pragma omp barrier
            }
        }
        /*[73, 74, 75, 76, 80, 81, 82]*/
        j_imopVarPre82 = 1;
        /*[73, 74, 75, 76, 80, 81, 82]*/
#pragma omp for nowait
        /*[73, 74, 75, 76, 80, 81, 82]*/
        /*[73, 74, 75, 76, 80, 81, 82]*/
        /*[73, 74, 75, 76, 80, 81, 82]*/
        for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
        /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
            /*[73, 74, 75, 76, 80, 81, 82]*/
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz5;
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] - comz4;
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz6;
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[3][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] - comz4;
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[4][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz1;
            }
        }
        /*[73, 74, 75, 76, 80, 81, 82]*/
#pragma omp for nowait
        /*[73, 74, 75, 76, 80, 81, 82]*/
        /*[73, 74, 75, 76, 80, 81, 82]*/
        /*[73, 74, 75, 76, 80, 81, 82]*/
        for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
        /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            for (j_imopVarPre82 = 3; j_imopVarPre82 <= grid_points[1] - 4; j_imopVarPre82++) {
            /*[73, 74, 75, 76, 80, 81, 82]*/
                /*[73, 74, 75, 76, 80, 81, 82]*/
                /*[73, 74, 75, 76, 80, 81, 82]*/
                /*[73, 74, 75, 76, 80, 81, 82]*/
                /*[73, 74, 75, 76, 80, 81, 82]*/
                for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
                /*[73, 74, 75, 76, 80, 81, 82]*/
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz6;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                    /*[73, 74, 75, 76, 80, 81, 82]*/
                    lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
                }
            }
        }
        /*[73, 74, 75, 76, 80, 81, 82]*/
        j_imopVarPre82 = grid_points[1] - 3;
        /*[73, 74, 75, 76, 80, 81, 82]*/
#pragma omp for nowait
        /*[73, 74, 75, 76, 80, 81, 82]*/
        /*[73, 74, 75, 76, 80, 81, 82]*/
        /*[73, 74, 75, 76, 80, 81, 82]*/
        for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
        /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            /*[73, 74, 75, 76, 80, 81, 82]*/
            for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
            /*[73, 74, 75, 76, 80, 81, 82]*/
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz6;
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[0][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz1;
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] - comz4;
                /*[73, 74, 75, 76, 80, 81, 82]*/
                lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz5;
            }
        }
        /*[73, 74, 75, 76, 80, 81, 82]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[73, 74, 75, 76, 80, 81, 82]*/
#pragma omp barrier
        /*[74, 75, 76, 80, 81, 82]*/
#pragma omp for nowait
        /*[74, 75, 76, 80, 81, 82]*/
        /*[74, 75, 76, 80, 81, 82]*/
        /*[74, 75, 76, 80, 81, 82]*/
        for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
        /*[74, 75, 76, 80, 81, 82]*/
            /*[74, 75, 76, 80, 81, 82]*/
            /*[74, 75, 76, 80, 81, 82]*/
            /*[74, 75, 76, 80, 81, 82]*/
            /*[74, 75, 76, 80, 81, 82]*/
            for (j_imopVarPre82 = 1; j_imopVarPre82 <= grid_points[1] - 2; j_imopVarPre82++) {
            /*[74, 75, 76, 80, 81, 82]*/
                /*[74, 75, 76, 80, 81, 82]*/
                /*[74, 75, 76, 80, 81, 82]*/
                /*[74, 75, 76, 80, 81, 82]*/
                /*[74, 75, 76, 80, 81, 82]*/
                for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
                /*[74, 75, 76, 80, 81, 82]*/
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[0 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[1 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - dtty2 * speed[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83];
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[2 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[3 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + dtty2 * speed[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83];
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[4 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[0 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[1 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + dtty2 * speed[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83];
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[2 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[3 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - dtty2 * speed[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83];
                    /*[74, 75, 76, 80, 81, 82]*/
                    lhs[4 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                }
            }
        }
        /*[74, 75, 76, 80, 81, 82]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[74, 75, 76, 80, 81, 82]*/
#pragma omp barrier
        /*[74, 75, 76, 81, 82]*/
        n_imopVarPre93 = 0;
        /*[74, 75, 76, 81, 82]*/
        /*[74, 75, 76, 81, 82]*/
        /*[75, 76, 81, 82]*/
        /*[74, 75, 76, 81, 82]*/
        for (j_imopVarPre91 = 0; j_imopVarPre91 <= grid_points[1] - 3; j_imopVarPre91++) {
        /*[74, 75, 76, 81, 82]*/
            /*[74, 75, 76, 81, 82]*/
            j1 = j_imopVarPre91 + 1;
            /*[74, 75, 76, 81, 82]*/
            j2 = j_imopVarPre91 + 2;
            /*[74, 75, 76, 81, 82]*/
#pragma omp for nowait
            /*[74, 75, 76, 81, 82]*/
            /*[74, 75, 76, 81, 82]*/
            /*[74, 75, 76, 81, 82]*/
            for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
            /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                /*[74, 75, 76, 81, 82]*/
                    /*[74, 75, 76, 81, 82]*/
                    fac1_imopVarPre95 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[74, 75, 76, 81, 82]*/
                    lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[74, 75, 76, 81, 82]*/
                    lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[74, 75, 76, 81, 82]*/
                    /*[74, 75, 76, 81, 82]*/
                    /*[74, 75, 76, 81, 82]*/
                    /*[74, 75, 76, 81, 82]*/
                    for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                    /*[74, 75, 76, 81, 82]*/
                        /*[74, 75, 76, 81, 82]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    }
                    /*[74, 75, 76, 81, 82]*/
                    lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[74, 75, 76, 81, 82]*/
                    lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[74, 75, 76, 81, 82]*/
                    /*[74, 75, 76, 81, 82]*/
                    /*[74, 75, 76, 81, 82]*/
                    /*[74, 75, 76, 81, 82]*/
                    for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                    /*[74, 75, 76, 81, 82]*/
                        /*[74, 75, 76, 81, 82]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    }
                    /*[74, 75, 76, 81, 82]*/
                    lhs[n_imopVarPre93 + 1][i_imopVarPre90][j2][k_imopVarPre92] = lhs[n_imopVarPre93 + 1][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[74, 75, 76, 81, 82]*/
                    lhs[n_imopVarPre93 + 2][i_imopVarPre90][j2][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[74, 75, 76, 81, 82]*/
                    /*[74, 75, 76, 81, 82]*/
                    /*[74, 75, 76, 81, 82]*/
                    /*[74, 75, 76, 81, 82]*/
                    for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                    /*[74, 75, 76, 81, 82]*/
                        /*[74, 75, 76, 81, 82]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    }
                }
            }
            /*[74, 75, 76, 81, 82]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[74, 75, 76, 81, 82]*/
#pragma omp barrier
        }
        /*[74, 75, 76, 81, 82]*/
        j_imopVarPre91 = grid_points[1] - 2;
        /*[74, 75, 76, 81, 82]*/
        j1 = grid_points[1] - 1;
        /*[74, 75, 76, 81, 82]*/
#pragma omp for nowait
        /*[74, 75, 76, 81, 82]*/
        /*[74, 75, 76, 81, 82]*/
        /*[74, 75, 76, 81, 82]*/
        for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
        /*[74, 75, 76, 81, 82]*/
            /*[74, 75, 76, 81, 82]*/
            /*[74, 75, 76, 81, 82]*/
            /*[74, 75, 76, 81, 82]*/
            /*[74, 75, 76, 81, 82]*/
            for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
            /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                fac1_imopVarPre95 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                /*[74, 75, 76, 81, 82]*/
                lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                /*[74, 75, 76, 81, 82]*/
                lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                /*[74, 75, 76, 81, 82]*/
                    /*[74, 75, 76, 81, 82]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                }
                /*[74, 75, 76, 81, 82]*/
                lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                /*[74, 75, 76, 81, 82]*/
                lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                /*[74, 75, 76, 81, 82]*/
                    /*[74, 75, 76, 81, 82]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                }
                /*[74, 75, 76, 81, 82]*/
                fac2_imopVarPre96 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92];
                /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                /*[74, 75, 76, 81, 82]*/
                for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
                /*[74, 75, 76, 81, 82]*/
                    /*[74, 75, 76, 81, 82]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = fac2_imopVarPre96 * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92];
                }
            }
        }
        /*[74, 75, 76, 81, 82]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[74, 75, 76, 81, 82]*/
#pragma omp barrier
        /*[75, 76, 81, 82]*/
        /*[75, 76, 81, 82]*/
        /*[75, 76, 82]*/
        /*[75, 76, 81, 82]*/
        for (m_imopVarPre94 = 3; m_imopVarPre94 < 5; m_imopVarPre94++) {
        /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
            n_imopVarPre93 = (m_imopVarPre94 - 3 + 1) * 5;
            /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
            /*[75, 76, 82]*/
            /*[75, 76, 81, 82]*/
            for (j_imopVarPre91 = 0; j_imopVarPre91 <= grid_points[1] - 3; j_imopVarPre91++) {
            /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                j1 = j_imopVarPre91 + 1;
                /*[75, 76, 81, 82]*/
                j2 = j_imopVarPre91 + 2;
                /*[75, 76, 81, 82]*/
#pragma omp for nowait
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
                /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                    /*[75, 76, 81, 82]*/
                        /*[75, 76, 81, 82]*/
                        fac1_imopVarPre95 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[75, 76, 81, 82]*/
                        lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[75, 76, 81, 82]*/
                        lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[75, 76, 81, 82]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[75, 76, 81, 82]*/
                        lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[75, 76, 81, 82]*/
                        lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[75, 76, 81, 82]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[75, 76, 81, 82]*/
                        lhs[n_imopVarPre93 + 1][i_imopVarPre90][j2][k_imopVarPre92] = lhs[n_imopVarPre93 + 1][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[75, 76, 81, 82]*/
                        lhs[n_imopVarPre93 + 2][i_imopVarPre90][j2][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                        /*[75, 76, 81, 82]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92] - lhs[n_imopVarPre93 + 0][i_imopVarPre90][j2][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    }
                }
                /*[75, 76, 81, 82]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[75, 76, 81, 82]*/
#pragma omp barrier
            }
            /*[75, 76, 81, 82]*/
            j_imopVarPre91 = grid_points[1] - 2;
            /*[75, 76, 81, 82]*/
            j1 = grid_points[1] - 1;
            /*[75, 76, 81, 82]*/
#pragma omp for nowait
            /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
            for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
            /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    fac1_imopVarPre95 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[75, 76, 81, 82]*/
                    lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[75, 76, 81, 82]*/
                    lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[75, 76, 81, 82]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = fac1_imopVarPre95 * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[75, 76, 81, 82]*/
                    lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[75, 76, 81, 82]*/
                    lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] = lhs[n_imopVarPre93 + 3][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[75, 76, 81, 82]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 1][i_imopVarPre90][j1][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92];
                    /*[75, 76, 81, 82]*/
                    fac2_imopVarPre96 = 1. / lhs[n_imopVarPre93 + 2][i_imopVarPre90][j1][k_imopVarPre92];
                    /*[75, 76, 81, 82]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] = fac2_imopVarPre96 * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92];
                }
            }
            /*[75, 76, 81, 82]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[75, 76, 81, 82]*/
#pragma omp barrier
        }
        /*[75, 76, 81, 82]*/
        j_imopVarPre91 = grid_points[1] - 2;
        /*[75, 76, 81, 82]*/
        j1 = grid_points[1] - 1;
        /*[75, 76, 81, 82]*/
        n_imopVarPre93 = 0;
        /*[75, 76, 81, 82]*/
        /*[75, 76, 81, 82]*/
        /*[75, 76, 82]*/
        /*[75, 76, 81, 82]*/
        for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
        /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
#pragma omp for nowait
            /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
            for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
            /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] - lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92];
                }
            }
            /*[75, 76, 81, 82]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[75, 76, 81, 82]*/
#pragma omp barrier
        }
        /*[75, 76, 81, 82]*/
        /*[75, 76, 81, 82]*/
        /*[75, 76, 82]*/
        /*[75, 76, 81, 82]*/
        for (m_imopVarPre94 = 3; m_imopVarPre94 < 5; m_imopVarPre94++) {
        /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
#pragma omp for nowait
            /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
            for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
            /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    n_imopVarPre93 = (m_imopVarPre94 - 3 + 1) * 5;
                    /*[75, 76, 81, 82]*/
                    rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] - lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92];
                }
            }
            /*[75, 76, 81, 82]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[75, 76, 81, 82]*/
#pragma omp barrier
        }
        /*[75, 76, 81, 82]*/
        n_imopVarPre93 = 0;
        /*[75, 76, 81, 82]*/
        /*[75, 76, 81, 82]*/
        /*[75, 76, 81, 82]*/
        /*[75, 76, 81, 82]*/
        for (m_imopVarPre94 = 0; m_imopVarPre94 < 3; m_imopVarPre94++) {
        /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
            /*[75, 76, 82]*/
            /*[75, 76, 81, 82]*/
            for (j_imopVarPre91 = grid_points[1] - 3; j_imopVarPre91 >= 0; j_imopVarPre91--) {
            /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                j1 = j_imopVarPre91 + 1;
                /*[75, 76, 81, 82]*/
                j2 = j_imopVarPre91 + 2;
                /*[75, 76, 81, 82]*/
#pragma omp for nowait
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
                /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                    /*[75, 76, 81, 82]*/
                        /*[75, 76, 81, 82]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] - lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92];
                    }
                }
                /*[75, 76, 81, 82]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[75, 76, 81, 82]*/
#pragma omp barrier
            }
        }
        /*[75, 76, 81, 82]*/
        /*[75, 76, 81, 82]*/
        /*[75, 76, 81, 82]*/
        /*[75, 76, 81, 82]*/
        for (m_imopVarPre94 = 3; m_imopVarPre94 < 5; m_imopVarPre94++) {
        /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
            n_imopVarPre93 = (m_imopVarPre94 - 3 + 1) * 5;
            /*[75, 76, 81, 82]*/
            /*[75, 76, 81, 82]*/
            /*[75, 76, 82]*/
            /*[75, 76, 81, 82]*/
            for (j_imopVarPre91 = grid_points[1] - 3; j_imopVarPre91 >= 0; j_imopVarPre91--) {
            /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                j1 = j_imopVarPre91 + 1;
                /*[75, 76, 81, 82]*/
                j2 = j1 + 1;
                /*[75, 76, 81, 82]*/
#pragma omp for nowait
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                /*[75, 76, 81, 82]*/
                for (i_imopVarPre90 = 1; i_imopVarPre90 <= grid_points[0] - 2; i_imopVarPre90++) {
                /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    /*[75, 76, 81, 82]*/
                    for (k_imopVarPre92 = 1; k_imopVarPre92 <= grid_points[2] - 2; k_imopVarPre92++) {
                    /*[75, 76, 81, 82]*/
                        /*[75, 76, 81, 82]*/
                        rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] = rhs[m_imopVarPre94][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] - lhs[n_imopVarPre93 + 3][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j1][k_imopVarPre92] - lhs[n_imopVarPre93 + 4][i_imopVarPre90][j_imopVarPre91][k_imopVarPre92] * rhs[m_imopVarPre94][i_imopVarPre90][j2][k_imopVarPre92];
                    }
                }
                /*[75, 76, 81, 82]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[75, 76, 81, 82]*/
#pragma omp barrier
            }
        }
        /*[75, 76, 81, 82]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[75, 76, 81, 82]*/
#pragma omp barrier
        /*[75, 76, 82]*/
        int i_imopVarPre87;
        /*[75, 76, 82]*/
        int j_imopVarPre88;
        /*[75, 76, 82]*/
        int k_imopVarPre89;
        /*[75, 76, 82]*/
        double r1_imopVarPre98;
        /*[75, 76, 82]*/
        double r2_imopVarPre99;
        /*[75, 76, 82]*/
        double r3_imopVarPre100;
        /*[75, 76, 82]*/
        double r4_imopVarPre101;
        /*[75, 76, 82]*/
        double r5_imopVarPre102;
        /*[75, 76, 82]*/
        double t1_imopVarPre103;
        /*[75, 76, 82]*/
        double t2_imopVarPre104;
        /*[75, 76, 82]*/
#pragma omp for nowait
        /*[75, 76, 82]*/
        /*[75, 76, 82]*/
        /*[75, 76, 82]*/
        for (i_imopVarPre87 = 1; i_imopVarPre87 <= grid_points[0] - 2; i_imopVarPre87++) {
        /*[75, 76, 82]*/
            /*[75, 76, 82]*/
            /*[75, 76, 82]*/
            /*[75, 76, 82]*/
            /*[75, 76, 82]*/
            for (j_imopVarPre88 = 1; j_imopVarPre88 <= grid_points[1] - 2; j_imopVarPre88++) {
            /*[75, 76, 82]*/
                /*[75, 76, 82]*/
                /*[75, 76, 82]*/
                /*[75, 76, 82]*/
                /*[75, 76, 82]*/
                for (k_imopVarPre89 = 1; k_imopVarPre89 <= grid_points[2] - 2; k_imopVarPre89++) {
                /*[75, 76, 82]*/
                    /*[75, 76, 82]*/
                    r1_imopVarPre98 = rhs[0][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                    /*[75, 76, 82]*/
                    r2_imopVarPre99 = rhs[1][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                    /*[75, 76, 82]*/
                    r3_imopVarPre100 = rhs[2][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                    /*[75, 76, 82]*/
                    r4_imopVarPre101 = rhs[3][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                    /*[75, 76, 82]*/
                    r5_imopVarPre102 = rhs[4][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                    /*[75, 76, 82]*/
                    t1_imopVarPre103 = bt * r1_imopVarPre98;
                    /*[75, 76, 82]*/
                    t2_imopVarPre104 = 0.5 * (r4_imopVarPre101 + r5_imopVarPre102);
                    /*[75, 76, 82]*/
                    rhs[0][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = bt * (r4_imopVarPre101 - r5_imopVarPre102);
                    /*[75, 76, 82]*/
                    rhs[1][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = -r3_imopVarPre100;
                    /*[75, 76, 82]*/
                    rhs[2][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = r2_imopVarPre99;
                    /*[75, 76, 82]*/
                    rhs[3][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = -t1_imopVarPre103 + t2_imopVarPre104;
                    /*[75, 76, 82]*/
                    rhs[4][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = t1_imopVarPre103 + t2_imopVarPre104;
                }
            }
        }
        /*[75, 76, 82]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[75, 76, 82]*/
#pragma omp barrier
    }
    /*[76, 82, 83]*/
#pragma omp parallel
    {
    /*[76, 82, 83]*/
        /*[76, 82, 83]*/
        int i;
        /*[76, 82, 83]*/
        int j;
        /*[76, 82, 83]*/
        int k;
        /*[76, 82, 83]*/
        int n;
        /*[76, 82, 83]*/
        int k1;
        /*[76, 82, 83]*/
        int k2;
        /*[76, 82, 83]*/
        int m;
        /*[76, 82, 83]*/
        double fac1;
        /*[76, 82, 83]*/
        double fac2;
        /*[76, 82, 83]*/
        double ru1;
        /*[76, 82, 83]*/
        int i_imopVarPre84;
        /*[76, 82, 83]*/
        int j_imopVarPre85;
        /*[76, 82, 83]*/
        int k_imopVarPre86;
        /*[76, 82, 83]*/
        /*[76, 82, 83, 84, 85, 86]*/
        /*[76, 82, 83, 84, 85, 86]*/
        /*[76, 82, 83]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[76, 82, 83, 84, 85, 86]*/
                /*[76, 82, 83, 84, 85, 86]*/
#pragma omp for nowait
                /*[76, 82, 83, 84, 85, 86]*/
                /*[76, 82, 83, 84, 85, 86]*/
                /*[76, 82, 83, 84, 85, 86]*/
                for (k_imopVarPre86 = 0; k_imopVarPre86 <= grid_points[2] - 1; k_imopVarPre86++) {
                /*[76, 82, 83, 84, 85, 86]*/
                    /*[76, 82, 83, 84, 85, 86]*/
                    ru1 = c3c4 * rho_i[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[76, 82, 83, 84, 85, 86]*/
                    cv[k_imopVarPre86] = ws[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[76, 82, 83, 84, 85, 86]*/
                    int _imopVarPre1971;
                    /*[76, 82, 83, 84, 85, 86]*/
                    double _imopVarPre1972;
                    /*[76, 82, 83, 84, 85, 86]*/
                    int _imopVarPre1973;
                    /*[76, 82, 83, 84, 85, 86]*/
                    double _imopVarPre1974;
                    /*[76, 82, 83, 84, 85, 86]*/
                    int _imopVarPre1981;
                    /*[76, 82, 83, 84, 85, 86]*/
                    double _imopVarPre1982;
                    /*[76, 82, 83, 84, 85, 86]*/
                    int _imopVarPre1983;
                    /*[76, 82, 83, 84, 85, 86]*/
                    double _imopVarPre1984;
                    /*[76, 82, 83, 84, 85, 86]*/
                    int _imopVarPre2077;
                    /*[76, 82, 83, 84, 85, 86]*/
                    double _imopVarPre2078;
                    /*[76, 82, 83, 84, 85, 86]*/
                    int _imopVarPre2079;
                    /*[76, 82, 83, 84, 85, 86]*/
                    double _imopVarPre2080;
                    /*[76, 82, 83, 84, 85, 86]*/
                    int _imopVarPre2087;
                    /*[76, 82, 83, 84, 85, 86]*/
                    double _imopVarPre2088;
                    /*[76, 82, 83, 84, 85, 86]*/
                    _imopVarPre1971 = ((dzmax + ru1) > dz1);
                    /*[76, 82, 83, 84, 85, 86]*/
                    /*[76, 82, 83, 84, 85, 86]*/
                    if (_imopVarPre1971) {
                    /*[76, 82, 83, 84, 85, 86]*/
                        /*[76, 82, 83, 84, 85, 86]*/
                        _imopVarPre1972 = (dzmax + ru1);
                    } else {
                    /*[76, 82, 83, 84, 85, 86]*/
                        /*[76, 82, 83, 84, 85, 86]*/
                        _imopVarPre1972 = dz1;
                    }
                    /*[76, 82, 83, 84, 85, 86]*/
                    _imopVarPre1973 = ((dz5 + c1c5 * ru1) > _imopVarPre1972);
                    /*[76, 82, 83, 84, 85, 86]*/
                    /*[76, 82, 83, 84, 85, 86]*/
                    if (_imopVarPre1973) {
                    /*[76, 82, 83, 84, 85, 86]*/
                        /*[76, 82, 83, 84, 85, 86]*/
                        _imopVarPre1974 = (dz5 + c1c5 * ru1);
                    } else {
                    /*[76, 82, 83, 84, 85, 86]*/
                        /*[76, 82, 83, 84, 85, 86]*/
                        _imopVarPre1981 = ((dzmax + ru1) > dz1);
                        /*[76, 82, 83, 84, 85, 86]*/
                        /*[76, 82, 83, 84, 85, 86]*/
                        if (_imopVarPre1981) {
                        /*[76, 82, 83, 84, 85, 86]*/
                            /*[76, 82, 83, 84, 85, 86]*/
                            _imopVarPre1982 = (dzmax + ru1);
                        } else {
                        /*[76, 82, 83, 84, 85, 86]*/
                            /*[76, 82, 83, 84, 85, 86]*/
                            _imopVarPre1982 = dz1;
                        }
                        /*[76, 82, 83, 84, 85, 86]*/
                        _imopVarPre1974 = _imopVarPre1982;
                    }
                    /*[76, 82, 83, 84, 85, 86]*/
                    _imopVarPre1983 = ((dz4 + con43 * ru1) > _imopVarPre1974);
                    /*[76, 82, 83, 84, 85, 86]*/
                    /*[76, 82, 83, 84, 85, 86]*/
                    if (_imopVarPre1983) {
                    /*[76, 82, 83, 84, 85, 86]*/
                        /*[76, 82, 83, 84, 85, 86]*/
                        _imopVarPre1984 = (dz4 + con43 * ru1);
                    } else {
                    /*[76, 82, 83, 84, 85, 86]*/
                        /*[76, 82, 83, 84, 85, 86]*/
                        _imopVarPre2077 = ((dzmax + ru1) > dz1);
                        /*[76, 82, 83, 84, 85, 86]*/
                        /*[76, 82, 83, 84, 85, 86]*/
                        if (_imopVarPre2077) {
                        /*[76, 82, 83, 84, 85, 86]*/
                            /*[76, 82, 83, 84, 85, 86]*/
                            _imopVarPre2078 = (dzmax + ru1);
                        } else {
                        /*[76, 82, 83, 84, 85, 86]*/
                            /*[76, 82, 83, 84, 85, 86]*/
                            _imopVarPre2078 = dz1;
                        }
                        /*[76, 82, 83, 84, 85, 86]*/
                        _imopVarPre2079 = ((dz5 + c1c5 * ru1) > _imopVarPre2078);
                        /*[76, 82, 83, 84, 85, 86]*/
                        /*[76, 82, 83, 84, 85, 86]*/
                        if (_imopVarPre2079) {
                        /*[76, 82, 83, 84, 85, 86]*/
                            /*[76, 82, 83, 84, 85, 86]*/
                            _imopVarPre2080 = (dz5 + c1c5 * ru1);
                        } else {
                        /*[76, 82, 83, 84, 85, 86]*/
                            /*[76, 82, 83, 84, 85, 86]*/
                            _imopVarPre2087 = ((dzmax + ru1) > dz1);
                            /*[76, 82, 83, 84, 85, 86]*/
                            /*[76, 82, 83, 84, 85, 86]*/
                            if (_imopVarPre2087) {
                            /*[76, 82, 83, 84, 85, 86]*/
                                /*[76, 82, 83, 84, 85, 86]*/
                                _imopVarPre2088 = (dzmax + ru1);
                            } else {
                            /*[76, 82, 83, 84, 85, 86]*/
                                /*[76, 82, 83, 84, 85, 86]*/
                                _imopVarPre2088 = dz1;
                            }
                            /*[76, 82, 83, 84, 85, 86]*/
                            _imopVarPre2080 = _imopVarPre2088;
                        }
                        /*[76, 82, 83, 84, 85, 86]*/
                        _imopVarPre1984 = _imopVarPre2080;
                    }
                    /*[76, 82, 83, 84, 85, 86]*/
                    rhos[k_imopVarPre86] = _imopVarPre1984;
                }
                /*[76, 82, 83, 84, 85, 86]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[76, 82, 83, 84, 85, 86]*/
#pragma omp barrier
                /*[76, 82, 87, 88, 89]*/
#pragma omp for nowait
                /*[76, 82, 87, 88, 89]*/
                /*[76, 82, 87, 88, 89]*/
                /*[76, 82, 87, 88, 89]*/
                for (k_imopVarPre86 = 1; k_imopVarPre86 <= grid_points[2] - 2; k_imopVarPre86++) {
                /*[76, 82, 87, 88, 89]*/
                    /*[76, 82, 87, 88, 89]*/
                    lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = 0.0;
                    /*[76, 82, 87, 88, 89]*/
                    lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = -dttz2 * cv[k_imopVarPre86 - 1] - dttz1 * rhos[k_imopVarPre86 - 1];
                    /*[76, 82, 87, 88, 89]*/
                    lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = 1.0 + c2dttz1 * rhos[k_imopVarPre86];
                    /*[76, 82, 87, 88, 89]*/
                    lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = dttz2 * cv[k_imopVarPre86 + 1] - dttz1 * rhos[k_imopVarPre86 + 1];
                    /*[76, 82, 87, 88, 89]*/
                    lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = 0.0;
                }
                /*[76, 82, 87, 88, 89]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[76, 82, 87, 88, 89]*/
#pragma omp barrier
            }
        }
        /*[76, 82, 83, 84, 85, 86]*/
        k_imopVarPre86 = 1;
        /*[76, 82, 83, 84, 85, 86]*/
#pragma omp for nowait
        /*[76, 82, 83, 84, 85, 86]*/
        /*[76, 82, 83, 84, 85, 86]*/
        /*[76, 82, 83, 84, 85, 86]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[76, 82, 83, 84, 85, 86]*/
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz5;
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] - comz4;
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz6;
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] - comz4;
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz1;
            }
        }
        /*[76, 82, 83, 84, 85, 86]*/
#pragma omp for nowait
        /*[76, 82, 83, 84, 85, 86]*/
        /*[76, 82, 83, 84, 85, 86]*/
        /*[76, 82, 83, 84, 85, 86]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[76, 82, 83, 84, 85, 86]*/
                /*[76, 82, 83, 84, 85, 86]*/
                /*[76, 82, 83, 84, 85, 86]*/
                /*[76, 82, 83, 84, 85, 86]*/
                /*[76, 82, 83, 84, 85, 86]*/
                for (k_imopVarPre86 = 3; k_imopVarPre86 <= grid_points[2] - 4; k_imopVarPre86++) {
                /*[76, 82, 83, 84, 85, 86]*/
                    /*[76, 82, 83, 84, 85, 86]*/
                    lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                    /*[76, 82, 83, 84, 85, 86]*/
                    lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                    /*[76, 82, 83, 84, 85, 86]*/
                    lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz6;
                    /*[76, 82, 83, 84, 85, 86]*/
                    lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                    /*[76, 82, 83, 84, 85, 86]*/
                    lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                }
            }
        }
        /*[76, 82, 83, 84, 85, 86]*/
        k_imopVarPre86 = grid_points[2] - 3;
        /*[76, 82, 83, 84, 85, 86]*/
#pragma omp for nowait
        /*[76, 82, 83, 84, 85, 86]*/
        /*[76, 82, 83, 84, 85, 86]*/
        /*[76, 82, 83, 84, 85, 86]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            /*[76, 82, 83, 84, 85, 86]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[76, 82, 83, 84, 85, 86]*/
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz6;
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz1;
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] - comz4;
                /*[76, 82, 83, 84, 85, 86]*/
                lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz5;
            }
        }
        /*[76, 82, 83, 84, 85, 86]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[76, 82, 83, 84, 85, 86]*/
#pragma omp barrier
        /*[76, 82, 87, 88, 89]*/
#pragma omp for nowait
        /*[76, 82, 87, 88, 89]*/
        /*[76, 82, 87, 88, 89]*/
        /*[76, 82, 87, 88, 89]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[76, 82, 87, 88, 89]*/
            /*[76, 82, 87, 88, 89]*/
            /*[76, 82, 87, 88, 89]*/
            /*[76, 82, 87, 88, 89]*/
            /*[76, 82, 87, 88, 89]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[76, 82, 87, 88, 89]*/
                /*[76, 82, 87, 88, 89]*/
                /*[76, 82, 87, 88, 89]*/
                /*[76, 82, 87, 88, 89]*/
                /*[76, 82, 87, 88, 89]*/
                for (k_imopVarPre86 = 1; k_imopVarPre86 <= grid_points[2] - 2; k_imopVarPre86++) {
                /*[76, 82, 87, 88, 89]*/
                    /*[76, 82, 87, 88, 89]*/
                    lhs[0 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[76, 82, 87, 88, 89]*/
                    lhs[1 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 - 1];
                    /*[76, 82, 87, 88, 89]*/
                    lhs[2 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[76, 82, 87, 88, 89]*/
                    lhs[3 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1];
                    /*[76, 82, 87, 88, 89]*/
                    lhs[4 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[76, 82, 87, 88, 89]*/
                    lhs[0 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[76, 82, 87, 88, 89]*/
                    lhs[1 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 - 1];
                    /*[76, 82, 87, 88, 89]*/
                    lhs[2 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[76, 82, 87, 88, 89]*/
                    lhs[3 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1];
                    /*[76, 82, 87, 88, 89]*/
                    lhs[4 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                }
            }
        }
        /*[76, 82, 87, 88, 89]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[76, 82, 87, 88, 89]*/
#pragma omp barrier
        /*[76, 82, 84, 85, 86]*/
        n = 0;
        /*[76, 82, 84, 85, 86]*/
#pragma omp for nowait
        /*[76, 82, 84, 85, 86]*/
        /*[76, 82, 84, 85, 86]*/
        /*[76, 82, 84, 85, 86]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[76, 82, 84, 85, 86]*/
            /*[76, 82, 84, 85, 86]*/
            /*[76, 82, 84, 85, 86]*/
            /*[76, 82, 84, 85, 86]*/
            /*[76, 82, 84, 85, 86]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[76, 82, 84, 85, 86]*/
                /*[76, 82, 84, 85, 86]*/
                /*[76, 82, 84, 85, 86]*/
                /*[76, 82, 84, 85, 86]*/
                /*[76, 82, 84, 85, 86]*/
                for (k = 0; k <= grid_points[2] - 3; k++) {
                /*[76, 82, 84, 85, 86]*/
                    /*[76, 82, 84, 85, 86]*/
                    k1 = k + 1;
                    /*[76, 82, 84, 85, 86]*/
                    k2 = k + 2;
                    /*[76, 82, 84, 85, 86]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[76, 82, 84, 85, 86]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[76, 82, 84, 85, 86]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[76, 82, 84, 85, 86]*/
                    /*[76, 82, 84, 85, 86]*/
                    /*[76, 82, 84, 85, 86]*/
                    /*[76, 82, 84, 85, 86]*/
                    for (m = 0; m < 3; m++) {
                    /*[76, 82, 84, 85, 86]*/
                        /*[76, 82, 84, 85, 86]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*[76, 82, 84, 85, 86]*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*[76, 82, 84, 85, 86]*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*[76, 82, 84, 85, 86]*/
                    /*[76, 82, 84, 85, 86]*/
                    /*[76, 82, 84, 85, 86]*/
                    /*[76, 82, 84, 85, 86]*/
                    for (m = 0; m < 3; m++) {
                    /*[76, 82, 84, 85, 86]*/
                        /*[76, 82, 84, 85, 86]*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    }
                    /*[76, 82, 84, 85, 86]*/
                    lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                    /*[76, 82, 84, 85, 86]*/
                    lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                    /*[76, 82, 84, 85, 86]*/
                    /*[76, 82, 84, 85, 86]*/
                    /*[76, 82, 84, 85, 86]*/
                    /*[76, 82, 84, 85, 86]*/
                    for (m = 0; m < 3; m++) {
                    /*[76, 82, 84, 85, 86]*/
                        /*[76, 82, 84, 85, 86]*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                    }
                }
            }
        }
        /*[76, 82, 84, 85, 86]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[76, 82, 84, 85, 86]*/
#pragma omp barrier
        /*[76, 82, 87, 88]*/
        k = grid_points[2] - 2;
        /*[76, 82, 87, 88]*/
        k1 = grid_points[2] - 1;
        /*[76, 82, 87, 88]*/
#pragma omp for nowait
        /*[76, 82, 87, 88]*/
        /*[76, 82, 87, 88]*/
        /*[76, 82, 87, 88]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[76, 82, 87, 88]*/
            /*[76, 82, 87, 88]*/
            /*[76, 82, 87, 88]*/
            /*[76, 82, 87, 88]*/
            /*[76, 82, 87, 88]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[76, 82, 87, 88]*/
                /*[76, 82, 87, 88]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*[76, 82, 87, 88]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[76, 82, 87, 88]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[76, 82, 87, 88]*/
                /*[76, 82, 87, 88]*/
                /*[76, 82, 87, 88]*/
                /*[76, 82, 87, 88]*/
                for (m = 0; m < 3; m++) {
                /*[76, 82, 87, 88]*/
                    /*[76, 82, 87, 88]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*[76, 82, 87, 88]*/
                lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                /*[76, 82, 87, 88]*/
                lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                /*[76, 82, 87, 88]*/
                /*[76, 82, 87, 88]*/
                /*[76, 82, 87, 88]*/
                /*[76, 82, 87, 88]*/
                for (m = 0; m < 3; m++) {
                /*[76, 82, 87, 88]*/
                    /*[76, 82, 87, 88]*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                }
                /*[76, 82, 87, 88]*/
                fac2 = 1. / lhs[n + 2][i][j][k1];
                /*[76, 82, 87, 88]*/
                /*[76, 82, 87, 88]*/
                /*[76, 82, 87, 88]*/
                /*[76, 82, 87, 88]*/
                for (m = 0; m < 3; m++) {
                /*[76, 82, 87, 88]*/
                    /*[76, 82, 87, 88]*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
        }
        /*[76, 82, 87, 88]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[76, 82, 87, 88]*/
#pragma omp barrier
        /*[76, 82, 85, 86]*/
        /*[76, 82, 85, 86]*/
        /*[76, 82, 86]*/
        /*[76, 82, 85, 86]*/
        for (m = 3; m < 5; m++) {
        /*[76, 82, 85, 86]*/
            /*[76, 82, 85, 86]*/
            n = (m - 3 + 1) * 5;
            /*[76, 82, 85, 86]*/
#pragma omp for nowait
            /*[76, 82, 85, 86]*/
            /*[76, 82, 85, 86]*/
            /*[76, 82, 85, 86]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[76, 82, 85, 86]*/
                /*[76, 82, 85, 86]*/
                /*[76, 82, 85, 86]*/
                /*[76, 82, 85, 86]*/
                /*[76, 82, 85, 86]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[76, 82, 85, 86]*/
                    /*[76, 82, 85, 86]*/
                    /*[76, 82, 85, 86]*/
                    /*[76, 82, 85, 86]*/
                    /*[76, 82, 85, 86]*/
                    for (k = 0; k <= grid_points[2] - 3; k++) {
                    /*[76, 82, 85, 86]*/
                        /*[76, 82, 85, 86]*/
                        k1 = k + 1;
                        /*[76, 82, 85, 86]*/
                        k2 = k + 2;
                        /*[76, 82, 85, 86]*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*[76, 82, 85, 86]*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*[76, 82, 85, 86]*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*[76, 82, 85, 86]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*[76, 82, 85, 86]*/
                        lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                        /*[76, 82, 85, 86]*/
                        lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                        /*[76, 82, 85, 86]*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                        /*[76, 82, 85, 86]*/
                        lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                        /*[76, 82, 85, 86]*/
                        lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                        /*[76, 82, 85, 86]*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                    }
                }
            }
            /*[76, 82, 85, 86]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[76, 82, 85, 86]*/
#pragma omp barrier
            /*[76, 82, 88]*/
            k = grid_points[2] - 2;
            /*[76, 82, 88]*/
            k1 = grid_points[2] - 1;
            /*[76, 82, 88]*/
#pragma omp for nowait
            /*[76, 82, 88]*/
            /*[76, 82, 88]*/
            /*[76, 82, 88]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[76, 82, 88]*/
                /*[76, 82, 88]*/
                /*[76, 82, 88]*/
                /*[76, 82, 88]*/
                /*[76, 82, 88]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[76, 82, 88]*/
                    /*[76, 82, 88]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[76, 82, 88]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[76, 82, 88]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[76, 82, 88]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*[76, 82, 88]*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*[76, 82, 88]*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*[76, 82, 88]*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    /*[76, 82, 88]*/
                    fac2 = 1. / lhs[n + 2][i][j][k1];
                    /*[76, 82, 88]*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
            /*[76, 82, 88]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[76, 82, 88]*/
#pragma omp barrier
        }
        /*[76, 82, 85, 86]*/
        k = grid_points[2] - 2;
        /*[76, 82, 85, 86]*/
        k1 = grid_points[2] - 1;
        /*[76, 82, 85, 86]*/
        n = 0;
        /*[76, 82, 85, 86]*/
        /*[76, 82, 85, 86, 88]*/
        /*[76, 82, 86, 88]*/
        /*[76, 82, 85, 86]*/
        for (m = 0; m < 3; m++) {
        /*[76, 82, 85, 86, 88]*/
            /*[76, 82, 85, 86, 88]*/
#pragma omp for nowait
            /*[76, 82, 85, 86, 88]*/
            /*[76, 82, 85, 86, 88]*/
            /*[76, 82, 85, 86, 88]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[76, 82, 85, 86, 88]*/
                    /*[76, 82, 85, 86, 88]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                }
            }
            /*[76, 82, 85, 86, 88]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[76, 82, 85, 86, 88]*/
#pragma omp barrier
        }
        /*[76, 82, 85, 86, 88]*/
        /*[76, 82, 85, 86, 88]*/
        /*[76, 82, 86, 88]*/
        /*[76, 82, 85, 86, 88]*/
        for (m = 3; m < 5; m++) {
        /*[76, 82, 85, 86, 88]*/
            /*[76, 82, 85, 86, 88]*/
            n = (m - 3 + 1) * 5;
            /*[76, 82, 85, 86, 88]*/
#pragma omp for nowait
            /*[76, 82, 85, 86, 88]*/
            /*[76, 82, 85, 86, 88]*/
            /*[76, 82, 85, 86, 88]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[76, 82, 85, 86, 88]*/
                    /*[76, 82, 85, 86, 88]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                }
            }
            /*[76, 82, 85, 86, 88]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[76, 82, 85, 86, 88]*/
#pragma omp barrier
        }
        /*[76, 82, 85, 86, 88]*/
        n = 0;
        /*[76, 82, 85, 86, 88]*/
        /*[76, 82, 85, 86, 88]*/
        /*[76, 82, 86, 88]*/
        /*[76, 82, 85, 86, 88]*/
        for (m = 0; m < 3; m++) {
        /*[76, 82, 85, 86, 88]*/
            /*[76, 82, 85, 86, 88]*/
#pragma omp for nowait
            /*[76, 82, 85, 86, 88]*/
            /*[76, 82, 85, 86, 88]*/
            /*[76, 82, 85, 86, 88]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[76, 82, 85, 86, 88]*/
                    /*[76, 82, 85, 86, 88]*/
                    /*[76, 82, 85, 86, 88]*/
                    /*[76, 82, 85, 86, 88]*/
                    /*[76, 82, 85, 86, 88]*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                    /*[76, 82, 85, 86, 88]*/
                        /*[76, 82, 85, 86, 88]*/
                        k1 = k + 1;
                        /*[76, 82, 85, 86, 88]*/
                        k2 = k + 2;
                        /*[76, 82, 85, 86, 88]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                    }
                }
            }
            /*[76, 82, 85, 86, 88]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[76, 82, 85, 86, 88]*/
#pragma omp barrier
        }
        /*[76, 82, 85, 86, 88]*/
        /*[76, 82, 85, 86, 88]*/
        /*[76, 82, 86, 88]*/
        /*[76, 82, 85, 86, 88]*/
        for (m = 3; m < 5; m++) {
        /*[76, 82, 85, 86, 88]*/
            /*[76, 82, 85, 86, 88]*/
            n = (m - 3 + 1) * 5;
            /*[76, 82, 85, 86, 88]*/
#pragma omp for nowait
            /*[76, 82, 85, 86, 88]*/
            /*[76, 82, 85, 86, 88]*/
            /*[76, 82, 85, 86, 88]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                /*[76, 82, 85, 86, 88]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[76, 82, 85, 86, 88]*/
                    /*[76, 82, 85, 86, 88]*/
                    /*[76, 82, 85, 86, 88]*/
                    /*[76, 82, 85, 86, 88]*/
                    /*[76, 82, 85, 86, 88]*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                    /*[76, 82, 85, 86, 88]*/
                        /*[76, 82, 85, 86, 88]*/
                        k1 = k + 1;
                        /*[76, 82, 85, 86, 88]*/
                        k2 = k + 2;
                        /*[76, 82, 85, 86, 88]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                    }
                }
            }
            /*[76, 82, 85, 86, 88]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[76, 82, 85, 86, 88]*/
#pragma omp barrier
        }
    }
    /*[76, 82, 85, 86, 88]*/
    tzetar();
    /*[76, 82, 85, 86, 88]*/
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
/*[61, 62]*/
/*[61, 62]*/
static void rhs_norm(double rms[5]) {
/*[61, 62]*/
    /*[61, 62]*/
    int i;
    /*[61, 62]*/
    int j;
    /*[61, 62]*/
    int k;
    /*[61, 62]*/
    int d;
    /*[61, 62]*/
    int m;
    /*[61, 62]*/
    double add;
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    for (m = 0; m < 5; m++) {
    /*[61, 62]*/
        /*[61, 62]*/
        rms[m] = 0.0;
    }
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    for (i = 0; i <= grid_points[0] - 2; i++) {
    /*[61, 62]*/
        /*[61, 62]*/
        /*[61, 62]*/
        /*[61, 62]*/
        /*[61, 62]*/
        for (j = 0; j <= grid_points[1] - 2; j++) {
        /*[61, 62]*/
            /*[61, 62]*/
            /*[61, 62]*/
            /*[61, 62]*/
            /*[61, 62]*/
            for (k = 0; k <= grid_points[2] - 2; k++) {
            /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                /*[61, 62]*/
                for (m = 0; m < 5; m++) {
                /*[61, 62]*/
                    /*[61, 62]*/
                    add = rhs[m][i][j][k];
                    /*[61, 62]*/
                    rms[m] = rms[m] + add * add;
                }
            }
        }
    }
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    /*[61, 62]*/
    for (m = 0; m < 5; m++) {
    /*[61, 62]*/
        /*[61, 62]*/
        /*[61, 62]*/
        /*[61, 62]*/
        /*[61, 62]*/
        for (d = 0; d < 3; d++) {
        /*[61, 62]*/
            /*[61, 62]*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*[61, 62]*/
        double _imopVarPre191;
        /*[61, 62]*/
        double _imopVarPre192;
        /*[61, 62]*/
        _imopVarPre191 = rms[m];
        /*[61, 62]*/
        _imopVarPre192 = sqrt(_imopVarPre191);
        /*[61, 62]*/
        /*[61, 62]*/
        rms[m] = _imopVarPre192;
    }
}
/*[]*/
/*[]*/
static void exact_rhs(void ) {
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
/*[]*/
static void initialize(void ) {
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
/*[]*/
static void lhsinit(void ) {
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
/*[]*/
/*[]*/
static void lhsx(void ) {
/*[]*/
    /*[]*/
    double ru1;
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
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
#pragma omp for nowait
            /*[]*/
            /*[]*/
            /*[]*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
            /*[]*/
                /*[]*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*[]*/
                cv[i] = us[i][j][k];
                /*[]*/
                int _imopVarPre715;
                /*[]*/
                double _imopVarPre716;
                /*[]*/
                int _imopVarPre717;
                /*[]*/
                double _imopVarPre718;
                /*[]*/
                int _imopVarPre725;
                /*[]*/
                double _imopVarPre726;
                /*[]*/
                int _imopVarPre727;
                /*[]*/
                double _imopVarPre728;
                /*[]*/
                int _imopVarPre821;
                /*[]*/
                double _imopVarPre822;
                /*[]*/
                int _imopVarPre823;
                /*[]*/
                double _imopVarPre824;
                /*[]*/
                int _imopVarPre831;
                /*[]*/
                double _imopVarPre832;
                /*[]*/
                _imopVarPre715 = ((dxmax + ru1) > dx1);
                /*[]*/
                /*[]*/
                if (_imopVarPre715) {
                /*[]*/
                    /*[]*/
                    _imopVarPre716 = (dxmax + ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre716 = dx1;
                }
                /*[]*/
                _imopVarPre717 = ((dx5 + c1c5 * ru1) > _imopVarPre716);
                /*[]*/
                /*[]*/
                if (_imopVarPre717) {
                /*[]*/
                    /*[]*/
                    _imopVarPre718 = (dx5 + c1c5 * ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre725 = ((dxmax + ru1) > dx1);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre725) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre726 = (dxmax + ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre726 = dx1;
                    }
                    /*[]*/
                    _imopVarPre718 = _imopVarPre726;
                }
                /*[]*/
                _imopVarPre727 = ((dx2 + con43 * ru1) > _imopVarPre718);
                /*[]*/
                /*[]*/
                if (_imopVarPre727) {
                /*[]*/
                    /*[]*/
                    _imopVarPre728 = (dx2 + con43 * ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre821 = ((dxmax + ru1) > dx1);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre821) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre822 = (dxmax + ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre822 = dx1;
                    }
                    /*[]*/
                    _imopVarPre823 = ((dx5 + c1c5 * ru1) > _imopVarPre822);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre823) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre824 = (dx5 + c1c5 * ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre831 = ((dxmax + ru1) > dx1);
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre831) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre832 = (dxmax + ru1);
                        } else {
                        /*[]*/
                            /*[]*/
                            _imopVarPre832 = dx1;
                        }
                        /*[]*/
                        _imopVarPre824 = _imopVarPre832;
                    }
                    /*[]*/
                    _imopVarPre728 = _imopVarPre824;
                }
                /*[]*/
                rhon[i] = _imopVarPre728;
            }
            /*[]*/
#pragma omp for nowait
            /*[]*/
            /*[]*/
            /*[]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[]*/
                /*[]*/
                lhs[0][i][j][k] = 0.0;
                /*[]*/
                lhs[1][i][j][k] = -dttx2 * cv[i - 1] - dttx1 * rhon[i - 1];
                /*[]*/
                lhs[2][i][j][k] = 1.0 + c2dttx1 * rhon[i];
                /*[]*/
                lhs[3][i][j][k] = dttx2 * cv[i + 1] - dttx1 * rhon[i + 1];
                /*[]*/
                lhs[4][i][j][k] = 0.0;
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
    for (j = 1; j <= grid_points[1] - 2; j++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[]*/
            /*[]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*[]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*[]*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*[]*/
            lhs[1][i + 1][j][k] = lhs[1][i + 1][j][k] - comz4;
            /*[]*/
            lhs[2][i + 1][j][k] = lhs[2][i + 1][j][k] + comz6;
            /*[]*/
            lhs[3][i + 1][j][k] = lhs[3][i + 1][j][k] - comz4;
            /*[]*/
            lhs[4][i + 1][j][k] = lhs[4][i + 1][j][k] + comz1;
        }
    }
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 3; i <= grid_points[0] - 4; i++) {
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
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*[]*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*[]*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*[]*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*[]*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
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
    for (j = 1; j <= grid_points[1] - 2; j++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[]*/
            /*[]*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*[]*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*[]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*[]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*[]*/
            lhs[0][i + 1][j][k] = lhs[0][i + 1][j][k] + comz1;
            /*[]*/
            lhs[1][i + 1][j][k] = lhs[1][i + 1][j][k] - comz4;
            /*[]*/
            lhs[2][i + 1][j][k] = lhs[2][i + 1][j][k] + comz5;
        }
    }
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
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*[]*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dttx2 * speed[i - 1][j][k];
                /*[]*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*[]*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dttx2 * speed[i + 1][j][k];
                /*[]*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*[]*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*[]*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dttx2 * speed[i - 1][j][k];
                /*[]*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*[]*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dttx2 * speed[i + 1][j][k];
                /*[]*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
            }
        }
    }
}
/*[]*/
/*[]*/
static void lhsy(void ) {
/*[]*/
    /*[]*/
    double ru1;
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
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
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[]*/
            /*[]*/
#pragma omp for nowait
            /*[]*/
            /*[]*/
            /*[]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
            /*[]*/
                /*[]*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*[]*/
                cv[j] = vs[i][j][k];
                /*[]*/
                int _imopVarPre1343;
                /*[]*/
                double _imopVarPre1344;
                /*[]*/
                int _imopVarPre1345;
                /*[]*/
                double _imopVarPre1346;
                /*[]*/
                int _imopVarPre1353;
                /*[]*/
                double _imopVarPre1354;
                /*[]*/
                int _imopVarPre1355;
                /*[]*/
                double _imopVarPre1356;
                /*[]*/
                int _imopVarPre1449;
                /*[]*/
                double _imopVarPre1450;
                /*[]*/
                int _imopVarPre1451;
                /*[]*/
                double _imopVarPre1452;
                /*[]*/
                int _imopVarPre1459;
                /*[]*/
                double _imopVarPre1460;
                /*[]*/
                _imopVarPre1343 = ((dymax + ru1) > dy1);
                /*[]*/
                /*[]*/
                if (_imopVarPre1343) {
                /*[]*/
                    /*[]*/
                    _imopVarPre1344 = (dymax + ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre1344 = dy1;
                }
                /*[]*/
                _imopVarPre1345 = ((dy5 + c1c5 * ru1) > _imopVarPre1344);
                /*[]*/
                /*[]*/
                if (_imopVarPre1345) {
                /*[]*/
                    /*[]*/
                    _imopVarPre1346 = (dy5 + c1c5 * ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre1353 = ((dymax + ru1) > dy1);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre1353) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1354 = (dymax + ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1354 = dy1;
                    }
                    /*[]*/
                    _imopVarPre1346 = _imopVarPre1354;
                }
                /*[]*/
                _imopVarPre1355 = ((dy3 + con43 * ru1) > _imopVarPre1346);
                /*[]*/
                /*[]*/
                if (_imopVarPre1355) {
                /*[]*/
                    /*[]*/
                    _imopVarPre1356 = (dy3 + con43 * ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre1449 = ((dymax + ru1) > dy1);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre1449) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1450 = (dymax + ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1450 = dy1;
                    }
                    /*[]*/
                    _imopVarPre1451 = ((dy5 + c1c5 * ru1) > _imopVarPre1450);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre1451) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1452 = (dy5 + c1c5 * ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1459 = ((dymax + ru1) > dy1);
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre1459) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre1460 = (dymax + ru1);
                        } else {
                        /*[]*/
                            /*[]*/
                            _imopVarPre1460 = dy1;
                        }
                        /*[]*/
                        _imopVarPre1452 = _imopVarPre1460;
                    }
                    /*[]*/
                    _imopVarPre1356 = _imopVarPre1452;
                }
                /*[]*/
                rhoq[j] = _imopVarPre1356;
            }
            /*[]*/
#pragma omp for nowait
            /*[]*/
            /*[]*/
            /*[]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[]*/
                /*[]*/
                lhs[0][i][j][k] = 0.0;
                /*[]*/
                lhs[1][i][j][k] = -dtty2 * cv[j - 1] - dtty1 * rhoq[j - 1];
                /*[]*/
                lhs[2][i][j][k] = 1.0 + c2dtty1 * rhoq[j];
                /*[]*/
                lhs[3][i][j][k] = dtty2 * cv[j + 1] - dtty1 * rhoq[j + 1];
                /*[]*/
                lhs[4][i][j][k] = 0.0;
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
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[]*/
            /*[]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*[]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*[]*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*[]*/
            lhs[1][i][j + 1][k] = lhs[1][i][j + 1][k] - comz4;
            /*[]*/
            lhs[2][i][j + 1][k] = lhs[2][i][j + 1][k] + comz6;
            /*[]*/
            lhs[3][i][j + 1][k] = lhs[3][i][j + 1][k] - comz4;
            /*[]*/
            lhs[4][i][j + 1][k] = lhs[4][i][j + 1][k] + comz1;
        }
    }
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
        for (j = 3; j <= grid_points[1] - 4; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*[]*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*[]*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*[]*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*[]*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
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
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[]*/
            /*[]*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*[]*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*[]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*[]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*[]*/
            lhs[0][i][j + 1][k] = lhs[0][i][j + 1][k] + comz1;
            /*[]*/
            lhs[1][i][j + 1][k] = lhs[1][i][j + 1][k] - comz4;
            /*[]*/
            lhs[2][i][j + 1][k] = lhs[2][i][j + 1][k] + comz5;
        }
    }
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
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*[]*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dtty2 * speed[i][j - 1][k];
                /*[]*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*[]*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dtty2 * speed[i][j + 1][k];
                /*[]*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*[]*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*[]*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dtty2 * speed[i][j - 1][k];
                /*[]*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*[]*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dtty2 * speed[i][j + 1][k];
                /*[]*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
            }
        }
    }
}
/*[]*/
/*[]*/
static void lhsz(void ) {
/*[]*/
    /*[]*/
    double ru1;
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
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
#pragma omp for nowait
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
            /*[]*/
                /*[]*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*[]*/
                cv[k] = ws[i][j][k];
                /*[]*/
                int _imopVarPre1971;
                /*[]*/
                double _imopVarPre1972;
                /*[]*/
                int _imopVarPre1973;
                /*[]*/
                double _imopVarPre1974;
                /*[]*/
                int _imopVarPre1981;
                /*[]*/
                double _imopVarPre1982;
                /*[]*/
                int _imopVarPre1983;
                /*[]*/
                double _imopVarPre1984;
                /*[]*/
                int _imopVarPre2077;
                /*[]*/
                double _imopVarPre2078;
                /*[]*/
                int _imopVarPre2079;
                /*[]*/
                double _imopVarPre2080;
                /*[]*/
                int _imopVarPre2087;
                /*[]*/
                double _imopVarPre2088;
                /*[]*/
                _imopVarPre1971 = ((dzmax + ru1) > dz1);
                /*[]*/
                /*[]*/
                if (_imopVarPre1971) {
                /*[]*/
                    /*[]*/
                    _imopVarPre1972 = (dzmax + ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre1972 = dz1;
                }
                /*[]*/
                _imopVarPre1973 = ((dz5 + c1c5 * ru1) > _imopVarPre1972);
                /*[]*/
                /*[]*/
                if (_imopVarPre1973) {
                /*[]*/
                    /*[]*/
                    _imopVarPre1974 = (dz5 + c1c5 * ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre1981 = ((dzmax + ru1) > dz1);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre1981) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1982 = (dzmax + ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1982 = dz1;
                    }
                    /*[]*/
                    _imopVarPre1974 = _imopVarPre1982;
                }
                /*[]*/
                _imopVarPre1983 = ((dz4 + con43 * ru1) > _imopVarPre1974);
                /*[]*/
                /*[]*/
                if (_imopVarPre1983) {
                /*[]*/
                    /*[]*/
                    _imopVarPre1984 = (dz4 + con43 * ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre2077 = ((dzmax + ru1) > dz1);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre2077) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre2078 = (dzmax + ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre2078 = dz1;
                    }
                    /*[]*/
                    _imopVarPre2079 = ((dz5 + c1c5 * ru1) > _imopVarPre2078);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre2079) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre2080 = (dz5 + c1c5 * ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre2087 = ((dzmax + ru1) > dz1);
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre2087) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre2088 = (dzmax + ru1);
                        } else {
                        /*[]*/
                            /*[]*/
                            _imopVarPre2088 = dz1;
                        }
                        /*[]*/
                        _imopVarPre2080 = _imopVarPre2088;
                    }
                    /*[]*/
                    _imopVarPre1984 = _imopVarPre2080;
                }
                /*[]*/
                rhos[k] = _imopVarPre1984;
            }
            /*[]*/
#pragma omp for nowait
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                lhs[0][i][j][k] = 0.0;
                /*[]*/
                lhs[1][i][j][k] = -dttz2 * cv[k - 1] - dttz1 * rhos[k - 1];
                /*[]*/
                lhs[2][i][j][k] = 1.0 + c2dttz1 * rhos[k];
                /*[]*/
                lhs[3][i][j][k] = dttz2 * cv[k + 1] - dttz1 * rhos[k + 1];
                /*[]*/
                lhs[4][i][j][k] = 0.0;
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
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[]*/
            /*[]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*[]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*[]*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*[]*/
            lhs[1][i][j][k + 1] = lhs[1][i][j][k + 1] - comz4;
            /*[]*/
            lhs[2][i][j][k + 1] = lhs[2][i][j][k + 1] + comz6;
            /*[]*/
            lhs[3][i][j][k + 1] = lhs[3][i][j][k + 1] - comz4;
            /*[]*/
            lhs[4][i][j][k + 1] = lhs[4][i][j][k + 1] + comz1;
        }
    }
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
            for (k = 3; k <= grid_points[2] - 4; k++) {
            /*[]*/
                /*[]*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*[]*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*[]*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*[]*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*[]*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
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
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[]*/
            /*[]*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*[]*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*[]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*[]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*[]*/
            lhs[0][i][j][k + 1] = lhs[0][i][j][k + 1] + comz1;
            /*[]*/
            lhs[1][i][j][k + 1] = lhs[1][i][j][k + 1] - comz4;
            /*[]*/
            lhs[2][i][j][k + 1] = lhs[2][i][j][k + 1] + comz5;
        }
    }
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
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*[]*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dttz2 * speed[i][j][k - 1];
                /*[]*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*[]*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dttz2 * speed[i][j][k + 1];
                /*[]*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*[]*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*[]*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dttz2 * speed[i][j][k - 1];
                /*[]*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*[]*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dttz2 * speed[i][j][k + 1];
                /*[]*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
            }
        }
    }
}
/*[]*/
/*[]*/
static void ninvr(void ) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
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
    double t1;
    /*[]*/
    double t2;
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
                t1 = bt * r3;
                /*[]*/
                t2 = 0.5 * (r4 + r5);
                /*[]*/
                rhs[0][i][j][k] = -r2;
                /*[]*/
                rhs[1][i][j][k] = r1;
                /*[]*/
                rhs[2][i][j][k] = bt * (r4 - r5);
                /*[]*/
                rhs[3][i][j][k] = -t1 + t2;
                /*[]*/
                rhs[4][i][j][k] = t1 + t2;
            }
        }
    }
}
/*[]*/
/*[]*/
static void pinvr(void ) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
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
    double t1;
    /*[]*/
    double t2;
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
                t1 = bt * r1;
                /*[]*/
                t2 = 0.5 * (r4 + r5);
                /*[]*/
                rhs[0][i][j][k] = bt * (r4 - r5);
                /*[]*/
                rhs[1][i][j][k] = -r3;
                /*[]*/
                rhs[2][i][j][k] = r2;
                /*[]*/
                rhs[3][i][j][k] = -t1 + t2;
                /*[]*/
                rhs[4][i][j][k] = t1 + t2;
            }
        }
    }
}
/*[]*/
/*[]*/
static void compute_rhs(void ) {
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
    double aux;
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
                rho_inv = 1.0 / u[0][i][j][k];
                /*[]*/
                rho_i[i][j][k] = rho_inv;
                /*[]*/
                us[i][j][k] = u[1][i][j][k] * rho_inv;
                /*[]*/
                vs[i][j][k] = u[2][i][j][k] * rho_inv;
                /*[]*/
                ws[i][j][k] = u[3][i][j][k] * rho_inv;
                /*[]*/
                square[i][j][k] = 0.5 * (u[1][i][j][k] * u[1][i][j][k] + u[2][i][j][k] * u[2][i][j][k] + u[3][i][j][k] * u[3][i][j][k]) * rho_inv;
                /*[]*/
                qs[i][j][k] = square[i][j][k] * rho_inv;
                /*[]*/
                aux = c1c2 * rho_inv * (u[4][i][j][k] - square[i][j][k]);
                /*[]*/
                aux = sqrt(aux);
                /*[]*/
                /*[]*/
                speed[i][j][k] = aux;
                /*[]*/
                ainv[i][j][k] = 1.0 / aux;
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
#pragma omp for nowait
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
                    rhs[m][i][j][k] = forcing[m][i][j][k];
                }
            }
        }
    }
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
                uijk = us[i][j][k];
                /*[]*/
                up1 = us[i + 1][j][k];
                /*[]*/
                um1 = us[i - 1][j][k];
                /*[]*/
                rhs[0][i][j][k] = rhs[0][i][j][k] + dx1tx1 * (u[0][i + 1][j][k] - 2.0 * u[0][i][j][k] + u[0][i - 1][j][k]) - tx2 * (u[1][i + 1][j][k] - u[1][i - 1][j][k]);
                /*[]*/
                rhs[1][i][j][k] = rhs[1][i][j][k] + dx2tx1 * (u[1][i + 1][j][k] - 2.0 * u[1][i][j][k] + u[1][i - 1][j][k]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[1][i + 1][j][k] * up1 - u[1][i - 1][j][k] * um1 + (u[4][i + 1][j][k] - square[i + 1][j][k] - u[4][i - 1][j][k] + square[i - 1][j][k]) * c2);
                /*[]*/
                rhs[2][i][j][k] = rhs[2][i][j][k] + dx3tx1 * (u[2][i + 1][j][k] - 2.0 * u[2][i][j][k] + u[2][i - 1][j][k]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[2][i + 1][j][k] * up1 - u[2][i - 1][j][k] * um1);
                /*[]*/
                rhs[3][i][j][k] = rhs[3][i][j][k] + dx4tx1 * (u[3][i + 1][j][k] - 2.0 * u[3][i][j][k] + u[3][i - 1][j][k]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[3][i + 1][j][k] * up1 - u[3][i - 1][j][k] * um1);
                /*[]*/
                rhs[4][i][j][k] = rhs[4][i][j][k] + dx5tx1 * (u[4][i + 1][j][k] - 2.0 * u[4][i][j][k] + u[4][i - 1][j][k]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[4][i + 1][j][k] * rho_i[i + 1][j][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i - 1][j][k] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[4][i + 1][j][k] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[4][i - 1][j][k] - c2 * square[i - 1][j][k]) * um1);
            }
        }
    }
    /*[]*/
    i = 1;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
#pragma omp for nowait
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
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
            }
        }
    }
    /*[]*/
    i = 2;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
#pragma omp for nowait
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
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
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
#pragma omp for nowait
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 3 * 1; i <= grid_points[0] - 3 * 1 - 1; i++) {
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
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                }
            }
        }
    }
    /*[]*/
    i = grid_points[0] - 3;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
#pragma omp for nowait
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
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k]);
            }
        }
    }
    /*[]*/
    i = grid_points[0] - 2;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
#pragma omp for nowait
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
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 5.0 * u[m][i][j][k]);
            }
        }
    }
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
                vijk = vs[i][j][k];
                /*[]*/
                vp1 = vs[i][j + 1][k];
                /*[]*/
                vm1 = vs[i][j - 1][k];
                /*[]*/
                rhs[0][i][j][k] = rhs[0][i][j][k] + dy1ty1 * (u[0][i][j + 1][k] - 2.0 * u[0][i][j][k] + u[0][i][j - 1][k]) - ty2 * (u[2][i][j + 1][k] - u[2][i][j - 1][k]);
                /*[]*/
                rhs[1][i][j][k] = rhs[1][i][j][k] + dy2ty1 * (u[1][i][j + 1][k] - 2.0 * u[1][i][j][k] + u[1][i][j - 1][k]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[1][i][j + 1][k] * vp1 - u[1][i][j - 1][k] * vm1);
                /*[]*/
                rhs[2][i][j][k] = rhs[2][i][j][k] + dy3ty1 * (u[2][i][j + 1][k] - 2.0 * u[2][i][j][k] + u[2][i][j - 1][k]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[2][i][j + 1][k] * vp1 - u[2][i][j - 1][k] * vm1 + (u[4][i][j + 1][k] - square[i][j + 1][k] - u[4][i][j - 1][k] + square[i][j - 1][k]) * c2);
                /*[]*/
                rhs[3][i][j][k] = rhs[3][i][j][k] + dy4ty1 * (u[3][i][j + 1][k] - 2.0 * u[3][i][j][k] + u[3][i][j - 1][k]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[3][i][j + 1][k] * vp1 - u[3][i][j - 1][k] * vm1);
                /*[]*/
                rhs[4][i][j][k] = rhs[4][i][j][k] + dy5ty1 * (u[4][i][j + 1][k] - 2.0 * u[4][i][j][k] + u[4][i][j - 1][k]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[4][i][j + 1][k] * rho_i[i][j + 1][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j - 1][k] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[4][i][j + 1][k] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[4][i][j - 1][k] - c2 * square[i][j - 1][k]) * vm1);
            }
        }
    }
    /*[]*/
    j = 1;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
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
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
            }
        }
    }
    /*[]*/
    j = 2;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
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
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
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
            for (j = 3 * 1; j <= grid_points[1] - 3 * 1 - 1; j++) {
            /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[]*/
                    /*[]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                }
            }
        }
    }
    /*[]*/
    j = grid_points[1] - 3;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
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
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k]);
            }
        }
    }
    /*[]*/
    j = grid_points[1] - 2;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
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
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 5.0 * u[m][i][j][k]);
            }
        }
    }
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
                wijk = ws[i][j][k];
                /*[]*/
                wp1 = ws[i][j][k + 1];
                /*[]*/
                wm1 = ws[i][j][k - 1];
                /*[]*/
                rhs[0][i][j][k] = rhs[0][i][j][k] + dz1tz1 * (u[0][i][j][k + 1] - 2.0 * u[0][i][j][k] + u[0][i][j][k - 1]) - tz2 * (u[3][i][j][k + 1] - u[3][i][j][k - 1]);
                /*[]*/
                rhs[1][i][j][k] = rhs[1][i][j][k] + dz2tz1 * (u[1][i][j][k + 1] - 2.0 * u[1][i][j][k] + u[1][i][j][k - 1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[1][i][j][k + 1] * wp1 - u[1][i][j][k - 1] * wm1);
                /*[]*/
                rhs[2][i][j][k] = rhs[2][i][j][k] + dz3tz1 * (u[2][i][j][k + 1] - 2.0 * u[2][i][j][k] + u[2][i][j][k - 1]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[2][i][j][k + 1] * wp1 - u[2][i][j][k - 1] * wm1);
                /*[]*/
                rhs[3][i][j][k] = rhs[3][i][j][k] + dz4tz1 * (u[3][i][j][k + 1] - 2.0 * u[3][i][j][k] + u[3][i][j][k - 1]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[3][i][j][k + 1] * wp1 - u[3][i][j][k - 1] * wm1 + (u[4][i][j][k + 1] - square[i][j][k + 1] - u[4][i][j][k - 1] + square[i][j][k - 1]) * c2);
                /*[]*/
                rhs[4][i][j][k] = rhs[4][i][j][k] + dz5tz1 * (u[4][i][j][k + 1] - 2.0 * u[4][i][j][k] + u[4][i][j][k - 1]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[4][i][j][k + 1] * rho_i[i][j][k + 1] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j][k - 1] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[4][i][j][k + 1] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[4][i][j][k - 1] - c2 * square[i][j][k - 1]) * wm1);
            }
        }
    }
    /*[]*/
    k = 1;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
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
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
            }
        }
    }
    /*[]*/
    k = 2;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
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
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
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
                for (k = 3 * 1; k <= grid_points[2] - 3 * 1 - 1; k++) {
                /*[]*/
                    /*[]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                }
            }
        }
    }
    /*[]*/
    k = grid_points[2] - 3;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
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
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1]);
            }
        }
    }
    /*[]*/
    k = grid_points[2] - 2;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
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
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 5.0 * u[m][i][j][k]);
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
                    rhs[m][i][j][k] = rhs[m][i][j][k] * dt;
                }
            }
        }
    }
}
/*[]*/
/*[]*/
static void set_constants(void ) {
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
/*[6, 7]*/
/*[6, 7]*/
static void txinvr(void ) {
/*[6, 7]*/
    /*[6, 7]*/
    int i;
    /*[6, 7]*/
    int j;
    /*[6, 7]*/
    int k;
    /*[6, 7]*/
    double t1;
    /*[6, 7]*/
    double t2;
    /*[6, 7]*/
    double t3;
    /*[6, 7]*/
    double ac;
    /*[6, 7]*/
    double ru1;
    /*[6, 7]*/
    double uu;
    /*[6, 7]*/
    double vv;
    /*[6, 7]*/
    double ww;
    /*[6, 7]*/
    double r1;
    /*[6, 7]*/
    double r2;
    /*[6, 7]*/
    double r3;
    /*[6, 7]*/
    double r4;
    /*[6, 7]*/
    double r5;
    /*[6, 7]*/
    double ac2inv;
    /*[6, 7]*/
#pragma omp for nowait
    /*[6, 7]*/
    /*[6, 7]*/
    /*[6, 7]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[6, 7]*/
        /*[6, 7]*/
        /*[6, 7]*/
        /*[6, 7]*/
        /*[6, 7]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[6, 7]*/
            /*[6, 7]*/
            /*[6, 7]*/
            /*[6, 7]*/
            /*[6, 7]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[6, 7]*/
                /*[6, 7]*/
                ru1 = rho_i[i][j][k];
                /*[6, 7]*/
                uu = us[i][j][k];
                /*[6, 7]*/
                vv = vs[i][j][k];
                /*[6, 7]*/
                ww = ws[i][j][k];
                /*[6, 7]*/
                ac = speed[i][j][k];
                /*[6, 7]*/
                ac2inv = ainv[i][j][k] * ainv[i][j][k];
                /*[6, 7]*/
                r1 = rhs[0][i][j][k];
                /*[6, 7]*/
                r2 = rhs[1][i][j][k];
                /*[6, 7]*/
                r3 = rhs[2][i][j][k];
                /*[6, 7]*/
                r4 = rhs[3][i][j][k];
                /*[6, 7]*/
                r5 = rhs[4][i][j][k];
                /*[6, 7]*/
                t1 = c2 * ac2inv * (qs[i][j][k] * r1 - uu * r2 - vv * r3 - ww * r4 + r5);
                /*[6, 7]*/
                t2 = bt * ru1 * (uu * r1 - r2);
                /*[6, 7]*/
                t3 = (bt * ru1 * ac) * t1;
                /*[6, 7]*/
                rhs[0][i][j][k] = r1 - t1;
                /*[6, 7]*/
                rhs[1][i][j][k] = -ru1 * (ww * r1 - r4);
                /*[6, 7]*/
                rhs[2][i][j][k] = ru1 * (vv * r1 - r3);
                /*[6, 7]*/
                rhs[3][i][j][k] = -t2 + t3;
                /*[6, 7]*/
                rhs[4][i][j][k] = t2 + t3;
            }
        }
    }
}
/*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
/*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
static void tzetar(void ) {
/*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    int i;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    int j;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    int k;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double t1;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double t2;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double t3;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double ac;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double xvel;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double yvel;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double zvel;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double r1;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double r2;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double r3;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double r4;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double r5;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double btuz;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double acinv;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double ac2u;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    double uzik1;
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
#pragma omp for private(i, j, k, t1, t2, t3, ac, xvel, yvel, zvel, r1, r2, r3, r4, r5, btuz, ac2u, uzik1) nowait
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
        /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
        /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
        /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
        /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
            /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
            /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
            /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
            /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                xvel = us[i][j][k];
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                yvel = vs[i][j][k];
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                zvel = ws[i][j][k];
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                ac = speed[i][j][k];
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                acinv = ainv[i][j][k];
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                ac2u = ac * ac;
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                r1 = rhs[0][i][j][k];
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                r2 = rhs[1][i][j][k];
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                r3 = rhs[2][i][j][k];
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                r4 = rhs[3][i][j][k];
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                r5 = rhs[4][i][j][k];
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                uzik1 = u[0][i][j][k];
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                btuz = bt * uzik1;
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                t1 = btuz * acinv * (r4 + r5);
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                t2 = r3 + t1;
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                t3 = btuz * (r4 - r5);
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                rhs[0][i][j][k] = t2;
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                rhs[1][i][j][k] = -uzik1 * r2 + xvel * t2;
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                rhs[2][i][j][k] = uzik1 * r1 + yvel * t2;
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
                rhs[3][i][j][k] = zvel * t2 + t3;
                /*[6, 7, 13, 18, 23, 24, 27, 76, 82, 85, 86, 88]*/
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
    /*[90]*/
#pragma omp parallel
    {
    /*[90]*/
        /*[90]*/
        int i;
        /*[90]*/
        int j;
        /*[90]*/
        int k;
        /*[90]*/
        int m_imopVarPre105;
        /*[90]*/
        double aux;
        /*[90]*/
        double rho_inv;
        /*[90]*/
        double uijk;
        /*[90]*/
        double up1;
        /*[90]*/
        double um1;
        /*[90]*/
        double vijk;
        /*[90]*/
        double vp1;
        /*[90]*/
        double vm1;
        /*[90]*/
        double wijk;
        /*[90]*/
        double wp1;
        /*[90]*/
        double wm1;
        /*[90]*/
#pragma omp for nowait
        /*[90]*/
        /*[90]*/
        /*[90]*/
        for (i = 0; i <= grid_points[0] - 1; i++) {
        /*[90]*/
            /*[90]*/
            /*[90]*/
            /*[90]*/
            /*[90]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
            /*[90]*/
                /*[90]*/
                /*[90]*/
                /*[90]*/
                /*[90]*/
                for (k = 0; k <= grid_points[2] - 1; k++) {
                /*[90]*/
                    /*[90]*/
                    rho_inv = 1.0 / u[0][i][j][k];
                    /*[90]*/
                    rho_i[i][j][k] = rho_inv;
                    /*[90]*/
                    us[i][j][k] = u[1][i][j][k] * rho_inv;
                    /*[90]*/
                    vs[i][j][k] = u[2][i][j][k] * rho_inv;
                    /*[90]*/
                    ws[i][j][k] = u[3][i][j][k] * rho_inv;
                    /*[90]*/
                    square[i][j][k] = 0.5 * (u[1][i][j][k] * u[1][i][j][k] + u[2][i][j][k] * u[2][i][j][k] + u[3][i][j][k] * u[3][i][j][k]) * rho_inv;
                    /*[90]*/
                    qs[i][j][k] = square[i][j][k] * rho_inv;
                    /*[90]*/
                    aux = c1c2 * rho_inv * (u[4][i][j][k] - square[i][j][k]);
                    /*[90]*/
                    aux = sqrt(aux);
                    /*[90]*/
                    /*[90]*/
                    speed[i][j][k] = aux;
                    /*[90]*/
                    ainv[i][j][k] = 1.0 / aux;
                }
            }
        }
        /*[90]*/
        /*[90, 91, 92, 93, 94, 95, 96]*/
        /*[91, 92, 93, 94, 95, 96]*/
        /*[90]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[90, 91, 92, 93, 94, 95, 96]*/
            /*[90, 91, 92, 93, 94, 95, 96]*/
#pragma omp for nowait
            /*[90, 91, 92, 93, 94, 95, 96]*/
            /*[90, 91, 92, 93, 94, 95, 96]*/
            /*[90, 91, 92, 93, 94, 95, 96]*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
            /*[90, 91, 92, 93, 94, 95, 96]*/
                /*[90, 91, 92, 93, 94, 95, 96]*/
                /*[90, 91, 92, 93, 94, 95, 96]*/
                /*[90, 91, 92, 93, 94, 95, 96]*/
                /*[90, 91, 92, 93, 94, 95, 96]*/
                for (j = 0; j <= grid_points[1] - 1; j++) {
                /*[90, 91, 92, 93, 94, 95, 96]*/
                    /*[90, 91, 92, 93, 94, 95, 96]*/
                    /*[90, 91, 92, 93, 94, 95, 96]*/
                    /*[90, 91, 92, 93, 94, 95, 96]*/
                    /*[90, 91, 92, 93, 94, 95, 96]*/
                    for (k = 0; k <= grid_points[2] - 1; k++) {
                    /*[90, 91, 92, 93, 94, 95, 96]*/
                        /*[90, 91, 92, 93, 94, 95, 96]*/
                        rhs[m_imopVarPre105][i][j][k] = forcing[m_imopVarPre105][i][j][k];
                    }
                }
            }
            /*[90, 91, 92, 93, 94, 95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[90, 91, 92, 93, 94, 95, 96]*/
#pragma omp barrier
        }
        /*[90, 91, 92, 93, 94, 95, 96]*/
#pragma omp for nowait
        /*[90, 91, 92, 93, 94, 95, 96]*/
        /*[90, 91, 92, 93, 94, 95, 96]*/
        /*[90, 91, 92, 93, 94, 95, 96]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[90, 91, 92, 93, 94, 95, 96]*/
            /*[90, 91, 92, 93, 94, 95, 96]*/
            /*[90, 91, 92, 93, 94, 95, 96]*/
            /*[90, 91, 92, 93, 94, 95, 96]*/
            /*[90, 91, 92, 93, 94, 95, 96]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[90, 91, 92, 93, 94, 95, 96]*/
                /*[90, 91, 92, 93, 94, 95, 96]*/
                /*[90, 91, 92, 93, 94, 95, 96]*/
                /*[90, 91, 92, 93, 94, 95, 96]*/
                /*[90, 91, 92, 93, 94, 95, 96]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[90, 91, 92, 93, 94, 95, 96]*/
                    /*[90, 91, 92, 93, 94, 95, 96]*/
                    uijk = us[i][j][k];
                    /*[90, 91, 92, 93, 94, 95, 96]*/
                    up1 = us[i + 1][j][k];
                    /*[90, 91, 92, 93, 94, 95, 96]*/
                    um1 = us[i - 1][j][k];
                    /*[90, 91, 92, 93, 94, 95, 96]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dx1tx1 * (u[0][i + 1][j][k] - 2.0 * u[0][i][j][k] + u[0][i - 1][j][k]) - tx2 * (u[1][i + 1][j][k] - u[1][i - 1][j][k]);
                    /*[90, 91, 92, 93, 94, 95, 96]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dx2tx1 * (u[1][i + 1][j][k] - 2.0 * u[1][i][j][k] + u[1][i - 1][j][k]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[1][i + 1][j][k] * up1 - u[1][i - 1][j][k] * um1 + (u[4][i + 1][j][k] - square[i + 1][j][k] - u[4][i - 1][j][k] + square[i - 1][j][k]) * c2);
                    /*[90, 91, 92, 93, 94, 95, 96]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dx3tx1 * (u[2][i + 1][j][k] - 2.0 * u[2][i][j][k] + u[2][i - 1][j][k]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[2][i + 1][j][k] * up1 - u[2][i - 1][j][k] * um1);
                    /*[90, 91, 92, 93, 94, 95, 96]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dx4tx1 * (u[3][i + 1][j][k] - 2.0 * u[3][i][j][k] + u[3][i - 1][j][k]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[3][i + 1][j][k] * up1 - u[3][i - 1][j][k] * um1);
                    /*[90, 91, 92, 93, 94, 95, 96]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dx5tx1 * (u[4][i + 1][j][k] - 2.0 * u[4][i][j][k] + u[4][i - 1][j][k]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[4][i + 1][j][k] * rho_i[i + 1][j][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i - 1][j][k] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[4][i + 1][j][k] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[4][i - 1][j][k] - c2 * square[i - 1][j][k]) * um1);
                }
            }
        }
        /*[90, 91, 92, 93, 94, 95, 96]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[90, 91, 92, 93, 94, 95, 96]*/
#pragma omp barrier
        /*[91, 92, 93, 94, 95, 96]*/
        i = 1;
        /*[91, 92, 93, 94, 95, 96]*/
        /*[91, 92, 93, 94, 95, 96]*/
        /*[92, 93, 94, 95, 96]*/
        /*[91, 92, 93, 94, 95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
#pragma omp for nowait
            /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[91, 92, 93, 94, 95, 96]*/
                    /*[91, 92, 93, 94, 95, 96]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (5.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i + 1][j][k] + u[m_imopVarPre105][i + 2][j][k]);
                }
            }
            /*[91, 92, 93, 94, 95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[91, 92, 93, 94, 95, 96]*/
#pragma omp barrier
        }
        /*[91, 92, 93, 94, 95, 96]*/
        i = 2;
        /*[91, 92, 93, 94, 95, 96]*/
        /*[91, 92, 93, 94, 95, 96]*/
        /*[92, 93, 94, 95, 96]*/
        /*[91, 92, 93, 94, 95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
#pragma omp for nowait
            /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[91, 92, 93, 94, 95, 96]*/
                    /*[91, 92, 93, 94, 95, 96]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (-4.0 * u[m_imopVarPre105][i - 1][j][k] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i + 1][j][k] + u[m_imopVarPre105][i + 2][j][k]);
                }
            }
            /*[91, 92, 93, 94, 95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[91, 92, 93, 94, 95, 96]*/
#pragma omp barrier
        }
        /*[91, 92, 93, 94, 95, 96]*/
        /*[91, 92, 93, 94, 95, 96]*/
        /*[92, 93, 94, 95, 96]*/
        /*[91, 92, 93, 94, 95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
#pragma omp for nowait
            /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
            for (i = 3 * 1; i <= grid_points[0] - 3 * 1 - 1; i++) {
            /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[91, 92, 93, 94, 95, 96]*/
                    /*[91, 92, 93, 94, 95, 96]*/
                    /*[91, 92, 93, 94, 95, 96]*/
                    /*[91, 92, 93, 94, 95, 96]*/
                    /*[91, 92, 93, 94, 95, 96]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[91, 92, 93, 94, 95, 96]*/
                        /*[91, 92, 93, 94, 95, 96]*/
                        rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i - 2][j][k] - 4.0 * u[m_imopVarPre105][i - 1][j][k] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i + 1][j][k] + u[m_imopVarPre105][i + 2][j][k]);
                    }
                }
            }
            /*[91, 92, 93, 94, 95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[91, 92, 93, 94, 95, 96]*/
#pragma omp barrier
        }
        /*[91, 92, 93, 94, 95, 96]*/
        i = grid_points[0] - 3;
        /*[91, 92, 93, 94, 95, 96]*/
        /*[91, 92, 93, 94, 95, 96]*/
        /*[92, 93, 94, 95, 96]*/
        /*[91, 92, 93, 94, 95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
#pragma omp for nowait
            /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[91, 92, 93, 94, 95, 96]*/
                    /*[91, 92, 93, 94, 95, 96]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i - 2][j][k] - 4.0 * u[m_imopVarPre105][i - 1][j][k] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i + 1][j][k]);
                }
            }
            /*[91, 92, 93, 94, 95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[91, 92, 93, 94, 95, 96]*/
#pragma omp barrier
        }
        /*[91, 92, 93, 94, 95, 96]*/
        i = grid_points[0] - 2;
        /*[91, 92, 93, 94, 95, 96]*/
        /*[91, 92, 93, 94, 95, 96]*/
        /*[92, 93, 94, 95, 96]*/
        /*[91, 92, 93, 94, 95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
#pragma omp for nowait
            /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
            /*[91, 92, 93, 94, 95, 96]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                /*[91, 92, 93, 94, 95, 96]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[91, 92, 93, 94, 95, 96]*/
                    /*[91, 92, 93, 94, 95, 96]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i - 2][j][k] - 4.0 * u[m_imopVarPre105][i - 1][j][k] + 5.0 * u[m_imopVarPre105][i][j][k]);
                }
            }
            /*[91, 92, 93, 94, 95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[91, 92, 93, 94, 95, 96]*/
#pragma omp barrier
        }
        /*[91, 92, 93, 94, 95, 96]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[91, 92, 93, 94, 95, 96]*/
#pragma omp barrier
        /*[92, 93, 94, 95, 96]*/
#pragma omp for nowait
        /*[92, 93, 94, 95, 96]*/
        /*[92, 93, 94, 95, 96]*/
        /*[92, 93, 94, 95, 96]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[92, 93, 94, 95, 96]*/
            /*[92, 93, 94, 95, 96]*/
            /*[92, 93, 94, 95, 96]*/
            /*[92, 93, 94, 95, 96]*/
            /*[92, 93, 94, 95, 96]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[92, 93, 94, 95, 96]*/
                /*[92, 93, 94, 95, 96]*/
                /*[92, 93, 94, 95, 96]*/
                /*[92, 93, 94, 95, 96]*/
                /*[92, 93, 94, 95, 96]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[92, 93, 94, 95, 96]*/
                    /*[92, 93, 94, 95, 96]*/
                    vijk = vs[i][j][k];
                    /*[92, 93, 94, 95, 96]*/
                    vp1 = vs[i][j + 1][k];
                    /*[92, 93, 94, 95, 96]*/
                    vm1 = vs[i][j - 1][k];
                    /*[92, 93, 94, 95, 96]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dy1ty1 * (u[0][i][j + 1][k] - 2.0 * u[0][i][j][k] + u[0][i][j - 1][k]) - ty2 * (u[2][i][j + 1][k] - u[2][i][j - 1][k]);
                    /*[92, 93, 94, 95, 96]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dy2ty1 * (u[1][i][j + 1][k] - 2.0 * u[1][i][j][k] + u[1][i][j - 1][k]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[1][i][j + 1][k] * vp1 - u[1][i][j - 1][k] * vm1);
                    /*[92, 93, 94, 95, 96]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dy3ty1 * (u[2][i][j + 1][k] - 2.0 * u[2][i][j][k] + u[2][i][j - 1][k]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[2][i][j + 1][k] * vp1 - u[2][i][j - 1][k] * vm1 + (u[4][i][j + 1][k] - square[i][j + 1][k] - u[4][i][j - 1][k] + square[i][j - 1][k]) * c2);
                    /*[92, 93, 94, 95, 96]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dy4ty1 * (u[3][i][j + 1][k] - 2.0 * u[3][i][j][k] + u[3][i][j - 1][k]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[3][i][j + 1][k] * vp1 - u[3][i][j - 1][k] * vm1);
                    /*[92, 93, 94, 95, 96]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dy5ty1 * (u[4][i][j + 1][k] - 2.0 * u[4][i][j][k] + u[4][i][j - 1][k]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[4][i][j + 1][k] * rho_i[i][j + 1][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j - 1][k] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[4][i][j + 1][k] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[4][i][j - 1][k] - c2 * square[i][j - 1][k]) * vm1);
                }
            }
        }
        /*[92, 93, 94, 95, 96]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[92, 93, 94, 95, 96]*/
#pragma omp barrier
        /*[93, 94, 95, 96]*/
        j = 1;
        /*[93, 94, 95, 96]*/
        /*[93, 94, 95, 96]*/
        /*[94, 95, 96]*/
        /*[93, 94, 95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
#pragma omp for nowait
            /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[93, 94, 95, 96]*/
                    /*[93, 94, 95, 96]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (5.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j + 1][k] + u[m_imopVarPre105][i][j + 2][k]);
                }
            }
            /*[93, 94, 95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[93, 94, 95, 96]*/
#pragma omp barrier
        }
        /*[93, 94, 95, 96]*/
        j = 2;
        /*[93, 94, 95, 96]*/
        /*[93, 94, 95, 96]*/
        /*[94, 95, 96]*/
        /*[93, 94, 95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
#pragma omp for nowait
            /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[93, 94, 95, 96]*/
                    /*[93, 94, 95, 96]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (-4.0 * u[m_imopVarPre105][i][j - 1][k] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j + 1][k] + u[m_imopVarPre105][i][j + 2][k]);
                }
            }
            /*[93, 94, 95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[93, 94, 95, 96]*/
#pragma omp barrier
        }
        /*[93, 94, 95, 96]*/
        /*[93, 94, 95, 96]*/
        /*[94, 95, 96]*/
        /*[93, 94, 95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
#pragma omp for nowait
            /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                for (j = 3 * 1; j <= grid_points[1] - 3 * 1 - 1; j++) {
                /*[93, 94, 95, 96]*/
                    /*[93, 94, 95, 96]*/
                    /*[93, 94, 95, 96]*/
                    /*[93, 94, 95, 96]*/
                    /*[93, 94, 95, 96]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[93, 94, 95, 96]*/
                        /*[93, 94, 95, 96]*/
                        rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i][j - 2][k] - 4.0 * u[m_imopVarPre105][i][j - 1][k] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j + 1][k] + u[m_imopVarPre105][i][j + 2][k]);
                    }
                }
            }
            /*[93, 94, 95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[93, 94, 95, 96]*/
#pragma omp barrier
        }
        /*[93, 94, 95, 96]*/
        j = grid_points[1] - 3;
        /*[93, 94, 95, 96]*/
        /*[93, 94, 95, 96]*/
        /*[94, 95, 96]*/
        /*[93, 94, 95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
#pragma omp for nowait
            /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[93, 94, 95, 96]*/
                    /*[93, 94, 95, 96]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i][j - 2][k] - 4.0 * u[m_imopVarPre105][i][j - 1][k] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j + 1][k]);
                }
            }
            /*[93, 94, 95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[93, 94, 95, 96]*/
#pragma omp barrier
        }
        /*[93, 94, 95, 96]*/
        j = grid_points[1] - 2;
        /*[93, 94, 95, 96]*/
        /*[93, 94, 95, 96]*/
        /*[94, 95, 96]*/
        /*[93, 94, 95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
#pragma omp for nowait
            /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
            /*[93, 94, 95, 96]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                /*[93, 94, 95, 96]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[93, 94, 95, 96]*/
                    /*[93, 94, 95, 96]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i][j - 2][k] - 4.0 * u[m_imopVarPre105][i][j - 1][k] + 5.0 * u[m_imopVarPre105][i][j][k]);
                }
            }
            /*[93, 94, 95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[93, 94, 95, 96]*/
#pragma omp barrier
        }
        /*[93, 94, 95, 96]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[93, 94, 95, 96]*/
#pragma omp barrier
        /*[94, 95, 96]*/
#pragma omp for nowait
        /*[94, 95, 96]*/
        /*[94, 95, 96]*/
        /*[94, 95, 96]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[94, 95, 96]*/
            /*[94, 95, 96]*/
            /*[94, 95, 96]*/
            /*[94, 95, 96]*/
            /*[94, 95, 96]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[94, 95, 96]*/
                /*[94, 95, 96]*/
                /*[94, 95, 96]*/
                /*[94, 95, 96]*/
                /*[94, 95, 96]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[94, 95, 96]*/
                    /*[94, 95, 96]*/
                    wijk = ws[i][j][k];
                    /*[94, 95, 96]*/
                    wp1 = ws[i][j][k + 1];
                    /*[94, 95, 96]*/
                    wm1 = ws[i][j][k - 1];
                    /*[94, 95, 96]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dz1tz1 * (u[0][i][j][k + 1] - 2.0 * u[0][i][j][k] + u[0][i][j][k - 1]) - tz2 * (u[3][i][j][k + 1] - u[3][i][j][k - 1]);
                    /*[94, 95, 96]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dz2tz1 * (u[1][i][j][k + 1] - 2.0 * u[1][i][j][k] + u[1][i][j][k - 1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[1][i][j][k + 1] * wp1 - u[1][i][j][k - 1] * wm1);
                    /*[94, 95, 96]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dz3tz1 * (u[2][i][j][k + 1] - 2.0 * u[2][i][j][k] + u[2][i][j][k - 1]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[2][i][j][k + 1] * wp1 - u[2][i][j][k - 1] * wm1);
                    /*[94, 95, 96]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dz4tz1 * (u[3][i][j][k + 1] - 2.0 * u[3][i][j][k] + u[3][i][j][k - 1]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[3][i][j][k + 1] * wp1 - u[3][i][j][k - 1] * wm1 + (u[4][i][j][k + 1] - square[i][j][k + 1] - u[4][i][j][k - 1] + square[i][j][k - 1]) * c2);
                    /*[94, 95, 96]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dz5tz1 * (u[4][i][j][k + 1] - 2.0 * u[4][i][j][k] + u[4][i][j][k - 1]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[4][i][j][k + 1] * rho_i[i][j][k + 1] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j][k - 1] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[4][i][j][k + 1] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[4][i][j][k - 1] - c2 * square[i][j][k - 1]) * wm1);
                }
            }
        }
        /*[94, 95, 96]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[94, 95, 96]*/
#pragma omp barrier
        /*[95, 96]*/
        k = 1;
        /*[95, 96]*/
        /*[95, 96]*/
        /*[96]*/
        /*[95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[95, 96]*/
            /*[95, 96]*/
#pragma omp for nowait
            /*[95, 96]*/
            /*[95, 96]*/
            /*[95, 96]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[95, 96]*/
                    /*[95, 96]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (5.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j][k + 1] + u[m_imopVarPre105][i][j][k + 2]);
                }
            }
            /*[95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[95, 96]*/
#pragma omp barrier
        }
        /*[95, 96]*/
        k = 2;
        /*[95, 96]*/
        /*[95, 96]*/
        /*[96]*/
        /*[95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[95, 96]*/
            /*[95, 96]*/
#pragma omp for nowait
            /*[95, 96]*/
            /*[95, 96]*/
            /*[95, 96]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[95, 96]*/
                    /*[95, 96]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (-4.0 * u[m_imopVarPre105][i][j][k - 1] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j][k + 1] + u[m_imopVarPre105][i][j][k + 2]);
                }
            }
            /*[95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[95, 96]*/
#pragma omp barrier
        }
        /*[95, 96]*/
        /*[95, 96]*/
        /*[96]*/
        /*[95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[95, 96]*/
            /*[95, 96]*/
#pragma omp for nowait
            /*[95, 96]*/
            /*[95, 96]*/
            /*[95, 96]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[95, 96]*/
                    /*[95, 96]*/
                    /*[95, 96]*/
                    /*[95, 96]*/
                    /*[95, 96]*/
                    for (k = 3 * 1; k <= grid_points[2] - 3 * 1 - 1; k++) {
                    /*[95, 96]*/
                        /*[95, 96]*/
                        rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i][j][k - 2] - 4.0 * u[m_imopVarPre105][i][j][k - 1] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j][k + 1] + u[m_imopVarPre105][i][j][k + 2]);
                    }
                }
            }
            /*[95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[95, 96]*/
#pragma omp barrier
        }
        /*[95, 96]*/
        k = grid_points[2] - 3;
        /*[95, 96]*/
        /*[95, 96]*/
        /*[96]*/
        /*[95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[95, 96]*/
            /*[95, 96]*/
#pragma omp for nowait
            /*[95, 96]*/
            /*[95, 96]*/
            /*[95, 96]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[95, 96]*/
                    /*[95, 96]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i][j][k - 2] - 4.0 * u[m_imopVarPre105][i][j][k - 1] + 6.0 * u[m_imopVarPre105][i][j][k] - 4.0 * u[m_imopVarPre105][i][j][k + 1]);
                }
            }
            /*[95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[95, 96]*/
#pragma omp barrier
        }
        /*[95, 96]*/
        k = grid_points[2] - 2;
        /*[95, 96]*/
        /*[95, 96]*/
        /*[96]*/
        /*[95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[95, 96]*/
            /*[95, 96]*/
#pragma omp for nowait
            /*[95, 96]*/
            /*[95, 96]*/
            /*[95, 96]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[95, 96]*/
                    /*[95, 96]*/
                    rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] - dssp * (u[m_imopVarPre105][i][j][k - 2] - 4.0 * u[m_imopVarPre105][i][j][k - 1] + 5.0 * u[m_imopVarPre105][i][j][k]);
                }
            }
            /*[95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[95, 96]*/
#pragma omp barrier
        }
        /*[95, 96]*/
        /*[95, 96]*/
        /*[96]*/
        /*[95, 96]*/
        for (m_imopVarPre105 = 0; m_imopVarPre105 < 5; m_imopVarPre105++) {
        /*[95, 96]*/
            /*[95, 96]*/
#pragma omp for nowait
            /*[95, 96]*/
            /*[95, 96]*/
            /*[95, 96]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                /*[95, 96]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[95, 96]*/
                    /*[95, 96]*/
                    /*[95, 96]*/
                    /*[95, 96]*/
                    /*[95, 96]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*[95, 96]*/
                        /*[95, 96]*/
                        rhs[m_imopVarPre105][i][j][k] = rhs[m_imopVarPre105][i][j][k] * dt;
                    }
                }
            }
            /*[95, 96]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[95, 96]*/
#pragma omp barrier
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
/*[]*/
/*[]*/
static void x_solve(void ) {
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
    int i1;
    /*[]*/
    int i2;
    /*[]*/
    int m;
    /*[]*/
    double fac1;
    /*[]*/
    double fac2;
    /*[]*/
    double ru1;
    /*[]*/
    int i_imopVarPre0;
    /*[]*/
    int j_imopVarPre1;
    /*[]*/
    int k_imopVarPre2;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
        /*[]*/
            /*[]*/
#pragma omp for nowait
            /*[]*/
            /*[]*/
            /*[]*/
            for (i_imopVarPre0 = 0; i_imopVarPre0 <= grid_points[0] - 1; i_imopVarPre0++) {
            /*[]*/
                /*[]*/
                ru1 = c3c4 * rho_i[i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                /*[]*/
                cv[i_imopVarPre0] = us[i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                /*[]*/
                int _imopVarPre715;
                /*[]*/
                double _imopVarPre716;
                /*[]*/
                int _imopVarPre717;
                /*[]*/
                double _imopVarPre718;
                /*[]*/
                int _imopVarPre725;
                /*[]*/
                double _imopVarPre726;
                /*[]*/
                int _imopVarPre727;
                /*[]*/
                double _imopVarPre728;
                /*[]*/
                int _imopVarPre821;
                /*[]*/
                double _imopVarPre822;
                /*[]*/
                int _imopVarPre823;
                /*[]*/
                double _imopVarPre824;
                /*[]*/
                int _imopVarPre831;
                /*[]*/
                double _imopVarPre832;
                /*[]*/
                _imopVarPre715 = ((dxmax + ru1) > dx1);
                /*[]*/
                /*[]*/
                if (_imopVarPre715) {
                /*[]*/
                    /*[]*/
                    _imopVarPre716 = (dxmax + ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre716 = dx1;
                }
                /*[]*/
                _imopVarPre717 = ((dx5 + c1c5 * ru1) > _imopVarPre716);
                /*[]*/
                /*[]*/
                if (_imopVarPre717) {
                /*[]*/
                    /*[]*/
                    _imopVarPre718 = (dx5 + c1c5 * ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre725 = ((dxmax + ru1) > dx1);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre725) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre726 = (dxmax + ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre726 = dx1;
                    }
                    /*[]*/
                    _imopVarPre718 = _imopVarPre726;
                }
                /*[]*/
                _imopVarPre727 = ((dx2 + con43 * ru1) > _imopVarPre718);
                /*[]*/
                /*[]*/
                if (_imopVarPre727) {
                /*[]*/
                    /*[]*/
                    _imopVarPre728 = (dx2 + con43 * ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre821 = ((dxmax + ru1) > dx1);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre821) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre822 = (dxmax + ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre822 = dx1;
                    }
                    /*[]*/
                    _imopVarPre823 = ((dx5 + c1c5 * ru1) > _imopVarPre822);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre823) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre824 = (dx5 + c1c5 * ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre831 = ((dxmax + ru1) > dx1);
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre831) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre832 = (dxmax + ru1);
                        } else {
                        /*[]*/
                            /*[]*/
                            _imopVarPre832 = dx1;
                        }
                        /*[]*/
                        _imopVarPre824 = _imopVarPre832;
                    }
                    /*[]*/
                    _imopVarPre728 = _imopVarPre824;
                }
                /*[]*/
                rhon[i_imopVarPre0] = _imopVarPre728;
            }
            /*[]*/
#pragma omp for nowait
            /*[]*/
            /*[]*/
            /*[]*/
            for (i_imopVarPre0 = 1; i_imopVarPre0 <= grid_points[0] - 2; i_imopVarPre0++) {
            /*[]*/
                /*[]*/
                lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = 0.0;
                /*[]*/
                lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = -dttx2 * cv[i_imopVarPre0 - 1] - dttx1 * rhon[i_imopVarPre0 - 1];
                /*[]*/
                lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = 1.0 + c2dttx1 * rhon[i_imopVarPre0];
                /*[]*/
                lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = dttx2 * cv[i_imopVarPre0 + 1] - dttx1 * rhon[i_imopVarPre0 + 1];
                /*[]*/
                lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = 0.0;
            }
        }
    }
    /*[]*/
    i_imopVarPre0 = 1;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
        /*[]*/
            /*[]*/
            lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz5;
            /*[]*/
            lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
            /*[]*/
            lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
            /*[]*/
            lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] - comz4;
            /*[]*/
            lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz6;
            /*[]*/
            lhs[3][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] - comz4;
            /*[]*/
            lhs[4][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz1;
        }
    }
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i_imopVarPre0 = 3; i_imopVarPre0 <= grid_points[0] - 4; i_imopVarPre0++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
            /*[]*/
                /*[]*/
                lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
                /*[]*/
                lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[]*/
                lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz6;
                /*[]*/
                lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
                /*[]*/
                lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
            }
        }
    }
    /*[]*/
    i_imopVarPre0 = grid_points[0] - 3;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
        /*[]*/
            /*[]*/
            lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz1;
            /*[]*/
            lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
            /*[]*/
            lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + comz6;
            /*[]*/
            lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - comz4;
            /*[]*/
            lhs[0][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz1;
            /*[]*/
            lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] - comz4;
            /*[]*/
            lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2] + comz5;
        }
    }
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i_imopVarPre0 = 1; i_imopVarPre0 <= grid_points[0] - 2; i_imopVarPre0++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j_imopVarPre1 = 1; j_imopVarPre1 <= grid_points[1] - 2; j_imopVarPre1++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k_imopVarPre2 = 1; k_imopVarPre2 <= grid_points[2] - 2; k_imopVarPre2++) {
            /*[]*/
                /*[]*/
                lhs[0 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                /*[]*/
                lhs[1 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - dttx2 * speed[i_imopVarPre0 - 1][j_imopVarPre1][k_imopVarPre2];
                /*[]*/
                lhs[2 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                /*[]*/
                lhs[3 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + dttx2 * speed[i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2];
                /*[]*/
                lhs[4 + 5][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                /*[]*/
                lhs[0 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[0][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                /*[]*/
                lhs[1 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[1][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] + dttx2 * speed[i_imopVarPre0 - 1][j_imopVarPre1][k_imopVarPre2];
                /*[]*/
                lhs[2 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[2][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
                /*[]*/
                lhs[3 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[3][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] - dttx2 * speed[i_imopVarPre0 + 1][j_imopVarPre1][k_imopVarPre2];
                /*[]*/
                lhs[4 + 10][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2] = lhs[4][i_imopVarPre0][j_imopVarPre1][k_imopVarPre2];
            }
        }
    }
    /*[]*/
    n = 0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i <= grid_points[0] - 3; i++) {
    /*[]*/
        /*[]*/
        i1 = i + 1;
        /*[]*/
        i2 = i + 2;
        /*[]*/
#pragma omp for nowait
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
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*[]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 3; m++) {
                /*[]*/
                    /*[]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*[]*/
                lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                /*[]*/
                lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 3; m++) {
                /*[]*/
                    /*[]*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                }
                /*[]*/
                lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                /*[]*/
                lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 3; m++) {
                /*[]*/
                    /*[]*/
                    rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                }
            }
        }
    }
    /*[]*/
    i = grid_points[0] - 2;
    /*[]*/
    i1 = grid_points[0] - 1;
    /*[]*/
#pragma omp for nowait
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
            fac1 = 1.0 / lhs[n + 2][i][j][k];
            /*[]*/
            lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
            /*[]*/
            lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 3; m++) {
            /*[]*/
                /*[]*/
                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
            }
            /*[]*/
            lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
            /*[]*/
            lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 3; m++) {
            /*[]*/
                /*[]*/
                rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
            }
            /*[]*/
            fac2 = 1. / lhs[n + 2][i1][j][k];
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 3; m++) {
            /*[]*/
                /*[]*/
                rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 3; m < 5; m++) {
    /*[]*/
        /*[]*/
        n = (m - 3 + 1) * 5;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i <= grid_points[0] - 3; i++) {
        /*[]*/
            /*[]*/
            i1 = i + 1;
            /*[]*/
            i2 = i + 2;
            /*[]*/
#pragma omp for nowait
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
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*[]*/
                    lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                    /*[]*/
                    lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                    /*[]*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                    /*[]*/
                    lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                    /*[]*/
                    lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                    /*[]*/
                    rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                }
            }
        }
        /*[]*/
        i = grid_points[0] - 2;
        /*[]*/
        i1 = grid_points[0] - 1;
        /*[]*/
#pragma omp for nowait
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
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*[]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[]*/
                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                /*[]*/
                lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                /*[]*/
                lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                /*[]*/
                rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                /*[]*/
                fac2 = 1. / lhs[n + 2][i1][j][k];
                /*[]*/
                rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
            }
        }
    }
    /*[]*/
    i = grid_points[0] - 2;
    /*[]*/
    i1 = grid_points[0] - 1;
    /*[]*/
    n = 0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 3; m++) {
    /*[]*/
        /*[]*/
#pragma omp for nowait
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
                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 3; m < 5; m++) {
    /*[]*/
        /*[]*/
#pragma omp for nowait
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
                n = (m - 3 + 1) * 5;
                /*[]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
            }
        }
    }
    /*[]*/
    n = 0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = grid_points[0] - 3; i >= 0; i--) {
    /*[]*/
        /*[]*/
        i1 = i + 1;
        /*[]*/
        i2 = i + 2;
        /*[]*/
#pragma omp for nowait
        /*[]*/
        /*[]*/
        /*[]*/
        for (m = 0; m < 3; m++) {
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
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                }
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 3; m < 5; m++) {
    /*[]*/
        /*[]*/
        n = (m - 3 + 1) * 5;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = grid_points[0] - 3; i >= 0; i--) {
        /*[]*/
            /*[]*/
            i1 = i + 1;
            /*[]*/
            i2 = i + 2;
            /*[]*/
#pragma omp for nowait
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
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                }
            }
        }
    }
    /*[]*/
    int i_imopVarPre78;
    /*[]*/
    int j_imopVarPre79;
    /*[]*/
    int k_imopVarPre80;
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
    double t1;
    /*[]*/
    double t2;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i_imopVarPre78 = 1; i_imopVarPre78 <= grid_points[0] - 2; i_imopVarPre78++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j_imopVarPre79 = 1; j_imopVarPre79 <= grid_points[1] - 2; j_imopVarPre79++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k_imopVarPre80 = 1; k_imopVarPre80 <= grid_points[2] - 2; k_imopVarPre80++) {
            /*[]*/
                /*[]*/
                r1 = rhs[0][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                /*[]*/
                r2 = rhs[1][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                /*[]*/
                r3 = rhs[2][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                /*[]*/
                r4 = rhs[3][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                /*[]*/
                r5 = rhs[4][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80];
                /*[]*/
                t1 = bt * r3;
                /*[]*/
                t2 = 0.5 * (r4 + r5);
                /*[]*/
                rhs[0][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = -r2;
                /*[]*/
                rhs[1][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = r1;
                /*[]*/
                rhs[2][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = bt * (r4 - r5);
                /*[]*/
                rhs[3][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = -t1 + t2;
                /*[]*/
                rhs[4][i_imopVarPre78][j_imopVarPre79][k_imopVarPre80] = t1 + t2;
            }
        }
    }
}
/*[]*/
/*[]*/
static void y_solve(void ) {
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
    int j1;
    /*[]*/
    int j2;
    /*[]*/
    int m;
    /*[]*/
    double fac1;
    /*[]*/
    double fac2;
    /*[]*/
    double ru1;
    /*[]*/
    int i_imopVarPre81;
    /*[]*/
    int j_imopVarPre82;
    /*[]*/
    int k_imopVarPre83;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
        /*[]*/
            /*[]*/
#pragma omp for nowait
            /*[]*/
            /*[]*/
            /*[]*/
            for (j_imopVarPre82 = 0; j_imopVarPre82 <= grid_points[1] - 1; j_imopVarPre82++) {
            /*[]*/
                /*[]*/
                ru1 = c3c4 * rho_i[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                /*[]*/
                cv[j_imopVarPre82] = vs[i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                /*[]*/
                int _imopVarPre1343;
                /*[]*/
                double _imopVarPre1344;
                /*[]*/
                int _imopVarPre1345;
                /*[]*/
                double _imopVarPre1346;
                /*[]*/
                int _imopVarPre1353;
                /*[]*/
                double _imopVarPre1354;
                /*[]*/
                int _imopVarPre1355;
                /*[]*/
                double _imopVarPre1356;
                /*[]*/
                int _imopVarPre1449;
                /*[]*/
                double _imopVarPre1450;
                /*[]*/
                int _imopVarPre1451;
                /*[]*/
                double _imopVarPre1452;
                /*[]*/
                int _imopVarPre1459;
                /*[]*/
                double _imopVarPre1460;
                /*[]*/
                _imopVarPre1343 = ((dymax + ru1) > dy1);
                /*[]*/
                /*[]*/
                if (_imopVarPre1343) {
                /*[]*/
                    /*[]*/
                    _imopVarPre1344 = (dymax + ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre1344 = dy1;
                }
                /*[]*/
                _imopVarPre1345 = ((dy5 + c1c5 * ru1) > _imopVarPre1344);
                /*[]*/
                /*[]*/
                if (_imopVarPre1345) {
                /*[]*/
                    /*[]*/
                    _imopVarPre1346 = (dy5 + c1c5 * ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre1353 = ((dymax + ru1) > dy1);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre1353) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1354 = (dymax + ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1354 = dy1;
                    }
                    /*[]*/
                    _imopVarPre1346 = _imopVarPre1354;
                }
                /*[]*/
                _imopVarPre1355 = ((dy3 + con43 * ru1) > _imopVarPre1346);
                /*[]*/
                /*[]*/
                if (_imopVarPre1355) {
                /*[]*/
                    /*[]*/
                    _imopVarPre1356 = (dy3 + con43 * ru1);
                } else {
                /*[]*/
                    /*[]*/
                    _imopVarPre1449 = ((dymax + ru1) > dy1);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre1449) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1450 = (dymax + ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1450 = dy1;
                    }
                    /*[]*/
                    _imopVarPre1451 = ((dy5 + c1c5 * ru1) > _imopVarPre1450);
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre1451) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1452 = (dy5 + c1c5 * ru1);
                    } else {
                    /*[]*/
                        /*[]*/
                        _imopVarPre1459 = ((dymax + ru1) > dy1);
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre1459) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre1460 = (dymax + ru1);
                        } else {
                        /*[]*/
                            /*[]*/
                            _imopVarPre1460 = dy1;
                        }
                        /*[]*/
                        _imopVarPre1452 = _imopVarPre1460;
                    }
                    /*[]*/
                    _imopVarPre1356 = _imopVarPre1452;
                }
                /*[]*/
                rhoq[j_imopVarPre82] = _imopVarPre1356;
            }
            /*[]*/
#pragma omp for nowait
            /*[]*/
            /*[]*/
            /*[]*/
            for (j_imopVarPre82 = 1; j_imopVarPre82 <= grid_points[1] - 2; j_imopVarPre82++) {
            /*[]*/
                /*[]*/
                lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = 0.0;
                /*[]*/
                lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = -dtty2 * cv[j_imopVarPre82 - 1] - dtty1 * rhoq[j_imopVarPre82 - 1];
                /*[]*/
                lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = 1.0 + c2dtty1 * rhoq[j_imopVarPre82];
                /*[]*/
                lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = dtty2 * cv[j_imopVarPre82 + 1] - dtty1 * rhoq[j_imopVarPre82 + 1];
                /*[]*/
                lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = 0.0;
            }
        }
    }
    /*[]*/
    j_imopVarPre82 = 1;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
        /*[]*/
            /*[]*/
            lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz5;
            /*[]*/
            lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
            /*[]*/
            lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
            /*[]*/
            lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] - comz4;
            /*[]*/
            lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz6;
            /*[]*/
            lhs[3][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] - comz4;
            /*[]*/
            lhs[4][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz1;
        }
    }
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j_imopVarPre82 = 3; j_imopVarPre82 <= grid_points[1] - 4; j_imopVarPre82++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
            /*[]*/
                /*[]*/
                lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
                /*[]*/
                lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                /*[]*/
                lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz6;
                /*[]*/
                lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
                /*[]*/
                lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
            }
        }
    }
    /*[]*/
    j_imopVarPre82 = grid_points[1] - 3;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
        /*[]*/
            /*[]*/
            lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz1;
            /*[]*/
            lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
            /*[]*/
            lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + comz6;
            /*[]*/
            lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - comz4;
            /*[]*/
            lhs[0][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz1;
            /*[]*/
            lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] - comz4;
            /*[]*/
            lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83] + comz5;
        }
    }
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i_imopVarPre81 = 1; i_imopVarPre81 <= grid_points[0] - 2; i_imopVarPre81++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j_imopVarPre82 = 1; j_imopVarPre82 <= grid_points[1] - 2; j_imopVarPre82++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k_imopVarPre83 = 1; k_imopVarPre83 <= grid_points[2] - 2; k_imopVarPre83++) {
            /*[]*/
                /*[]*/
                lhs[0 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                /*[]*/
                lhs[1 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - dtty2 * speed[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83];
                /*[]*/
                lhs[2 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                /*[]*/
                lhs[3 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + dtty2 * speed[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83];
                /*[]*/
                lhs[4 + 5][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                /*[]*/
                lhs[0 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[0][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                /*[]*/
                lhs[1 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[1][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] + dtty2 * speed[i_imopVarPre81][j_imopVarPre82 - 1][k_imopVarPre83];
                /*[]*/
                lhs[2 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[2][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
                /*[]*/
                lhs[3 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[3][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] - dtty2 * speed[i_imopVarPre81][j_imopVarPre82 + 1][k_imopVarPre83];
                /*[]*/
                lhs[4 + 10][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83] = lhs[4][i_imopVarPre81][j_imopVarPre82][k_imopVarPre83];
            }
        }
    }
    /*[]*/
    n = 0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 0; j <= grid_points[1] - 3; j++) {
    /*[]*/
        /*[]*/
        j1 = j + 1;
        /*[]*/
        j2 = j + 2;
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
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*[]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 3; m++) {
                /*[]*/
                    /*[]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*[]*/
                lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                /*[]*/
                lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 3; m++) {
                /*[]*/
                    /*[]*/
                    rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                }
                /*[]*/
                lhs[n + 1][i][j2][k] = lhs[n + 1][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 3][i][j][k];
                /*[]*/
                lhs[n + 2][i][j2][k] = lhs[n + 2][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 4][i][j][k];
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 3; m++) {
                /*[]*/
                    /*[]*/
                    rhs[m][i][j2][k] = rhs[m][i][j2][k] - lhs[n + 0][i][j2][k] * rhs[m][i][j][k];
                }
            }
        }
    }
    /*[]*/
    j = grid_points[1] - 2;
    /*[]*/
    j1 = grid_points[1] - 1;
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
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*[]*/
            /*[]*/
            fac1 = 1. / lhs[n + 2][i][j][k];
            /*[]*/
            lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
            /*[]*/
            lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 3; m++) {
            /*[]*/
                /*[]*/
                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
            }
            /*[]*/
            lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
            /*[]*/
            lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 3; m++) {
            /*[]*/
                /*[]*/
                rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
            }
            /*[]*/
            fac2 = 1. / lhs[n + 2][i][j1][k];
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (m = 0; m < 3; m++) {
            /*[]*/
                /*[]*/
                rhs[m][i][j1][k] = fac2 * rhs[m][i][j1][k];
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 3; m < 5; m++) {
    /*[]*/
        /*[]*/
        n = (m - 3 + 1) * 5;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j <= grid_points[1] - 3; j++) {
        /*[]*/
            /*[]*/
            j1 = j + 1;
            /*[]*/
            j2 = j + 2;
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
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[]*/
                    /*[]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*[]*/
                    lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                    /*[]*/
                    lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                    /*[]*/
                    rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                    /*[]*/
                    lhs[n + 1][i][j2][k] = lhs[n + 1][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 3][i][j][k];
                    /*[]*/
                    lhs[n + 2][i][j2][k] = lhs[n + 2][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 4][i][j][k];
                    /*[]*/
                    rhs[m][i][j2][k] = rhs[m][i][j2][k] - lhs[n + 0][i][j2][k] * rhs[m][i][j][k];
                }
            }
        }
        /*[]*/
        j = grid_points[1] - 2;
        /*[]*/
        j1 = grid_points[1] - 1;
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
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*[]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[]*/
                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                /*[]*/
                lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                /*[]*/
                lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                /*[]*/
                rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                /*[]*/
                fac2 = 1. / lhs[n + 2][i][j1][k];
                /*[]*/
                rhs[m][i][j1][k] = fac2 * rhs[m][i][j1][k];
            }
        }
    }
    /*[]*/
    j = grid_points[1] - 2;
    /*[]*/
    j1 = grid_points[1] - 1;
    /*[]*/
    n = 0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 3; m++) {
    /*[]*/
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
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k];
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 3; m < 5; m++) {
    /*[]*/
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
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*[]*/
                /*[]*/
                n = (m - 3 + 1) * 5;
                /*[]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k];
            }
        }
    }
    /*[]*/
    n = 0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 3; m++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = grid_points[1] - 3; j >= 0; j--) {
        /*[]*/
            /*[]*/
            j1 = j + 1;
            /*[]*/
            j2 = j + 2;
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
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[]*/
                    /*[]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k] - lhs[n + 4][i][j][k] * rhs[m][i][j2][k];
                }
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 3; m < 5; m++) {
    /*[]*/
        /*[]*/
        n = (m - 3 + 1) * 5;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = grid_points[1] - 3; j >= 0; j--) {
        /*[]*/
            /*[]*/
            j1 = j + 1;
            /*[]*/
            j2 = j1 + 1;
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
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*[]*/
                    /*[]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k] - lhs[n + 4][i][j][k] * rhs[m][i][j2][k];
                }
            }
        }
    }
    /*[]*/
    int i_imopVarPre87;
    /*[]*/
    int j_imopVarPre88;
    /*[]*/
    int k_imopVarPre89;
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
    double t1;
    /*[]*/
    double t2;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (i_imopVarPre87 = 1; i_imopVarPre87 <= grid_points[0] - 2; i_imopVarPre87++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j_imopVarPre88 = 1; j_imopVarPre88 <= grid_points[1] - 2; j_imopVarPre88++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k_imopVarPre89 = 1; k_imopVarPre89 <= grid_points[2] - 2; k_imopVarPre89++) {
            /*[]*/
                /*[]*/
                r1 = rhs[0][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                /*[]*/
                r2 = rhs[1][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                /*[]*/
                r3 = rhs[2][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                /*[]*/
                r4 = rhs[3][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                /*[]*/
                r5 = rhs[4][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89];
                /*[]*/
                t1 = bt * r1;
                /*[]*/
                t2 = 0.5 * (r4 + r5);
                /*[]*/
                rhs[0][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = bt * (r4 - r5);
                /*[]*/
                rhs[1][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = -r3;
                /*[]*/
                rhs[2][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = r2;
                /*[]*/
                rhs[3][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = -t1 + t2;
                /*[]*/
                rhs[4][i_imopVarPre87][j_imopVarPre88][k_imopVarPre89] = t1 + t2;
            }
        }
    }
}
/*[]*/
/*[]*/
static void z_solve(void ) {
/*[]*/
    /*[97]*/
#pragma omp parallel
    {
    /*[97]*/
        /*[97]*/
        int i;
        /*[97]*/
        int j;
        /*[97]*/
        int k;
        /*[97]*/
        int n;
        /*[97]*/
        int k1;
        /*[97]*/
        int k2;
        /*[97]*/
        int m;
        /*[97]*/
        double fac1;
        /*[97]*/
        double fac2;
        /*[97]*/
        double ru1;
        /*[97]*/
        int i_imopVarPre84;
        /*[97]*/
        int j_imopVarPre85;
        /*[97]*/
        int k_imopVarPre86;
        /*[97]*/
        /*[97, 98, 99, 100]*/
        /*[97, 98, 99, 100]*/
        /*[97]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            /*[98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[97, 98, 99, 100]*/
                /*[97, 98, 99, 100]*/
#pragma omp for nowait
                /*[97, 98, 99, 100]*/
                /*[97, 98, 99, 100]*/
                /*[97, 98, 99, 100]*/
                for (k_imopVarPre86 = 0; k_imopVarPre86 <= grid_points[2] - 1; k_imopVarPre86++) {
                /*[97, 98, 99, 100]*/
                    /*[97, 98, 99, 100]*/
                    ru1 = c3c4 * rho_i[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[97, 98, 99, 100]*/
                    cv[k_imopVarPre86] = ws[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[97, 98, 99, 100]*/
                    int _imopVarPre1971;
                    /*[97, 98, 99, 100]*/
                    double _imopVarPre1972;
                    /*[97, 98, 99, 100]*/
                    int _imopVarPre1973;
                    /*[97, 98, 99, 100]*/
                    double _imopVarPre1974;
                    /*[97, 98, 99, 100]*/
                    int _imopVarPre1981;
                    /*[97, 98, 99, 100]*/
                    double _imopVarPre1982;
                    /*[97, 98, 99, 100]*/
                    int _imopVarPre1983;
                    /*[97, 98, 99, 100]*/
                    double _imopVarPre1984;
                    /*[97, 98, 99, 100]*/
                    int _imopVarPre2077;
                    /*[97, 98, 99, 100]*/
                    double _imopVarPre2078;
                    /*[97, 98, 99, 100]*/
                    int _imopVarPre2079;
                    /*[97, 98, 99, 100]*/
                    double _imopVarPre2080;
                    /*[97, 98, 99, 100]*/
                    int _imopVarPre2087;
                    /*[97, 98, 99, 100]*/
                    double _imopVarPre2088;
                    /*[97, 98, 99, 100]*/
                    _imopVarPre1971 = ((dzmax + ru1) > dz1);
                    /*[97, 98, 99, 100]*/
                    /*[97, 98, 99, 100]*/
                    if (_imopVarPre1971) {
                    /*[97, 98, 99, 100]*/
                        /*[97, 98, 99, 100]*/
                        _imopVarPre1972 = (dzmax + ru1);
                    } else {
                    /*[97, 98, 99, 100]*/
                        /*[97, 98, 99, 100]*/
                        _imopVarPre1972 = dz1;
                    }
                    /*[97, 98, 99, 100]*/
                    _imopVarPre1973 = ((dz5 + c1c5 * ru1) > _imopVarPre1972);
                    /*[97, 98, 99, 100]*/
                    /*[97, 98, 99, 100]*/
                    if (_imopVarPre1973) {
                    /*[97, 98, 99, 100]*/
                        /*[97, 98, 99, 100]*/
                        _imopVarPre1974 = (dz5 + c1c5 * ru1);
                    } else {
                    /*[97, 98, 99, 100]*/
                        /*[97, 98, 99, 100]*/
                        _imopVarPre1981 = ((dzmax + ru1) > dz1);
                        /*[97, 98, 99, 100]*/
                        /*[97, 98, 99, 100]*/
                        if (_imopVarPre1981) {
                        /*[97, 98, 99, 100]*/
                            /*[97, 98, 99, 100]*/
                            _imopVarPre1982 = (dzmax + ru1);
                        } else {
                        /*[97, 98, 99, 100]*/
                            /*[97, 98, 99, 100]*/
                            _imopVarPre1982 = dz1;
                        }
                        /*[97, 98, 99, 100]*/
                        _imopVarPre1974 = _imopVarPre1982;
                    }
                    /*[97, 98, 99, 100]*/
                    _imopVarPre1983 = ((dz4 + con43 * ru1) > _imopVarPre1974);
                    /*[97, 98, 99, 100]*/
                    /*[97, 98, 99, 100]*/
                    if (_imopVarPre1983) {
                    /*[97, 98, 99, 100]*/
                        /*[97, 98, 99, 100]*/
                        _imopVarPre1984 = (dz4 + con43 * ru1);
                    } else {
                    /*[97, 98, 99, 100]*/
                        /*[97, 98, 99, 100]*/
                        _imopVarPre2077 = ((dzmax + ru1) > dz1);
                        /*[97, 98, 99, 100]*/
                        /*[97, 98, 99, 100]*/
                        if (_imopVarPre2077) {
                        /*[97, 98, 99, 100]*/
                            /*[97, 98, 99, 100]*/
                            _imopVarPre2078 = (dzmax + ru1);
                        } else {
                        /*[97, 98, 99, 100]*/
                            /*[97, 98, 99, 100]*/
                            _imopVarPre2078 = dz1;
                        }
                        /*[97, 98, 99, 100]*/
                        _imopVarPre2079 = ((dz5 + c1c5 * ru1) > _imopVarPre2078);
                        /*[97, 98, 99, 100]*/
                        /*[97, 98, 99, 100]*/
                        if (_imopVarPre2079) {
                        /*[97, 98, 99, 100]*/
                            /*[97, 98, 99, 100]*/
                            _imopVarPre2080 = (dz5 + c1c5 * ru1);
                        } else {
                        /*[97, 98, 99, 100]*/
                            /*[97, 98, 99, 100]*/
                            _imopVarPre2087 = ((dzmax + ru1) > dz1);
                            /*[97, 98, 99, 100]*/
                            /*[97, 98, 99, 100]*/
                            if (_imopVarPre2087) {
                            /*[97, 98, 99, 100]*/
                                /*[97, 98, 99, 100]*/
                                _imopVarPre2088 = (dzmax + ru1);
                            } else {
                            /*[97, 98, 99, 100]*/
                                /*[97, 98, 99, 100]*/
                                _imopVarPre2088 = dz1;
                            }
                            /*[97, 98, 99, 100]*/
                            _imopVarPre2080 = _imopVarPre2088;
                        }
                        /*[97, 98, 99, 100]*/
                        _imopVarPre1984 = _imopVarPre2080;
                    }
                    /*[97, 98, 99, 100]*/
                    rhos[k_imopVarPre86] = _imopVarPre1984;
                }
                /*[97, 98, 99, 100]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[97, 98, 99, 100]*/
#pragma omp barrier
                /*[101, 102, 103]*/
#pragma omp for nowait
                /*[101, 102, 103]*/
                /*[101, 102, 103]*/
                /*[101, 102, 103]*/
                for (k_imopVarPre86 = 1; k_imopVarPre86 <= grid_points[2] - 2; k_imopVarPre86++) {
                /*[101, 102, 103]*/
                    /*[101, 102, 103]*/
                    lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = 0.0;
                    /*[101, 102, 103]*/
                    lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = -dttz2 * cv[k_imopVarPre86 - 1] - dttz1 * rhos[k_imopVarPre86 - 1];
                    /*[101, 102, 103]*/
                    lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = 1.0 + c2dttz1 * rhos[k_imopVarPre86];
                    /*[101, 102, 103]*/
                    lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = dttz2 * cv[k_imopVarPre86 + 1] - dttz1 * rhos[k_imopVarPre86 + 1];
                    /*[101, 102, 103]*/
                    lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = 0.0;
                }
                /*[101, 102, 103]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[101, 102, 103]*/
#pragma omp barrier
            }
        }
        /*[97, 98, 99, 100]*/
        k_imopVarPre86 = 1;
        /*[97, 98, 99, 100]*/
#pragma omp for nowait
        /*[97, 98, 99, 100]*/
        /*[97, 98, 99, 100]*/
        /*[97, 98, 99, 100]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[97, 98, 99, 100]*/
                /*[97, 98, 99, 100]*/
                lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz5;
                /*[97, 98, 99, 100]*/
                lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                /*[97, 98, 99, 100]*/
                lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                /*[97, 98, 99, 100]*/
                lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] - comz4;
                /*[97, 98, 99, 100]*/
                lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz6;
                /*[97, 98, 99, 100]*/
                lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] - comz4;
                /*[97, 98, 99, 100]*/
                lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz1;
            }
        }
        /*[97, 98, 99, 100]*/
#pragma omp for nowait
        /*[97, 98, 99, 100]*/
        /*[97, 98, 99, 100]*/
        /*[97, 98, 99, 100]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[97, 98, 99, 100]*/
                /*[97, 98, 99, 100]*/
                /*[97, 98, 99, 100]*/
                /*[97, 98, 99, 100]*/
                /*[97, 98, 99, 100]*/
                for (k_imopVarPre86 = 3; k_imopVarPre86 <= grid_points[2] - 4; k_imopVarPre86++) {
                /*[97, 98, 99, 100]*/
                    /*[97, 98, 99, 100]*/
                    lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                    /*[97, 98, 99, 100]*/
                    lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                    /*[97, 98, 99, 100]*/
                    lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz6;
                    /*[97, 98, 99, 100]*/
                    lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                    /*[97, 98, 99, 100]*/
                    lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                }
            }
        }
        /*[97, 98, 99, 100]*/
        k_imopVarPre86 = grid_points[2] - 3;
        /*[97, 98, 99, 100]*/
#pragma omp for nowait
        /*[97, 98, 99, 100]*/
        /*[97, 98, 99, 100]*/
        /*[97, 98, 99, 100]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            /*[97, 98, 99, 100]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[97, 98, 99, 100]*/
                /*[97, 98, 99, 100]*/
                lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz1;
                /*[97, 98, 99, 100]*/
                lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                /*[97, 98, 99, 100]*/
                lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + comz6;
                /*[97, 98, 99, 100]*/
                lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - comz4;
                /*[97, 98, 99, 100]*/
                lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz1;
                /*[97, 98, 99, 100]*/
                lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] - comz4;
                /*[97, 98, 99, 100]*/
                lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1] + comz5;
            }
        }
        /*[97, 98, 99, 100]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[97, 98, 99, 100]*/
#pragma omp barrier
        /*[101, 102, 103]*/
#pragma omp for nowait
        /*[101, 102, 103]*/
        /*[101, 102, 103]*/
        /*[101, 102, 103]*/
        for (i_imopVarPre84 = 1; i_imopVarPre84 <= grid_points[0] - 2; i_imopVarPre84++) {
        /*[101, 102, 103]*/
            /*[101, 102, 103]*/
            /*[101, 102, 103]*/
            /*[101, 102, 103]*/
            /*[101, 102, 103]*/
            for (j_imopVarPre85 = 1; j_imopVarPre85 <= grid_points[1] - 2; j_imopVarPre85++) {
            /*[101, 102, 103]*/
                /*[101, 102, 103]*/
                /*[101, 102, 103]*/
                /*[101, 102, 103]*/
                /*[101, 102, 103]*/
                for (k_imopVarPre86 = 1; k_imopVarPre86 <= grid_points[2] - 2; k_imopVarPre86++) {
                /*[101, 102, 103]*/
                    /*[101, 102, 103]*/
                    lhs[0 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[101, 102, 103]*/
                    lhs[1 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 - 1];
                    /*[101, 102, 103]*/
                    lhs[2 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[101, 102, 103]*/
                    lhs[3 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1];
                    /*[101, 102, 103]*/
                    lhs[4 + 5][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[101, 102, 103]*/
                    lhs[0 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[0][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[101, 102, 103]*/
                    lhs[1 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[1][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] + dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 - 1];
                    /*[101, 102, 103]*/
                    lhs[2 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[2][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                    /*[101, 102, 103]*/
                    lhs[3 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[3][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] - dttz2 * speed[i_imopVarPre84][j_imopVarPre85][k_imopVarPre86 + 1];
                    /*[101, 102, 103]*/
                    lhs[4 + 10][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86] = lhs[4][i_imopVarPre84][j_imopVarPre85][k_imopVarPre86];
                }
            }
        }
        /*[101, 102, 103]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[101, 102, 103]*/
#pragma omp barrier
        /*[98, 99, 100]*/
        n = 0;
        /*[98, 99, 100]*/
#pragma omp for nowait
        /*[98, 99, 100]*/
        /*[98, 99, 100]*/
        /*[98, 99, 100]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[98, 99, 100]*/
            /*[98, 99, 100]*/
            /*[98, 99, 100]*/
            /*[98, 99, 100]*/
            /*[98, 99, 100]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[98, 99, 100]*/
                /*[98, 99, 100]*/
                /*[98, 99, 100]*/
                /*[98, 99, 100]*/
                /*[98, 99, 100]*/
                for (k = 0; k <= grid_points[2] - 3; k++) {
                /*[98, 99, 100]*/
                    /*[98, 99, 100]*/
                    k1 = k + 1;
                    /*[98, 99, 100]*/
                    k2 = k + 2;
                    /*[98, 99, 100]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[98, 99, 100]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[98, 99, 100]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[98, 99, 100]*/
                    /*[98, 99, 100]*/
                    /*[98, 99, 100]*/
                    /*[98, 99, 100]*/
                    for (m = 0; m < 3; m++) {
                    /*[98, 99, 100]*/
                        /*[98, 99, 100]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*[98, 99, 100]*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*[98, 99, 100]*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*[98, 99, 100]*/
                    /*[98, 99, 100]*/
                    /*[98, 99, 100]*/
                    /*[98, 99, 100]*/
                    for (m = 0; m < 3; m++) {
                    /*[98, 99, 100]*/
                        /*[98, 99, 100]*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    }
                    /*[98, 99, 100]*/
                    lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                    /*[98, 99, 100]*/
                    lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                    /*[98, 99, 100]*/
                    /*[98, 99, 100]*/
                    /*[98, 99, 100]*/
                    /*[98, 99, 100]*/
                    for (m = 0; m < 3; m++) {
                    /*[98, 99, 100]*/
                        /*[98, 99, 100]*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                    }
                }
            }
        }
        /*[98, 99, 100]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[98, 99, 100]*/
#pragma omp barrier
        /*[102, 103]*/
        k = grid_points[2] - 2;
        /*[102, 103]*/
        k1 = grid_points[2] - 1;
        /*[102, 103]*/
#pragma omp for nowait
        /*[102, 103]*/
        /*[102, 103]*/
        /*[102, 103]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*[102, 103]*/
            /*[102, 103]*/
            /*[102, 103]*/
            /*[102, 103]*/
            /*[102, 103]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*[102, 103]*/
                /*[102, 103]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*[102, 103]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*[102, 103]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*[102, 103]*/
                /*[102, 103]*/
                /*[102, 103]*/
                /*[102, 103]*/
                for (m = 0; m < 3; m++) {
                /*[102, 103]*/
                    /*[102, 103]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*[102, 103]*/
                lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                /*[102, 103]*/
                lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                /*[102, 103]*/
                /*[102, 103]*/
                /*[102, 103]*/
                /*[102, 103]*/
                for (m = 0; m < 3; m++) {
                /*[102, 103]*/
                    /*[102, 103]*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                }
                /*[102, 103]*/
                fac2 = 1. / lhs[n + 2][i][j][k1];
                /*[102, 103]*/
                /*[102, 103]*/
                /*[102, 103]*/
                /*[102, 103]*/
                for (m = 0; m < 3; m++) {
                /*[102, 103]*/
                    /*[102, 103]*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
        }
        /*[102, 103]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[102, 103]*/
#pragma omp barrier
        /*[99, 100]*/
        /*[99, 100]*/
        /*[100]*/
        /*[99, 100]*/
        for (m = 3; m < 5; m++) {
        /*[99, 100]*/
            /*[99, 100]*/
            n = (m - 3 + 1) * 5;
            /*[99, 100]*/
#pragma omp for nowait
            /*[99, 100]*/
            /*[99, 100]*/
            /*[99, 100]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[99, 100]*/
                /*[99, 100]*/
                /*[99, 100]*/
                /*[99, 100]*/
                /*[99, 100]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[99, 100]*/
                    /*[99, 100]*/
                    /*[99, 100]*/
                    /*[99, 100]*/
                    /*[99, 100]*/
                    for (k = 0; k <= grid_points[2] - 3; k++) {
                    /*[99, 100]*/
                        /*[99, 100]*/
                        k1 = k + 1;
                        /*[99, 100]*/
                        k2 = k + 2;
                        /*[99, 100]*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*[99, 100]*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*[99, 100]*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*[99, 100]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*[99, 100]*/
                        lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                        /*[99, 100]*/
                        lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                        /*[99, 100]*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                        /*[99, 100]*/
                        lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                        /*[99, 100]*/
                        lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                        /*[99, 100]*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                    }
                }
            }
            /*[99, 100]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[99, 100]*/
#pragma omp barrier
            /*[103]*/
            k = grid_points[2] - 2;
            /*[103]*/
            k1 = grid_points[2] - 1;
            /*[103]*/
#pragma omp for nowait
            /*[103]*/
            /*[103]*/
            /*[103]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[103]*/
                /*[103]*/
                /*[103]*/
                /*[103]*/
                /*[103]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[103]*/
                    /*[103]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*[103]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*[103]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*[103]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*[103]*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*[103]*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*[103]*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    /*[103]*/
                    fac2 = 1. / lhs[n + 2][i][j][k1];
                    /*[103]*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
            /*[103]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[103]*/
#pragma omp barrier
        }
        /*[99, 100]*/
        k = grid_points[2] - 2;
        /*[99, 100]*/
        k1 = grid_points[2] - 1;
        /*[99, 100]*/
        n = 0;
        /*[99, 100]*/
        /*[99, 100, 103]*/
        /*[100, 103]*/
        /*[99, 100]*/
        for (m = 0; m < 3; m++) {
        /*[99, 100, 103]*/
            /*[99, 100, 103]*/
#pragma omp for nowait
            /*[99, 100, 103]*/
            /*[99, 100, 103]*/
            /*[99, 100, 103]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[99, 100, 103]*/
                    /*[99, 100, 103]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                }
            }
            /*[99, 100, 103]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[99, 100, 103]*/
#pragma omp barrier
        }
        /*[99, 100, 103]*/
        /*[99, 100, 103]*/
        /*[100, 103]*/
        /*[99, 100, 103]*/
        for (m = 3; m < 5; m++) {
        /*[99, 100, 103]*/
            /*[99, 100, 103]*/
            n = (m - 3 + 1) * 5;
            /*[99, 100, 103]*/
#pragma omp for nowait
            /*[99, 100, 103]*/
            /*[99, 100, 103]*/
            /*[99, 100, 103]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[99, 100, 103]*/
                    /*[99, 100, 103]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                }
            }
            /*[99, 100, 103]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[99, 100, 103]*/
#pragma omp barrier
        }
        /*[99, 100, 103]*/
        n = 0;
        /*[99, 100, 103]*/
        /*[99, 100, 103]*/
        /*[100, 103]*/
        /*[99, 100, 103]*/
        for (m = 0; m < 3; m++) {
        /*[99, 100, 103]*/
            /*[99, 100, 103]*/
#pragma omp for nowait
            /*[99, 100, 103]*/
            /*[99, 100, 103]*/
            /*[99, 100, 103]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[99, 100, 103]*/
                    /*[99, 100, 103]*/
                    /*[99, 100, 103]*/
                    /*[99, 100, 103]*/
                    /*[99, 100, 103]*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                    /*[99, 100, 103]*/
                        /*[99, 100, 103]*/
                        k1 = k + 1;
                        /*[99, 100, 103]*/
                        k2 = k + 2;
                        /*[99, 100, 103]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                    }
                }
            }
            /*[99, 100, 103]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[99, 100, 103]*/
#pragma omp barrier
        }
        /*[99, 100, 103]*/
        /*[99, 100, 103]*/
        /*[100, 103]*/
        /*[99, 100, 103]*/
        for (m = 3; m < 5; m++) {
        /*[99, 100, 103]*/
            /*[99, 100, 103]*/
            n = (m - 3 + 1) * 5;
            /*[99, 100, 103]*/
#pragma omp for nowait
            /*[99, 100, 103]*/
            /*[99, 100, 103]*/
            /*[99, 100, 103]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                /*[99, 100, 103]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*[99, 100, 103]*/
                    /*[99, 100, 103]*/
                    /*[99, 100, 103]*/
                    /*[99, 100, 103]*/
                    /*[99, 100, 103]*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                    /*[99, 100, 103]*/
                        /*[99, 100, 103]*/
                        k1 = k + 1;
                        /*[99, 100, 103]*/
                        k2 = k + 2;
                        /*[99, 100, 103]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                    }
                }
            }
            /*[99, 100, 103]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[99, 100, 103]*/
#pragma omp barrier
        }
    }
    /*[]*/
    tzetar();
    /*[]*/
}
