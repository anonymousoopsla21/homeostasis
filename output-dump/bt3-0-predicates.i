typedef long long __int64_t;
typedef __int64_t __darwin_off_t;
typedef __darwin_off_t fpos_t;
struct __sbuf {
    unsigned char *_base;
    int _size;
} ;
struct __sFILEX ;
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
typedef struct __sFILE FILE;
int fclose(FILE *);
int fgetc(FILE *);
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
int fscanf(FILE *restrict , const char *restrict , ...);
int printf(const char *restrict , ...);
void exit(int );
extern double fabs(double );
extern double sqrt(double );
typedef int boolean;
extern void timer_clear(int );
extern void timer_start(int );
extern void timer_stop(int );
extern double timer_read(int );
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
static int grid_points[3];
static double tx1;
static double tx2;
static double tx3;
static double ty1;
static double ty2;
static double ty3;
static double tz1;
static double tz2;
static double tz3;
static double dx1;
static double dx2;
static double dx3;
static double dx4;
static double dx5;
static double dy1;
static double dy2;
static double dy3;
static double dy4;
static double dy5;
static double dz1;
static double dz2;
static double dz3;
static double dz4;
static double dz5;
static double dssp;
static double dt;
static double ce[5][13];
static double dxmax;
static double dymax;
static double dzmax;
static double xxcon1;
static double xxcon2;
static double xxcon3;
static double xxcon4;
static double xxcon5;
static double dx1tx1;
static double dx2tx1;
static double dx3tx1;
static double dx4tx1;
static double dx5tx1;
static double yycon1;
static double yycon2;
static double yycon3;
static double yycon4;
static double yycon5;
static double dy1ty1;
static double dy2ty1;
static double dy3ty1;
static double dy4ty1;
static double dy5ty1;
static double zzcon1;
static double zzcon2;
static double zzcon3;
static double zzcon4;
static double zzcon5;
static double dz1tz1;
static double dz2tz1;
static double dz3tz1;
static double dz4tz1;
static double dz5tz1;
static double dnxm1;
static double dnym1;
static double dnzm1;
static double c1c2;
static double c1c5;
static double c3c4;
static double c1345;
static double conz1;
static double c1;
static double c2;
static double c3;
static double c4;
static double c5;
static double c4dssp;
static double c5dssp;
static double dtdssp;
static double dttx1;
static double dttx2;
static double dtty1;
static double dtty2;
static double dttz1;
static double dttz2;
static double c2dttx1;
static double c2dtty1;
static double c2dttz1;
static double comz1;
static double comz4;
static double comz5;
static double comz6;
static double c3c4tx3;
static double c3c4ty3;
static double c3c4tz3;
static double c2iv;
static double con43;
static double con16;
static double us[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double vs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double ws[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double qs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double rho_i[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double square[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double forcing[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5 + 1];
static double u[(12 + 1) / 2 * 2 + 1][(12 + 1) / 2 * 2 + 1][(12 + 1) / 2 * 2 + 1][5];
static double rhs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
static double lhs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1][3][5][5];
static double cuf[12];
static double q[12];
static double ue[12][5];
static double buf[12][5];
#pragma omp threadprivate(cuf, q, ue, buf)
static double fjac[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 - 1 + 1][5][5];
static double njac[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 - 1 + 1][5][5];
static double tmp1;
static double tmp2;
static double tmp3;
static void add(void );
static void adi(void );
static void error_norm(double rms[5]);
static void rhs_norm(double rms[5]);
static void exact_rhs(void );
static void exact_solution(double xi, double eta , double zeta , double dtemp[5]);
static void initialize(void );
static void lhsinit(void );
static void lhsx(void );
static void lhsy(void );
static void lhsz(void );
static void compute_rhs(void );
static void set_constants(void );
static void verify(int no_time_steps, char *class , boolean *verified);
static void x_solve(void );
static void x_backsubstitute(void );
static void x_solve_cell(void );
static void matvec_sub(double ablock[5][5], double avec[5] , double bvec[5]);
static void matmul_sub(double ablock[5][5], double bblock[5][5] , double cblock[5][5]);
static void binvcrhs(double lhs[5][5], double c[5][5] , double r[5]);
static void binvrhs(double lhs[5][5], double r[5]);
static void y_solve(void );
static void y_backsubstitute(void );
static void y_solve_cell(void );
static void z_solve(void );
static void z_backsubstitute(void );
static void z_solve_cell(void );
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    int niter;
    /*OUT: {
    Reverse<--,>}*/
    int step;
    /*OUT: {
    Reverse<--,>}*/
    int n3;
    /*OUT: {
    Reverse<--,>}*/
    int nthreads = 1;
    /*OUT: {
    Reverse<--,>}*/
    double navg;
    /*OUT: {
    Reverse<--,>}*/
    double mflops;
    /*OUT: {
    Reverse<--,>}*/
    double tmax;
    /*OUT: {
    Reverse<--,>}*/
    boolean verified;
    /*OUT: {
    Reverse<--,>}*/
    char class;
    /*OUT: {
    Reverse<--,>}*/
    FILE *fp;
    /*OUT: {
    Reverse<--,>}*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - BT Benchmark\n\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fp = fopen("inputbt.data", "r");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (fp != ((void *) 0)) {
        /*OUT: {
        Reverse<--, 273_0;>}*/
        printf(" Reading from input file inputbt.data");
        /*OUT: {
        Reverse<--, 273_0;>}*/
        /*OUT: {
        Reverse<--, 273_0;>}*/
        int *_imopVarPre141;
        /*OUT: {
        Reverse<--, 273_0;>}*/
        _imopVarPre141 = &niter;
        /*OUT: {
        Reverse<--, 273_0;>}*/
        fscanf(fp, "%d", _imopVarPre141);
        /*OUT: {
        Reverse<--, 273_0;>}*/
        /*OUT: {
        Reverse<--, 273_0;>}*/
        int _imopVarPre143;
        /*OUT: {
        Reverse<--, 273_0;>}*/
        _imopVarPre143 = fgetc(fp);
        /*OUT: {
        Reverse<--, 273_0;>}*/
        /*OUT: {
        Reverse<--, 273_0;>}*/
        while (_imopVarPre143 != '\n') {
            /*OUT: {
            Reverse<--, 294_0; 273_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 294_0; 273_0;>}*/
            _imopVarPre143 = fgetc(fp);
            /*OUT: {
            Reverse<--, 294_0; 273_0;>}*/
        }
        /*OUT: {
        Reverse<--, 294_1; 273_0;>}*/
        double *_imopVarPre145;
        /*OUT: {
        Reverse<--, 294_1; 273_0;>}*/
        _imopVarPre145 = &dt;
        /*OUT: {
        Reverse<--, 294_1; 273_0;>}*/
        fscanf(fp, "%lg", _imopVarPre145);
        /*OUT: {
        Reverse<--, 294_1; 273_0;>}*/
        /*OUT: {
        Reverse<--, 294_1; 273_0;>}*/
        int _imopVarPre147;
        /*OUT: {
        Reverse<--, 294_1; 273_0;>}*/
        _imopVarPre147 = fgetc(fp);
        /*OUT: {
        Reverse<--, 294_1; 273_0;>}*/
        /*OUT: {
        Reverse<--, 294_1; 273_0;>}*/
        while (_imopVarPre147 != '\n') {
            /*OUT: {
            Reverse<--, 317_0; 294_1; 273_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 317_0; 294_1; 273_0;>}*/
            _imopVarPre147 = fgetc(fp);
            /*OUT: {
            Reverse<--, 317_0; 294_1; 273_0;>}*/
        }
        /*OUT: {
        Reverse<--, 317_1; 294_1; 273_0;>}*/
        int *_imopVarPre151;
        /*OUT: {
        Reverse<--, 317_1; 294_1; 273_0;>}*/
        int *_imopVarPre152;
        /*OUT: {
        Reverse<--, 317_1; 294_1; 273_0;>}*/
        int *_imopVarPre153;
        /*OUT: {
        Reverse<--, 317_1; 294_1; 273_0;>}*/
        _imopVarPre151 = &grid_points[2];
        /*OUT: {
        Reverse<--, 317_1; 294_1; 273_0;>}*/
        _imopVarPre152 = &grid_points[1];
        /*OUT: {
        Reverse<--, 317_1; 294_1; 273_0;>}*/
        _imopVarPre153 = &grid_points[0];
        /*OUT: {
        Reverse<--, 317_1; 294_1; 273_0;>}*/
        fscanf(fp, "%d%d%d", _imopVarPre153, _imopVarPre152, _imopVarPre151);
        /*OUT: {
        Reverse<--, 317_1; 294_1; 273_0;>}*/
        /*OUT: {
        Reverse<--, 317_1; 294_1; 273_0;>}*/
        fclose(fp);
        /*OUT: {
        Reverse<--, 317_1; 294_1; 273_0;>}*/
    } else {
        /*OUT: {
        Reverse<--, 273_1;>}*/
        printf(" No input file inputbt.data. Using compiled defaults\n");
        /*OUT: {
        Reverse<--, 273_1;>}*/
        /*OUT: {
        Reverse<--, 273_1;>}*/
        niter = 60;
        /*OUT: {
        Reverse<--, 273_1;>}*/
        dt = 0.010;
        /*OUT: {
        Reverse<--, 273_1;>}*/
        grid_points[0] = 12;
        /*OUT: {
        Reverse<--, 273_1;>}*/
        grid_points[1] = 12;
        /*OUT: {
        Reverse<--, 273_1;>}*/
        grid_points[2] = 12;
    }
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    int _imopVarPre157;
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    int _imopVarPre158;
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    int _imopVarPre159;
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    _imopVarPre157 = grid_points[2];
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    _imopVarPre158 = grid_points[1];
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    _imopVarPre159 = grid_points[0];
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    printf(" Size: %3dx%3dx%3d\n", _imopVarPre159, _imopVarPre158, _imopVarPre157);
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    printf(" Iterations: %3d   dt: %10.6f\n", niter, dt);
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    int _imopVarPre160;
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    int _imopVarPre161;
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    _imopVarPre160 = grid_points[0] > 12;
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    if (!_imopVarPre160) {
        /*OUT: {
        Reverse<--, 392_0; 273_1;>
        Reverse<--, 392_0; 317_1; 294_1; 273_0;>}*/
        _imopVarPre161 = grid_points[1] > 12;
        /*OUT: {
        Reverse<--, 392_0; 273_1;>
        Reverse<--, 392_0; 317_1; 294_1; 273_0;>}*/
        if (!_imopVarPre161) {
            /*OUT: {
            Reverse<--, 396_0; 392_0; 317_1; 294_1; 273_0;>
            Reverse<--, 396_0; 392_0; 273_1;>}*/
            _imopVarPre161 = grid_points[2] > 12;
        }
        /*OUT: {
        Reverse<--, 392_0; 273_1;>
        Reverse<--, 392_0; 317_1; 294_1; 273_0;>}*/
        _imopVarPre160 = _imopVarPre161;
    }
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    if (_imopVarPre160) {
        /*OUT: {
        Reverse<--, 402_0; 317_1; 294_1; 273_0;>
        Reverse<--, 402_0; 273_1;>}*/
        int _imopVarPre165;
        /*OUT: {
        Reverse<--, 402_0; 317_1; 294_1; 273_0;>
        Reverse<--, 402_0; 273_1;>}*/
        int _imopVarPre166;
        /*OUT: {
        Reverse<--, 402_0; 317_1; 294_1; 273_0;>
        Reverse<--, 402_0; 273_1;>}*/
        int _imopVarPre167;
        /*OUT: {
        Reverse<--, 402_0; 317_1; 294_1; 273_0;>
        Reverse<--, 402_0; 273_1;>}*/
        _imopVarPre165 = grid_points[2];
        /*OUT: {
        Reverse<--, 402_0; 317_1; 294_1; 273_0;>
        Reverse<--, 402_0; 273_1;>}*/
        _imopVarPre166 = grid_points[1];
        /*OUT: {
        Reverse<--, 402_0; 317_1; 294_1; 273_0;>
        Reverse<--, 402_0; 273_1;>}*/
        _imopVarPre167 = grid_points[0];
        /*OUT: {
        Reverse<--, 402_0; 317_1; 294_1; 273_0;>
        Reverse<--, 402_0; 273_1;>}*/
        printf(" %dx%dx%d\n", _imopVarPre167, _imopVarPre166, _imopVarPre165);
        /*OUT: {
        Reverse<--, 402_0; 317_1; 294_1; 273_0;>
        Reverse<--, 402_0; 273_1;>}*/
        /*OUT: {
        Reverse<--, 402_0; 317_1; 294_1; 273_0;>
        Reverse<--, 402_0; 273_1;>}*/
        printf(" Problem size too big for compiled array sizes\n");
        /*OUT: {
        Reverse<--, 402_0; 317_1; 294_1; 273_0;>
        Reverse<--, 402_0; 273_1;>}*/
        /*OUT: {
        Reverse<--, 402_0; 317_1; 294_1; 273_0;>
        Reverse<--, 402_0; 273_1;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 402_0; 317_1; 294_1; 273_0;>
        Reverse<--, 402_0; 273_1;>}*/
    }
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    set_constants();
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    initialize();
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    lhsinit();
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    exact_rhs();
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    adi();
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    initialize();
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    timer_clear(1);
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    timer_start(1);
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 317_1; 294_1; 273_0;>
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 471_0; 317_1; 294_1; 273_0;>
    Reverse<--, 471_0; 273_1;>}*/
    for (step = 1; step <= niter; step++) {
        /*OUT: {
        Reverse<--, 471_0; 317_1; 294_1; 273_0;>
        Reverse<--, 471_0; 273_1;>}*/
        int _imopVarPre168;
        /*OUT: {
        Reverse<--, 471_0; 317_1; 294_1; 273_0;>
        Reverse<--, 471_0; 273_1;>}*/
        _imopVarPre168 = step % 20 == 0;
        /*OUT: {
        Reverse<--, 471_0; 317_1; 294_1; 273_0;>
        Reverse<--, 471_0; 273_1;>}*/
        if (!_imopVarPre168) {
            /*OUT: {
            Reverse<--, 476_0; 471_0; 273_1;>
            Reverse<--, 476_0; 471_0; 317_1; 294_1; 273_0;>}*/
            _imopVarPre168 = step == 1;
        }
        /*OUT: {
        Reverse<--, 471_0; 317_1; 294_1; 273_0;>
        Reverse<--, 471_0; 273_1;>}*/
        if (_imopVarPre168) {
            /*OUT: {
            Reverse<--, 479_0; 471_0; 273_1;>
            Reverse<--, 479_0; 471_0; 317_1; 294_1; 273_0;>}*/
            printf(" Time step %4d\n", step);
            /*OUT: {
            Reverse<--, 479_0; 471_0; 273_1;>
            Reverse<--, 479_0; 471_0; 317_1; 294_1; 273_0;>}*/
        }
        /*OUT: {
        Reverse<--, 471_0; 317_1; 294_1; 273_0;>
        Reverse<--, 471_0; 273_1;>}*/
        adi();
        /*OUT: {
        Reverse<--, 471_0; 317_1; 294_1; 273_0;>
        Reverse<--, 471_0; 273_1;>}*/
    }
#pragma omp parallel
    {
    }
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    timer_stop(1);
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    tmax = timer_read(1);
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    int *_imopVarPre171;
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    char *_imopVarPre172;
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    _imopVarPre171 = &verified;
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    _imopVarPre172 = &class;
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    verify(niter, _imopVarPre172, _imopVarPre171);
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    n3 = grid_points[0] * grid_points[1] * grid_points[2];
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    navg = (grid_points[0] + grid_points[1] + grid_points[2]) / 3.0;
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    if (tmax != 0.0) {
        /*OUT: {
        Reverse<--, 523_0; 471_1; 273_1;>
        Reverse<--, 523_0; 471_1; 317_1; 294_1; 273_0;>}*/
        mflops = 1.0e-6 * (double) niter * (3478.8 * (double) n3 - 17655.7 * (navg * navg) + 28023.7 * navg) / tmax;
    } else {
        /*OUT: {
        Reverse<--, 523_1; 471_1; 273_1;>
        Reverse<--, 523_1; 471_1; 317_1; 294_1; 273_0;>}*/
        mflops = 0.0;
    }
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    int _imopVarPre176;
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    int _imopVarPre177;
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    int _imopVarPre178;
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    _imopVarPre176 = grid_points[2];
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    _imopVarPre177 = grid_points[1];
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    _imopVarPre178 = grid_points[0];
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
    c_print_results("BT", class, _imopVarPre178, _imopVarPre177, _imopVarPre176, niter, nthreads, tmax, mflops, "          floating point", verified, "3.0 structured", "15 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "(none)");
    /*OUT: {
    Reverse<--, 471_1; 317_1; 294_1; 273_0;>
    Reverse<--, 471_1; 273_1;>}*/
}
static void add() {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int m;
#pragma omp for nowait
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 559_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 563_1; 559_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<--, 559_0;>}*/
            /*OUT: {
            Reverse<--, 559_0;>}*/
            /*OUT: {
            Reverse<--, 566_1; 563_0; 559_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<--, 563_0; 559_0;>}*/
                /*OUT: {
                Reverse<--, 563_0; 559_0;>}*/
                /*OUT: {
                Reverse<--, 566_0; 563_0; 559_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 566_0; 563_0; 559_0;>}*/
                    u[i][j][k][m] = u[i][j][k][m] + rhs[i][j][k][m];
                }
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<582,>}*/
#pragma omp barrier
}
static void adi() {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<13960,>}*/
        compute_rhs();
        /*OUT: {
        Reverse<13960,>}*/
    }
#pragma omp parallel
    {
        /*OUT: {
        Reverse<13964,>}*/
        x_solve();
        /*OUT: {
        Reverse<13964,>}*/
    }
#pragma omp parallel
    {
        /*OUT: {
        Reverse<13968,>}*/
        y_solve();
        /*OUT: {
        Reverse<13968,>}*/
    }
#pragma omp parallel
    {
        /*OUT: {
        Reverse<13972,>}*/
        z_solve();
        /*OUT: {
        Reverse<13972,>}*/
    }
#pragma omp parallel
    {
        /*OUT: {
        Reverse<13976,>}*/
        add();
        /*OUT: {
        Reverse<13976,>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
static void error_norm(double rms[5]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    int d;
    /*OUT: {
    Reverse<--,>}*/
    double xi;
    /*OUT: {
    Reverse<--,>}*/
    double eta;
    /*OUT: {
    Reverse<--,>}*/
    double zeta;
    /*OUT: {
    Reverse<--,>}*/
    double u_exact[5];
    /*OUT: {
    Reverse<--,>}*/
    double add;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 620_0;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 620_0;>}*/
        rms[m] = 0.0;
    }
    /*OUT: {
    Reverse<--, 620_1;>}*/
    /*OUT: {
    Reverse<--, 620_1;>}*/
    /*OUT: {
    Reverse<--, 633_1; 627_0; 620_1;>}*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: {
        Reverse<--, 627_0; 620_1;>}*/
        xi = (double) i * dnxm1;
        /*OUT: {
        Reverse<--, 627_0; 620_1;>}*/
        /*OUT: {
        Reverse<--, 627_0; 620_1;>}*/
        /*OUT: {
        Reverse<--, 639_1; 633_0; 627_0; 620_1;>}*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: {
            Reverse<--, 633_0; 627_0; 620_1;>}*/
            eta = (double) j * dnym1;
            /*OUT: {
            Reverse<--, 633_0; 627_0; 620_1;>}*/
            /*OUT: {
            Reverse<--, 633_0; 627_0; 620_1;>}*/
            /*OUT: {
            Reverse<--, 649_1; 639_0; 633_0; 627_0; 620_1;>}*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: {
                Reverse<--, 639_0; 633_0; 627_0; 620_1;>}*/
                zeta = (double) k * dnzm1;
                /*OUT: {
                Reverse<--, 639_0; 633_0; 627_0; 620_1;>}*/
                exact_solution(xi, eta, zeta, u_exact);
                /*OUT: {
                Reverse<--, 639_0; 633_0; 627_0; 620_1;>}*/
                /*OUT: {
                Reverse<--, 639_0; 633_0; 627_0; 620_1;>}*/
                /*OUT: {
                Reverse<--, 639_0; 633_0; 627_0; 620_1;>}*/
                /*OUT: {
                Reverse<--, 649_0; 639_0; 633_0; 627_0; 620_1;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 649_0; 639_0; 633_0; 627_0; 620_1;>}*/
                    add = u[i][j][k][m] - u_exact[m];
                    /*OUT: {
                    Reverse<--, 649_0; 639_0; 633_0; 627_0; 620_1;>}*/
                    rms[m] = rms[m] + add * add;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 627_1; 620_1;>}*/
    /*OUT: {
    Reverse<--, 627_1; 620_1;>}*/
    /*OUT: {
    Reverse<--, 666_1; 663_0; 627_1; 620_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 663_0; 627_1; 620_1;>}*/
        /*OUT: {
        Reverse<--, 663_0; 627_1; 620_1;>}*/
        /*OUT: {
        Reverse<--, 666_0; 663_0; 627_1; 620_1;>}*/
        for (d = 0; d <= 2; d++) {
            /*OUT: {
            Reverse<--, 666_0; 663_0; 627_1; 620_1;>}*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*OUT: {
        Reverse<--, 666_1; 663_0; 627_1; 620_1;>}*/
        double _imopVarPre180;
        /*OUT: {
        Reverse<--, 666_1; 663_0; 627_1; 620_1;>}*/
        double _imopVarPre181;
        /*OUT: {
        Reverse<--, 666_1; 663_0; 627_1; 620_1;>}*/
        _imopVarPre180 = rms[m];
        /*OUT: {
        Reverse<--, 666_1; 663_0; 627_1; 620_1;>}*/
        _imopVarPre181 = sqrt(_imopVarPre180);
        /*OUT: {
        Reverse<--, 666_1; 663_0; 627_1; 620_1;>}*/
        /*OUT: {
        Reverse<--, 666_1; 663_0; 627_1; 620_1;>}*/
        rms[m] = _imopVarPre181;
    }
}
/*OUT: {
Reverse<--,>}*/
static void rhs_norm(double rms[5]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int d;
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    double add;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 696_0;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 696_0;>}*/
        rms[m] = 0.0;
    }
    /*OUT: {
    Reverse<--, 696_1;>}*/
    /*OUT: {
    Reverse<--, 696_1;>}*/
    /*OUT: {
    Reverse<--, 707_1; 703_0; 696_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<--, 703_0; 696_1;>}*/
        /*OUT: {
        Reverse<--, 703_0; 696_1;>}*/
        /*OUT: {
        Reverse<--, 711_1; 707_0; 703_0; 696_1;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<--, 707_0; 703_0; 696_1;>}*/
            /*OUT: {
            Reverse<--, 707_0; 703_0; 696_1;>}*/
            /*OUT: {
            Reverse<--, 714_1; 711_0; 707_0; 703_0; 696_1;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<--, 711_0; 707_0; 703_0; 696_1;>}*/
                /*OUT: {
                Reverse<--, 711_0; 707_0; 703_0; 696_1;>}*/
                /*OUT: {
                Reverse<--, 714_0; 711_0; 707_0; 703_0; 696_1;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 714_0; 711_0; 707_0; 703_0; 696_1;>}*/
                    add = rhs[i][j][k][m];
                    /*OUT: {
                    Reverse<--, 714_0; 711_0; 707_0; 703_0; 696_1;>}*/
                    rms[m] = rms[m] + add * add;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 703_1; 696_1;>}*/
    /*OUT: {
    Reverse<--, 703_1; 696_1;>}*/
    /*OUT: {
    Reverse<--, 730_1; 727_0; 703_1; 696_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 727_0; 703_1; 696_1;>}*/
        /*OUT: {
        Reverse<--, 727_0; 703_1; 696_1;>}*/
        /*OUT: {
        Reverse<--, 730_0; 727_0; 703_1; 696_1;>}*/
        for (d = 0; d <= 2; d++) {
            /*OUT: {
            Reverse<--, 730_0; 727_0; 703_1; 696_1;>}*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*OUT: {
        Reverse<--, 730_1; 727_0; 703_1; 696_1;>}*/
        double _imopVarPre183;
        /*OUT: {
        Reverse<--, 730_1; 727_0; 703_1; 696_1;>}*/
        double _imopVarPre184;
        /*OUT: {
        Reverse<--, 730_1; 727_0; 703_1; 696_1;>}*/
        _imopVarPre183 = rms[m];
        /*OUT: {
        Reverse<--, 730_1; 727_0; 703_1; 696_1;>}*/
        _imopVarPre184 = sqrt(_imopVarPre183);
        /*OUT: {
        Reverse<--, 730_1; 727_0; 703_1; 696_1;>}*/
        /*OUT: {
        Reverse<--, 730_1; 727_0; 703_1; 696_1;>}*/
        rms[m] = _imopVarPre184;
    }
}
static void exact_rhs() {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<14051,>}*/
        double dtemp[5];
        /*OUT: {
        Reverse<14051,>}*/
        double xi;
        /*OUT: {
        Reverse<14051,>}*/
        double eta;
        /*OUT: {
        Reverse<14051,>}*/
        double zeta;
        /*OUT: {
        Reverse<14051,>}*/
        double dtpp;
        /*OUT: {
        Reverse<14051,>}*/
        int m;
        /*OUT: {
        Reverse<14051,>}*/
        int i;
        /*OUT: {
        Reverse<14051,>}*/
        int j;
        /*OUT: {
        Reverse<14051,>}*/
        int k;
        /*OUT: {
        Reverse<14051,>}*/
        int ip1;
        /*OUT: {
        Reverse<14051,>}*/
        int im1;
        /*OUT: {
        Reverse<14051,>}*/
        int jp1;
        /*OUT: {
        Reverse<14051,>}*/
        int jm1;
        /*OUT: {
        Reverse<14051,>}*/
        int km1;
        /*OUT: {
        Reverse<14051,>}*/
        int kp1;
#pragma omp for nowait
        /*OUT: {
        Reverse<14051,>}*/
        /*OUT: {
        Reverse<14051,>}*/
        /*OUT: {
        Reverse<14051, 775_1;>}*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: {
            Reverse<14051,>}*/
            /*OUT: {
            Reverse<14051,>}*/
            /*OUT: {
            Reverse<14051, 779_1; 775_0;>}*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: {
                Reverse<14051, 775_0;>}*/
                /*OUT: {
                Reverse<14051, 775_0;>}*/
                /*OUT: {
                Reverse<14051, 782_1; 779_0; 775_0;>}*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: {
                    Reverse<14051, 779_0; 775_0;>}*/
                    /*OUT: {
                    Reverse<14051, 779_0; 775_0;>}*/
                    /*OUT: {
                    Reverse<14051, 782_0; 779_0; 775_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<14051, 782_0; 779_0; 775_0;>}*/
                        forcing[i][j][k][m] = 0.0;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<14051,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<790,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<790,>}*/
        /*OUT: {
        Reverse<790,>}*/
        /*OUT: {
        Reverse<790, 801_1;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<790,>}*/
            eta = (double) j * dnym1;
            /*OUT: {
            Reverse<790,>}*/
            /*OUT: {
            Reverse<790,>}*/
            /*OUT: {
            Reverse<790, 1130_1; 1102_1; 1059_1; 873_1; 807_1; 801_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<790, 801_0;>}*/
                zeta = (double) k * dnzm1;
                /*OUT: {
                Reverse<790, 801_0;>}*/
                /*OUT: {
                Reverse<790, 801_0;>}*/
                /*OUT: {
                Reverse<790, 828_1; 817_1; 807_0; 801_0;>}*/
                for (i = 0; i < grid_points[0]; i++) {
                    /*OUT: {
                    Reverse<790, 807_0; 801_0;>}*/
                    xi = (double) i * dnxm1;
                    /*OUT: {
                    Reverse<790, 807_0; 801_0;>}*/
                    exact_solution(xi, eta, zeta, dtemp);
                    /*OUT: {
                    Reverse<790, 807_0; 801_0;>}*/
                    /*OUT: {
                    Reverse<790, 807_0; 801_0;>}*/
                    /*OUT: {
                    Reverse<790, 807_0; 801_0;>}*/
                    /*OUT: {
                    Reverse<790, 817_0; 807_0; 801_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<790, 817_0; 807_0; 801_0;>}*/
                        ue[i][m] = dtemp[m];
                    }
                    /*OUT: {
                    Reverse<790, 817_1; 807_0; 801_0;>}*/
                    dtpp = 1.0 / dtemp[0];
                    /*OUT: {
                    Reverse<790, 817_1; 807_0; 801_0;>}*/
                    /*OUT: {
                    Reverse<790, 817_1; 807_0; 801_0;>}*/
                    /*OUT: {
                    Reverse<790, 828_0; 817_1; 807_0; 801_0;>}*/
                    for (m = 1; m <= 4; m++) {
                        /*OUT: {
                        Reverse<790, 828_0; 817_1; 807_0; 801_0;>}*/
                        buf[i][m] = dtpp * dtemp[m];
                    }
                    /*OUT: {
                    Reverse<790, 828_1; 817_1; 807_0; 801_0;>}*/
                    cuf[i] = buf[i][1] * buf[i][1];
                    /*OUT: {
                    Reverse<790, 828_1; 817_1; 807_0; 801_0;>}*/
                    buf[i][0] = cuf[i] + buf[i][2] * buf[i][2] + buf[i][3] * buf[i][3];
                    /*OUT: {
                    Reverse<790, 828_1; 817_1; 807_0; 801_0;>}*/
                    q[i] = 0.5 * (buf[i][1] * ue[i][1] + buf[i][2] * ue[i][2] + buf[i][3] * ue[i][3]);
                }
                /*OUT: {
                Reverse<790, 807_1; 801_0;>}*/
                /*OUT: {
                Reverse<790, 807_1; 801_0;>}*/
                /*OUT: {
                Reverse<790, 873_0; 807_1; 801_0;>}*/
                for (i = 1; i < grid_points[0] - 1; i++) {
                    /*OUT: {
                    Reverse<790, 873_0; 807_1; 801_0;>}*/
                    im1 = i - 1;
                    /*OUT: {
                    Reverse<790, 873_0; 807_1; 801_0;>}*/
                    ip1 = i + 1;
                    /*OUT: {
                    Reverse<790, 873_0; 807_1; 801_0;>}*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - tx2 * (ue[ip1][1] - ue[im1][1]) + dx1tx1 * (ue[ip1][0] - 2.0 * ue[i][0] + ue[im1][0]);
                    /*OUT: {
                    Reverse<790, 873_0; 807_1; 801_0;>}*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - tx2 * ((ue[ip1][1] * buf[ip1][1] + c2 * (ue[ip1][4] - q[ip1])) - (ue[im1][1] * buf[im1][1] + c2 * (ue[im1][4] - q[im1]))) + xxcon1 * (buf[ip1][1] - 2.0 * buf[i][1] + buf[im1][1]) + dx2tx1 * (ue[ip1][1] - 2.0 * ue[i][1] + ue[im1][1]);
                    /*OUT: {
                    Reverse<790, 873_0; 807_1; 801_0;>}*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - tx2 * (ue[ip1][2] * buf[ip1][1] - ue[im1][2] * buf[im1][1]) + xxcon2 * (buf[ip1][2] - 2.0 * buf[i][2] + buf[im1][2]) + dx3tx1 * (ue[ip1][2] - 2.0 * ue[i][2] + ue[im1][2]);
                    /*OUT: {
                    Reverse<790, 873_0; 807_1; 801_0;>}*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - tx2 * (ue[ip1][3] * buf[ip1][1] - ue[im1][3] * buf[im1][1]) + xxcon2 * (buf[ip1][3] - 2.0 * buf[i][3] + buf[im1][3]) + dx4tx1 * (ue[ip1][3] - 2.0 * ue[i][3] + ue[im1][3]);
                    /*OUT: {
                    Reverse<790, 873_0; 807_1; 801_0;>}*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - tx2 * (buf[ip1][1] * (c1 * ue[ip1][4] - c2 * q[ip1]) - buf[im1][1] * (c1 * ue[im1][4] - c2 * q[im1])) + 0.5 * xxcon3 * (buf[ip1][0] - 2.0 * buf[i][0] + buf[im1][0]) + xxcon4 * (cuf[ip1] - 2.0 * cuf[i] + cuf[im1]) + xxcon5 * (buf[ip1][4] - 2.0 * buf[i][4] + buf[im1][4]) + dx5tx1 * (ue[ip1][4] - 2.0 * ue[i][4] + ue[im1][4]);
                }
                /*OUT: {
                Reverse<790, 873_1; 807_1; 801_0;>}*/
                /*OUT: {
                Reverse<790, 873_1; 807_1; 801_0;>}*/
                /*OUT: {
                Reverse<790, 1059_0; 873_1; 807_1; 801_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<790, 1059_0; 873_1; 807_1; 801_0;>}*/
                    i = 1;
                    /*OUT: {
                    Reverse<790, 1059_0; 873_1; 807_1; 801_0;>}*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                    /*OUT: {
                    Reverse<790, 1059_0; 873_1; 807_1; 801_0;>}*/
                    i = 2;
                    /*OUT: {
                    Reverse<790, 1059_0; 873_1; 807_1; 801_0;>}*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                }
                /*OUT: {
                Reverse<790, 1059_1; 873_1; 807_1; 801_0;>}*/
                /*OUT: {
                Reverse<790, 1059_1; 873_1; 807_1; 801_0;>}*/
                /*OUT: {
                Reverse<790, 1106_1; 1102_0; 1059_1; 873_1; 807_1; 801_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<790, 1102_0; 1059_1; 873_1; 807_1; 801_0;>}*/
                    /*OUT: {
                    Reverse<790, 1102_0; 1059_1; 873_1; 807_1; 801_0;>}*/
                    /*OUT: {
                    Reverse<790, 1106_0; 1102_0; 1059_1; 873_1; 807_1; 801_0;>}*/
                    for (i = 1 * 3; i <= grid_points[0] - 3 * 1 - 1; i++) {
                        /*OUT: {
                        Reverse<790, 1106_0; 1102_0; 1059_1; 873_1; 807_1; 801_0;>}*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                    }
                }
                /*OUT: {
                Reverse<790, 1102_1; 1059_1; 873_1; 807_1; 801_0;>}*/
                /*OUT: {
                Reverse<790, 1102_1; 1059_1; 873_1; 807_1; 801_0;>}*/
                /*OUT: {
                Reverse<790, 1130_0; 1102_1; 1059_1; 873_1; 807_1; 801_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<790, 1130_0; 1102_1; 1059_1; 873_1; 807_1; 801_0;>}*/
                    i = grid_points[0] - 3;
                    /*OUT: {
                    Reverse<790, 1130_0; 1102_1; 1059_1; 873_1; 807_1; 801_0;>}*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m]);
                    /*OUT: {
                    Reverse<790, 1130_0; 1102_1; 1059_1; 873_1; 807_1; 801_0;>}*/
                    i = grid_points[0] - 2;
                    /*OUT: {
                    Reverse<790, 1130_0; 1102_1; 1059_1; 873_1; 807_1; 801_0;>}*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 5.0 * ue[i][m]);
                }
            }
        }
        /*OUT: {
        Reverse<790,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1174,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<1174,>}*/
        /*OUT: {
        Reverse<1174,>}*/
        /*OUT: {
        Reverse<1174, 1185_1;>}*/
        for (i = 1; i < grid_points[0] - 1; i++) {
            /*OUT: {
            Reverse<1174,>}*/
            xi = (double) i * dnxm1;
            /*OUT: {
            Reverse<1174,>}*/
            /*OUT: {
            Reverse<1174,>}*/
            /*OUT: {
            Reverse<1174, 1514_1; 1486_1; 1443_1; 1257_1; 1191_1; 1185_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<1174, 1185_0;>}*/
                zeta = (double) k * dnzm1;
                /*OUT: {
                Reverse<1174, 1185_0;>}*/
                /*OUT: {
                Reverse<1174, 1185_0;>}*/
                /*OUT: {
                Reverse<1174, 1212_1; 1201_1; 1191_0; 1185_0;>}*/
                for (j = 0; j < grid_points[1]; j++) {
                    /*OUT: {
                    Reverse<1174, 1191_0; 1185_0;>}*/
                    eta = (double) j * dnym1;
                    /*OUT: {
                    Reverse<1174, 1191_0; 1185_0;>}*/
                    exact_solution(xi, eta, zeta, dtemp);
                    /*OUT: {
                    Reverse<1174, 1191_0; 1185_0;>}*/
                    /*OUT: {
                    Reverse<1174, 1191_0; 1185_0;>}*/
                    /*OUT: {
                    Reverse<1174, 1191_0; 1185_0;>}*/
                    /*OUT: {
                    Reverse<1174, 1201_0; 1191_0; 1185_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<1174, 1201_0; 1191_0; 1185_0;>}*/
                        ue[j][m] = dtemp[m];
                    }
                    /*OUT: {
                    Reverse<1174, 1201_1; 1191_0; 1185_0;>}*/
                    dtpp = 1.0 / dtemp[0];
                    /*OUT: {
                    Reverse<1174, 1201_1; 1191_0; 1185_0;>}*/
                    /*OUT: {
                    Reverse<1174, 1201_1; 1191_0; 1185_0;>}*/
                    /*OUT: {
                    Reverse<1174, 1212_0; 1201_1; 1191_0; 1185_0;>}*/
                    for (m = 1; m <= 4; m++) {
                        /*OUT: {
                        Reverse<1174, 1212_0; 1201_1; 1191_0; 1185_0;>}*/
                        buf[j][m] = dtpp * dtemp[m];
                    }
                    /*OUT: {
                    Reverse<1174, 1212_1; 1201_1; 1191_0; 1185_0;>}*/
                    cuf[j] = buf[j][2] * buf[j][2];
                    /*OUT: {
                    Reverse<1174, 1212_1; 1201_1; 1191_0; 1185_0;>}*/
                    buf[j][0] = cuf[j] + buf[j][1] * buf[j][1] + buf[j][3] * buf[j][3];
                    /*OUT: {
                    Reverse<1174, 1212_1; 1201_1; 1191_0; 1185_0;>}*/
                    q[j] = 0.5 * (buf[j][1] * ue[j][1] + buf[j][2] * ue[j][2] + buf[j][3] * ue[j][3]);
                }
                /*OUT: {
                Reverse<1174, 1191_1; 1185_0;>}*/
                /*OUT: {
                Reverse<1174, 1191_1; 1185_0;>}*/
                /*OUT: {
                Reverse<1174, 1257_0; 1191_1; 1185_0;>}*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                    /*OUT: {
                    Reverse<1174, 1257_0; 1191_1; 1185_0;>}*/
                    jm1 = j - 1;
                    /*OUT: {
                    Reverse<1174, 1257_0; 1191_1; 1185_0;>}*/
                    jp1 = j + 1;
                    /*OUT: {
                    Reverse<1174, 1257_0; 1191_1; 1185_0;>}*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - ty2 * (ue[jp1][2] - ue[jm1][2]) + dy1ty1 * (ue[jp1][0] - 2.0 * ue[j][0] + ue[jm1][0]);
                    /*OUT: {
                    Reverse<1174, 1257_0; 1191_1; 1185_0;>}*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - ty2 * (ue[jp1][1] * buf[jp1][2] - ue[jm1][1] * buf[jm1][2]) + yycon2 * (buf[jp1][1] - 2.0 * buf[j][1] + buf[jm1][1]) + dy2ty1 * (ue[jp1][1] - 2.0 * ue[j][1] + ue[jm1][1]);
                    /*OUT: {
                    Reverse<1174, 1257_0; 1191_1; 1185_0;>}*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - ty2 * ((ue[jp1][2] * buf[jp1][2] + c2 * (ue[jp1][4] - q[jp1])) - (ue[jm1][2] * buf[jm1][2] + c2 * (ue[jm1][4] - q[jm1]))) + yycon1 * (buf[jp1][2] - 2.0 * buf[j][2] + buf[jm1][2]) + dy3ty1 * (ue[jp1][2] - 2.0 * ue[j][2] + ue[jm1][2]);
                    /*OUT: {
                    Reverse<1174, 1257_0; 1191_1; 1185_0;>}*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - ty2 * (ue[jp1][3] * buf[jp1][2] - ue[jm1][3] * buf[jm1][2]) + yycon2 * (buf[jp1][3] - 2.0 * buf[j][3] + buf[jm1][3]) + dy4ty1 * (ue[jp1][3] - 2.0 * ue[j][3] + ue[jm1][3]);
                    /*OUT: {
                    Reverse<1174, 1257_0; 1191_1; 1185_0;>}*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - ty2 * (buf[jp1][2] * (c1 * ue[jp1][4] - c2 * q[jp1]) - buf[jm1][2] * (c1 * ue[jm1][4] - c2 * q[jm1])) + 0.5 * yycon3 * (buf[jp1][0] - 2.0 * buf[j][0] + buf[jm1][0]) + yycon4 * (cuf[jp1] - 2.0 * cuf[j] + cuf[jm1]) + yycon5 * (buf[jp1][4] - 2.0 * buf[j][4] + buf[jm1][4]) + dy5ty1 * (ue[jp1][4] - 2.0 * ue[j][4] + ue[jm1][4]);
                }
                /*OUT: {
                Reverse<1174, 1257_1; 1191_1; 1185_0;>}*/
                /*OUT: {
                Reverse<1174, 1257_1; 1191_1; 1185_0;>}*/
                /*OUT: {
                Reverse<1174, 1443_0; 1257_1; 1191_1; 1185_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<1174, 1443_0; 1257_1; 1191_1; 1185_0;>}*/
                    j = 1;
                    /*OUT: {
                    Reverse<1174, 1443_0; 1257_1; 1191_1; 1185_0;>}*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                    /*OUT: {
                    Reverse<1174, 1443_0; 1257_1; 1191_1; 1185_0;>}*/
                    j = 2;
                    /*OUT: {
                    Reverse<1174, 1443_0; 1257_1; 1191_1; 1185_0;>}*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                }
                /*OUT: {
                Reverse<1174, 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                /*OUT: {
                Reverse<1174, 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                /*OUT: {
                Reverse<1174, 1490_1; 1486_0; 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<1174, 1486_0; 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                    /*OUT: {
                    Reverse<1174, 1486_0; 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                    /*OUT: {
                    Reverse<1174, 1490_0; 1486_0; 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                    for (j = 1 * 3; j <= grid_points[1] - 3 * 1 - 1; j++) {
                        /*OUT: {
                        Reverse<1174, 1490_0; 1486_0; 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                    }
                }
                /*OUT: {
                Reverse<1174, 1486_1; 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                /*OUT: {
                Reverse<1174, 1486_1; 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                /*OUT: {
                Reverse<1174, 1514_0; 1486_1; 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<1174, 1514_0; 1486_1; 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                    j = grid_points[1] - 3;
                    /*OUT: {
                    Reverse<1174, 1514_0; 1486_1; 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m]);
                    /*OUT: {
                    Reverse<1174, 1514_0; 1486_1; 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                    j = grid_points[1] - 2;
                    /*OUT: {
                    Reverse<1174, 1514_0; 1486_1; 1443_1; 1257_1; 1191_1; 1185_0;>}*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 5.0 * ue[j][m]);
                }
            }
        }
        /*OUT: {
        Reverse<1174,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1558,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<1558,>}*/
        /*OUT: {
        Reverse<1558,>}*/
        /*OUT: {
        Reverse<1558, 1569_1;>}*/
        for (i = 1; i < grid_points[0] - 1; i++) {
            /*OUT: {
            Reverse<1558,>}*/
            xi = (double) i * dnxm1;
            /*OUT: {
            Reverse<1558,>}*/
            /*OUT: {
            Reverse<1558,>}*/
            /*OUT: {
            Reverse<1558, 1898_1; 1870_1; 1827_1; 1641_1; 1575_1; 1569_0;>}*/
            for (j = 1; j < grid_points[1] - 1; j++) {
                /*OUT: {
                Reverse<1558, 1569_0;>}*/
                eta = (double) j * dnym1;
                /*OUT: {
                Reverse<1558, 1569_0;>}*/
                /*OUT: {
                Reverse<1558, 1569_0;>}*/
                /*OUT: {
                Reverse<1558, 1596_1; 1585_1; 1575_0; 1569_0;>}*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: {
                    Reverse<1558, 1575_0; 1569_0;>}*/
                    zeta = (double) k * dnzm1;
                    /*OUT: {
                    Reverse<1558, 1575_0; 1569_0;>}*/
                    exact_solution(xi, eta, zeta, dtemp);
                    /*OUT: {
                    Reverse<1558, 1575_0; 1569_0;>}*/
                    /*OUT: {
                    Reverse<1558, 1575_0; 1569_0;>}*/
                    /*OUT: {
                    Reverse<1558, 1575_0; 1569_0;>}*/
                    /*OUT: {
                    Reverse<1558, 1585_0; 1575_0; 1569_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<1558, 1585_0; 1575_0; 1569_0;>}*/
                        ue[k][m] = dtemp[m];
                    }
                    /*OUT: {
                    Reverse<1558, 1585_1; 1575_0; 1569_0;>}*/
                    dtpp = 1.0 / dtemp[0];
                    /*OUT: {
                    Reverse<1558, 1585_1; 1575_0; 1569_0;>}*/
                    /*OUT: {
                    Reverse<1558, 1585_1; 1575_0; 1569_0;>}*/
                    /*OUT: {
                    Reverse<1558, 1596_0; 1585_1; 1575_0; 1569_0;>}*/
                    for (m = 1; m <= 4; m++) {
                        /*OUT: {
                        Reverse<1558, 1596_0; 1585_1; 1575_0; 1569_0;>}*/
                        buf[k][m] = dtpp * dtemp[m];
                    }
                    /*OUT: {
                    Reverse<1558, 1596_1; 1585_1; 1575_0; 1569_0;>}*/
                    cuf[k] = buf[k][3] * buf[k][3];
                    /*OUT: {
                    Reverse<1558, 1596_1; 1585_1; 1575_0; 1569_0;>}*/
                    buf[k][0] = cuf[k] + buf[k][1] * buf[k][1] + buf[k][2] * buf[k][2];
                    /*OUT: {
                    Reverse<1558, 1596_1; 1585_1; 1575_0; 1569_0;>}*/
                    q[k] = 0.5 * (buf[k][1] * ue[k][1] + buf[k][2] * ue[k][2] + buf[k][3] * ue[k][3]);
                }
                /*OUT: {
                Reverse<1558, 1575_1; 1569_0;>}*/
                /*OUT: {
                Reverse<1558, 1575_1; 1569_0;>}*/
                /*OUT: {
                Reverse<1558, 1641_0; 1575_1; 1569_0;>}*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                    /*OUT: {
                    Reverse<1558, 1641_0; 1575_1; 1569_0;>}*/
                    km1 = k - 1;
                    /*OUT: {
                    Reverse<1558, 1641_0; 1575_1; 1569_0;>}*/
                    kp1 = k + 1;
                    /*OUT: {
                    Reverse<1558, 1641_0; 1575_1; 1569_0;>}*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - tz2 * (ue[kp1][3] - ue[km1][3]) + dz1tz1 * (ue[kp1][0] - 2.0 * ue[k][0] + ue[km1][0]);
                    /*OUT: {
                    Reverse<1558, 1641_0; 1575_1; 1569_0;>}*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - tz2 * (ue[kp1][1] * buf[kp1][3] - ue[km1][1] * buf[km1][3]) + zzcon2 * (buf[kp1][1] - 2.0 * buf[k][1] + buf[km1][1]) + dz2tz1 * (ue[kp1][1] - 2.0 * ue[k][1] + ue[km1][1]);
                    /*OUT: {
                    Reverse<1558, 1641_0; 1575_1; 1569_0;>}*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - tz2 * (ue[kp1][2] * buf[kp1][3] - ue[km1][2] * buf[km1][3]) + zzcon2 * (buf[kp1][2] - 2.0 * buf[k][2] + buf[km1][2]) + dz3tz1 * (ue[kp1][2] - 2.0 * ue[k][2] + ue[km1][2]);
                    /*OUT: {
                    Reverse<1558, 1641_0; 1575_1; 1569_0;>}*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - tz2 * ((ue[kp1][3] * buf[kp1][3] + c2 * (ue[kp1][4] - q[kp1])) - (ue[km1][3] * buf[km1][3] + c2 * (ue[km1][4] - q[km1]))) + zzcon1 * (buf[kp1][3] - 2.0 * buf[k][3] + buf[km1][3]) + dz4tz1 * (ue[kp1][3] - 2.0 * ue[k][3] + ue[km1][3]);
                    /*OUT: {
                    Reverse<1558, 1641_0; 1575_1; 1569_0;>}*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - tz2 * (buf[kp1][3] * (c1 * ue[kp1][4] - c2 * q[kp1]) - buf[km1][3] * (c1 * ue[km1][4] - c2 * q[km1])) + 0.5 * zzcon3 * (buf[kp1][0] - 2.0 * buf[k][0] + buf[km1][0]) + zzcon4 * (cuf[kp1] - 2.0 * cuf[k] + cuf[km1]) + zzcon5 * (buf[kp1][4] - 2.0 * buf[k][4] + buf[km1][4]) + dz5tz1 * (ue[kp1][4] - 2.0 * ue[k][4] + ue[km1][4]);
                }
                /*OUT: {
                Reverse<1558, 1641_1; 1575_1; 1569_0;>}*/
                /*OUT: {
                Reverse<1558, 1641_1; 1575_1; 1569_0;>}*/
                /*OUT: {
                Reverse<1558, 1827_0; 1641_1; 1575_1; 1569_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<1558, 1827_0; 1641_1; 1575_1; 1569_0;>}*/
                    k = 1;
                    /*OUT: {
                    Reverse<1558, 1827_0; 1641_1; 1575_1; 1569_0;>}*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                    /*OUT: {
                    Reverse<1558, 1827_0; 1641_1; 1575_1; 1569_0;>}*/
                    k = 2;
                    /*OUT: {
                    Reverse<1558, 1827_0; 1641_1; 1575_1; 1569_0;>}*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                }
                /*OUT: {
                Reverse<1558, 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                /*OUT: {
                Reverse<1558, 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                /*OUT: {
                Reverse<1558, 1874_1; 1870_0; 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<1558, 1870_0; 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                    /*OUT: {
                    Reverse<1558, 1870_0; 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                    /*OUT: {
                    Reverse<1558, 1874_0; 1870_0; 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                    for (k = 1 * 3; k <= grid_points[2] - 3 * 1 - 1; k++) {
                        /*OUT: {
                        Reverse<1558, 1874_0; 1870_0; 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                    }
                }
                /*OUT: {
                Reverse<1558, 1870_1; 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                /*OUT: {
                Reverse<1558, 1870_1; 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                /*OUT: {
                Reverse<1558, 1898_0; 1870_1; 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<1558, 1898_0; 1870_1; 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                    k = grid_points[2] - 3;
                    /*OUT: {
                    Reverse<1558, 1898_0; 1870_1; 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m]);
                    /*OUT: {
                    Reverse<1558, 1898_0; 1870_1; 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                    k = grid_points[2] - 2;
                    /*OUT: {
                    Reverse<1558, 1898_0; 1870_1; 1827_1; 1641_1; 1575_1; 1569_0;>}*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 5.0 * ue[k][m]);
                }
            }
        }
        /*OUT: {
        Reverse<1558,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1942,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<1942,>}*/
        /*OUT: {
        Reverse<1942,>}*/
        /*OUT: {
        Reverse<1942, 1951_1;>}*/
        for (i = 1; i < grid_points[0] - 1; i++) {
            /*OUT: {
            Reverse<1942,>}*/
            /*OUT: {
            Reverse<1942,>}*/
            /*OUT: {
            Reverse<1942, 1955_1; 1951_0;>}*/
            for (j = 1; j < grid_points[1] - 1; j++) {
                /*OUT: {
                Reverse<1942, 1951_0;>}*/
                /*OUT: {
                Reverse<1942, 1951_0;>}*/
                /*OUT: {
                Reverse<1942, 1958_1; 1955_0; 1951_0;>}*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                    /*OUT: {
                    Reverse<1942, 1955_0; 1951_0;>}*/
                    /*OUT: {
                    Reverse<1942, 1955_0; 1951_0;>}*/
                    /*OUT: {
                    Reverse<1942, 1958_0; 1955_0; 1951_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<1942, 1958_0; 1955_0; 1951_0;>}*/
                        forcing[i][j][k][m] = -1.0 * forcing[i][j][k][m];
                    }
                }
            }
        }
        /*OUT: {
        Reverse<1942,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1970,>}*/
#pragma omp barrier
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void exact_solution(double xi, double eta , double zeta , double dtemp[5]) {
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1977_0;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 1977_0;>}*/
        dtemp[m] = ce[m][0] + xi * (ce[m][1] + xi * (ce[m][4] + xi * (ce[m][7] + xi * ce[m][10]))) + eta * (ce[m][2] + eta * (ce[m][5] + eta * (ce[m][8] + eta * ce[m][11]))) + zeta * (ce[m][3] + zeta * (ce[m][6] + zeta * (ce[m][9] + zeta * ce[m][12])));
    }
}
static void initialize() {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<14221,>}*/
        int i;
        /*OUT: {
        Reverse<14221,>}*/
        int j;
        /*OUT: {
        Reverse<14221,>}*/
        int k;
        /*OUT: {
        Reverse<14221,>}*/
        int m;
        /*OUT: {
        Reverse<14221,>}*/
        int ix;
        /*OUT: {
        Reverse<14221,>}*/
        int iy;
        /*OUT: {
        Reverse<14221,>}*/
        int iz;
        /*OUT: {
        Reverse<14221,>}*/
        double xi;
        /*OUT: {
        Reverse<14221,>}*/
        double eta;
        /*OUT: {
        Reverse<14221,>}*/
        double zeta;
        /*OUT: {
        Reverse<14221,>}*/
        double Pface[2][3][5];
        /*OUT: {
        Reverse<14221,>}*/
        double Pxi;
        /*OUT: {
        Reverse<14221,>}*/
        double Peta;
        /*OUT: {
        Reverse<14221,>}*/
        double Pzeta;
        /*OUT: {
        Reverse<14221,>}*/
        double temp[5];
#pragma omp for nowait
        /*OUT: {
        Reverse<14221,>}*/
        /*OUT: {
        Reverse<14221,>}*/
        /*OUT: {
        Reverse<14221, 2038_1;>}*/
        for (i = 0; i < 12; i++) {
            /*OUT: {
            Reverse<14221,>}*/
            /*OUT: {
            Reverse<14221,>}*/
            /*OUT: {
            Reverse<14221, 2041_1; 2038_0;>}*/
            for (j = 0; j < 12; j++) {
                /*OUT: {
                Reverse<14221, 2038_0;>}*/
                /*OUT: {
                Reverse<14221, 2038_0;>}*/
                /*OUT: {
                Reverse<14221, 2044_1; 2041_0; 2038_0;>}*/
                for (k = 0; k < 12; k++) {
                    /*OUT: {
                    Reverse<14221, 2041_0; 2038_0;>}*/
                    /*OUT: {
                    Reverse<14221, 2041_0; 2038_0;>}*/
                    /*OUT: {
                    Reverse<14221, 2044_0; 2041_0; 2038_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<14221, 2044_0; 2041_0; 2038_0;>}*/
                        u[i][j][k][m] = 1.0;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<14221,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2052,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<2052,>}*/
        /*OUT: {
        Reverse<2052,>}*/
        /*OUT: {
        Reverse<2052, 2063_1;>}*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: {
            Reverse<2052,>}*/
            xi = (double) i * dnxm1;
            /*OUT: {
            Reverse<2052,>}*/
            /*OUT: {
            Reverse<2052,>}*/
            /*OUT: {
            Reverse<2052, 2069_1; 2063_0;>}*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: {
                Reverse<2052, 2063_0;>}*/
                eta = (double) j * dnym1;
                /*OUT: {
                Reverse<2052, 2063_0;>}*/
                /*OUT: {
                Reverse<2052, 2063_0;>}*/
                /*OUT: {
                Reverse<2052, 2126_1; 2109_1; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: {
                    Reverse<2052, 2069_0; 2063_0;>}*/
                    zeta = (double) k * dnzm1;
                    /*OUT: {
                    Reverse<2052, 2069_0; 2063_0;>}*/
                    /*OUT: {
                    Reverse<2052, 2069_0; 2063_0;>}*/
                    /*OUT: {
                    Reverse<2052, 2074_0; 2069_0; 2063_0;>}*/
                    for (ix = 0; ix < 2; ix++) {
                        /*OUT: {
                        Reverse<2052, 2074_0; 2069_0; 2063_0;>}*/
                        double *_imopVarPre187;
                        /*OUT: {
                        Reverse<2052, 2074_0; 2069_0; 2063_0;>}*/
                        double _imopVarPre188;
                        /*OUT: {
                        Reverse<2052, 2074_0; 2069_0; 2063_0;>}*/
                        _imopVarPre187 = &(Pface[ix][0][0]);
                        /*OUT: {
                        Reverse<2052, 2074_0; 2069_0; 2063_0;>}*/
                        _imopVarPre188 = (double) ix;
                        /*OUT: {
                        Reverse<2052, 2074_0; 2069_0; 2063_0;>}*/
                        exact_solution(_imopVarPre188, eta, zeta, _imopVarPre187);
                        /*OUT: {
                        Reverse<2052, 2074_0; 2069_0; 2063_0;>}*/
                    }
                    /*OUT: {
                    Reverse<2052, 2074_1; 2069_0; 2063_0;>}*/
                    /*OUT: {
                    Reverse<2052, 2074_1; 2069_0; 2063_0;>}*/
                    /*OUT: {
                    Reverse<2052, 2092_0; 2074_1; 2069_0; 2063_0;>}*/
                    for (iy = 0; iy < 2; iy++) {
                        /*OUT: {
                        Reverse<2052, 2092_0; 2074_1; 2069_0; 2063_0;>}*/
                        double *_imopVarPre191;
                        /*OUT: {
                        Reverse<2052, 2092_0; 2074_1; 2069_0; 2063_0;>}*/
                        double _imopVarPre192;
                        /*OUT: {
                        Reverse<2052, 2092_0; 2074_1; 2069_0; 2063_0;>}*/
                        _imopVarPre191 = &Pface[iy][1][0];
                        /*OUT: {
                        Reverse<2052, 2092_0; 2074_1; 2069_0; 2063_0;>}*/
                        _imopVarPre192 = (double) iy;
                        /*OUT: {
                        Reverse<2052, 2092_0; 2074_1; 2069_0; 2063_0;>}*/
                        exact_solution(xi, _imopVarPre192, zeta, _imopVarPre191);
                        /*OUT: {
                        Reverse<2052, 2092_0; 2074_1; 2069_0; 2063_0;>}*/
                    }
                    /*OUT: {
                    Reverse<2052, 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                    /*OUT: {
                    Reverse<2052, 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                    /*OUT: {
                    Reverse<2052, 2109_0; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                    for (iz = 0; iz < 2; iz++) {
                        /*OUT: {
                        Reverse<2052, 2109_0; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                        double *_imopVarPre195;
                        /*OUT: {
                        Reverse<2052, 2109_0; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                        double _imopVarPre196;
                        /*OUT: {
                        Reverse<2052, 2109_0; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                        _imopVarPre195 = &Pface[iz][2][0];
                        /*OUT: {
                        Reverse<2052, 2109_0; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                        _imopVarPre196 = (double) iz;
                        /*OUT: {
                        Reverse<2052, 2109_0; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                        exact_solution(xi, eta, _imopVarPre196, _imopVarPre195);
                        /*OUT: {
                        Reverse<2052, 2109_0; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                    }
                    /*OUT: {
                    Reverse<2052, 2109_1; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                    /*OUT: {
                    Reverse<2052, 2109_1; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                    /*OUT: {
                    Reverse<2052, 2126_0; 2109_1; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<2052, 2126_0; 2109_1; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                        Pxi = xi * Pface[1][0][m] + (1.0 - xi) * Pface[0][0][m];
                        /*OUT: {
                        Reverse<2052, 2126_0; 2109_1; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                        Peta = eta * Pface[1][1][m] + (1.0 - eta) * Pface[0][1][m];
                        /*OUT: {
                        Reverse<2052, 2126_0; 2109_1; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                        Pzeta = zeta * Pface[1][2][m] + (1.0 - zeta) * Pface[0][2][m];
                        /*OUT: {
                        Reverse<2052, 2126_0; 2109_1; 2092_1; 2074_1; 2069_0; 2063_0;>}*/
                        u[i][j][k][m] = Pxi + Peta + Pzeta - Pxi * Peta - Pxi * Pzeta - Peta * Pzeta + Pxi * Peta * Pzeta;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<2052,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2161,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<2161,>}*/
        i = 0;
        /*OUT: {
        Reverse<2161,>}*/
        xi = 0.0;
#pragma omp for nowait
        /*OUT: {
        Reverse<2161,>}*/
        /*OUT: {
        Reverse<2161,>}*/
        /*OUT: {
        Reverse<2161, 2176_1;>}*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: {
            Reverse<2161,>}*/
            eta = (double) j * dnym1;
            /*OUT: {
            Reverse<2161,>}*/
            /*OUT: {
            Reverse<2161,>}*/
            /*OUT: {
            Reverse<2161, 2186_1; 2176_0;>}*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: {
                Reverse<2161, 2176_0;>}*/
                zeta = (double) k * dnzm1;
                /*OUT: {
                Reverse<2161, 2176_0;>}*/
                exact_solution(xi, eta, zeta, temp);
                /*OUT: {
                Reverse<2161, 2176_0;>}*/
                /*OUT: {
                Reverse<2161, 2176_0;>}*/
                /*OUT: {
                Reverse<2161, 2176_0;>}*/
                /*OUT: {
                Reverse<2161, 2186_0; 2176_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<2161, 2186_0; 2176_0;>}*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*OUT: {
        Reverse<2161,>}*/
        i = grid_points[0] - 1;
        /*OUT: {
        Reverse<2161,>}*/
        xi = 1.0;
#pragma omp for nowait
        /*OUT: {
        Reverse<2161,>}*/
        /*OUT: {
        Reverse<2161,>}*/
        /*OUT: {
        Reverse<2161, 2210_1;>}*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: {
            Reverse<2161,>}*/
            eta = (double) j * dnym1;
            /*OUT: {
            Reverse<2161,>}*/
            /*OUT: {
            Reverse<2161,>}*/
            /*OUT: {
            Reverse<2161, 2220_1; 2210_0;>}*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: {
                Reverse<2161, 2210_0;>}*/
                zeta = (double) k * dnzm1;
                /*OUT: {
                Reverse<2161, 2210_0;>}*/
                exact_solution(xi, eta, zeta, temp);
                /*OUT: {
                Reverse<2161, 2210_0;>}*/
                /*OUT: {
                Reverse<2161, 2210_0;>}*/
                /*OUT: {
                Reverse<2161, 2210_0;>}*/
                /*OUT: {
                Reverse<2161, 2220_0; 2210_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<2161, 2220_0; 2210_0;>}*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*OUT: {
        Reverse<2161,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2229,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<2229,>}*/
        j = 0;
        /*OUT: {
        Reverse<2229,>}*/
        eta = 0.0;
#pragma omp for nowait
        /*OUT: {
        Reverse<2229,>}*/
        /*OUT: {
        Reverse<2229,>}*/
        /*OUT: {
        Reverse<2229, 2244_1;>}*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: {
            Reverse<2229,>}*/
            xi = (double) i * dnxm1;
            /*OUT: {
            Reverse<2229,>}*/
            /*OUT: {
            Reverse<2229,>}*/
            /*OUT: {
            Reverse<2229, 2254_1; 2244_0;>}*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: {
                Reverse<2229, 2244_0;>}*/
                zeta = (double) k * dnzm1;
                /*OUT: {
                Reverse<2229, 2244_0;>}*/
                exact_solution(xi, eta, zeta, temp);
                /*OUT: {
                Reverse<2229, 2244_0;>}*/
                /*OUT: {
                Reverse<2229, 2244_0;>}*/
                /*OUT: {
                Reverse<2229, 2244_0;>}*/
                /*OUT: {
                Reverse<2229, 2254_0; 2244_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<2229, 2254_0; 2244_0;>}*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*OUT: {
        Reverse<2229,>}*/
        j = grid_points[1] - 1;
        /*OUT: {
        Reverse<2229,>}*/
        eta = 1.0;
#pragma omp for nowait
        /*OUT: {
        Reverse<2229,>}*/
        /*OUT: {
        Reverse<2229,>}*/
        /*OUT: {
        Reverse<2229, 2278_1;>}*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: {
            Reverse<2229,>}*/
            xi = (double) i * dnxm1;
            /*OUT: {
            Reverse<2229,>}*/
            /*OUT: {
            Reverse<2229,>}*/
            /*OUT: {
            Reverse<2229, 2288_1; 2278_0;>}*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: {
                Reverse<2229, 2278_0;>}*/
                zeta = (double) k * dnzm1;
                /*OUT: {
                Reverse<2229, 2278_0;>}*/
                exact_solution(xi, eta, zeta, temp);
                /*OUT: {
                Reverse<2229, 2278_0;>}*/
                /*OUT: {
                Reverse<2229, 2278_0;>}*/
                /*OUT: {
                Reverse<2229, 2278_0;>}*/
                /*OUT: {
                Reverse<2229, 2288_0; 2278_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<2229, 2288_0; 2278_0;>}*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*OUT: {
        Reverse<2229,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2297,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<2297,>}*/
        k = 0;
        /*OUT: {
        Reverse<2297,>}*/
        zeta = 0.0;
#pragma omp for nowait
        /*OUT: {
        Reverse<2297,>}*/
        /*OUT: {
        Reverse<2297,>}*/
        /*OUT: {
        Reverse<2297, 2312_1;>}*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: {
            Reverse<2297,>}*/
            xi = (double) i * dnxm1;
            /*OUT: {
            Reverse<2297,>}*/
            /*OUT: {
            Reverse<2297,>}*/
            /*OUT: {
            Reverse<2297, 2322_1; 2312_0;>}*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: {
                Reverse<2297, 2312_0;>}*/
                eta = (double) j * dnym1;
                /*OUT: {
                Reverse<2297, 2312_0;>}*/
                exact_solution(xi, eta, zeta, temp);
                /*OUT: {
                Reverse<2297, 2312_0;>}*/
                /*OUT: {
                Reverse<2297, 2312_0;>}*/
                /*OUT: {
                Reverse<2297, 2312_0;>}*/
                /*OUT: {
                Reverse<2297, 2322_0; 2312_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<2297, 2322_0; 2312_0;>}*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*OUT: {
        Reverse<2297,>}*/
        k = grid_points[2] - 1;
        /*OUT: {
        Reverse<2297,>}*/
        zeta = 1.0;
#pragma omp for nowait
        /*OUT: {
        Reverse<2297,>}*/
        /*OUT: {
        Reverse<2297,>}*/
        /*OUT: {
        Reverse<2297, 2346_1;>}*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: {
            Reverse<2297,>}*/
            xi = (double) i * dnxm1;
            /*OUT: {
            Reverse<2297,>}*/
            /*OUT: {
            Reverse<2297,>}*/
            /*OUT: {
            Reverse<2297, 2356_1; 2346_0;>}*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: {
                Reverse<2297, 2346_0;>}*/
                eta = (double) j * dnym1;
                /*OUT: {
                Reverse<2297, 2346_0;>}*/
                exact_solution(xi, eta, zeta, temp);
                /*OUT: {
                Reverse<2297, 2346_0;>}*/
                /*OUT: {
                Reverse<2297, 2346_0;>}*/
                /*OUT: {
                Reverse<2297, 2346_0;>}*/
                /*OUT: {
                Reverse<2297, 2356_0; 2346_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<2297, 2356_0; 2346_0;>}*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*OUT: {
        Reverse<2297,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2365,>}*/
#pragma omp barrier
    }
}
static void lhsinit() {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<14346,>}*/
        int i;
        /*OUT: {
        Reverse<14346,>}*/
        int j;
        /*OUT: {
        Reverse<14346,>}*/
        int k;
        /*OUT: {
        Reverse<14346,>}*/
        int m;
        /*OUT: {
        Reverse<14346,>}*/
        int n;
#pragma omp for nowait
        /*OUT: {
        Reverse<14346,>}*/
        /*OUT: {
        Reverse<14346,>}*/
        /*OUT: {
        Reverse<14346, 2379_1;>}*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: {
            Reverse<14346,>}*/
            /*OUT: {
            Reverse<14346,>}*/
            /*OUT: {
            Reverse<14346, 2383_1; 2379_0;>}*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: {
                Reverse<14346, 2379_0;>}*/
                /*OUT: {
                Reverse<14346, 2379_0;>}*/
                /*OUT: {
                Reverse<14346, 2386_1; 2383_0; 2379_0;>}*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: {
                    Reverse<14346, 2383_0; 2379_0;>}*/
                    /*OUT: {
                    Reverse<14346, 2383_0; 2379_0;>}*/
                    /*OUT: {
                    Reverse<14346, 2389_1; 2386_0; 2383_0; 2379_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<14346, 2386_0; 2383_0; 2379_0;>}*/
                        /*OUT: {
                        Reverse<14346, 2386_0; 2383_0; 2379_0;>}*/
                        /*OUT: {
                        Reverse<14346, 2389_0; 2386_0; 2383_0; 2379_0;>}*/
                        for (n = 0; n < 5; n++) {
                            /*OUT: {
                            Reverse<14346, 2389_0; 2386_0; 2383_0; 2379_0;>}*/
                            lhs[i][j][k][0][m][n] = 0.0;
                            /*OUT: {
                            Reverse<14346, 2389_0; 2386_0; 2383_0; 2379_0;>}*/
                            lhs[i][j][k][1][m][n] = 0.0;
                            /*OUT: {
                            Reverse<14346, 2389_0; 2386_0; 2383_0; 2379_0;>}*/
                            lhs[i][j][k][2][m][n] = 0.0;
                        }
                    }
                }
            }
        }
        /*OUT: {
        Reverse<14346,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2415,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<2415,>}*/
        /*OUT: {
        Reverse<2415,>}*/
        /*OUT: {
        Reverse<2415, 2424_1;>}*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: {
            Reverse<2415,>}*/
            /*OUT: {
            Reverse<2415,>}*/
            /*OUT: {
            Reverse<2415, 2428_1; 2424_0;>}*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: {
                Reverse<2415, 2424_0;>}*/
                /*OUT: {
                Reverse<2415, 2424_0;>}*/
                /*OUT: {
                Reverse<2415, 2431_1; 2428_0; 2424_0;>}*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: {
                    Reverse<2415, 2428_0; 2424_0;>}*/
                    /*OUT: {
                    Reverse<2415, 2428_0; 2424_0;>}*/
                    /*OUT: {
                    Reverse<2415, 2431_0; 2428_0; 2424_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<2415, 2431_0; 2428_0; 2424_0;>}*/
                        lhs[i][j][k][1][m][m] = 1.0;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<2415,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2441,>}*/
#pragma omp barrier
    }
}
static void lhsx() {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
#pragma omp for nowait
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2453_1;>}*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 3067_1; 2457_1; 2453_0;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<--, 2453_0;>}*/
            /*OUT: {
            Reverse<--, 2453_0;>}*/
            /*OUT: {
            Reverse<--, 2457_0; 2453_0;>}*/
            for (i = 0; i < grid_points[0]; i++) {
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                tmp1 = 1.0 / u[i][j][k][0];
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                tmp2 = tmp1 * tmp1;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                tmp3 = tmp1 * tmp2;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][0][0] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][0][1] = 1.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][0][2] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][0][3] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][0][4] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][1][0] = -(u[i][j][k][1] * tmp2 * u[i][j][k][1]) + c2 * 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][1][1] = (2.0 - c2) * (u[i][j][k][1] / u[i][j][k][0]);
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][1][2] = -c2 * (u[i][j][k][2] * tmp1);
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][1][3] = -c2 * (u[i][j][k][3] * tmp1);
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][1][4] = c2;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][2][0] = -(u[i][j][k][1] * u[i][j][k][2]) * tmp2;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][2][1] = u[i][j][k][2] * tmp1;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][2][2] = u[i][j][k][1] * tmp1;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][2][3] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][2][4] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][3][0] = -(u[i][j][k][1] * u[i][j][k][3]) * tmp2;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][3][1] = u[i][j][k][3] * tmp1;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][3][2] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][3][3] = u[i][j][k][1] * tmp1;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][3][4] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][4][0] = (c2 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2 - c1 * (u[i][j][k][4] * tmp1)) * (u[i][j][k][1] * tmp1);
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][4][1] = c1 * u[i][j][k][4] * tmp1 - 0.50 * c2 * (3.0 * u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][4][2] = -c2 * (u[i][j][k][2] * u[i][j][k][1]) * tmp2;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][4][3] = -c2 * (u[i][j][k][3] * u[i][j][k][1]) * tmp2;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                fjac[i][j][k][4][4] = c1 * (u[i][j][k][1] * tmp1);
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][0][0] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][0][1] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][0][2] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][0][3] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][0][4] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][1][0] = -con43 * c3c4 * tmp2 * u[i][j][k][1];
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][1][1] = con43 * c3c4 * tmp1;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][1][2] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][1][3] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][1][4] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][2][0] = -c3c4 * tmp2 * u[i][j][k][2];
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][2][1] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][2][2] = c3c4 * tmp1;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][2][3] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][2][4] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][3][0] = -c3c4 * tmp2 * u[i][j][k][3];
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][3][1] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][3][2] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][3][3] = c3c4 * tmp1;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][3][4] = 0.0;
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][4][0] = -(con43 * c3c4 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4];
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][4][1] = (con43 * c3c4 - c1345) * tmp2 * u[i][j][k][1];
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][4][2] = (c3c4 - c1345) * tmp2 * u[i][j][k][2];
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][4][3] = (c3c4 - c1345) * tmp2 * u[i][j][k][3];
                /*OUT: {
                Reverse<--, 2457_0; 2453_0;>}*/
                njac[i][j][k][4][4] = c1345 * tmp1;
            }
            /*OUT: {
            Reverse<--, 2457_1; 2453_0;>}*/
            /*OUT: {
            Reverse<--, 2457_1; 2453_0;>}*/
            /*OUT: {
            Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
            for (i = 1; i < grid_points[0] - 1; i++) {
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                tmp1 = dt * tx1;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                tmp2 = dt * tx2;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][0][0] = -tmp2 * fjac[i - 1][j][k][0][0] - tmp1 * njac[i - 1][j][k][0][0] - tmp1 * dx1;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][0][1] = -tmp2 * fjac[i - 1][j][k][0][1] - tmp1 * njac[i - 1][j][k][0][1];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][0][2] = -tmp2 * fjac[i - 1][j][k][0][2] - tmp1 * njac[i - 1][j][k][0][2];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][0][3] = -tmp2 * fjac[i - 1][j][k][0][3] - tmp1 * njac[i - 1][j][k][0][3];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][0][4] = -tmp2 * fjac[i - 1][j][k][0][4] - tmp1 * njac[i - 1][j][k][0][4];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][1][0] = -tmp2 * fjac[i - 1][j][k][1][0] - tmp1 * njac[i - 1][j][k][1][0];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][1][1] = -tmp2 * fjac[i - 1][j][k][1][1] - tmp1 * njac[i - 1][j][k][1][1] - tmp1 * dx2;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][1][2] = -tmp2 * fjac[i - 1][j][k][1][2] - tmp1 * njac[i - 1][j][k][1][2];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][1][3] = -tmp2 * fjac[i - 1][j][k][1][3] - tmp1 * njac[i - 1][j][k][1][3];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][1][4] = -tmp2 * fjac[i - 1][j][k][1][4] - tmp1 * njac[i - 1][j][k][1][4];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][2][0] = -tmp2 * fjac[i - 1][j][k][2][0] - tmp1 * njac[i - 1][j][k][2][0];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][2][1] = -tmp2 * fjac[i - 1][j][k][2][1] - tmp1 * njac[i - 1][j][k][2][1];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][2][2] = -tmp2 * fjac[i - 1][j][k][2][2] - tmp1 * njac[i - 1][j][k][2][2] - tmp1 * dx3;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][2][3] = -tmp2 * fjac[i - 1][j][k][2][3] - tmp1 * njac[i - 1][j][k][2][3];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][2][4] = -tmp2 * fjac[i - 1][j][k][2][4] - tmp1 * njac[i - 1][j][k][2][4];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][3][0] = -tmp2 * fjac[i - 1][j][k][3][0] - tmp1 * njac[i - 1][j][k][3][0];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][3][1] = -tmp2 * fjac[i - 1][j][k][3][1] - tmp1 * njac[i - 1][j][k][3][1];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][3][2] = -tmp2 * fjac[i - 1][j][k][3][2] - tmp1 * njac[i - 1][j][k][3][2];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][3][3] = -tmp2 * fjac[i - 1][j][k][3][3] - tmp1 * njac[i - 1][j][k][3][3] - tmp1 * dx4;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][3][4] = -tmp2 * fjac[i - 1][j][k][3][4] - tmp1 * njac[i - 1][j][k][3][4];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][4][0] = -tmp2 * fjac[i - 1][j][k][4][0] - tmp1 * njac[i - 1][j][k][4][0];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][4][1] = -tmp2 * fjac[i - 1][j][k][4][1] - tmp1 * njac[i - 1][j][k][4][1];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][4][2] = -tmp2 * fjac[i - 1][j][k][4][2] - tmp1 * njac[i - 1][j][k][4][2];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][4][3] = -tmp2 * fjac[i - 1][j][k][4][3] - tmp1 * njac[i - 1][j][k][4][3];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][0][4][4] = -tmp2 * fjac[i - 1][j][k][4][4] - tmp1 * njac[i - 1][j][k][4][4] - tmp1 * dx5;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i][j][k][0][0] + tmp1 * 2.0 * dx1;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][0][1] = tmp1 * 2.0 * njac[i][j][k][0][1];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][0][2] = tmp1 * 2.0 * njac[i][j][k][0][2];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][0][3] = tmp1 * 2.0 * njac[i][j][k][0][3];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][0][4] = tmp1 * 2.0 * njac[i][j][k][0][4];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][1][0] = tmp1 * 2.0 * njac[i][j][k][1][0];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i][j][k][1][1] + tmp1 * 2.0 * dx2;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][1][2] = tmp1 * 2.0 * njac[i][j][k][1][2];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][1][3] = tmp1 * 2.0 * njac[i][j][k][1][3];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][1][4] = tmp1 * 2.0 * njac[i][j][k][1][4];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][2][0] = tmp1 * 2.0 * njac[i][j][k][2][0];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][2][1] = tmp1 * 2.0 * njac[i][j][k][2][1];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i][j][k][2][2] + tmp1 * 2.0 * dx3;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][2][3] = tmp1 * 2.0 * njac[i][j][k][2][3];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][2][4] = tmp1 * 2.0 * njac[i][j][k][2][4];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][3][0] = tmp1 * 2.0 * njac[i][j][k][3][0];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][3][1] = tmp1 * 2.0 * njac[i][j][k][3][1];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][3][2] = tmp1 * 2.0 * njac[i][j][k][3][2];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i][j][k][3][3] + tmp1 * 2.0 * dx4;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][3][4] = tmp1 * 2.0 * njac[i][j][k][3][4];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][4][0] = tmp1 * 2.0 * njac[i][j][k][4][0];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][4][1] = tmp1 * 2.0 * njac[i][j][k][4][1];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][4][2] = tmp1 * 2.0 * njac[i][j][k][4][2];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][4][3] = tmp1 * 2.0 * njac[i][j][k][4][3];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i][j][k][4][4] + tmp1 * 2.0 * dx5;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][0][0] = tmp2 * fjac[i + 1][j][k][0][0] - tmp1 * njac[i + 1][j][k][0][0] - tmp1 * dx1;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][0][1] = tmp2 * fjac[i + 1][j][k][0][1] - tmp1 * njac[i + 1][j][k][0][1];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][0][2] = tmp2 * fjac[i + 1][j][k][0][2] - tmp1 * njac[i + 1][j][k][0][2];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][0][3] = tmp2 * fjac[i + 1][j][k][0][3] - tmp1 * njac[i + 1][j][k][0][3];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][0][4] = tmp2 * fjac[i + 1][j][k][0][4] - tmp1 * njac[i + 1][j][k][0][4];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][1][0] = tmp2 * fjac[i + 1][j][k][1][0] - tmp1 * njac[i + 1][j][k][1][0];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][1][1] = tmp2 * fjac[i + 1][j][k][1][1] - tmp1 * njac[i + 1][j][k][1][1] - tmp1 * dx2;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][1][2] = tmp2 * fjac[i + 1][j][k][1][2] - tmp1 * njac[i + 1][j][k][1][2];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][1][3] = tmp2 * fjac[i + 1][j][k][1][3] - tmp1 * njac[i + 1][j][k][1][3];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][1][4] = tmp2 * fjac[i + 1][j][k][1][4] - tmp1 * njac[i + 1][j][k][1][4];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][2][0] = tmp2 * fjac[i + 1][j][k][2][0] - tmp1 * njac[i + 1][j][k][2][0];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][2][1] = tmp2 * fjac[i + 1][j][k][2][1] - tmp1 * njac[i + 1][j][k][2][1];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][2][2] = tmp2 * fjac[i + 1][j][k][2][2] - tmp1 * njac[i + 1][j][k][2][2] - tmp1 * dx3;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][2][3] = tmp2 * fjac[i + 1][j][k][2][3] - tmp1 * njac[i + 1][j][k][2][3];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][2][4] = tmp2 * fjac[i + 1][j][k][2][4] - tmp1 * njac[i + 1][j][k][2][4];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][3][0] = tmp2 * fjac[i + 1][j][k][3][0] - tmp1 * njac[i + 1][j][k][3][0];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][3][1] = tmp2 * fjac[i + 1][j][k][3][1] - tmp1 * njac[i + 1][j][k][3][1];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][3][2] = tmp2 * fjac[i + 1][j][k][3][2] - tmp1 * njac[i + 1][j][k][3][2];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][3][3] = tmp2 * fjac[i + 1][j][k][3][3] - tmp1 * njac[i + 1][j][k][3][3] - tmp1 * dx4;
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][3][4] = tmp2 * fjac[i + 1][j][k][3][4] - tmp1 * njac[i + 1][j][k][3][4];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][4][0] = tmp2 * fjac[i + 1][j][k][4][0] - tmp1 * njac[i + 1][j][k][4][0];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][4][1] = tmp2 * fjac[i + 1][j][k][4][1] - tmp1 * njac[i + 1][j][k][4][1];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][4][2] = tmp2 * fjac[i + 1][j][k][4][2] - tmp1 * njac[i + 1][j][k][4][2];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][4][3] = tmp2 * fjac[i + 1][j][k][4][3] - tmp1 * njac[i + 1][j][k][4][3];
                /*OUT: {
                Reverse<--, 3067_0; 2457_1; 2453_0;>}*/
                lhs[i][j][k][2][4][4] = tmp2 * fjac[i + 1][j][k][4][4] - tmp1 * njac[i + 1][j][k][4][4] - tmp1 * dx5;
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<4298,>}*/
#pragma omp barrier
}
static void lhsy() {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
#pragma omp for nowait
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 4310_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 4314_1; 4310_0;>}*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: {
            Reverse<--, 4310_0;>}*/
            /*OUT: {
            Reverse<--, 4310_0;>}*/
            /*OUT: {
            Reverse<--, 4314_0; 4310_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                tmp1 = 1.0 / u[i][j][k][0];
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                tmp2 = tmp1 * tmp1;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                tmp3 = tmp1 * tmp2;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][0][0] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][0][1] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][0][2] = 1.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][0][3] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][0][4] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][1][0] = -(u[i][j][k][1] * u[i][j][k][2]) * tmp2;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][1][1] = u[i][j][k][2] * tmp1;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][1][2] = u[i][j][k][1] * tmp1;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][1][3] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][1][4] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][2][0] = -(u[i][j][k][2] * u[i][j][k][2] * tmp2) + 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][2][1] = -c2 * u[i][j][k][1] * tmp1;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][2][2] = (2.0 - c2) * u[i][j][k][2] * tmp1;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][2][3] = -c2 * u[i][j][k][3] * tmp1;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][2][4] = c2;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][3][0] = -(u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][3][1] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][3][2] = u[i][j][k][3] * tmp1;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][3][3] = u[i][j][k][2] * tmp1;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][3][4] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][4][0] = (c2 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2 - c1 * u[i][j][k][4] * tmp1) * u[i][j][k][2] * tmp1;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][4][1] = -c2 * u[i][j][k][1] * u[i][j][k][2] * tmp2;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][4][2] = c1 * u[i][j][k][4] * tmp1 - 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + 3.0 * u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][4][3] = -c2 * (u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                fjac[i][j][k][4][4] = c1 * u[i][j][k][2] * tmp1;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][0][0] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][0][1] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][0][2] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][0][3] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][0][4] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][1][0] = -c3c4 * tmp2 * u[i][j][k][1];
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][1][1] = c3c4 * tmp1;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][1][2] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][1][3] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][1][4] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][2][0] = -con43 * c3c4 * tmp2 * u[i][j][k][2];
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][2][1] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][2][2] = con43 * c3c4 * tmp1;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][2][3] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][2][4] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][3][0] = -c3c4 * tmp2 * u[i][j][k][3];
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][3][1] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][3][2] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][3][3] = c3c4 * tmp1;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][3][4] = 0.0;
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4];
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][4][1] = (c3c4 - c1345) * tmp2 * u[i][j][k][1];
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][4][2] = (con43 * c3c4 - c1345) * tmp2 * u[i][j][k][2];
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][4][3] = (c3c4 - c1345) * tmp2 * u[i][j][k][3];
                /*OUT: {
                Reverse<--, 4314_0; 4310_0;>}*/
                njac[i][j][k][4][4] = c1345 * tmp1;
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<4913,>}*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: {
    Reverse<4913,>}*/
    /*OUT: {
    Reverse<4913,>}*/
    /*OUT: {
    Reverse<4913, 4922_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<4913,>}*/
        /*OUT: {
        Reverse<4913,>}*/
        /*OUT: {
        Reverse<4913, 4926_1; 4922_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<4913, 4922_0;>}*/
            /*OUT: {
            Reverse<4913, 4922_0;>}*/
            /*OUT: {
            Reverse<4913, 4926_0; 4922_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                tmp1 = dt * ty1;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                tmp2 = dt * ty2;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][0][0] = -tmp2 * fjac[i][j - 1][k][0][0] - tmp1 * njac[i][j - 1][k][0][0] - tmp1 * dy1;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][0][1] = -tmp2 * fjac[i][j - 1][k][0][1] - tmp1 * njac[i][j - 1][k][0][1];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][0][2] = -tmp2 * fjac[i][j - 1][k][0][2] - tmp1 * njac[i][j - 1][k][0][2];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][0][3] = -tmp2 * fjac[i][j - 1][k][0][3] - tmp1 * njac[i][j - 1][k][0][3];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][0][4] = -tmp2 * fjac[i][j - 1][k][0][4] - tmp1 * njac[i][j - 1][k][0][4];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][1][0] = -tmp2 * fjac[i][j - 1][k][1][0] - tmp1 * njac[i][j - 1][k][1][0];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][1][1] = -tmp2 * fjac[i][j - 1][k][1][1] - tmp1 * njac[i][j - 1][k][1][1] - tmp1 * dy2;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][1][2] = -tmp2 * fjac[i][j - 1][k][1][2] - tmp1 * njac[i][j - 1][k][1][2];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][1][3] = -tmp2 * fjac[i][j - 1][k][1][3] - tmp1 * njac[i][j - 1][k][1][3];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][1][4] = -tmp2 * fjac[i][j - 1][k][1][4] - tmp1 * njac[i][j - 1][k][1][4];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][2][0] = -tmp2 * fjac[i][j - 1][k][2][0] - tmp1 * njac[i][j - 1][k][2][0];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][2][1] = -tmp2 * fjac[i][j - 1][k][2][1] - tmp1 * njac[i][j - 1][k][2][1];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][2][2] = -tmp2 * fjac[i][j - 1][k][2][2] - tmp1 * njac[i][j - 1][k][2][2] - tmp1 * dy3;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][2][3] = -tmp2 * fjac[i][j - 1][k][2][3] - tmp1 * njac[i][j - 1][k][2][3];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][2][4] = -tmp2 * fjac[i][j - 1][k][2][4] - tmp1 * njac[i][j - 1][k][2][4];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][3][0] = -tmp2 * fjac[i][j - 1][k][3][0] - tmp1 * njac[i][j - 1][k][3][0];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][3][1] = -tmp2 * fjac[i][j - 1][k][3][1] - tmp1 * njac[i][j - 1][k][3][1];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][3][2] = -tmp2 * fjac[i][j - 1][k][3][2] - tmp1 * njac[i][j - 1][k][3][2];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][3][3] = -tmp2 * fjac[i][j - 1][k][3][3] - tmp1 * njac[i][j - 1][k][3][3] - tmp1 * dy4;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][3][4] = -tmp2 * fjac[i][j - 1][k][3][4] - tmp1 * njac[i][j - 1][k][3][4];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][4][0] = -tmp2 * fjac[i][j - 1][k][4][0] - tmp1 * njac[i][j - 1][k][4][0];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][4][1] = -tmp2 * fjac[i][j - 1][k][4][1] - tmp1 * njac[i][j - 1][k][4][1];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][4][2] = -tmp2 * fjac[i][j - 1][k][4][2] - tmp1 * njac[i][j - 1][k][4][2];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][4][3] = -tmp2 * fjac[i][j - 1][k][4][3] - tmp1 * njac[i][j - 1][k][4][3];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][0][4][4] = -tmp2 * fjac[i][j - 1][k][4][4] - tmp1 * njac[i][j - 1][k][4][4] - tmp1 * dy5;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i][j][k][0][0] + tmp1 * 2.0 * dy1;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][0][1] = tmp1 * 2.0 * njac[i][j][k][0][1];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][0][2] = tmp1 * 2.0 * njac[i][j][k][0][2];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][0][3] = tmp1 * 2.0 * njac[i][j][k][0][3];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][0][4] = tmp1 * 2.0 * njac[i][j][k][0][4];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][1][0] = tmp1 * 2.0 * njac[i][j][k][1][0];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i][j][k][1][1] + tmp1 * 2.0 * dy2;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][1][2] = tmp1 * 2.0 * njac[i][j][k][1][2];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][1][3] = tmp1 * 2.0 * njac[i][j][k][1][3];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][1][4] = tmp1 * 2.0 * njac[i][j][k][1][4];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][2][0] = tmp1 * 2.0 * njac[i][j][k][2][0];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][2][1] = tmp1 * 2.0 * njac[i][j][k][2][1];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i][j][k][2][2] + tmp1 * 2.0 * dy3;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][2][3] = tmp1 * 2.0 * njac[i][j][k][2][3];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][2][4] = tmp1 * 2.0 * njac[i][j][k][2][4];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][3][0] = tmp1 * 2.0 * njac[i][j][k][3][0];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][3][1] = tmp1 * 2.0 * njac[i][j][k][3][1];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][3][2] = tmp1 * 2.0 * njac[i][j][k][3][2];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i][j][k][3][3] + tmp1 * 2.0 * dy4;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][3][4] = tmp1 * 2.0 * njac[i][j][k][3][4];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][4][0] = tmp1 * 2.0 * njac[i][j][k][4][0];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][4][1] = tmp1 * 2.0 * njac[i][j][k][4][1];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][4][2] = tmp1 * 2.0 * njac[i][j][k][4][2];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][4][3] = tmp1 * 2.0 * njac[i][j][k][4][3];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i][j][k][4][4] + tmp1 * 2.0 * dy5;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][0][0] = tmp2 * fjac[i][j + 1][k][0][0] - tmp1 * njac[i][j + 1][k][0][0] - tmp1 * dy1;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][0][1] = tmp2 * fjac[i][j + 1][k][0][1] - tmp1 * njac[i][j + 1][k][0][1];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][0][2] = tmp2 * fjac[i][j + 1][k][0][2] - tmp1 * njac[i][j + 1][k][0][2];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][0][3] = tmp2 * fjac[i][j + 1][k][0][3] - tmp1 * njac[i][j + 1][k][0][3];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][0][4] = tmp2 * fjac[i][j + 1][k][0][4] - tmp1 * njac[i][j + 1][k][0][4];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][1][0] = tmp2 * fjac[i][j + 1][k][1][0] - tmp1 * njac[i][j + 1][k][1][0];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][1][1] = tmp2 * fjac[i][j + 1][k][1][1] - tmp1 * njac[i][j + 1][k][1][1] - tmp1 * dy2;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][1][2] = tmp2 * fjac[i][j + 1][k][1][2] - tmp1 * njac[i][j + 1][k][1][2];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][1][3] = tmp2 * fjac[i][j + 1][k][1][3] - tmp1 * njac[i][j + 1][k][1][3];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][1][4] = tmp2 * fjac[i][j + 1][k][1][4] - tmp1 * njac[i][j + 1][k][1][4];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][2][0] = tmp2 * fjac[i][j + 1][k][2][0] - tmp1 * njac[i][j + 1][k][2][0];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][2][1] = tmp2 * fjac[i][j + 1][k][2][1] - tmp1 * njac[i][j + 1][k][2][1];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][2][2] = tmp2 * fjac[i][j + 1][k][2][2] - tmp1 * njac[i][j + 1][k][2][2] - tmp1 * dy3;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][2][3] = tmp2 * fjac[i][j + 1][k][2][3] - tmp1 * njac[i][j + 1][k][2][3];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][2][4] = tmp2 * fjac[i][j + 1][k][2][4] - tmp1 * njac[i][j + 1][k][2][4];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][3][0] = tmp2 * fjac[i][j + 1][k][3][0] - tmp1 * njac[i][j + 1][k][3][0];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][3][1] = tmp2 * fjac[i][j + 1][k][3][1] - tmp1 * njac[i][j + 1][k][3][1];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][3][2] = tmp2 * fjac[i][j + 1][k][3][2] - tmp1 * njac[i][j + 1][k][3][2];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][3][3] = tmp2 * fjac[i][j + 1][k][3][3] - tmp1 * njac[i][j + 1][k][3][3] - tmp1 * dy4;
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][3][4] = tmp2 * fjac[i][j + 1][k][3][4] - tmp1 * njac[i][j + 1][k][3][4];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][4][0] = tmp2 * fjac[i][j + 1][k][4][0] - tmp1 * njac[i][j + 1][k][4][0];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][4][1] = tmp2 * fjac[i][j + 1][k][4][1] - tmp1 * njac[i][j + 1][k][4][1];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][4][2] = tmp2 * fjac[i][j + 1][k][4][2] - tmp1 * njac[i][j + 1][k][4][2];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][4][3] = tmp2 * fjac[i][j + 1][k][4][3] - tmp1 * njac[i][j + 1][k][4][3];
                /*OUT: {
                Reverse<4913, 4926_0; 4922_0;>}*/
                lhs[i][j][k][2][4][4] = tmp2 * fjac[i][j + 1][k][4][4] - tmp1 * njac[i][j + 1][k][4][4] - tmp1 * dy5;
            }
        }
    }
    /*OUT: {
    Reverse<4913,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<6157,>}*/
#pragma omp barrier
}
static void lhsz() {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
#pragma omp for nowait
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 6169_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 6173_1; 6169_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<--, 6169_0;>}*/
            /*OUT: {
            Reverse<--, 6169_0;>}*/
            /*OUT: {
            Reverse<--, 6173_0; 6169_0;>}*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                tmp1 = 1.0 / u[i][j][k][0];
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                tmp2 = tmp1 * tmp1;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                tmp3 = tmp1 * tmp2;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][0][0] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][0][1] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][0][2] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][0][3] = 1.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][0][4] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][1][0] = -(u[i][j][k][1] * u[i][j][k][3]) * tmp2;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][1][1] = u[i][j][k][3] * tmp1;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][1][2] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][1][3] = u[i][j][k][1] * tmp1;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][1][4] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][2][0] = -(u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][2][1] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][2][2] = u[i][j][k][3] * tmp1;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][2][3] = u[i][j][k][2] * tmp1;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][2][4] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][3][0] = -(u[i][j][k][3] * u[i][j][k][3] * tmp2) + 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][3][1] = -c2 * u[i][j][k][1] * tmp1;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][3][2] = -c2 * u[i][j][k][2] * tmp1;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][3][3] = (2.0 - c2) * u[i][j][k][3] * tmp1;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][3][4] = c2;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][4][0] = (c2 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2 - c1 * (u[i][j][k][4] * tmp1)) * (u[i][j][k][3] * tmp1);
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][4][1] = -c2 * (u[i][j][k][1] * u[i][j][k][3]) * tmp2;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][4][2] = -c2 * (u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][4][3] = c1 * (u[i][j][k][4] * tmp1) - 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + 3.0 * u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                fjac[i][j][k][4][4] = c1 * u[i][j][k][3] * tmp1;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][0][0] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][0][1] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][0][2] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][0][3] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][0][4] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][1][0] = -c3c4 * tmp2 * u[i][j][k][1];
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][1][1] = c3c4 * tmp1;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][1][2] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][1][3] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][1][4] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][2][0] = -c3c4 * tmp2 * u[i][j][k][2];
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][2][1] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][2][2] = c3c4 * tmp1;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][2][3] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][2][4] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][3][0] = -con43 * c3c4 * tmp2 * u[i][j][k][3];
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][3][1] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][3][2] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][3][3] = con43 * c3 * c4 * tmp1;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][3][4] = 0.0;
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4];
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][4][1] = (c3c4 - c1345) * tmp2 * u[i][j][k][1];
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][4][2] = (c3c4 - c1345) * tmp2 * u[i][j][k][2];
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][4][3] = (con43 * c3c4 - c1345) * tmp2 * u[i][j][k][3];
                /*OUT: {
                Reverse<--, 6173_0; 6169_0;>}*/
                njac[i][j][k][4][4] = c1345 * tmp1;
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<6776,>}*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: {
    Reverse<6776,>}*/
    /*OUT: {
    Reverse<6776,>}*/
    /*OUT: {
    Reverse<6776, 6785_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<6776,>}*/
        /*OUT: {
        Reverse<6776,>}*/
        /*OUT: {
        Reverse<6776, 6789_1; 6785_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<6776, 6785_0;>}*/
            /*OUT: {
            Reverse<6776, 6785_0;>}*/
            /*OUT: {
            Reverse<6776, 6789_0; 6785_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                tmp1 = dt * tz1;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                tmp2 = dt * tz2;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][0][0] = -tmp2 * fjac[i][j][k - 1][0][0] - tmp1 * njac[i][j][k - 1][0][0] - tmp1 * dz1;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][0][1] = -tmp2 * fjac[i][j][k - 1][0][1] - tmp1 * njac[i][j][k - 1][0][1];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][0][2] = -tmp2 * fjac[i][j][k - 1][0][2] - tmp1 * njac[i][j][k - 1][0][2];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][0][3] = -tmp2 * fjac[i][j][k - 1][0][3] - tmp1 * njac[i][j][k - 1][0][3];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][0][4] = -tmp2 * fjac[i][j][k - 1][0][4] - tmp1 * njac[i][j][k - 1][0][4];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][1][0] = -tmp2 * fjac[i][j][k - 1][1][0] - tmp1 * njac[i][j][k - 1][1][0];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][1][1] = -tmp2 * fjac[i][j][k - 1][1][1] - tmp1 * njac[i][j][k - 1][1][1] - tmp1 * dz2;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][1][2] = -tmp2 * fjac[i][j][k - 1][1][2] - tmp1 * njac[i][j][k - 1][1][2];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][1][3] = -tmp2 * fjac[i][j][k - 1][1][3] - tmp1 * njac[i][j][k - 1][1][3];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][1][4] = -tmp2 * fjac[i][j][k - 1][1][4] - tmp1 * njac[i][j][k - 1][1][4];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][2][0] = -tmp2 * fjac[i][j][k - 1][2][0] - tmp1 * njac[i][j][k - 1][2][0];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][2][1] = -tmp2 * fjac[i][j][k - 1][2][1] - tmp1 * njac[i][j][k - 1][2][1];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][2][2] = -tmp2 * fjac[i][j][k - 1][2][2] - tmp1 * njac[i][j][k - 1][2][2] - tmp1 * dz3;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][2][3] = -tmp2 * fjac[i][j][k - 1][2][3] - tmp1 * njac[i][j][k - 1][2][3];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][2][4] = -tmp2 * fjac[i][j][k - 1][2][4] - tmp1 * njac[i][j][k - 1][2][4];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][3][0] = -tmp2 * fjac[i][j][k - 1][3][0] - tmp1 * njac[i][j][k - 1][3][0];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][3][1] = -tmp2 * fjac[i][j][k - 1][3][1] - tmp1 * njac[i][j][k - 1][3][1];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][3][2] = -tmp2 * fjac[i][j][k - 1][3][2] - tmp1 * njac[i][j][k - 1][3][2];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][3][3] = -tmp2 * fjac[i][j][k - 1][3][3] - tmp1 * njac[i][j][k - 1][3][3] - tmp1 * dz4;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][3][4] = -tmp2 * fjac[i][j][k - 1][3][4] - tmp1 * njac[i][j][k - 1][3][4];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][4][0] = -tmp2 * fjac[i][j][k - 1][4][0] - tmp1 * njac[i][j][k - 1][4][0];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][4][1] = -tmp2 * fjac[i][j][k - 1][4][1] - tmp1 * njac[i][j][k - 1][4][1];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][4][2] = -tmp2 * fjac[i][j][k - 1][4][2] - tmp1 * njac[i][j][k - 1][4][2];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][4][3] = -tmp2 * fjac[i][j][k - 1][4][3] - tmp1 * njac[i][j][k - 1][4][3];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][0][4][4] = -tmp2 * fjac[i][j][k - 1][4][4] - tmp1 * njac[i][j][k - 1][4][4] - tmp1 * dz5;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i][j][k][0][0] + tmp1 * 2.0 * dz1;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][0][1] = tmp1 * 2.0 * njac[i][j][k][0][1];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][0][2] = tmp1 * 2.0 * njac[i][j][k][0][2];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][0][3] = tmp1 * 2.0 * njac[i][j][k][0][3];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][0][4] = tmp1 * 2.0 * njac[i][j][k][0][4];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][1][0] = tmp1 * 2.0 * njac[i][j][k][1][0];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i][j][k][1][1] + tmp1 * 2.0 * dz2;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][1][2] = tmp1 * 2.0 * njac[i][j][k][1][2];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][1][3] = tmp1 * 2.0 * njac[i][j][k][1][3];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][1][4] = tmp1 * 2.0 * njac[i][j][k][1][4];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][2][0] = tmp1 * 2.0 * njac[i][j][k][2][0];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][2][1] = tmp1 * 2.0 * njac[i][j][k][2][1];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i][j][k][2][2] + tmp1 * 2.0 * dz3;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][2][3] = tmp1 * 2.0 * njac[i][j][k][2][3];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][2][4] = tmp1 * 2.0 * njac[i][j][k][2][4];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][3][0] = tmp1 * 2.0 * njac[i][j][k][3][0];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][3][1] = tmp1 * 2.0 * njac[i][j][k][3][1];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][3][2] = tmp1 * 2.0 * njac[i][j][k][3][2];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i][j][k][3][3] + tmp1 * 2.0 * dz4;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][3][4] = tmp1 * 2.0 * njac[i][j][k][3][4];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][4][0] = tmp1 * 2.0 * njac[i][j][k][4][0];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][4][1] = tmp1 * 2.0 * njac[i][j][k][4][1];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][4][2] = tmp1 * 2.0 * njac[i][j][k][4][2];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][4][3] = tmp1 * 2.0 * njac[i][j][k][4][3];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i][j][k][4][4] + tmp1 * 2.0 * dz5;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][0][0] = tmp2 * fjac[i][j][k + 1][0][0] - tmp1 * njac[i][j][k + 1][0][0] - tmp1 * dz1;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][0][1] = tmp2 * fjac[i][j][k + 1][0][1] - tmp1 * njac[i][j][k + 1][0][1];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][0][2] = tmp2 * fjac[i][j][k + 1][0][2] - tmp1 * njac[i][j][k + 1][0][2];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][0][3] = tmp2 * fjac[i][j][k + 1][0][3] - tmp1 * njac[i][j][k + 1][0][3];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][0][4] = tmp2 * fjac[i][j][k + 1][0][4] - tmp1 * njac[i][j][k + 1][0][4];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][1][0] = tmp2 * fjac[i][j][k + 1][1][0] - tmp1 * njac[i][j][k + 1][1][0];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][1][1] = tmp2 * fjac[i][j][k + 1][1][1] - tmp1 * njac[i][j][k + 1][1][1] - tmp1 * dz2;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][1][2] = tmp2 * fjac[i][j][k + 1][1][2] - tmp1 * njac[i][j][k + 1][1][2];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][1][3] = tmp2 * fjac[i][j][k + 1][1][3] - tmp1 * njac[i][j][k + 1][1][3];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][1][4] = tmp2 * fjac[i][j][k + 1][1][4] - tmp1 * njac[i][j][k + 1][1][4];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][2][0] = tmp2 * fjac[i][j][k + 1][2][0] - tmp1 * njac[i][j][k + 1][2][0];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][2][1] = tmp2 * fjac[i][j][k + 1][2][1] - tmp1 * njac[i][j][k + 1][2][1];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][2][2] = tmp2 * fjac[i][j][k + 1][2][2] - tmp1 * njac[i][j][k + 1][2][2] - tmp1 * dz3;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][2][3] = tmp2 * fjac[i][j][k + 1][2][3] - tmp1 * njac[i][j][k + 1][2][3];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][2][4] = tmp2 * fjac[i][j][k + 1][2][4] - tmp1 * njac[i][j][k + 1][2][4];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][3][0] = tmp2 * fjac[i][j][k + 1][3][0] - tmp1 * njac[i][j][k + 1][3][0];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][3][1] = tmp2 * fjac[i][j][k + 1][3][1] - tmp1 * njac[i][j][k + 1][3][1];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][3][2] = tmp2 * fjac[i][j][k + 1][3][2] - tmp1 * njac[i][j][k + 1][3][2];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][3][3] = tmp2 * fjac[i][j][k + 1][3][3] - tmp1 * njac[i][j][k + 1][3][3] - tmp1 * dz4;
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][3][4] = tmp2 * fjac[i][j][k + 1][3][4] - tmp1 * njac[i][j][k + 1][3][4];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][4][0] = tmp2 * fjac[i][j][k + 1][4][0] - tmp1 * njac[i][j][k + 1][4][0];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][4][1] = tmp2 * fjac[i][j][k + 1][4][1] - tmp1 * njac[i][j][k + 1][4][1];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][4][2] = tmp2 * fjac[i][j][k + 1][4][2] - tmp1 * njac[i][j][k + 1][4][2];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][4][3] = tmp2 * fjac[i][j][k + 1][4][3] - tmp1 * njac[i][j][k + 1][4][3];
                /*OUT: {
                Reverse<6776, 6789_0; 6785_0;>}*/
                lhs[i][j][k][2][4][4] = tmp2 * fjac[i][j][k + 1][4][4] - tmp1 * njac[i][j][k + 1][4][4] - tmp1 * dz5;
            }
        }
    }
    /*OUT: {
    Reverse<6776,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<8020,>}*/
#pragma omp barrier
}
static void compute_rhs() {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    double rho_inv;
    /*OUT: {
    Reverse<--,>}*/
    double uijk;
    /*OUT: {
    Reverse<--,>}*/
    double up1;
    /*OUT: {
    Reverse<--,>}*/
    double um1;
    /*OUT: {
    Reverse<--,>}*/
    double vijk;
    /*OUT: {
    Reverse<--,>}*/
    double vp1;
    /*OUT: {
    Reverse<--,>}*/
    double vm1;
    /*OUT: {
    Reverse<--,>}*/
    double wijk;
    /*OUT: {
    Reverse<--,>}*/
    double wp1;
    /*OUT: {
    Reverse<--,>}*/
    double wm1;
#pragma omp for nowait
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 8043_1;>}*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 8047_1; 8043_0;>}*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: {
            Reverse<--, 8043_0;>}*/
            /*OUT: {
            Reverse<--, 8043_0;>}*/
            /*OUT: {
            Reverse<--, 8047_0; 8043_0;>}*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: {
                Reverse<--, 8047_0; 8043_0;>}*/
                rho_inv = 1.0 / u[i][j][k][0];
                /*OUT: {
                Reverse<--, 8047_0; 8043_0;>}*/
                rho_i[i][j][k] = rho_inv;
                /*OUT: {
                Reverse<--, 8047_0; 8043_0;>}*/
                us[i][j][k] = u[i][j][k][1] * rho_inv;
                /*OUT: {
                Reverse<--, 8047_0; 8043_0;>}*/
                vs[i][j][k] = u[i][j][k][2] * rho_inv;
                /*OUT: {
                Reverse<--, 8047_0; 8043_0;>}*/
                ws[i][j][k] = u[i][j][k][3] * rho_inv;
                /*OUT: {
                Reverse<--, 8047_0; 8043_0;>}*/
                square[i][j][k] = 0.5 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * rho_inv;
                /*OUT: {
                Reverse<--, 8047_0; 8043_0;>}*/
                qs[i][j][k] = square[i][j][k] * rho_inv;
            }
        }
    }
#pragma omp for nowait
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 8133_1;>}*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 8137_1; 8133_0;>}*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: {
            Reverse<--, 8133_0;>}*/
            /*OUT: {
            Reverse<--, 8133_0;>}*/
            /*OUT: {
            Reverse<--, 8140_1; 8137_0; 8133_0;>}*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: {
                Reverse<--, 8137_0; 8133_0;>}*/
                /*OUT: {
                Reverse<--, 8137_0; 8133_0;>}*/
                /*OUT: {
                Reverse<--, 8140_0; 8137_0; 8133_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 8140_0; 8137_0; 8133_0;>}*/
                    rhs[i][j][k][m] = forcing[i][j][k][m];
                }
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<8152,>}*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: {
    Reverse<8152,>}*/
    /*OUT: {
    Reverse<8152,>}*/
    /*OUT: {
    Reverse<8152, 8161_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<8152,>}*/
        /*OUT: {
        Reverse<8152,>}*/
        /*OUT: {
        Reverse<8152, 8165_1; 8161_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<8152, 8161_0;>}*/
            /*OUT: {
            Reverse<8152, 8161_0;>}*/
            /*OUT: {
            Reverse<8152, 8165_0; 8161_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<8152, 8165_0; 8161_0;>}*/
                uijk = us[i][j][k];
                /*OUT: {
                Reverse<8152, 8165_0; 8161_0;>}*/
                up1 = us[i + 1][j][k];
                /*OUT: {
                Reverse<8152, 8165_0; 8161_0;>}*/
                um1 = us[i - 1][j][k];
                /*OUT: {
                Reverse<8152, 8165_0; 8161_0;>}*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dx1tx1 * (u[i + 1][j][k][0] - 2.0 * u[i][j][k][0] + u[i - 1][j][k][0]) - tx2 * (u[i + 1][j][k][1] - u[i - 1][j][k][1]);
                /*OUT: {
                Reverse<8152, 8165_0; 8161_0;>}*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dx2tx1 * (u[i + 1][j][k][1] - 2.0 * u[i][j][k][1] + u[i - 1][j][k][1]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[i + 1][j][k][1] * up1 - u[i - 1][j][k][1] * um1 + (u[i + 1][j][k][4] - square[i + 1][j][k] - u[i - 1][j][k][4] + square[i - 1][j][k]) * c2);
                /*OUT: {
                Reverse<8152, 8165_0; 8161_0;>}*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dx3tx1 * (u[i + 1][j][k][2] - 2.0 * u[i][j][k][2] + u[i - 1][j][k][2]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[i + 1][j][k][2] * up1 - u[i - 1][j][k][2] * um1);
                /*OUT: {
                Reverse<8152, 8165_0; 8161_0;>}*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dx4tx1 * (u[i + 1][j][k][3] - 2.0 * u[i][j][k][3] + u[i - 1][j][k][3]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[i + 1][j][k][3] * up1 - u[i - 1][j][k][3] * um1);
                /*OUT: {
                Reverse<8152, 8165_0; 8161_0;>}*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dx5tx1 * (u[i + 1][j][k][4] - 2.0 * u[i][j][k][4] + u[i - 1][j][k][4]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[i + 1][j][k][4] * rho_i[i + 1][j][k] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i - 1][j][k][4] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[i + 1][j][k][4] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[i - 1][j][k][4] - c2 * square[i - 1][j][k]) * um1);
            }
        }
    }
    /*OUT: {
    Reverse<8152,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<8419,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<8419,>}*/
    i = 1;
#pragma omp for nowait
    /*OUT: {
    Reverse<8419,>}*/
    /*OUT: {
    Reverse<8419,>}*/
    /*OUT: {
    Reverse<8419, 8430_1;>}*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: {
        Reverse<8419,>}*/
        /*OUT: {
        Reverse<8419,>}*/
        /*OUT: {
        Reverse<8419, 8433_1; 8430_0;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<8419, 8430_0;>}*/
            /*OUT: {
            Reverse<8419, 8430_0;>}*/
            /*OUT: {
            Reverse<8419, 8433_0; 8430_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<8419, 8433_0; 8430_0;>}*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
            }
        }
    }
    /*OUT: {
    Reverse<8419,>}*/
    i = 2;
#pragma omp for nowait
    /*OUT: {
    Reverse<8419,>}*/
    /*OUT: {
    Reverse<8419,>}*/
    /*OUT: {
    Reverse<8419, 8468_1;>}*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: {
        Reverse<8419,>}*/
        /*OUT: {
        Reverse<8419,>}*/
        /*OUT: {
        Reverse<8419, 8471_1; 8468_0;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<8419, 8468_0;>}*/
            /*OUT: {
            Reverse<8419, 8468_0;>}*/
            /*OUT: {
            Reverse<8419, 8471_0; 8468_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<8419, 8471_0; 8468_0;>}*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
            }
        }
    }
#pragma omp for nowait
    /*OUT: {
    Reverse<8419,>}*/
    /*OUT: {
    Reverse<8419,>}*/
    /*OUT: {
    Reverse<8419, 8508_1;>}*/
    for (i = 3; i < grid_points[0] - 3; i++) {
        /*OUT: {
        Reverse<8419,>}*/
        /*OUT: {
        Reverse<8419,>}*/
        /*OUT: {
        Reverse<8419, 8512_1; 8508_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<8419, 8508_0;>}*/
            /*OUT: {
            Reverse<8419, 8508_0;>}*/
            /*OUT: {
            Reverse<8419, 8515_1; 8512_0; 8508_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<8419, 8512_0; 8508_0;>}*/
                /*OUT: {
                Reverse<8419, 8512_0; 8508_0;>}*/
                /*OUT: {
                Reverse<8419, 8515_0; 8512_0; 8508_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<8419, 8515_0; 8512_0; 8508_0;>}*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
                }
            }
        }
    }
    /*OUT: {
    Reverse<8419,>}*/
    i = grid_points[0] - 3;
#pragma omp for nowait
    /*OUT: {
    Reverse<8419,>}*/
    /*OUT: {
    Reverse<8419,>}*/
    /*OUT: {
    Reverse<8419, 8559_1;>}*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: {
        Reverse<8419,>}*/
        /*OUT: {
        Reverse<8419,>}*/
        /*OUT: {
        Reverse<8419, 8562_1; 8559_0;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<8419, 8559_0;>}*/
            /*OUT: {
            Reverse<8419, 8559_0;>}*/
            /*OUT: {
            Reverse<8419, 8562_0; 8559_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<8419, 8562_0; 8559_0;>}*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m]);
            }
        }
    }
    /*OUT: {
    Reverse<8419,>}*/
    i = grid_points[0] - 2;
#pragma omp for nowait
    /*OUT: {
    Reverse<8419,>}*/
    /*OUT: {
    Reverse<8419,>}*/
    /*OUT: {
    Reverse<8419, 8602_1;>}*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: {
        Reverse<8419,>}*/
        /*OUT: {
        Reverse<8419,>}*/
        /*OUT: {
        Reverse<8419, 8605_1; 8602_0;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<8419, 8602_0;>}*/
            /*OUT: {
            Reverse<8419, 8602_0;>}*/
            /*OUT: {
            Reverse<8419, 8605_0; 8602_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<8419, 8605_0; 8602_0;>}*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4. * u[i - 1][j][k][m] + 5.0 * u[i][j][k][m]);
            }
        }
    }
    /*OUT: {
    Reverse<8419,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<8630,>}*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: {
    Reverse<8630,>}*/
    /*OUT: {
    Reverse<8630,>}*/
    /*OUT: {
    Reverse<8630, 8639_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<8630,>}*/
        /*OUT: {
        Reverse<8630,>}*/
        /*OUT: {
        Reverse<8630, 8643_1; 8639_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<8630, 8639_0;>}*/
            /*OUT: {
            Reverse<8630, 8639_0;>}*/
            /*OUT: {
            Reverse<8630, 8643_0; 8639_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<8630, 8643_0; 8639_0;>}*/
                vijk = vs[i][j][k];
                /*OUT: {
                Reverse<8630, 8643_0; 8639_0;>}*/
                vp1 = vs[i][j + 1][k];
                /*OUT: {
                Reverse<8630, 8643_0; 8639_0;>}*/
                vm1 = vs[i][j - 1][k];
                /*OUT: {
                Reverse<8630, 8643_0; 8639_0;>}*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dy1ty1 * (u[i][j + 1][k][0] - 2.0 * u[i][j][k][0] + u[i][j - 1][k][0]) - ty2 * (u[i][j + 1][k][2] - u[i][j - 1][k][2]);
                /*OUT: {
                Reverse<8630, 8643_0; 8639_0;>}*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dy2ty1 * (u[i][j + 1][k][1] - 2.0 * u[i][j][k][1] + u[i][j - 1][k][1]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[i][j + 1][k][1] * vp1 - u[i][j - 1][k][1] * vm1);
                /*OUT: {
                Reverse<8630, 8643_0; 8639_0;>}*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dy3ty1 * (u[i][j + 1][k][2] - 2.0 * u[i][j][k][2] + u[i][j - 1][k][2]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[i][j + 1][k][2] * vp1 - u[i][j - 1][k][2] * vm1 + (u[i][j + 1][k][4] - square[i][j + 1][k] - u[i][j - 1][k][4] + square[i][j - 1][k]) * c2);
                /*OUT: {
                Reverse<8630, 8643_0; 8639_0;>}*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dy4ty1 * (u[i][j + 1][k][3] - 2.0 * u[i][j][k][3] + u[i][j - 1][k][3]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[i][j + 1][k][3] * vp1 - u[i][j - 1][k][3] * vm1);
                /*OUT: {
                Reverse<8630, 8643_0; 8639_0;>}*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dy5ty1 * (u[i][j + 1][k][4] - 2.0 * u[i][j][k][4] + u[i][j - 1][k][4]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[i][j + 1][k][4] * rho_i[i][j + 1][k] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i][j - 1][k][4] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[i][j + 1][k][4] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[i][j - 1][k][4] - c2 * square[i][j - 1][k]) * vm1);
            }
        }
    }
    /*OUT: {
    Reverse<8630,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<8897,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<8897,>}*/
    j = 1;
#pragma omp for nowait
    /*OUT: {
    Reverse<8897,>}*/
    /*OUT: {
    Reverse<8897,>}*/
    /*OUT: {
    Reverse<8897, 8908_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<8897,>}*/
        /*OUT: {
        Reverse<8897,>}*/
        /*OUT: {
        Reverse<8897, 8911_1; 8908_0;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<8897, 8908_0;>}*/
            /*OUT: {
            Reverse<8897, 8908_0;>}*/
            /*OUT: {
            Reverse<8897, 8911_0; 8908_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<8897, 8911_0; 8908_0;>}*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
            }
        }
    }
    /*OUT: {
    Reverse<8897,>}*/
    j = 2;
#pragma omp for nowait
    /*OUT: {
    Reverse<8897,>}*/
    /*OUT: {
    Reverse<8897,>}*/
    /*OUT: {
    Reverse<8897, 8946_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<8897,>}*/
        /*OUT: {
        Reverse<8897,>}*/
        /*OUT: {
        Reverse<8897, 8949_1; 8946_0;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<8897, 8946_0;>}*/
            /*OUT: {
            Reverse<8897, 8946_0;>}*/
            /*OUT: {
            Reverse<8897, 8949_0; 8946_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<8897, 8949_0; 8946_0;>}*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
            }
        }
    }
#pragma omp for nowait
    /*OUT: {
    Reverse<8897,>}*/
    /*OUT: {
    Reverse<8897,>}*/
    /*OUT: {
    Reverse<8897, 8986_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<8897,>}*/
        /*OUT: {
        Reverse<8897,>}*/
        /*OUT: {
        Reverse<8897, 8990_1; 8986_0;>}*/
        for (j = 3; j < grid_points[1] - 3; j++) {
            /*OUT: {
            Reverse<8897, 8986_0;>}*/
            /*OUT: {
            Reverse<8897, 8986_0;>}*/
            /*OUT: {
            Reverse<8897, 8993_1; 8990_0; 8986_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<8897, 8990_0; 8986_0;>}*/
                /*OUT: {
                Reverse<8897, 8990_0; 8986_0;>}*/
                /*OUT: {
                Reverse<8897, 8993_0; 8990_0; 8986_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<8897, 8993_0; 8990_0; 8986_0;>}*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
                }
            }
        }
    }
    /*OUT: {
    Reverse<8897,>}*/
    j = grid_points[1] - 3;
#pragma omp for nowait
    /*OUT: {
    Reverse<8897,>}*/
    /*OUT: {
    Reverse<8897,>}*/
    /*OUT: {
    Reverse<8897, 9037_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<8897,>}*/
        /*OUT: {
        Reverse<8897,>}*/
        /*OUT: {
        Reverse<8897, 9040_1; 9037_0;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<8897, 9037_0;>}*/
            /*OUT: {
            Reverse<8897, 9037_0;>}*/
            /*OUT: {
            Reverse<8897, 9040_0; 9037_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<8897, 9040_0; 9037_0;>}*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m]);
            }
        }
    }
    /*OUT: {
    Reverse<8897,>}*/
    j = grid_points[1] - 2;
#pragma omp for nowait
    /*OUT: {
    Reverse<8897,>}*/
    /*OUT: {
    Reverse<8897,>}*/
    /*OUT: {
    Reverse<8897, 9080_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<8897,>}*/
        /*OUT: {
        Reverse<8897,>}*/
        /*OUT: {
        Reverse<8897, 9083_1; 9080_0;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<8897, 9080_0;>}*/
            /*OUT: {
            Reverse<8897, 9080_0;>}*/
            /*OUT: {
            Reverse<8897, 9083_0; 9080_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<8897, 9083_0; 9080_0;>}*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4. * u[i][j - 1][k][m] + 5. * u[i][j][k][m]);
            }
        }
    }
    /*OUT: {
    Reverse<8897,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<9108,>}*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: {
    Reverse<9108,>}*/
    /*OUT: {
    Reverse<9108,>}*/
    /*OUT: {
    Reverse<9108, 9117_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<9108,>}*/
        /*OUT: {
        Reverse<9108,>}*/
        /*OUT: {
        Reverse<9108, 9121_1; 9117_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<9108, 9117_0;>}*/
            /*OUT: {
            Reverse<9108, 9117_0;>}*/
            /*OUT: {
            Reverse<9108, 9121_0; 9117_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<9108, 9121_0; 9117_0;>}*/
                wijk = ws[i][j][k];
                /*OUT: {
                Reverse<9108, 9121_0; 9117_0;>}*/
                wp1 = ws[i][j][k + 1];
                /*OUT: {
                Reverse<9108, 9121_0; 9117_0;>}*/
                wm1 = ws[i][j][k - 1];
                /*OUT: {
                Reverse<9108, 9121_0; 9117_0;>}*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dz1tz1 * (u[i][j][k + 1][0] - 2.0 * u[i][j][k][0] + u[i][j][k - 1][0]) - tz2 * (u[i][j][k + 1][3] - u[i][j][k - 1][3]);
                /*OUT: {
                Reverse<9108, 9121_0; 9117_0;>}*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dz2tz1 * (u[i][j][k + 1][1] - 2.0 * u[i][j][k][1] + u[i][j][k - 1][1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[i][j][k + 1][1] * wp1 - u[i][j][k - 1][1] * wm1);
                /*OUT: {
                Reverse<9108, 9121_0; 9117_0;>}*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dz3tz1 * (u[i][j][k + 1][2] - 2.0 * u[i][j][k][2] + u[i][j][k - 1][2]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[i][j][k + 1][2] * wp1 - u[i][j][k - 1][2] * wm1);
                /*OUT: {
                Reverse<9108, 9121_0; 9117_0;>}*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dz4tz1 * (u[i][j][k + 1][3] - 2.0 * u[i][j][k][3] + u[i][j][k - 1][3]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[i][j][k + 1][3] * wp1 - u[i][j][k - 1][3] * wm1 + (u[i][j][k + 1][4] - square[i][j][k + 1] - u[i][j][k - 1][4] + square[i][j][k - 1]) * c2);
                /*OUT: {
                Reverse<9108, 9121_0; 9117_0;>}*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dz5tz1 * (u[i][j][k + 1][4] - 2.0 * u[i][j][k][4] + u[i][j][k - 1][4]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[i][j][k + 1][4] * rho_i[i][j][k + 1] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i][j][k - 1][4] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[i][j][k + 1][4] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[i][j][k - 1][4] - c2 * square[i][j][k - 1]) * wm1);
            }
        }
    }
    /*OUT: {
    Reverse<9108,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<9375,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<9375,>}*/
    k = 1;
#pragma omp for nowait
    /*OUT: {
    Reverse<9375,>}*/
    /*OUT: {
    Reverse<9375,>}*/
    /*OUT: {
    Reverse<9375, 9386_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<9375,>}*/
        /*OUT: {
        Reverse<9375,>}*/
        /*OUT: {
        Reverse<9375, 9389_1; 9386_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<9375, 9386_0;>}*/
            /*OUT: {
            Reverse<9375, 9386_0;>}*/
            /*OUT: {
            Reverse<9375, 9389_0; 9386_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<9375, 9389_0; 9386_0;>}*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
            }
        }
    }
    /*OUT: {
    Reverse<9375,>}*/
    k = 2;
#pragma omp for nowait
    /*OUT: {
    Reverse<9375,>}*/
    /*OUT: {
    Reverse<9375,>}*/
    /*OUT: {
    Reverse<9375, 9424_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<9375,>}*/
        /*OUT: {
        Reverse<9375,>}*/
        /*OUT: {
        Reverse<9375, 9427_1; 9424_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<9375, 9424_0;>}*/
            /*OUT: {
            Reverse<9375, 9424_0;>}*/
            /*OUT: {
            Reverse<9375, 9427_0; 9424_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<9375, 9427_0; 9424_0;>}*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
            }
        }
    }
#pragma omp for nowait
    /*OUT: {
    Reverse<9375,>}*/
    /*OUT: {
    Reverse<9375,>}*/
    /*OUT: {
    Reverse<9375, 9464_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<9375,>}*/
        /*OUT: {
        Reverse<9375,>}*/
        /*OUT: {
        Reverse<9375, 9468_1; 9464_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<9375, 9464_0;>}*/
            /*OUT: {
            Reverse<9375, 9464_0;>}*/
            /*OUT: {
            Reverse<9375, 9471_1; 9468_0; 9464_0;>}*/
            for (k = 3; k < grid_points[2] - 3; k++) {
                /*OUT: {
                Reverse<9375, 9468_0; 9464_0;>}*/
                /*OUT: {
                Reverse<9375, 9468_0; 9464_0;>}*/
                /*OUT: {
                Reverse<9375, 9471_0; 9468_0; 9464_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<9375, 9471_0; 9468_0; 9464_0;>}*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
                }
            }
        }
    }
    /*OUT: {
    Reverse<9375,>}*/
    k = grid_points[2] - 3;
#pragma omp for nowait
    /*OUT: {
    Reverse<9375,>}*/
    /*OUT: {
    Reverse<9375,>}*/
    /*OUT: {
    Reverse<9375, 9515_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<9375,>}*/
        /*OUT: {
        Reverse<9375,>}*/
        /*OUT: {
        Reverse<9375, 9518_1; 9515_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<9375, 9515_0;>}*/
            /*OUT: {
            Reverse<9375, 9515_0;>}*/
            /*OUT: {
            Reverse<9375, 9518_0; 9515_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<9375, 9518_0; 9515_0;>}*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m]);
            }
        }
    }
    /*OUT: {
    Reverse<9375,>}*/
    k = grid_points[2] - 2;
#pragma omp for nowait
    /*OUT: {
    Reverse<9375,>}*/
    /*OUT: {
    Reverse<9375,>}*/
    /*OUT: {
    Reverse<9375, 9558_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<9375,>}*/
        /*OUT: {
        Reverse<9375,>}*/
        /*OUT: {
        Reverse<9375, 9561_1; 9558_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<9375, 9558_0;>}*/
            /*OUT: {
            Reverse<9375, 9558_0;>}*/
            /*OUT: {
            Reverse<9375, 9561_0; 9558_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<9375, 9561_0; 9558_0;>}*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 5.0 * u[i][j][k][m]);
            }
        }
    }
    /*OUT: {
    Reverse<9375,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<9586,>}*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: {
    Reverse<9586,>}*/
    /*OUT: {
    Reverse<9586,>}*/
    /*OUT: {
    Reverse<9586, 9595_1;>}*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: {
        Reverse<9586,>}*/
        /*OUT: {
        Reverse<9586,>}*/
        /*OUT: {
        Reverse<9586, 9598_1; 9595_0;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<9586, 9595_0;>}*/
            /*OUT: {
            Reverse<9586, 9595_0;>}*/
            /*OUT: {
            Reverse<9586, 9602_1; 9598_0; 9595_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<9586, 9598_0; 9595_0;>}*/
                /*OUT: {
                Reverse<9586, 9598_0; 9595_0;>}*/
                /*OUT: {
                Reverse<9586, 9602_0; 9598_0; 9595_0;>}*/
                for (i = 1; i < grid_points[0] - 1; i++) {
                    /*OUT: {
                    Reverse<9586, 9602_0; 9598_0; 9595_0;>}*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] * dt;
                }
            }
        }
    }
    /*OUT: {
    Reverse<9586,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<9614,>}*/
#pragma omp barrier
}
static void set_constants() {
    /*OUT: {
    Reverse<--,>}*/
    ce[0][0] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][1] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][2] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][3] = 4.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][4] = 5.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][5] = 3.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][6] = 0.5;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][7] = 0.02;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][8] = 0.01;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][9] = 0.03;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][10] = 0.5;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][11] = 0.4;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][12] = 0.3;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][0] = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][1] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][2] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][3] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][4] = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][5] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][6] = 3.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][7] = 0.01;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][8] = 0.03;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][9] = 0.02;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][10] = 0.4;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][11] = 0.3;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][12] = 0.5;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][0] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][1] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][2] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][3] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][4] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][5] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][6] = 3.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][7] = 0.04;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][8] = 0.03;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][9] = 0.05;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][10] = 0.3;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][11] = 0.5;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][12] = 0.4;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][0] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][1] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][2] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][3] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][4] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][5] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][6] = 3.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][7] = 0.03;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][8] = 0.05;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][9] = 0.04;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][10] = 0.2;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][11] = 0.1;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][12] = 0.3;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][0] = 5.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][1] = 4.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][2] = 3.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][3] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][4] = 0.1;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][5] = 0.4;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][6] = 0.3;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][7] = 0.05;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][8] = 0.04;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][9] = 0.03;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][10] = 0.1;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][11] = 0.3;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][12] = 0.2;
    /*OUT: {
    Reverse<--,>}*/
    c1 = 1.4;
    /*OUT: {
    Reverse<--,>}*/
    c2 = 0.4;
    /*OUT: {
    Reverse<--,>}*/
    c3 = 0.1;
    /*OUT: {
    Reverse<--,>}*/
    c4 = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    c5 = 1.4;
    /*OUT: {
    Reverse<--,>}*/
    dnxm1 = 1.0 / (double) (grid_points[0] - 1);
    /*OUT: {
    Reverse<--,>}*/
    dnym1 = 1.0 / (double) (grid_points[1] - 1);
    /*OUT: {
    Reverse<--,>}*/
    dnzm1 = 1.0 / (double) (grid_points[2] - 1);
    /*OUT: {
    Reverse<--,>}*/
    c1c2 = c1 * c2;
    /*OUT: {
    Reverse<--,>}*/
    c1c5 = c1 * c5;
    /*OUT: {
    Reverse<--,>}*/
    c3c4 = c3 * c4;
    /*OUT: {
    Reverse<--,>}*/
    c1345 = c1c5 * c3c4;
    /*OUT: {
    Reverse<--,>}*/
    conz1 = (1.0 - c1c5);
    /*OUT: {
    Reverse<--,>}*/
    tx1 = 1.0 / (dnxm1 * dnxm1);
    /*OUT: {
    Reverse<--,>}*/
    tx2 = 1.0 / (2.0 * dnxm1);
    /*OUT: {
    Reverse<--,>}*/
    tx3 = 1.0 / dnxm1;
    /*OUT: {
    Reverse<--,>}*/
    ty1 = 1.0 / (dnym1 * dnym1);
    /*OUT: {
    Reverse<--,>}*/
    ty2 = 1.0 / (2.0 * dnym1);
    /*OUT: {
    Reverse<--,>}*/
    ty3 = 1.0 / dnym1;
    /*OUT: {
    Reverse<--,>}*/
    tz1 = 1.0 / (dnzm1 * dnzm1);
    /*OUT: {
    Reverse<--,>}*/
    tz2 = 1.0 / (2.0 * dnzm1);
    /*OUT: {
    Reverse<--,>}*/
    tz3 = 1.0 / dnzm1;
    /*OUT: {
    Reverse<--,>}*/
    dx1 = 0.75;
    /*OUT: {
    Reverse<--,>}*/
    dx2 = 0.75;
    /*OUT: {
    Reverse<--,>}*/
    dx3 = 0.75;
    /*OUT: {
    Reverse<--,>}*/
    dx4 = 0.75;
    /*OUT: {
    Reverse<--,>}*/
    dx5 = 0.75;
    /*OUT: {
    Reverse<--,>}*/
    dy1 = 0.75;
    /*OUT: {
    Reverse<--,>}*/
    dy2 = 0.75;
    /*OUT: {
    Reverse<--,>}*/
    dy3 = 0.75;
    /*OUT: {
    Reverse<--,>}*/
    dy4 = 0.75;
    /*OUT: {
    Reverse<--,>}*/
    dy5 = 0.75;
    /*OUT: {
    Reverse<--,>}*/
    dz1 = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    dz2 = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    dz3 = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    dz4 = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    dz5 = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre199;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre200;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre199 = (dx3 > dx4);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre199) {
        /*OUT: {
        Reverse<--, 9967_0;>}*/
        _imopVarPre200 = dx3;
    } else {
        /*OUT: {
        Reverse<--, 9967_1;>}*/
        _imopVarPre200 = dx4;
    }
    /*OUT: {
    Reverse<--,>}*/
    dxmax = _imopVarPre200;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre203;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre204;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre203 = (dy2 > dy4);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre203) {
        /*OUT: {
        Reverse<--, 9979_0;>}*/
        _imopVarPre204 = dy2;
    } else {
        /*OUT: {
        Reverse<--, 9979_1;>}*/
        _imopVarPre204 = dy4;
    }
    /*OUT: {
    Reverse<--,>}*/
    dymax = _imopVarPre204;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre207;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre208;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre207 = (dz2 > dz3);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre207) {
        /*OUT: {
        Reverse<--, 9991_0;>}*/
        _imopVarPre208 = dz2;
    } else {
        /*OUT: {
        Reverse<--, 9991_1;>}*/
        _imopVarPre208 = dz3;
    }
    /*OUT: {
    Reverse<--,>}*/
    dzmax = _imopVarPre208;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre249;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre250;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre251;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre252;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre259;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre260;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre249 = (dy1 > dz1);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre249) {
        /*OUT: {
        Reverse<--, 10007_0;>}*/
        _imopVarPre250 = dy1;
    } else {
        /*OUT: {
        Reverse<--, 10007_1;>}*/
        _imopVarPre250 = dz1;
    }
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre251 = (dx1 > _imopVarPre250);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre251) {
        /*OUT: {
        Reverse<--, 10015_0;>}*/
        _imopVarPre252 = dx1;
    } else {
        /*OUT: {
        Reverse<--, 10015_1;>}*/
        _imopVarPre259 = (dy1 > dz1);
        /*OUT: {
        Reverse<--, 10015_1;>}*/
        if (_imopVarPre259) {
            /*OUT: {
            Reverse<--, 10021_0; 10015_1;>}*/
            _imopVarPre260 = dy1;
        } else {
            /*OUT: {
            Reverse<--, 10021_1; 10015_1;>}*/
            _imopVarPre260 = dz1;
        }
        /*OUT: {
        Reverse<--, 10015_1;>}*/
        _imopVarPre252 = _imopVarPre260;
    }
    /*OUT: {
    Reverse<--,>}*/
    dssp = 0.25 * _imopVarPre252;
    /*OUT: {
    Reverse<--,>}*/
    c4dssp = 4.0 * dssp;
    /*OUT: {
    Reverse<--,>}*/
    c5dssp = 5.0 * dssp;
    /*OUT: {
    Reverse<--,>}*/
    dttx1 = dt * tx1;
    /*OUT: {
    Reverse<--,>}*/
    dttx2 = dt * tx2;
    /*OUT: {
    Reverse<--,>}*/
    dtty1 = dt * ty1;
    /*OUT: {
    Reverse<--,>}*/
    dtty2 = dt * ty2;
    /*OUT: {
    Reverse<--,>}*/
    dttz1 = dt * tz1;
    /*OUT: {
    Reverse<--,>}*/
    dttz2 = dt * tz2;
    /*OUT: {
    Reverse<--,>}*/
    c2dttx1 = 2.0 * dttx1;
    /*OUT: {
    Reverse<--,>}*/
    c2dtty1 = 2.0 * dtty1;
    /*OUT: {
    Reverse<--,>}*/
    c2dttz1 = 2.0 * dttz1;
    /*OUT: {
    Reverse<--,>}*/
    dtdssp = dt * dssp;
    /*OUT: {
    Reverse<--,>}*/
    comz1 = dtdssp;
    /*OUT: {
    Reverse<--,>}*/
    comz4 = 4.0 * dtdssp;
    /*OUT: {
    Reverse<--,>}*/
    comz5 = 5.0 * dtdssp;
    /*OUT: {
    Reverse<--,>}*/
    comz6 = 6.0 * dtdssp;
    /*OUT: {
    Reverse<--,>}*/
    c3c4tx3 = c3c4 * tx3;
    /*OUT: {
    Reverse<--,>}*/
    c3c4ty3 = c3c4 * ty3;
    /*OUT: {
    Reverse<--,>}*/
    c3c4tz3 = c3c4 * tz3;
    /*OUT: {
    Reverse<--,>}*/
    dx1tx1 = dx1 * tx1;
    /*OUT: {
    Reverse<--,>}*/
    dx2tx1 = dx2 * tx1;
    /*OUT: {
    Reverse<--,>}*/
    dx3tx1 = dx3 * tx1;
    /*OUT: {
    Reverse<--,>}*/
    dx4tx1 = dx4 * tx1;
    /*OUT: {
    Reverse<--,>}*/
    dx5tx1 = dx5 * tx1;
    /*OUT: {
    Reverse<--,>}*/
    dy1ty1 = dy1 * ty1;
    /*OUT: {
    Reverse<--,>}*/
    dy2ty1 = dy2 * ty1;
    /*OUT: {
    Reverse<--,>}*/
    dy3ty1 = dy3 * ty1;
    /*OUT: {
    Reverse<--,>}*/
    dy4ty1 = dy4 * ty1;
    /*OUT: {
    Reverse<--,>}*/
    dy5ty1 = dy5 * ty1;
    /*OUT: {
    Reverse<--,>}*/
    dz1tz1 = dz1 * tz1;
    /*OUT: {
    Reverse<--,>}*/
    dz2tz1 = dz2 * tz1;
    /*OUT: {
    Reverse<--,>}*/
    dz3tz1 = dz3 * tz1;
    /*OUT: {
    Reverse<--,>}*/
    dz4tz1 = dz4 * tz1;
    /*OUT: {
    Reverse<--,>}*/
    dz5tz1 = dz5 * tz1;
    /*OUT: {
    Reverse<--,>}*/
    c2iv = 2.5;
    /*OUT: {
    Reverse<--,>}*/
    con43 = 4.0 / 3.0;
    /*OUT: {
    Reverse<--,>}*/
    con16 = 1.0 / 6.0;
    /*OUT: {
    Reverse<--,>}*/
    xxcon1 = c3c4tx3 * con43 * tx3;
    /*OUT: {
    Reverse<--,>}*/
    xxcon2 = c3c4tx3 * tx3;
    /*OUT: {
    Reverse<--,>}*/
    xxcon3 = c3c4tx3 * conz1 * tx3;
    /*OUT: {
    Reverse<--,>}*/
    xxcon4 = c3c4tx3 * con16 * tx3;
    /*OUT: {
    Reverse<--,>}*/
    xxcon5 = c3c4tx3 * c1c5 * tx3;
    /*OUT: {
    Reverse<--,>}*/
    yycon1 = c3c4ty3 * con43 * ty3;
    /*OUT: {
    Reverse<--,>}*/
    yycon2 = c3c4ty3 * ty3;
    /*OUT: {
    Reverse<--,>}*/
    yycon3 = c3c4ty3 * conz1 * ty3;
    /*OUT: {
    Reverse<--,>}*/
    yycon4 = c3c4ty3 * con16 * ty3;
    /*OUT: {
    Reverse<--,>}*/
    yycon5 = c3c4ty3 * c1c5 * ty3;
    /*OUT: {
    Reverse<--,>}*/
    zzcon1 = c3c4tz3 * con43 * tz3;
    /*OUT: {
    Reverse<--,>}*/
    zzcon2 = c3c4tz3 * tz3;
    /*OUT: {
    Reverse<--,>}*/
    zzcon3 = c3c4tz3 * conz1 * tz3;
    /*OUT: {
    Reverse<--,>}*/
    zzcon4 = c3c4tz3 * con16 * tz3;
    /*OUT: {
    Reverse<--,>}*/
    zzcon5 = c3c4tz3 * c1c5 * tz3;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void verify(int no_time_steps, char *class , boolean *verified) {
    /*OUT: {
    Reverse<--,>}*/
    double xcrref[5];
    /*OUT: {
    Reverse<--,>}*/
    double xceref[5];
    /*OUT: {
    Reverse<--,>}*/
    double xcrdif[5];
    /*OUT: {
    Reverse<--,>}*/
    double xcedif[5];
    /*OUT: {
    Reverse<--,>}*/
    double epsilon;
    /*OUT: {
    Reverse<--,>}*/
    double xce[5];
    /*OUT: {
    Reverse<--,>}*/
    double xcr[5];
    /*OUT: {
    Reverse<--,>}*/
    double dtref;
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    epsilon = 1.0e-08;
    /*OUT: {
    Reverse<--,>}*/
    error_norm(xce);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    compute_rhs();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    rhs_norm(xcr);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 10164_0;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 10164_0;>}*/
        xcr[m] = xcr[m] / dt;
    }
    /*OUT: {
    Reverse<--, 10164_1;>}*/
    *class = 'U';
    /*OUT: {
    Reverse<--, 10164_1;>}*/
    *verified = 1;
    /*OUT: {
    Reverse<--, 10164_1;>}*/
    /*OUT: {
    Reverse<--, 10164_1;>}*/
    /*OUT: {
    Reverse<--, 10175_0; 10164_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 10175_0; 10164_1;>}*/
        xcrref[m] = 1.0;
        /*OUT: {
        Reverse<--, 10175_0; 10164_1;>}*/
        xceref[m] = 1.0;
    }
    /*OUT: {
    Reverse<--, 10175_1; 10164_1;>}*/
    int _imopVarPre264;
    /*OUT: {
    Reverse<--, 10175_1; 10164_1;>}*/
    int _imopVarPre265;
    /*OUT: {
    Reverse<--, 10175_1; 10164_1;>}*/
    int _imopVarPre266;
    /*OUT: {
    Reverse<--, 10175_1; 10164_1;>}*/
    _imopVarPre264 = grid_points[0] == 12;
    /*OUT: {
    Reverse<--, 10175_1; 10164_1;>}*/
    if (_imopVarPre264) {
        /*OUT: {
        Reverse<--, 10189_0; 10175_1; 10164_1;>}*/
        _imopVarPre265 = grid_points[1] == 12;
        /*OUT: {
        Reverse<--, 10189_0; 10175_1; 10164_1;>}*/
        if (_imopVarPre265) {
            /*OUT: {
            Reverse<--, 10193_0; 10189_0; 10175_1; 10164_1;>}*/
            _imopVarPre266 = grid_points[2] == 12;
            /*OUT: {
            Reverse<--, 10193_0; 10189_0; 10175_1; 10164_1;>}*/
            if (_imopVarPre266) {
                /*OUT: {
                Reverse<--, 10197_0; 10193_0; 10189_0; 10175_1; 10164_1;>}*/
                _imopVarPre266 = no_time_steps == 60;
            }
            /*OUT: {
            Reverse<--, 10193_0; 10189_0; 10175_1; 10164_1;>}*/
            _imopVarPre265 = _imopVarPre266;
        }
        /*OUT: {
        Reverse<--, 10189_0; 10175_1; 10164_1;>}*/
        _imopVarPre264 = _imopVarPre265;
    }
    /*OUT: {
    Reverse<--, 10175_1; 10164_1;>}*/
    if (_imopVarPre264) {
        /*OUT: {
        Reverse<--, 10204_0; 10175_1; 10164_1;>}*/
        *class = 'S';
        /*OUT: {
        Reverse<--, 10204_0; 10175_1; 10164_1;>}*/
        dtref = 1.0e-2;
        /*OUT: {
        Reverse<--, 10204_0; 10175_1; 10164_1;>}*/
        xcrref[0] = 1.7034283709541311e-01;
        /*OUT: {
        Reverse<--, 10204_0; 10175_1; 10164_1;>}*/
        xcrref[1] = 1.2975252070034097e-02;
        /*OUT: {
        Reverse<--, 10204_0; 10175_1; 10164_1;>}*/
        xcrref[2] = 3.2527926989486055e-02;
        /*OUT: {
        Reverse<--, 10204_0; 10175_1; 10164_1;>}*/
        xcrref[3] = 2.6436421275166801e-02;
        /*OUT: {
        Reverse<--, 10204_0; 10175_1; 10164_1;>}*/
        xcrref[4] = 1.9211784131744430e-01;
        /*OUT: {
        Reverse<--, 10204_0; 10175_1; 10164_1;>}*/
        xceref[0] = 4.9976913345811579e-04;
        /*OUT: {
        Reverse<--, 10204_0; 10175_1; 10164_1;>}*/
        xceref[1] = 4.5195666782961927e-05;
        /*OUT: {
        Reverse<--, 10204_0; 10175_1; 10164_1;>}*/
        xceref[2] = 7.3973765172921357e-05;
        /*OUT: {
        Reverse<--, 10204_0; 10175_1; 10164_1;>}*/
        xceref[3] = 7.3821238632439731e-05;
        /*OUT: {
        Reverse<--, 10204_0; 10175_1; 10164_1;>}*/
        xceref[4] = 8.9269630987491446e-04;
    } else {
        /*OUT: {
        Reverse<--, 10204_1; 10175_1; 10164_1;>}*/
        int _imopVarPre270;
        /*OUT: {
        Reverse<--, 10204_1; 10175_1; 10164_1;>}*/
        int _imopVarPre271;
        /*OUT: {
        Reverse<--, 10204_1; 10175_1; 10164_1;>}*/
        int _imopVarPre272;
        /*OUT: {
        Reverse<--, 10204_1; 10175_1; 10164_1;>}*/
        _imopVarPre270 = grid_points[0] == 24;
        /*OUT: {
        Reverse<--, 10204_1; 10175_1; 10164_1;>}*/
        if (_imopVarPre270) {
            /*OUT: {
            Reverse<--, 10245_0; 10204_1; 10175_1; 10164_1;>}*/
            _imopVarPre271 = grid_points[1] == 24;
            /*OUT: {
            Reverse<--, 10245_0; 10204_1; 10175_1; 10164_1;>}*/
            if (_imopVarPre271) {
                /*OUT: {
                Reverse<--, 10249_0; 10245_0; 10204_1; 10175_1; 10164_1;>}*/
                _imopVarPre272 = grid_points[2] == 24;
                /*OUT: {
                Reverse<--, 10249_0; 10245_0; 10204_1; 10175_1; 10164_1;>}*/
                if (_imopVarPre272) {
                    /*OUT: {
                    Reverse<--, 10253_0; 10249_0; 10245_0; 10204_1; 10175_1; 10164_1;>}*/
                    _imopVarPre272 = no_time_steps == 200;
                }
                /*OUT: {
                Reverse<--, 10249_0; 10245_0; 10204_1; 10175_1; 10164_1;>}*/
                _imopVarPre271 = _imopVarPre272;
            }
            /*OUT: {
            Reverse<--, 10245_0; 10204_1; 10175_1; 10164_1;>}*/
            _imopVarPre270 = _imopVarPre271;
        }
        /*OUT: {
        Reverse<--, 10204_1; 10175_1; 10164_1;>}*/
        if (_imopVarPre270) {
            /*OUT: {
            Reverse<--, 10260_0; 10204_1; 10175_1; 10164_1;>}*/
            *class = 'W';
            /*OUT: {
            Reverse<--, 10260_0; 10204_1; 10175_1; 10164_1;>}*/
            dtref = 0.8e-3;
            /*OUT: {
            Reverse<--, 10260_0; 10204_1; 10175_1; 10164_1;>}*/
            xcrref[0] = 0.1125590409344e+03;
            /*OUT: {
            Reverse<--, 10260_0; 10204_1; 10175_1; 10164_1;>}*/
            xcrref[1] = 0.1180007595731e+02;
            /*OUT: {
            Reverse<--, 10260_0; 10204_1; 10175_1; 10164_1;>}*/
            xcrref[2] = 0.2710329767846e+02;
            /*OUT: {
            Reverse<--, 10260_0; 10204_1; 10175_1; 10164_1;>}*/
            xcrref[3] = 0.2469174937669e+02;
            /*OUT: {
            Reverse<--, 10260_0; 10204_1; 10175_1; 10164_1;>}*/
            xcrref[4] = 0.2638427874317e+03;
            /*OUT: {
            Reverse<--, 10260_0; 10204_1; 10175_1; 10164_1;>}*/
            xceref[0] = 0.4419655736008e+01;
            /*OUT: {
            Reverse<--, 10260_0; 10204_1; 10175_1; 10164_1;>}*/
            xceref[1] = 0.4638531260002e+00;
            /*OUT: {
            Reverse<--, 10260_0; 10204_1; 10175_1; 10164_1;>}*/
            xceref[2] = 0.1011551749967e+01;
            /*OUT: {
            Reverse<--, 10260_0; 10204_1; 10175_1; 10164_1;>}*/
            xceref[3] = 0.9235878729944e+00;
            /*OUT: {
            Reverse<--, 10260_0; 10204_1; 10175_1; 10164_1;>}*/
            xceref[4] = 0.1018045837718e+02;
        } else {
            /*OUT: {
            Reverse<--, 10260_1; 10204_1; 10175_1; 10164_1;>}*/
            int _imopVarPre276;
            /*OUT: {
            Reverse<--, 10260_1; 10204_1; 10175_1; 10164_1;>}*/
            int _imopVarPre277;
            /*OUT: {
            Reverse<--, 10260_1; 10204_1; 10175_1; 10164_1;>}*/
            int _imopVarPre278;
            /*OUT: {
            Reverse<--, 10260_1; 10204_1; 10175_1; 10164_1;>}*/
            _imopVarPre276 = grid_points[0] == 64;
            /*OUT: {
            Reverse<--, 10260_1; 10204_1; 10175_1; 10164_1;>}*/
            if (_imopVarPre276) {
                /*OUT: {
                Reverse<--, 10301_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                _imopVarPre277 = grid_points[1] == 64;
                /*OUT: {
                Reverse<--, 10301_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                if (_imopVarPre277) {
                    /*OUT: {
                    Reverse<--, 10305_0; 10301_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    _imopVarPre278 = grid_points[2] == 64;
                    /*OUT: {
                    Reverse<--, 10305_0; 10301_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    if (_imopVarPre278) {
                        /*OUT: {
                        Reverse<--, 10309_0; 10305_0; 10301_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        _imopVarPre278 = no_time_steps == 200;
                    }
                    /*OUT: {
                    Reverse<--, 10305_0; 10301_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    _imopVarPre277 = _imopVarPre278;
                }
                /*OUT: {
                Reverse<--, 10301_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                _imopVarPre276 = _imopVarPre277;
            }
            /*OUT: {
            Reverse<--, 10260_1; 10204_1; 10175_1; 10164_1;>}*/
            if (_imopVarPre276) {
                /*OUT: {
                Reverse<--, 10316_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                *class = 'A';
                /*OUT: {
                Reverse<--, 10316_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                dtref = 0.8e-3;
                /*OUT: {
                Reverse<--, 10316_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                xcrref[0] = 1.0806346714637264e+02;
                /*OUT: {
                Reverse<--, 10316_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                xcrref[1] = 1.1319730901220813e+01;
                /*OUT: {
                Reverse<--, 10316_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                xcrref[2] = 2.5974354511582465e+01;
                /*OUT: {
                Reverse<--, 10316_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                xcrref[3] = 2.3665622544678910e+01;
                /*OUT: {
                Reverse<--, 10316_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                xcrref[4] = 2.5278963211748344e+02;
                /*OUT: {
                Reverse<--, 10316_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                xceref[0] = 4.2348416040525025e+00;
                /*OUT: {
                Reverse<--, 10316_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                xceref[1] = 4.4390282496995698e-01;
                /*OUT: {
                Reverse<--, 10316_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                xceref[2] = 9.6692480136345650e-01;
                /*OUT: {
                Reverse<--, 10316_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                xceref[3] = 8.8302063039765474e-01;
                /*OUT: {
                Reverse<--, 10316_0; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                xceref[4] = 9.7379901770829278e+00;
            } else {
                /*OUT: {
                Reverse<--, 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                int _imopVarPre282;
                /*OUT: {
                Reverse<--, 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                int _imopVarPre283;
                /*OUT: {
                Reverse<--, 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                int _imopVarPre284;
                /*OUT: {
                Reverse<--, 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                _imopVarPre282 = grid_points[0] == 102;
                /*OUT: {
                Reverse<--, 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                if (_imopVarPre282) {
                    /*OUT: {
                    Reverse<--, 10357_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    _imopVarPre283 = grid_points[1] == 102;
                    /*OUT: {
                    Reverse<--, 10357_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    if (_imopVarPre283) {
                        /*OUT: {
                        Reverse<--, 10361_0; 10357_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        _imopVarPre284 = grid_points[2] == 102;
                        /*OUT: {
                        Reverse<--, 10361_0; 10357_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        if (_imopVarPre284) {
                            /*OUT: {
                            Reverse<--, 10365_0; 10361_0; 10357_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                            _imopVarPre284 = no_time_steps == 200;
                        }
                        /*OUT: {
                        Reverse<--, 10361_0; 10357_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        _imopVarPre283 = _imopVarPre284;
                    }
                    /*OUT: {
                    Reverse<--, 10357_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    _imopVarPre282 = _imopVarPre283;
                }
                /*OUT: {
                Reverse<--, 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                if (_imopVarPre282) {
                    /*OUT: {
                    Reverse<--, 10372_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    *class = 'B';
                    /*OUT: {
                    Reverse<--, 10372_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    dtref = 3.0e-4;
                    /*OUT: {
                    Reverse<--, 10372_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    xcrref[0] = 1.4233597229287254e+03;
                    /*OUT: {
                    Reverse<--, 10372_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    xcrref[1] = 9.9330522590150238e+01;
                    /*OUT: {
                    Reverse<--, 10372_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    xcrref[2] = 3.5646025644535285e+02;
                    /*OUT: {
                    Reverse<--, 10372_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    xcrref[3] = 3.2485447959084092e+02;
                    /*OUT: {
                    Reverse<--, 10372_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    xcrref[4] = 3.2707541254659363e+03;
                    /*OUT: {
                    Reverse<--, 10372_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    xceref[0] = 5.2969847140936856e+01;
                    /*OUT: {
                    Reverse<--, 10372_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    xceref[1] = 4.4632896115670668e+00;
                    /*OUT: {
                    Reverse<--, 10372_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    xceref[2] = 1.3122573342210174e+01;
                    /*OUT: {
                    Reverse<--, 10372_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    xceref[3] = 1.2006925323559144e+01;
                    /*OUT: {
                    Reverse<--, 10372_0; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    xceref[4] = 1.2459576151035986e+02;
                } else {
                    /*OUT: {
                    Reverse<--, 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    int _imopVarPre288;
                    /*OUT: {
                    Reverse<--, 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    int _imopVarPre289;
                    /*OUT: {
                    Reverse<--, 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    int _imopVarPre290;
                    /*OUT: {
                    Reverse<--, 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    _imopVarPre288 = grid_points[0] == 162;
                    /*OUT: {
                    Reverse<--, 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    if (_imopVarPre288) {
                        /*OUT: {
                        Reverse<--, 10413_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        _imopVarPre289 = grid_points[1] == 162;
                        /*OUT: {
                        Reverse<--, 10413_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        if (_imopVarPre289) {
                            /*OUT: {
                            Reverse<--, 10417_0; 10413_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                            _imopVarPre290 = grid_points[2] == 162;
                            /*OUT: {
                            Reverse<--, 10417_0; 10413_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                            if (_imopVarPre290) {
                                /*OUT: {
                                Reverse<--, 10421_0; 10417_0; 10413_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                                _imopVarPre290 = no_time_steps == 200;
                            }
                            /*OUT: {
                            Reverse<--, 10417_0; 10413_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                            _imopVarPre289 = _imopVarPre290;
                        }
                        /*OUT: {
                        Reverse<--, 10413_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        _imopVarPre288 = _imopVarPre289;
                    }
                    /*OUT: {
                    Reverse<--, 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                    if (_imopVarPre288) {
                        /*OUT: {
                        Reverse<--, 10428_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        *class = 'C';
                        /*OUT: {
                        Reverse<--, 10428_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        dtref = 1.0e-4;
                        /*OUT: {
                        Reverse<--, 10428_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        xcrref[0] = 0.62398116551764615e+04;
                        /*OUT: {
                        Reverse<--, 10428_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        xcrref[1] = 0.50793239190423964e+03;
                        /*OUT: {
                        Reverse<--, 10428_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        xcrref[2] = 0.15423530093013596e+04;
                        /*OUT: {
                        Reverse<--, 10428_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        xcrref[3] = 0.13302387929291190e+04;
                        /*OUT: {
                        Reverse<--, 10428_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        xcrref[4] = 0.11604087428436455e+05;
                        /*OUT: {
                        Reverse<--, 10428_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        xceref[0] = 0.16462008369091265e+03;
                        /*OUT: {
                        Reverse<--, 10428_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        xceref[1] = 0.11497107903824313e+02;
                        /*OUT: {
                        Reverse<--, 10428_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        xceref[2] = 0.41207446207461508e+02;
                        /*OUT: {
                        Reverse<--, 10428_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        xceref[3] = 0.37087651059694167e+02;
                        /*OUT: {
                        Reverse<--, 10428_0; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        xceref[4] = 0.36211053051841265e+03;
                    } else {
                        /*OUT: {
                        Reverse<--, 10428_1; 10372_1; 10316_1; 10260_1; 10204_1; 10175_1; 10164_1;>}*/
                        *verified = 0;
                    }
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 10175_1; 10164_1;>}*/
    /*OUT: {
    Reverse<--, 10175_1; 10164_1;>}*/
    /*OUT: {
    Reverse<--, 10466_0; 10175_1; 10164_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 10466_0; 10175_1; 10164_1;>}*/
        double _imopVarPre292;
        /*OUT: {
        Reverse<--, 10466_0; 10175_1; 10164_1;>}*/
        double _imopVarPre293;
        /*OUT: {
        Reverse<--, 10466_0; 10175_1; 10164_1;>}*/
        _imopVarPre292 = (xcr[m] - xcrref[m]) / xcrref[m];
        /*OUT: {
        Reverse<--, 10466_0; 10175_1; 10164_1;>}*/
        _imopVarPre293 = fabs(_imopVarPre292);
        /*OUT: {
        Reverse<--, 10466_0; 10175_1; 10164_1;>}*/
        /*OUT: {
        Reverse<--, 10466_0; 10175_1; 10164_1;>}*/
        xcrdif[m] = _imopVarPre293;
        /*OUT: {
        Reverse<--, 10466_0; 10175_1; 10164_1;>}*/
        double _imopVarPre295;
        /*OUT: {
        Reverse<--, 10466_0; 10175_1; 10164_1;>}*/
        double _imopVarPre296;
        /*OUT: {
        Reverse<--, 10466_0; 10175_1; 10164_1;>}*/
        _imopVarPre295 = (xce[m] - xceref[m]) / xceref[m];
        /*OUT: {
        Reverse<--, 10466_0; 10175_1; 10164_1;>}*/
        _imopVarPre296 = fabs(_imopVarPre295);
        /*OUT: {
        Reverse<--, 10466_0; 10175_1; 10164_1;>}*/
        /*OUT: {
        Reverse<--, 10466_0; 10175_1; 10164_1;>}*/
        xcedif[m] = _imopVarPre296;
    }
    /*OUT: {
    Reverse<--, 10466_1; 10175_1; 10164_1;>}*/
    if (*class != 'U') {
        /*OUT: {
        Reverse<--, 10502_0; 10466_1; 10175_1; 10164_1;>}*/
        char _imopVarPre298;
        /*OUT: {
        Reverse<--, 10502_0; 10466_1; 10175_1; 10164_1;>}*/
        _imopVarPre298 = *class;
        /*OUT: {
        Reverse<--, 10502_0; 10466_1; 10175_1; 10164_1;>}*/
        printf(" Verification being performed for class %1c\n", _imopVarPre298);
        /*OUT: {
        Reverse<--, 10502_0; 10466_1; 10175_1; 10164_1;>}*/
        /*OUT: {
        Reverse<--, 10502_0; 10466_1; 10175_1; 10164_1;>}*/
        printf(" accuracy setting for epsilon = %20.13e\n", epsilon);
        /*OUT: {
        Reverse<--, 10502_0; 10466_1; 10175_1; 10164_1;>}*/
        /*OUT: {
        Reverse<--, 10502_0; 10466_1; 10175_1; 10164_1;>}*/
        double _imopVarPre301;
        /*OUT: {
        Reverse<--, 10502_0; 10466_1; 10175_1; 10164_1;>}*/
        double _imopVarPre302;
        /*OUT: {
        Reverse<--, 10502_0; 10466_1; 10175_1; 10164_1;>}*/
        _imopVarPre301 = dt - dtref;
        /*OUT: {
        Reverse<--, 10502_0; 10466_1; 10175_1; 10164_1;>}*/
        _imopVarPre302 = fabs(_imopVarPre301);
        /*OUT: {
        Reverse<--, 10502_0; 10466_1; 10175_1; 10164_1;>}*/
        /*OUT: {
        Reverse<--, 10502_0; 10466_1; 10175_1; 10164_1;>}*/
        if (_imopVarPre302 > epsilon) {
            /*OUT: {
            Reverse<--, 10526_0; 10502_0; 10466_1; 10175_1; 10164_1;>}*/
            *verified = 0;
            /*OUT: {
            Reverse<--, 10526_0; 10502_0; 10466_1; 10175_1; 10164_1;>}*/
            *class = 'U';
            /*OUT: {
            Reverse<--, 10526_0; 10502_0; 10466_1; 10175_1; 10164_1;>}*/
            printf(" DT does not match the reference value of %15.8e\n", dtref);
            /*OUT: {
            Reverse<--, 10526_0; 10502_0; 10466_1; 10175_1; 10164_1;>}*/
        }
    } else {
        /*OUT: {
        Reverse<--, 10502_1; 10466_1; 10175_1; 10164_1;>}*/
        printf(" Unknown class\n");
        /*OUT: {
        Reverse<--, 10502_1; 10466_1; 10175_1; 10164_1;>}*/
    }
    /*OUT: {
    Reverse<--, 10466_1; 10175_1; 10164_1;>}*/
    if (*class != 'U') {
        /*OUT: {
        Reverse<--, 10541_0; 10466_1; 10175_1; 10164_1;>}*/
        printf(" Comparison of RMS-norms of residual\n");
        /*OUT: {
        Reverse<--, 10541_0; 10466_1; 10175_1; 10164_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 10541_1; 10466_1; 10175_1; 10164_1;>}*/
        printf(" RMS-norms of residual\n");
        /*OUT: {
        Reverse<--, 10541_1; 10466_1; 10175_1; 10164_1;>}*/
    }
    /*OUT: {
    Reverse<--, 10466_1; 10175_1; 10164_1;>}*/
    /*OUT: {
    Reverse<--, 10466_1; 10175_1; 10164_1;>}*/
    /*OUT: {
    Reverse<--, 10553_0; 10466_1; 10175_1; 10164_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 10553_0; 10466_1; 10175_1; 10164_1;>}*/
        if (*class == 'U') {
            /*OUT: {
            Reverse<--, 10555_0; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
            double _imopVarPre304;
            /*OUT: {
            Reverse<--, 10555_0; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
            _imopVarPre304 = xcr[m];
            /*OUT: {
            Reverse<--, 10555_0; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
            printf("          %2d%20.13e\n", m, _imopVarPre304);
            /*OUT: {
            Reverse<--, 10555_0; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
            if (xcrdif[m] > epsilon) {
                /*OUT: {
                Reverse<--, 10566_0; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                *verified = 0;
                /*OUT: {
                Reverse<--, 10566_0; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                double _imopVarPre308;
                /*OUT: {
                Reverse<--, 10566_0; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                double _imopVarPre309;
                /*OUT: {
                Reverse<--, 10566_0; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                double _imopVarPre310;
                /*OUT: {
                Reverse<--, 10566_0; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                _imopVarPre308 = xcrdif[m];
                /*OUT: {
                Reverse<--, 10566_0; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                _imopVarPre309 = xcrref[m];
                /*OUT: {
                Reverse<--, 10566_0; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                _imopVarPre310 = xcr[m];
                /*OUT: {
                Reverse<--, 10566_0; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre310, _imopVarPre309, _imopVarPre308);
                /*OUT: {
                Reverse<--, 10566_0; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
            } else {
                /*OUT: {
                Reverse<--, 10566_1; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                double _imopVarPre314;
                /*OUT: {
                Reverse<--, 10566_1; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                double _imopVarPre315;
                /*OUT: {
                Reverse<--, 10566_1; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                double _imopVarPre316;
                /*OUT: {
                Reverse<--, 10566_1; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                _imopVarPre314 = xcrdif[m];
                /*OUT: {
                Reverse<--, 10566_1; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                _imopVarPre315 = xcrref[m];
                /*OUT: {
                Reverse<--, 10566_1; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                _imopVarPre316 = xcr[m];
                /*OUT: {
                Reverse<--, 10566_1; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre316, _imopVarPre315, _imopVarPre314);
                /*OUT: {
                Reverse<--, 10566_1; 10555_1; 10553_0; 10466_1; 10175_1; 10164_1;>}*/
            }
        }
    }
    /*OUT: {
    Reverse<--, 10553_1; 10466_1; 10175_1; 10164_1;>}*/
    if (*class != 'U') {
        /*OUT: {
        Reverse<--, 10603_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
        printf(" Comparison of RMS-norms of solution error\n");
        /*OUT: {
        Reverse<--, 10603_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 10603_1; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
        printf(" RMS-norms of solution error\n");
        /*OUT: {
        Reverse<--, 10603_1; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
    }
    /*OUT: {
    Reverse<--, 10553_1; 10466_1; 10175_1; 10164_1;>}*/
    /*OUT: {
    Reverse<--, 10553_1; 10466_1; 10175_1; 10164_1;>}*/
    /*OUT: {
    Reverse<--, 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
        if (*class == 'U') {
            /*OUT: {
            Reverse<--, 10617_0; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
            double _imopVarPre318;
            /*OUT: {
            Reverse<--, 10617_0; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
            _imopVarPre318 = xce[m];
            /*OUT: {
            Reverse<--, 10617_0; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
            printf("          %2d%20.13e\n", m, _imopVarPre318);
            /*OUT: {
            Reverse<--, 10617_0; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
            if (xcedif[m] > epsilon) {
                /*OUT: {
                Reverse<--, 10628_0; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                *verified = 0;
                /*OUT: {
                Reverse<--, 10628_0; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                double _imopVarPre322;
                /*OUT: {
                Reverse<--, 10628_0; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                double _imopVarPre323;
                /*OUT: {
                Reverse<--, 10628_0; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                double _imopVarPre324;
                /*OUT: {
                Reverse<--, 10628_0; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                _imopVarPre322 = xcedif[m];
                /*OUT: {
                Reverse<--, 10628_0; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                _imopVarPre323 = xceref[m];
                /*OUT: {
                Reverse<--, 10628_0; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                _imopVarPre324 = xce[m];
                /*OUT: {
                Reverse<--, 10628_0; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre324, _imopVarPre323, _imopVarPre322);
                /*OUT: {
                Reverse<--, 10628_0; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
            } else {
                /*OUT: {
                Reverse<--, 10628_1; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                double _imopVarPre328;
                /*OUT: {
                Reverse<--, 10628_1; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                double _imopVarPre329;
                /*OUT: {
                Reverse<--, 10628_1; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                double _imopVarPre330;
                /*OUT: {
                Reverse<--, 10628_1; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                _imopVarPre328 = xcedif[m];
                /*OUT: {
                Reverse<--, 10628_1; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                _imopVarPre329 = xceref[m];
                /*OUT: {
                Reverse<--, 10628_1; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                _imopVarPre330 = xce[m];
                /*OUT: {
                Reverse<--, 10628_1; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre330, _imopVarPre329, _imopVarPre328);
                /*OUT: {
                Reverse<--, 10628_1; 10617_1; 10615_0; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
            }
        }
    }
    /*OUT: {
    Reverse<--, 10615_1; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
    if (*class == 'U') {
        /*OUT: {
        Reverse<--, 10665_0; 10615_1; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
        printf(" No reference values provided\n");
        /*OUT: {
        Reverse<--, 10665_0; 10615_1; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
        /*OUT: {
        Reverse<--, 10665_0; 10615_1; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
        printf(" No verification performed\n");
        /*OUT: {
        Reverse<--, 10665_0; 10615_1; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 10665_1; 10615_1; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
        if (*verified == 1) {
            /*OUT: {
            Reverse<--, 10676_0; 10665_1; 10615_1; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
            printf(" Verification Successful\n");
            /*OUT: {
            Reverse<--, 10676_0; 10665_1; 10615_1; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 10676_1; 10665_1; 10615_1; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
            printf(" Verification failed\n");
            /*OUT: {
            Reverse<--, 10676_1; 10665_1; 10615_1; 10553_1; 10466_1; 10175_1; 10164_1;>}*/
        }
    }
}
static void x_solve() {
    /*OUT: {
    Reverse<--,>}*/
    lhsx();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    x_solve_cell();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    x_backsubstitute();
    /*OUT: {
    Reverse<--,>}*/
}
static void x_backsubstitute() {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    int n;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>
    Reverse<10747,>}*/
    /*OUT: {
    Reverse<10747,>}*/
    for (i = grid_points[0] - 2; i >= 0; i--) {
#pragma omp for nowait
        /*OUT: {
        Reverse<--, 10709_0;>
        Reverse<10747, 10709_0;>}*/
        /*OUT: {
        Reverse<--, 10709_0;>
        Reverse<10747, 10709_0;>}*/
        /*OUT: {
        Reverse<--, 10719_1; 10709_0;>
        Reverse<10747, 10719_1; 10709_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<--, 10709_0;>
            Reverse<10747, 10709_0;>}*/
            /*OUT: {
            Reverse<--, 10709_0;>
            Reverse<10747, 10709_0;>}*/
            /*OUT: {
            Reverse<--, 10722_1; 10719_0; 10709_0;>
            Reverse<10747, 10722_1; 10719_0; 10709_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<--, 10719_0; 10709_0;>
                Reverse<10747, 10719_0; 10709_0;>}*/
                /*OUT: {
                Reverse<--, 10719_0; 10709_0;>
                Reverse<10747, 10719_0; 10709_0;>}*/
                /*OUT: {
                Reverse<--, 10725_1; 10722_0; 10719_0; 10709_0;>
                Reverse<10747, 10725_1; 10722_0; 10719_0; 10709_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 10722_0; 10719_0; 10709_0;>
                    Reverse<10747, 10722_0; 10719_0; 10709_0;>}*/
                    /*OUT: {
                    Reverse<--, 10722_0; 10719_0; 10709_0;>
                    Reverse<10747, 10722_0; 10719_0; 10709_0;>}*/
                    /*OUT: {
                    Reverse<--, 10725_0; 10722_0; 10719_0; 10709_0;>
                    Reverse<10747, 10725_0; 10722_0; 10719_0; 10709_0;>}*/
                    for (n = 0; n < 5; n++) {
                        /*OUT: {
                        Reverse<--, 10725_0; 10722_0; 10719_0; 10709_0;>
                        Reverse<10747, 10725_0; 10722_0; 10719_0; 10709_0;>}*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - lhs[i][j][k][2][m][n] * rhs[i + 1][j][k][n];
                    }
                }
            }
        }
        /*OUT: {
        Reverse<--, 10709_0;>
        Reverse<10747, 10709_0;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<10747,>}*/
#pragma omp barrier
    }
}
static void x_solve_cell() {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int isize;
    /*OUT: {
    Reverse<--,>}*/
    isize = grid_points[0] - 1;
#pragma omp for nowait
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 10763_1;>}*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 10763_0;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<--, 10763_0;>}*/
            double *_imopVarPre334;
            /*OUT: {
            Reverse<--, 10763_0;>}*/
            double ( *_imopVarPre335 )[5];
            /*OUT: {
            Reverse<--, 10763_0;>}*/
            double ( *_imopVarPre336 )[5];
            /*OUT: {
            Reverse<--, 10763_0;>}*/
            _imopVarPre334 = rhs[0][j][k];
            /*OUT: {
            Reverse<--, 10763_0;>}*/
            _imopVarPre335 = lhs[0][j][k][2];
            /*OUT: {
            Reverse<--, 10763_0;>}*/
            _imopVarPre336 = lhs[0][j][k][1];
            /*OUT: {
            Reverse<--, 10763_0;>}*/
            binvcrhs(_imopVarPre336, _imopVarPre335, _imopVarPre334);
            /*OUT: {
            Reverse<--, 10763_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<10790,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<10790,>}*/
    /*OUT: {
    Reverse<10790,>
    Reverse<10879,>}*/
    /*OUT: {
    Reverse<10879,>}*/
    for (i = 1; i < isize; i++) {
#pragma omp for nowait
        /*OUT: {
        Reverse<10790, 10792_0;>
        Reverse<10879, 10792_0;>}*/
        /*OUT: {
        Reverse<10790, 10792_0;>
        Reverse<10879, 10792_0;>}*/
        /*OUT: {
        Reverse<10790, 10802_1; 10792_0;>
        Reverse<10879, 10802_1; 10792_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<10790, 10792_0;>
            Reverse<10879, 10792_0;>}*/
            /*OUT: {
            Reverse<10790, 10792_0;>
            Reverse<10879, 10792_0;>}*/
            /*OUT: {
            Reverse<10790, 10802_0; 10792_0;>
            Reverse<10879, 10802_0; 10792_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                double *_imopVarPre340;
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                double *_imopVarPre341;
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                double ( *_imopVarPre342 )[5];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                _imopVarPre340 = rhs[i][j][k];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                _imopVarPre341 = rhs[i - 1][j][k];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                _imopVarPre342 = lhs[i][j][k][0];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                matvec_sub(_imopVarPre342, _imopVarPre341, _imopVarPre340);
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                double ( *_imopVarPre346 )[5];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                double ( *_imopVarPre347 )[5];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                double ( *_imopVarPre348 )[5];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                _imopVarPre346 = lhs[i][j][k][1];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                _imopVarPre347 = lhs[i - 1][j][k][2];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                _imopVarPre348 = lhs[i][j][k][0];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                matmul_sub(_imopVarPre348, _imopVarPre347, _imopVarPre346);
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                double *_imopVarPre352;
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                double ( *_imopVarPre353 )[5];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                double ( *_imopVarPre354 )[5];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                _imopVarPre352 = rhs[i][j][k];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                _imopVarPre353 = lhs[i][j][k][2];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                _imopVarPre354 = lhs[i][j][k][1];
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
                binvcrhs(_imopVarPre354, _imopVarPre353, _imopVarPre352);
                /*OUT: {
                Reverse<10790, 10802_0; 10792_0;>
                Reverse<10879, 10802_0; 10792_0;>}*/
            }
        }
        /*OUT: {
        Reverse<10790, 10792_0;>
        Reverse<10879, 10792_0;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<10879,>}*/
#pragma omp barrier
    }
#pragma omp for nowait
    /*OUT: {
    Reverse<10790, 10792_1;>
    Reverse<10879, 10792_1;>}*/
    /*OUT: {
    Reverse<10790, 10792_1;>
    Reverse<10879, 10792_1;>}*/
    /*OUT: {
    Reverse<10790, 10888_1; 10792_1;>
    Reverse<10879, 10888_1; 10792_1;>}*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: {
        Reverse<10790, 10792_1;>
        Reverse<10879, 10792_1;>}*/
        /*OUT: {
        Reverse<10790, 10792_1;>
        Reverse<10879, 10792_1;>}*/
        /*OUT: {
        Reverse<10790, 10888_0; 10792_1;>
        Reverse<10879, 10888_0; 10792_1;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            double *_imopVarPre358;
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            double *_imopVarPre359;
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            double ( *_imopVarPre360 )[5];
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            _imopVarPre358 = rhs[isize][j][k];
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            _imopVarPre359 = rhs[isize - 1][j][k];
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            _imopVarPre360 = lhs[isize][j][k][0];
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            matvec_sub(_imopVarPre360, _imopVarPre359, _imopVarPre358);
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            double ( *_imopVarPre364 )[5];
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            double ( *_imopVarPre365 )[5];
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            double ( *_imopVarPre366 )[5];
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            _imopVarPre364 = lhs[isize][j][k][1];
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            _imopVarPre365 = lhs[isize - 1][j][k][2];
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            _imopVarPre366 = lhs[isize][j][k][0];
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            matmul_sub(_imopVarPre366, _imopVarPre365, _imopVarPre364);
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            double *_imopVarPre369;
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            double ( *_imopVarPre370 )[5];
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            _imopVarPre369 = rhs[i][j][k];
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            _imopVarPre370 = lhs[i][j][k][1];
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
            binvrhs(_imopVarPre370, _imopVarPre369);
            /*OUT: {
            Reverse<10790, 10888_0; 10792_1;>
            Reverse<10879, 10888_0; 10792_1;>}*/
        }
    }
    /*OUT: {
    Reverse<10790, 10792_1;>
    Reverse<10879, 10792_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<10958,>}*/
#pragma omp barrier
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void matvec_sub(double ablock[5][5], double avec[5] , double bvec[5]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 10964_0;>}*/
    for (i = 0; i < 5; i++) {
        /*OUT: {
        Reverse<--, 10964_0;>}*/
        bvec[i] = bvec[i] - ablock[i][0] * avec[0] - ablock[i][1] * avec[1] - ablock[i][2] * avec[2] - ablock[i][3] * avec[3] - ablock[i][4] * avec[4];
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void matmul_sub(double ablock[5][5], double bblock[5][5] , double cblock[5][5]) {
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 10990_0;>}*/
    for (j = 0; j < 5; j++) {
        /*OUT: {
        Reverse<--, 10990_0;>}*/
        cblock[0][j] = cblock[0][j] - ablock[0][0] * bblock[0][j] - ablock[0][1] * bblock[1][j] - ablock[0][2] * bblock[2][j] - ablock[0][3] * bblock[3][j] - ablock[0][4] * bblock[4][j];
        /*OUT: {
        Reverse<--, 10990_0;>}*/
        cblock[1][j] = cblock[1][j] - ablock[1][0] * bblock[0][j] - ablock[1][1] * bblock[1][j] - ablock[1][2] * bblock[2][j] - ablock[1][3] * bblock[3][j] - ablock[1][4] * bblock[4][j];
        /*OUT: {
        Reverse<--, 10990_0;>}*/
        cblock[2][j] = cblock[2][j] - ablock[2][0] * bblock[0][j] - ablock[2][1] * bblock[1][j] - ablock[2][2] * bblock[2][j] - ablock[2][3] * bblock[3][j] - ablock[2][4] * bblock[4][j];
        /*OUT: {
        Reverse<--, 10990_0;>}*/
        cblock[3][j] = cblock[3][j] - ablock[3][0] * bblock[0][j] - ablock[3][1] * bblock[1][j] - ablock[3][2] * bblock[2][j] - ablock[3][3] * bblock[3][j] - ablock[3][4] * bblock[4][j];
        /*OUT: {
        Reverse<--, 10990_0;>}*/
        cblock[4][j] = cblock[4][j] - ablock[4][0] * bblock[0][j] - ablock[4][1] * bblock[1][j] - ablock[4][2] * bblock[2][j] - ablock[4][3] * bblock[3][j] - ablock[4][4] * bblock[4][j];
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void binvcrhs(double lhs[5][5], double c[5][5] , double r[5]) {
    /*OUT: {
    Reverse<--,>}*/
    double pivot;
    /*OUT: {
    Reverse<--,>}*/
    double coeff;
    /*OUT: {
    Reverse<--,>}*/
    pivot = 1.00 / lhs[0][0];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][1] = lhs[0][1] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][2] = lhs[0][2] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][3] = lhs[0][3] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][4] = lhs[0][4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[0][0] = c[0][0] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[0][1] = c[0][1] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[0][2] = c[0][2] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[0][3] = c[0][3] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[0][4] = c[0][4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    r[0] = r[0] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[1][0];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][1] = lhs[1][1] - coeff * lhs[0][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][2] = lhs[1][2] - coeff * lhs[0][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[0][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[0][4];
    /*OUT: {
    Reverse<--,>}*/
    c[1][0] = c[1][0] - coeff * c[0][0];
    /*OUT: {
    Reverse<--,>}*/
    c[1][1] = c[1][1] - coeff * c[0][1];
    /*OUT: {
    Reverse<--,>}*/
    c[1][2] = c[1][2] - coeff * c[0][2];
    /*OUT: {
    Reverse<--,>}*/
    c[1][3] = c[1][3] - coeff * c[0][3];
    /*OUT: {
    Reverse<--,>}*/
    c[1][4] = c[1][4] - coeff * c[0][4];
    /*OUT: {
    Reverse<--,>}*/
    r[1] = r[1] - coeff * r[0];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[2][0];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][1] = lhs[2][1] - coeff * lhs[0][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[0][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[0][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[0][4];
    /*OUT: {
    Reverse<--,>}*/
    c[2][0] = c[2][0] - coeff * c[0][0];
    /*OUT: {
    Reverse<--,>}*/
    c[2][1] = c[2][1] - coeff * c[0][1];
    /*OUT: {
    Reverse<--,>}*/
    c[2][2] = c[2][2] - coeff * c[0][2];
    /*OUT: {
    Reverse<--,>}*/
    c[2][3] = c[2][3] - coeff * c[0][3];
    /*OUT: {
    Reverse<--,>}*/
    c[2][4] = c[2][4] - coeff * c[0][4];
    /*OUT: {
    Reverse<--,>}*/
    r[2] = r[2] - coeff * r[0];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[3][0];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][1] = lhs[3][1] - coeff * lhs[0][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[0][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[0][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[0][4];
    /*OUT: {
    Reverse<--,>}*/
    c[3][0] = c[3][0] - coeff * c[0][0];
    /*OUT: {
    Reverse<--,>}*/
    c[3][1] = c[3][1] - coeff * c[0][1];
    /*OUT: {
    Reverse<--,>}*/
    c[3][2] = c[3][2] - coeff * c[0][2];
    /*OUT: {
    Reverse<--,>}*/
    c[3][3] = c[3][3] - coeff * c[0][3];
    /*OUT: {
    Reverse<--,>}*/
    c[3][4] = c[3][4] - coeff * c[0][4];
    /*OUT: {
    Reverse<--,>}*/
    r[3] = r[3] - coeff * r[0];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[4][0];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][1] = lhs[4][1] - coeff * lhs[0][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[0][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[0][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[0][4];
    /*OUT: {
    Reverse<--,>}*/
    c[4][0] = c[4][0] - coeff * c[0][0];
    /*OUT: {
    Reverse<--,>}*/
    c[4][1] = c[4][1] - coeff * c[0][1];
    /*OUT: {
    Reverse<--,>}*/
    c[4][2] = c[4][2] - coeff * c[0][2];
    /*OUT: {
    Reverse<--,>}*/
    c[4][3] = c[4][3] - coeff * c[0][3];
    /*OUT: {
    Reverse<--,>}*/
    c[4][4] = c[4][4] - coeff * c[0][4];
    /*OUT: {
    Reverse<--,>}*/
    r[4] = r[4] - coeff * r[0];
    /*OUT: {
    Reverse<--,>}*/
    pivot = 1.00 / lhs[1][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][2] = lhs[1][2] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][3] = lhs[1][3] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][4] = lhs[1][4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[1][0] = c[1][0] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[1][1] = c[1][1] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[1][2] = c[1][2] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[1][3] = c[1][3] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[1][4] = c[1][4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    r[1] = r[1] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[0][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][2] = lhs[0][2] - coeff * lhs[1][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[1][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[1][4];
    /*OUT: {
    Reverse<--,>}*/
    c[0][0] = c[0][0] - coeff * c[1][0];
    /*OUT: {
    Reverse<--,>}*/
    c[0][1] = c[0][1] - coeff * c[1][1];
    /*OUT: {
    Reverse<--,>}*/
    c[0][2] = c[0][2] - coeff * c[1][2];
    /*OUT: {
    Reverse<--,>}*/
    c[0][3] = c[0][3] - coeff * c[1][3];
    /*OUT: {
    Reverse<--,>}*/
    c[0][4] = c[0][4] - coeff * c[1][4];
    /*OUT: {
    Reverse<--,>}*/
    r[0] = r[0] - coeff * r[1];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[2][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[1][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[1][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[1][4];
    /*OUT: {
    Reverse<--,>}*/
    c[2][0] = c[2][0] - coeff * c[1][0];
    /*OUT: {
    Reverse<--,>}*/
    c[2][1] = c[2][1] - coeff * c[1][1];
    /*OUT: {
    Reverse<--,>}*/
    c[2][2] = c[2][2] - coeff * c[1][2];
    /*OUT: {
    Reverse<--,>}*/
    c[2][3] = c[2][3] - coeff * c[1][3];
    /*OUT: {
    Reverse<--,>}*/
    c[2][4] = c[2][4] - coeff * c[1][4];
    /*OUT: {
    Reverse<--,>}*/
    r[2] = r[2] - coeff * r[1];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[3][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[1][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[1][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[1][4];
    /*OUT: {
    Reverse<--,>}*/
    c[3][0] = c[3][0] - coeff * c[1][0];
    /*OUT: {
    Reverse<--,>}*/
    c[3][1] = c[3][1] - coeff * c[1][1];
    /*OUT: {
    Reverse<--,>}*/
    c[3][2] = c[3][2] - coeff * c[1][2];
    /*OUT: {
    Reverse<--,>}*/
    c[3][3] = c[3][3] - coeff * c[1][3];
    /*OUT: {
    Reverse<--,>}*/
    c[3][4] = c[3][4] - coeff * c[1][4];
    /*OUT: {
    Reverse<--,>}*/
    r[3] = r[3] - coeff * r[1];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[4][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[1][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[1][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[1][4];
    /*OUT: {
    Reverse<--,>}*/
    c[4][0] = c[4][0] - coeff * c[1][0];
    /*OUT: {
    Reverse<--,>}*/
    c[4][1] = c[4][1] - coeff * c[1][1];
    /*OUT: {
    Reverse<--,>}*/
    c[4][2] = c[4][2] - coeff * c[1][2];
    /*OUT: {
    Reverse<--,>}*/
    c[4][3] = c[4][3] - coeff * c[1][3];
    /*OUT: {
    Reverse<--,>}*/
    c[4][4] = c[4][4] - coeff * c[1][4];
    /*OUT: {
    Reverse<--,>}*/
    r[4] = r[4] - coeff * r[1];
    /*OUT: {
    Reverse<--,>}*/
    pivot = 1.00 / lhs[2][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][3] = lhs[2][3] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][4] = lhs[2][4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[2][0] = c[2][0] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[2][1] = c[2][1] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[2][2] = c[2][2] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[2][3] = c[2][3] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[2][4] = c[2][4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    r[2] = r[2] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[0][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[2][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[2][4];
    /*OUT: {
    Reverse<--,>}*/
    c[0][0] = c[0][0] - coeff * c[2][0];
    /*OUT: {
    Reverse<--,>}*/
    c[0][1] = c[0][1] - coeff * c[2][1];
    /*OUT: {
    Reverse<--,>}*/
    c[0][2] = c[0][2] - coeff * c[2][2];
    /*OUT: {
    Reverse<--,>}*/
    c[0][3] = c[0][3] - coeff * c[2][3];
    /*OUT: {
    Reverse<--,>}*/
    c[0][4] = c[0][4] - coeff * c[2][4];
    /*OUT: {
    Reverse<--,>}*/
    r[0] = r[0] - coeff * r[2];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[1][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[2][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[2][4];
    /*OUT: {
    Reverse<--,>}*/
    c[1][0] = c[1][0] - coeff * c[2][0];
    /*OUT: {
    Reverse<--,>}*/
    c[1][1] = c[1][1] - coeff * c[2][1];
    /*OUT: {
    Reverse<--,>}*/
    c[1][2] = c[1][2] - coeff * c[2][2];
    /*OUT: {
    Reverse<--,>}*/
    c[1][3] = c[1][3] - coeff * c[2][3];
    /*OUT: {
    Reverse<--,>}*/
    c[1][4] = c[1][4] - coeff * c[2][4];
    /*OUT: {
    Reverse<--,>}*/
    r[1] = r[1] - coeff * r[2];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[3][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[2][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[2][4];
    /*OUT: {
    Reverse<--,>}*/
    c[3][0] = c[3][0] - coeff * c[2][0];
    /*OUT: {
    Reverse<--,>}*/
    c[3][1] = c[3][1] - coeff * c[2][1];
    /*OUT: {
    Reverse<--,>}*/
    c[3][2] = c[3][2] - coeff * c[2][2];
    /*OUT: {
    Reverse<--,>}*/
    c[3][3] = c[3][3] - coeff * c[2][3];
    /*OUT: {
    Reverse<--,>}*/
    c[3][4] = c[3][4] - coeff * c[2][4];
    /*OUT: {
    Reverse<--,>}*/
    r[3] = r[3] - coeff * r[2];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[4][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[2][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[2][4];
    /*OUT: {
    Reverse<--,>}*/
    c[4][0] = c[4][0] - coeff * c[2][0];
    /*OUT: {
    Reverse<--,>}*/
    c[4][1] = c[4][1] - coeff * c[2][1];
    /*OUT: {
    Reverse<--,>}*/
    c[4][2] = c[4][2] - coeff * c[2][2];
    /*OUT: {
    Reverse<--,>}*/
    c[4][3] = c[4][3] - coeff * c[2][3];
    /*OUT: {
    Reverse<--,>}*/
    c[4][4] = c[4][4] - coeff * c[2][4];
    /*OUT: {
    Reverse<--,>}*/
    r[4] = r[4] - coeff * r[2];
    /*OUT: {
    Reverse<--,>}*/
    pivot = 1.00 / lhs[3][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][4] = lhs[3][4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[3][0] = c[3][0] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[3][1] = c[3][1] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[3][2] = c[3][2] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[3][3] = c[3][3] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[3][4] = c[3][4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    r[3] = r[3] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[0][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[3][4];
    /*OUT: {
    Reverse<--,>}*/
    c[0][0] = c[0][0] - coeff * c[3][0];
    /*OUT: {
    Reverse<--,>}*/
    c[0][1] = c[0][1] - coeff * c[3][1];
    /*OUT: {
    Reverse<--,>}*/
    c[0][2] = c[0][2] - coeff * c[3][2];
    /*OUT: {
    Reverse<--,>}*/
    c[0][3] = c[0][3] - coeff * c[3][3];
    /*OUT: {
    Reverse<--,>}*/
    c[0][4] = c[0][4] - coeff * c[3][4];
    /*OUT: {
    Reverse<--,>}*/
    r[0] = r[0] - coeff * r[3];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[1][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[3][4];
    /*OUT: {
    Reverse<--,>}*/
    c[1][0] = c[1][0] - coeff * c[3][0];
    /*OUT: {
    Reverse<--,>}*/
    c[1][1] = c[1][1] - coeff * c[3][1];
    /*OUT: {
    Reverse<--,>}*/
    c[1][2] = c[1][2] - coeff * c[3][2];
    /*OUT: {
    Reverse<--,>}*/
    c[1][3] = c[1][3] - coeff * c[3][3];
    /*OUT: {
    Reverse<--,>}*/
    c[1][4] = c[1][4] - coeff * c[3][4];
    /*OUT: {
    Reverse<--,>}*/
    r[1] = r[1] - coeff * r[3];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[2][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[3][4];
    /*OUT: {
    Reverse<--,>}*/
    c[2][0] = c[2][0] - coeff * c[3][0];
    /*OUT: {
    Reverse<--,>}*/
    c[2][1] = c[2][1] - coeff * c[3][1];
    /*OUT: {
    Reverse<--,>}*/
    c[2][2] = c[2][2] - coeff * c[3][2];
    /*OUT: {
    Reverse<--,>}*/
    c[2][3] = c[2][3] - coeff * c[3][3];
    /*OUT: {
    Reverse<--,>}*/
    c[2][4] = c[2][4] - coeff * c[3][4];
    /*OUT: {
    Reverse<--,>}*/
    r[2] = r[2] - coeff * r[3];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[4][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[3][4];
    /*OUT: {
    Reverse<--,>}*/
    c[4][0] = c[4][0] - coeff * c[3][0];
    /*OUT: {
    Reverse<--,>}*/
    c[4][1] = c[4][1] - coeff * c[3][1];
    /*OUT: {
    Reverse<--,>}*/
    c[4][2] = c[4][2] - coeff * c[3][2];
    /*OUT: {
    Reverse<--,>}*/
    c[4][3] = c[4][3] - coeff * c[3][3];
    /*OUT: {
    Reverse<--,>}*/
    c[4][4] = c[4][4] - coeff * c[3][4];
    /*OUT: {
    Reverse<--,>}*/
    r[4] = r[4] - coeff * r[3];
    /*OUT: {
    Reverse<--,>}*/
    pivot = 1.00 / lhs[4][4];
    /*OUT: {
    Reverse<--,>}*/
    c[4][0] = c[4][0] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[4][1] = c[4][1] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[4][2] = c[4][2] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[4][3] = c[4][3] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    c[4][4] = c[4][4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    r[4] = r[4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[0][4];
    /*OUT: {
    Reverse<--,>}*/
    c[0][0] = c[0][0] - coeff * c[4][0];
    /*OUT: {
    Reverse<--,>}*/
    c[0][1] = c[0][1] - coeff * c[4][1];
    /*OUT: {
    Reverse<--,>}*/
    c[0][2] = c[0][2] - coeff * c[4][2];
    /*OUT: {
    Reverse<--,>}*/
    c[0][3] = c[0][3] - coeff * c[4][3];
    /*OUT: {
    Reverse<--,>}*/
    c[0][4] = c[0][4] - coeff * c[4][4];
    /*OUT: {
    Reverse<--,>}*/
    r[0] = r[0] - coeff * r[4];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[1][4];
    /*OUT: {
    Reverse<--,>}*/
    c[1][0] = c[1][0] - coeff * c[4][0];
    /*OUT: {
    Reverse<--,>}*/
    c[1][1] = c[1][1] - coeff * c[4][1];
    /*OUT: {
    Reverse<--,>}*/
    c[1][2] = c[1][2] - coeff * c[4][2];
    /*OUT: {
    Reverse<--,>}*/
    c[1][3] = c[1][3] - coeff * c[4][3];
    /*OUT: {
    Reverse<--,>}*/
    c[1][4] = c[1][4] - coeff * c[4][4];
    /*OUT: {
    Reverse<--,>}*/
    r[1] = r[1] - coeff * r[4];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[2][4];
    /*OUT: {
    Reverse<--,>}*/
    c[2][0] = c[2][0] - coeff * c[4][0];
    /*OUT: {
    Reverse<--,>}*/
    c[2][1] = c[2][1] - coeff * c[4][1];
    /*OUT: {
    Reverse<--,>}*/
    c[2][2] = c[2][2] - coeff * c[4][2];
    /*OUT: {
    Reverse<--,>}*/
    c[2][3] = c[2][3] - coeff * c[4][3];
    /*OUT: {
    Reverse<--,>}*/
    c[2][4] = c[2][4] - coeff * c[4][4];
    /*OUT: {
    Reverse<--,>}*/
    r[2] = r[2] - coeff * r[4];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[3][4];
    /*OUT: {
    Reverse<--,>}*/
    c[3][0] = c[3][0] - coeff * c[4][0];
    /*OUT: {
    Reverse<--,>}*/
    c[3][1] = c[3][1] - coeff * c[4][1];
    /*OUT: {
    Reverse<--,>}*/
    c[3][2] = c[3][2] - coeff * c[4][2];
    /*OUT: {
    Reverse<--,>}*/
    c[3][3] = c[3][3] - coeff * c[4][3];
    /*OUT: {
    Reverse<--,>}*/
    c[3][4] = c[3][4] - coeff * c[4][4];
    /*OUT: {
    Reverse<--,>}*/
    r[3] = r[3] - coeff * r[4];
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void binvrhs(double lhs[5][5], double r[5]) {
    /*OUT: {
    Reverse<--,>}*/
    double pivot;
    /*OUT: {
    Reverse<--,>}*/
    double coeff;
    /*OUT: {
    Reverse<--,>}*/
    pivot = 1.00 / lhs[0][0];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][1] = lhs[0][1] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][2] = lhs[0][2] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][3] = lhs[0][3] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][4] = lhs[0][4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    r[0] = r[0] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[1][0];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][1] = lhs[1][1] - coeff * lhs[0][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][2] = lhs[1][2] - coeff * lhs[0][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[0][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[0][4];
    /*OUT: {
    Reverse<--,>}*/
    r[1] = r[1] - coeff * r[0];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[2][0];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][1] = lhs[2][1] - coeff * lhs[0][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[0][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[0][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[0][4];
    /*OUT: {
    Reverse<--,>}*/
    r[2] = r[2] - coeff * r[0];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[3][0];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][1] = lhs[3][1] - coeff * lhs[0][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[0][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[0][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[0][4];
    /*OUT: {
    Reverse<--,>}*/
    r[3] = r[3] - coeff * r[0];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[4][0];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][1] = lhs[4][1] - coeff * lhs[0][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[0][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[0][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[0][4];
    /*OUT: {
    Reverse<--,>}*/
    r[4] = r[4] - coeff * r[0];
    /*OUT: {
    Reverse<--,>}*/
    pivot = 1.00 / lhs[1][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][2] = lhs[1][2] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][3] = lhs[1][3] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][4] = lhs[1][4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    r[1] = r[1] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[0][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][2] = lhs[0][2] - coeff * lhs[1][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[1][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[1][4];
    /*OUT: {
    Reverse<--,>}*/
    r[0] = r[0] - coeff * r[1];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[2][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[1][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[1][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[1][4];
    /*OUT: {
    Reverse<--,>}*/
    r[2] = r[2] - coeff * r[1];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[3][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[1][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[1][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[1][4];
    /*OUT: {
    Reverse<--,>}*/
    r[3] = r[3] - coeff * r[1];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[4][1];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[1][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[1][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[1][4];
    /*OUT: {
    Reverse<--,>}*/
    r[4] = r[4] - coeff * r[1];
    /*OUT: {
    Reverse<--,>}*/
    pivot = 1.00 / lhs[2][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][3] = lhs[2][3] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][4] = lhs[2][4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    r[2] = r[2] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[0][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[2][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[2][4];
    /*OUT: {
    Reverse<--,>}*/
    r[0] = r[0] - coeff * r[2];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[1][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[2][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[2][4];
    /*OUT: {
    Reverse<--,>}*/
    r[1] = r[1] - coeff * r[2];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[3][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[2][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[2][4];
    /*OUT: {
    Reverse<--,>}*/
    r[3] = r[3] - coeff * r[2];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[4][2];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[2][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[2][4];
    /*OUT: {
    Reverse<--,>}*/
    r[4] = r[4] - coeff * r[2];
    /*OUT: {
    Reverse<--,>}*/
    pivot = 1.00 / lhs[3][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[3][4] = lhs[3][4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    r[3] = r[3] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[0][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[3][4];
    /*OUT: {
    Reverse<--,>}*/
    r[0] = r[0] - coeff * r[3];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[1][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[3][4];
    /*OUT: {
    Reverse<--,>}*/
    r[1] = r[1] - coeff * r[3];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[2][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[3][4];
    /*OUT: {
    Reverse<--,>}*/
    r[2] = r[2] - coeff * r[3];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[4][3];
    /*OUT: {
    Reverse<--,>}*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[3][4];
    /*OUT: {
    Reverse<--,>}*/
    r[4] = r[4] - coeff * r[3];
    /*OUT: {
    Reverse<--,>}*/
    pivot = 1.00 / lhs[4][4];
    /*OUT: {
    Reverse<--,>}*/
    r[4] = r[4] * pivot;
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[0][4];
    /*OUT: {
    Reverse<--,>}*/
    r[0] = r[0] - coeff * r[4];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[1][4];
    /*OUT: {
    Reverse<--,>}*/
    r[1] = r[1] - coeff * r[4];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[2][4];
    /*OUT: {
    Reverse<--,>}*/
    r[2] = r[2] - coeff * r[4];
    /*OUT: {
    Reverse<--,>}*/
    coeff = lhs[3][4];
    /*OUT: {
    Reverse<--,>}*/
    r[3] = r[3] - coeff * r[4];
}
static void y_solve() {
    /*OUT: {
    Reverse<--,>}*/
    lhsy();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    y_solve_cell();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    y_backsubstitute();
    /*OUT: {
    Reverse<--,>}*/
}
static void y_backsubstitute() {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    int n;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>
    Reverse<13341,>}*/
    /*OUT: {
    Reverse<13341,>}*/
    for (j = grid_points[1] - 2; j >= 0; j--) {
#pragma omp for nowait
        /*OUT: {
        Reverse<--, 13303_0;>
        Reverse<13341, 13303_0;>}*/
        /*OUT: {
        Reverse<--, 13303_0;>
        Reverse<13341, 13303_0;>}*/
        /*OUT: {
        Reverse<--, 13313_1; 13303_0;>
        Reverse<13341, 13313_1; 13303_0;>}*/
        for (i = 1; i < grid_points[0] - 1; i++) {
            /*OUT: {
            Reverse<--, 13303_0;>
            Reverse<13341, 13303_0;>}*/
            /*OUT: {
            Reverse<--, 13303_0;>
            Reverse<13341, 13303_0;>}*/
            /*OUT: {
            Reverse<--, 13316_1; 13313_0; 13303_0;>
            Reverse<13341, 13316_1; 13313_0; 13303_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<--, 13313_0; 13303_0;>
                Reverse<13341, 13313_0; 13303_0;>}*/
                /*OUT: {
                Reverse<--, 13313_0; 13303_0;>
                Reverse<13341, 13313_0; 13303_0;>}*/
                /*OUT: {
                Reverse<--, 13319_1; 13316_0; 13313_0; 13303_0;>
                Reverse<13341, 13319_1; 13316_0; 13313_0; 13303_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 13316_0; 13313_0; 13303_0;>
                    Reverse<13341, 13316_0; 13313_0; 13303_0;>}*/
                    /*OUT: {
                    Reverse<--, 13316_0; 13313_0; 13303_0;>
                    Reverse<13341, 13316_0; 13313_0; 13303_0;>}*/
                    /*OUT: {
                    Reverse<--, 13319_0; 13316_0; 13313_0; 13303_0;>
                    Reverse<13341, 13319_0; 13316_0; 13313_0; 13303_0;>}*/
                    for (n = 0; n < 5; n++) {
                        /*OUT: {
                        Reverse<--, 13319_0; 13316_0; 13313_0; 13303_0;>
                        Reverse<13341, 13319_0; 13316_0; 13313_0; 13303_0;>}*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - lhs[i][j][k][2][m][n] * rhs[i][j + 1][k][n];
                    }
                }
            }
        }
        /*OUT: {
        Reverse<--, 13303_0;>
        Reverse<13341, 13303_0;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<13341,>}*/
#pragma omp barrier
    }
}
static void y_solve_cell() {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int jsize;
    /*OUT: {
    Reverse<--,>}*/
    jsize = grid_points[1] - 1;
#pragma omp for nowait
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 13357_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 13357_0;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<--, 13357_0;>}*/
            double *_imopVarPre374;
            /*OUT: {
            Reverse<--, 13357_0;>}*/
            double ( *_imopVarPre375 )[5];
            /*OUT: {
            Reverse<--, 13357_0;>}*/
            double ( *_imopVarPre376 )[5];
            /*OUT: {
            Reverse<--, 13357_0;>}*/
            _imopVarPre374 = rhs[i][0][k];
            /*OUT: {
            Reverse<--, 13357_0;>}*/
            _imopVarPre375 = lhs[i][0][k][2];
            /*OUT: {
            Reverse<--, 13357_0;>}*/
            _imopVarPre376 = lhs[i][0][k][1];
            /*OUT: {
            Reverse<--, 13357_0;>}*/
            binvcrhs(_imopVarPre376, _imopVarPre375, _imopVarPre374);
            /*OUT: {
            Reverse<--, 13357_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<13384,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<13384,>}*/
    /*OUT: {
    Reverse<13384,>
    Reverse<13473,>}*/
    /*OUT: {
    Reverse<13473,>}*/
    for (j = 1; j < jsize; j++) {
#pragma omp for nowait
        /*OUT: {
        Reverse<13384, 13386_0;>
        Reverse<13473, 13386_0;>}*/
        /*OUT: {
        Reverse<13384, 13386_0;>
        Reverse<13473, 13386_0;>}*/
        /*OUT: {
        Reverse<13384, 13396_1; 13386_0;>
        Reverse<13473, 13396_1; 13386_0;>}*/
        for (i = 1; i < grid_points[0] - 1; i++) {
            /*OUT: {
            Reverse<13384, 13386_0;>
            Reverse<13473, 13386_0;>}*/
            /*OUT: {
            Reverse<13384, 13386_0;>
            Reverse<13473, 13386_0;>}*/
            /*OUT: {
            Reverse<13384, 13396_0; 13386_0;>
            Reverse<13473, 13396_0; 13386_0;>}*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                double *_imopVarPre380;
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                double *_imopVarPre381;
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                double ( *_imopVarPre382 )[5];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                _imopVarPre380 = rhs[i][j][k];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                _imopVarPre381 = rhs[i][j - 1][k];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                _imopVarPre382 = lhs[i][j][k][0];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                matvec_sub(_imopVarPre382, _imopVarPre381, _imopVarPre380);
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                double ( *_imopVarPre386 )[5];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                double ( *_imopVarPre387 )[5];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                double ( *_imopVarPre388 )[5];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                _imopVarPre386 = lhs[i][j][k][1];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                _imopVarPre387 = lhs[i][j - 1][k][2];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                _imopVarPre388 = lhs[i][j][k][0];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                matmul_sub(_imopVarPre388, _imopVarPre387, _imopVarPre386);
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                double *_imopVarPre392;
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                double ( *_imopVarPre393 )[5];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                double ( *_imopVarPre394 )[5];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                _imopVarPre392 = rhs[i][j][k];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                _imopVarPre393 = lhs[i][j][k][2];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                _imopVarPre394 = lhs[i][j][k][1];
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
                binvcrhs(_imopVarPre394, _imopVarPre393, _imopVarPre392);
                /*OUT: {
                Reverse<13384, 13396_0; 13386_0;>
                Reverse<13473, 13396_0; 13386_0;>}*/
            }
        }
        /*OUT: {
        Reverse<13384, 13386_0;>
        Reverse<13473, 13386_0;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<13473,>}*/
#pragma omp barrier
    }
#pragma omp for nowait
    /*OUT: {
    Reverse<13384, 13386_1;>
    Reverse<13473, 13386_1;>}*/
    /*OUT: {
    Reverse<13384, 13386_1;>
    Reverse<13473, 13386_1;>}*/
    /*OUT: {
    Reverse<13384, 13482_1; 13386_1;>
    Reverse<13473, 13482_1; 13386_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<13384, 13386_1;>
        Reverse<13473, 13386_1;>}*/
        /*OUT: {
        Reverse<13384, 13386_1;>
        Reverse<13473, 13386_1;>}*/
        /*OUT: {
        Reverse<13384, 13482_0; 13386_1;>
        Reverse<13473, 13482_0; 13386_1;>}*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            double *_imopVarPre398;
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            double *_imopVarPre399;
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            double ( *_imopVarPre400 )[5];
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            _imopVarPre398 = rhs[i][jsize][k];
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            _imopVarPre399 = rhs[i][jsize - 1][k];
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            _imopVarPre400 = lhs[i][jsize][k][0];
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            matvec_sub(_imopVarPre400, _imopVarPre399, _imopVarPre398);
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            double ( *_imopVarPre404 )[5];
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            double ( *_imopVarPre405 )[5];
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            double ( *_imopVarPre406 )[5];
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            _imopVarPre404 = lhs[i][jsize][k][1];
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            _imopVarPre405 = lhs[i][jsize - 1][k][2];
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            _imopVarPre406 = lhs[i][jsize][k][0];
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            matmul_sub(_imopVarPre406, _imopVarPre405, _imopVarPre404);
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            double *_imopVarPre409;
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            double ( *_imopVarPre410 )[5];
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            _imopVarPre409 = rhs[i][jsize][k];
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            _imopVarPre410 = lhs[i][jsize][k][1];
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
            binvrhs(_imopVarPre410, _imopVarPre409);
            /*OUT: {
            Reverse<13384, 13482_0; 13386_1;>
            Reverse<13473, 13482_0; 13386_1;>}*/
        }
    }
    /*OUT: {
    Reverse<13384, 13386_1;>
    Reverse<13473, 13386_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<13552,>}*/
#pragma omp barrier
}
static void z_solve() {
    /*OUT: {
    Reverse<--,>}*/
    lhsz();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    z_solve_cell();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    z_backsubstitute();
    /*OUT: {
    Reverse<--,>}*/
}
static void z_backsubstitute() {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    int n;
#pragma omp for nowait
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 13581_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 13585_1; 13581_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<--, 13581_0;>}*/
            /*OUT: {
            Reverse<--, 13581_0;>}*/
            /*OUT: {
            Reverse<--, 13588_1; 13585_0; 13581_0;>}*/
            for (k = grid_points[2] - 2; k >= 0; k--) {
                /*OUT: {
                Reverse<--, 13585_0; 13581_0;>}*/
                /*OUT: {
                Reverse<--, 13585_0; 13581_0;>}*/
                /*OUT: {
                Reverse<--, 13591_1; 13588_0; 13585_0; 13581_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 13588_0; 13585_0; 13581_0;>}*/
                    /*OUT: {
                    Reverse<--, 13588_0; 13585_0; 13581_0;>}*/
                    /*OUT: {
                    Reverse<--, 13591_0; 13588_0; 13585_0; 13581_0;>}*/
                    for (n = 0; n < 5; n++) {
                        /*OUT: {
                        Reverse<--, 13591_0; 13588_0; 13585_0; 13581_0;>}*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - lhs[i][j][k][2][m][n] * rhs[i][j][k + 1][n];
                    }
                }
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<13613,>}*/
#pragma omp barrier
}
static void z_solve_cell() {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int ksize;
    /*OUT: {
    Reverse<--,>}*/
    ksize = grid_points[2] - 1;
#pragma omp for nowait
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 13629_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 13629_0;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<--, 13629_0;>}*/
            double *_imopVarPre414;
            /*OUT: {
            Reverse<--, 13629_0;>}*/
            double ( *_imopVarPre415 )[5];
            /*OUT: {
            Reverse<--, 13629_0;>}*/
            double ( *_imopVarPre416 )[5];
            /*OUT: {
            Reverse<--, 13629_0;>}*/
            _imopVarPre414 = rhs[i][j][0];
            /*OUT: {
            Reverse<--, 13629_0;>}*/
            _imopVarPre415 = lhs[i][j][0][2];
            /*OUT: {
            Reverse<--, 13629_0;>}*/
            _imopVarPre416 = lhs[i][j][0][1];
            /*OUT: {
            Reverse<--, 13629_0;>}*/
            binvcrhs(_imopVarPre416, _imopVarPre415, _imopVarPre414);
            /*OUT: {
            Reverse<--, 13629_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<13656,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<13656,>}*/
    /*OUT: {
    Reverse<13656,>
    Reverse<13745,>}*/
    /*OUT: {
    Reverse<13745,>}*/
    for (k = 1; k < ksize; k++) {
#pragma omp for nowait
        /*OUT: {
        Reverse<13656, 13658_0;>
        Reverse<13745, 13658_0;>}*/
        /*OUT: {
        Reverse<13656, 13658_0;>
        Reverse<13745, 13658_0;>}*/
        /*OUT: {
        Reverse<13656, 13668_1; 13658_0;>
        Reverse<13745, 13668_1; 13658_0;>}*/
        for (i = 1; i < grid_points[0] - 1; i++) {
            /*OUT: {
            Reverse<13656, 13658_0;>
            Reverse<13745, 13658_0;>}*/
            /*OUT: {
            Reverse<13656, 13658_0;>
            Reverse<13745, 13658_0;>}*/
            /*OUT: {
            Reverse<13656, 13668_0; 13658_0;>
            Reverse<13745, 13668_0; 13658_0;>}*/
            for (j = 1; j < grid_points[1] - 1; j++) {
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                double *_imopVarPre420;
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                double *_imopVarPre421;
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                double ( *_imopVarPre422 )[5];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                _imopVarPre420 = rhs[i][j][k];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                _imopVarPre421 = rhs[i][j][k - 1];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                _imopVarPre422 = lhs[i][j][k][0];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                matvec_sub(_imopVarPre422, _imopVarPre421, _imopVarPre420);
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                double ( *_imopVarPre426 )[5];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                double ( *_imopVarPre427 )[5];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                double ( *_imopVarPre428 )[5];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                _imopVarPre426 = lhs[i][j][k][1];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                _imopVarPre427 = lhs[i][j][k - 1][2];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                _imopVarPre428 = lhs[i][j][k][0];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                matmul_sub(_imopVarPre428, _imopVarPre427, _imopVarPre426);
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                double *_imopVarPre432;
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                double ( *_imopVarPre433 )[5];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                double ( *_imopVarPre434 )[5];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                _imopVarPre432 = rhs[i][j][k];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                _imopVarPre433 = lhs[i][j][k][2];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                _imopVarPre434 = lhs[i][j][k][1];
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
                binvcrhs(_imopVarPre434, _imopVarPre433, _imopVarPre432);
                /*OUT: {
                Reverse<13656, 13668_0; 13658_0;>
                Reverse<13745, 13668_0; 13658_0;>}*/
            }
        }
        /*OUT: {
        Reverse<13656, 13658_0;>
        Reverse<13745, 13658_0;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<13745,>}*/
#pragma omp barrier
    }
#pragma omp for nowait
    /*OUT: {
    Reverse<13656, 13658_1;>
    Reverse<13745, 13658_1;>}*/
    /*OUT: {
    Reverse<13656, 13658_1;>
    Reverse<13745, 13658_1;>}*/
    /*OUT: {
    Reverse<13656, 13754_1; 13658_1;>
    Reverse<13745, 13754_1; 13658_1;>}*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<13656, 13658_1;>
        Reverse<13745, 13658_1;>}*/
        /*OUT: {
        Reverse<13656, 13658_1;>
        Reverse<13745, 13658_1;>}*/
        /*OUT: {
        Reverse<13656, 13754_0; 13658_1;>
        Reverse<13745, 13754_0; 13658_1;>}*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            double *_imopVarPre438;
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            double *_imopVarPre439;
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            double ( *_imopVarPre440 )[5];
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            _imopVarPre438 = rhs[i][j][ksize];
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            _imopVarPre439 = rhs[i][j][ksize - 1];
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            _imopVarPre440 = lhs[i][j][ksize][0];
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            matvec_sub(_imopVarPre440, _imopVarPre439, _imopVarPre438);
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            double ( *_imopVarPre444 )[5];
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            double ( *_imopVarPre445 )[5];
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            double ( *_imopVarPre446 )[5];
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            _imopVarPre444 = lhs[i][j][ksize][1];
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            _imopVarPre445 = lhs[i][j][ksize - 1][2];
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            _imopVarPre446 = lhs[i][j][ksize][0];
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            matmul_sub(_imopVarPre446, _imopVarPre445, _imopVarPre444);
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            double *_imopVarPre449;
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            double ( *_imopVarPre450 )[5];
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            _imopVarPre449 = rhs[i][j][ksize];
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            _imopVarPre450 = lhs[i][j][ksize][1];
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
            binvrhs(_imopVarPre450, _imopVarPre449);
            /*OUT: {
            Reverse<13656, 13754_0; 13658_1;>
            Reverse<13745, 13754_0; 13658_1;>}*/
        }
    }
    /*OUT: {
    Reverse<13656, 13658_1;>
    Reverse<13745, 13658_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<13824,>}*/
#pragma omp barrier
}
