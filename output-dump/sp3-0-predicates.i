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
extern double pow(double , double );
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
static double ce[13][5];
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
static double bt;
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
static double u[5][12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double us[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double vs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double ws[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double qs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double ainv[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double rho_i[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double speed[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double square[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double rhs[5][12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double forcing[5][12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double lhs[15][12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
static double cv[12];
static double rhon[12];
static double rhos[12];
static double rhoq[12];
static double cuf[12];
static double q[12];
static double ue[5][12];
static double buf[5][12];
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
static void ninvr(void );
static void pinvr(void );
static void compute_rhs(void );
static void set_constants(void );
static void txinvr(void );
static void tzetar(void );
static void verify(int no_time_steps, char *class , boolean *verified);
static void x_solve(void );
static void y_solve(void );
static void z_solve(void );
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
    double mflops;
    /*OUT: {
    Reverse<--,>}*/
    double tmax;
    /*OUT: {
    Reverse<--,>}*/
    int nthreads = 1;
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
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - SP Benchmark\n\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fp = fopen("inputsp.data", "r");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (fp != ((void *) 0)) {
        /*OUT: {
        Reverse<--, 38496_0;>}*/
        printf(" Reading from input file inputsp.data\n");
        /*OUT: {
        Reverse<--, 38496_0;>}*/
        /*OUT: {
        Reverse<--, 38496_0;>}*/
        int *_imopVarPre141;
        /*OUT: {
        Reverse<--, 38496_0;>}*/
        _imopVarPre141 = &niter;
        /*OUT: {
        Reverse<--, 38496_0;>}*/
        fscanf(fp, "%d", _imopVarPre141);
        /*OUT: {
        Reverse<--, 38496_0;>}*/
        /*OUT: {
        Reverse<--, 38496_0;>}*/
        int _imopVarPre143;
        /*OUT: {
        Reverse<--, 38496_0;>}*/
        _imopVarPre143 = fgetc(fp);
        /*OUT: {
        Reverse<--, 38496_0;>}*/
        /*OUT: {
        Reverse<--, 38496_0;>}*/
        while (_imopVarPre143 != '\n') {
            /*OUT: {
            Reverse<--, 38517_0; 38496_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 38517_0; 38496_0;>}*/
            _imopVarPre143 = fgetc(fp);
            /*OUT: {
            Reverse<--, 38517_0; 38496_0;>}*/
        }
        /*OUT: {
        Reverse<--, 38517_1; 38496_0;>}*/
        double *_imopVarPre145;
        /*OUT: {
        Reverse<--, 38517_1; 38496_0;>}*/
        _imopVarPre145 = &dt;
        /*OUT: {
        Reverse<--, 38517_1; 38496_0;>}*/
        fscanf(fp, "%lf", _imopVarPre145);
        /*OUT: {
        Reverse<--, 38517_1; 38496_0;>}*/
        /*OUT: {
        Reverse<--, 38517_1; 38496_0;>}*/
        int _imopVarPre147;
        /*OUT: {
        Reverse<--, 38517_1; 38496_0;>}*/
        _imopVarPre147 = fgetc(fp);
        /*OUT: {
        Reverse<--, 38517_1; 38496_0;>}*/
        /*OUT: {
        Reverse<--, 38517_1; 38496_0;>}*/
        while (_imopVarPre147 != '\n') {
            /*OUT: {
            Reverse<--, 38540_0; 38517_1; 38496_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 38540_0; 38517_1; 38496_0;>}*/
            _imopVarPre147 = fgetc(fp);
            /*OUT: {
            Reverse<--, 38540_0; 38517_1; 38496_0;>}*/
        }
        /*OUT: {
        Reverse<--, 38540_1; 38517_1; 38496_0;>}*/
        int *_imopVarPre151;
        /*OUT: {
        Reverse<--, 38540_1; 38517_1; 38496_0;>}*/
        int *_imopVarPre152;
        /*OUT: {
        Reverse<--, 38540_1; 38517_1; 38496_0;>}*/
        int *_imopVarPre153;
        /*OUT: {
        Reverse<--, 38540_1; 38517_1; 38496_0;>}*/
        _imopVarPre151 = &grid_points[2];
        /*OUT: {
        Reverse<--, 38540_1; 38517_1; 38496_0;>}*/
        _imopVarPre152 = &grid_points[1];
        /*OUT: {
        Reverse<--, 38540_1; 38517_1; 38496_0;>}*/
        _imopVarPre153 = &grid_points[0];
        /*OUT: {
        Reverse<--, 38540_1; 38517_1; 38496_0;>}*/
        fscanf(fp, "%d%d%d", _imopVarPre153, _imopVarPre152, _imopVarPre151);
        /*OUT: {
        Reverse<--, 38540_1; 38517_1; 38496_0;>}*/
        /*OUT: {
        Reverse<--, 38540_1; 38517_1; 38496_0;>}*/
        fclose(fp);
        /*OUT: {
        Reverse<--, 38540_1; 38517_1; 38496_0;>}*/
    } else {
        /*OUT: {
        Reverse<--, 38496_1;>}*/
        printf(" No input file inputsp.data. Using compiled defaults");
        /*OUT: {
        Reverse<--, 38496_1;>}*/
        /*OUT: {
        Reverse<--, 38496_1;>}*/
        niter = 100;
        /*OUT: {
        Reverse<--, 38496_1;>}*/
        dt = 0.015;
        /*OUT: {
        Reverse<--, 38496_1;>}*/
        grid_points[0] = 12;
        /*OUT: {
        Reverse<--, 38496_1;>}*/
        grid_points[1] = 12;
        /*OUT: {
        Reverse<--, 38496_1;>}*/
        grid_points[2] = 12;
    }
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    int _imopVarPre157;
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    int _imopVarPre158;
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    int _imopVarPre159;
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    _imopVarPre157 = grid_points[2];
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    _imopVarPre158 = grid_points[1];
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    _imopVarPre159 = grid_points[0];
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    printf(" Size: %3dx%3dx%3d\n", _imopVarPre159, _imopVarPre158, _imopVarPre157);
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    printf(" Iterations: %3d   dt: %10.6f\n", niter, dt);
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    int _imopVarPre160;
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    int _imopVarPre161;
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    _imopVarPre160 = (grid_points[0] > 12);
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    if (!_imopVarPre160) {
        /*OUT: {
        Reverse<--, 38616_0; 38496_1;>
        Reverse<--, 38616_0; 38540_1; 38517_1; 38496_0;>}*/
        _imopVarPre161 = (grid_points[1] > 12);
        /*OUT: {
        Reverse<--, 38616_0; 38496_1;>
        Reverse<--, 38616_0; 38540_1; 38517_1; 38496_0;>}*/
        if (!_imopVarPre161) {
            /*OUT: {
            Reverse<--, 38621_0; 38616_0; 38496_1;>
            Reverse<--, 38621_0; 38616_0; 38540_1; 38517_1; 38496_0;>}*/
            _imopVarPre161 = (grid_points[2] > 12);
        }
        /*OUT: {
        Reverse<--, 38616_0; 38496_1;>
        Reverse<--, 38616_0; 38540_1; 38517_1; 38496_0;>}*/
        _imopVarPre160 = _imopVarPre161;
    }
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    if (_imopVarPre160) {
        /*OUT: {
        Reverse<--, 38628_0; 38496_1;>
        Reverse<--, 38628_0; 38540_1; 38517_1; 38496_0;>}*/
        int _imopVarPre165;
        /*OUT: {
        Reverse<--, 38628_0; 38496_1;>
        Reverse<--, 38628_0; 38540_1; 38517_1; 38496_0;>}*/
        int _imopVarPre166;
        /*OUT: {
        Reverse<--, 38628_0; 38496_1;>
        Reverse<--, 38628_0; 38540_1; 38517_1; 38496_0;>}*/
        int _imopVarPre167;
        /*OUT: {
        Reverse<--, 38628_0; 38496_1;>
        Reverse<--, 38628_0; 38540_1; 38517_1; 38496_0;>}*/
        _imopVarPre165 = grid_points[2];
        /*OUT: {
        Reverse<--, 38628_0; 38496_1;>
        Reverse<--, 38628_0; 38540_1; 38517_1; 38496_0;>}*/
        _imopVarPre166 = grid_points[1];
        /*OUT: {
        Reverse<--, 38628_0; 38496_1;>
        Reverse<--, 38628_0; 38540_1; 38517_1; 38496_0;>}*/
        _imopVarPre167 = grid_points[0];
        /*OUT: {
        Reverse<--, 38628_0; 38496_1;>
        Reverse<--, 38628_0; 38540_1; 38517_1; 38496_0;>}*/
        printf("%d, %d, %d\n", _imopVarPre167, _imopVarPre166, _imopVarPre165);
        /*OUT: {
        Reverse<--, 38628_0; 38496_1;>
        Reverse<--, 38628_0; 38540_1; 38517_1; 38496_0;>}*/
        /*OUT: {
        Reverse<--, 38628_0; 38496_1;>
        Reverse<--, 38628_0; 38540_1; 38517_1; 38496_0;>}*/
        printf(" Problem size too big for compiled array sizes\n");
        /*OUT: {
        Reverse<--, 38628_0; 38496_1;>
        Reverse<--, 38628_0; 38540_1; 38517_1; 38496_0;>}*/
        /*OUT: {
        Reverse<--, 38628_0; 38496_1;>
        Reverse<--, 38628_0; 38540_1; 38517_1; 38496_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 38628_0; 38496_1;>
        Reverse<--, 38628_0; 38540_1; 38517_1; 38496_0;>}*/
    }
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    set_constants();
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    initialize();
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    lhsinit();
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    exact_rhs();
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    adi();
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    initialize();
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    timer_clear(1);
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    timer_start(1);
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38697_0; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_0; 38496_1;>}*/
    for (step = 1; step <= niter; step++) {
        /*OUT: {
        Reverse<--, 38697_0; 38540_1; 38517_1; 38496_0;>
        Reverse<--, 38697_0; 38496_1;>}*/
        int _imopVarPre168;
        /*OUT: {
        Reverse<--, 38697_0; 38540_1; 38517_1; 38496_0;>
        Reverse<--, 38697_0; 38496_1;>}*/
        _imopVarPre168 = step % 20 == 0;
        /*OUT: {
        Reverse<--, 38697_0; 38540_1; 38517_1; 38496_0;>
        Reverse<--, 38697_0; 38496_1;>}*/
        if (!_imopVarPre168) {
            /*OUT: {
            Reverse<--, 38702_0; 38697_0; 38540_1; 38517_1; 38496_0;>
            Reverse<--, 38702_0; 38697_0; 38496_1;>}*/
            _imopVarPre168 = step == 1;
        }
        /*OUT: {
        Reverse<--, 38697_0; 38540_1; 38517_1; 38496_0;>
        Reverse<--, 38697_0; 38496_1;>}*/
        if (_imopVarPre168) {
            /*OUT: {
            Reverse<--, 38705_0; 38697_0; 38540_1; 38517_1; 38496_0;>
            Reverse<--, 38705_0; 38697_0; 38496_1;>}*/
            printf(" Time step %4d\n", step);
            /*OUT: {
            Reverse<--, 38705_0; 38697_0; 38540_1; 38517_1; 38496_0;>
            Reverse<--, 38705_0; 38697_0; 38496_1;>}*/
        }
        /*OUT: {
        Reverse<--, 38697_0; 38540_1; 38517_1; 38496_0;>
        Reverse<--, 38697_0; 38496_1;>}*/
        adi();
        /*OUT: {
        Reverse<--, 38697_0; 38540_1; 38517_1; 38496_0;>
        Reverse<--, 38697_0; 38496_1;>}*/
    }
#pragma omp parallel
    {
    }
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    timer_stop(1);
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    tmax = timer_read(1);
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    int *_imopVarPre171;
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    char *_imopVarPre172;
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    _imopVarPre171 = &verified;
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    _imopVarPre172 = &class;
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    verify(niter, _imopVarPre172, _imopVarPre171);
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    if (tmax != 0) {
        /*OUT: {
        Reverse<--, 38738_0; 38697_1; 38540_1; 38517_1; 38496_0;>
        Reverse<--, 38738_0; 38697_1; 38496_1;>}*/
        double _imopVarPre179;
        /*OUT: {
        Reverse<--, 38738_0; 38697_1; 38540_1; 38517_1; 38496_0;>
        Reverse<--, 38738_0; 38697_1; 38496_1;>}*/
        double _imopVarPre180;
        /*OUT: {
        Reverse<--, 38738_0; 38697_1; 38540_1; 38517_1; 38496_0;>
        Reverse<--, 38738_0; 38697_1; 38496_1;>}*/
        _imopVarPre179 = (double) 12;
        /*OUT: {
        Reverse<--, 38738_0; 38697_1; 38540_1; 38517_1; 38496_0;>
        Reverse<--, 38738_0; 38697_1; 38496_1;>}*/
        _imopVarPre180 = pow(_imopVarPre179, 3.0);
        /*OUT: {
        Reverse<--, 38738_0; 38697_1; 38540_1; 38517_1; 38496_0;>
        Reverse<--, 38738_0; 38697_1; 38496_1;>}*/
        /*OUT: {
        Reverse<--, 38738_0; 38697_1; 38540_1; 38517_1; 38496_0;>
        Reverse<--, 38738_0; 38697_1; 38496_1;>}*/
        mflops = (881.174 * _imopVarPre180 - 4683.91 * (((double) 12) * ((double) 12)) + 11484.5 * (double) 12 - 19272.4) * (double) niter / (tmax * 1000000.0);
    } else {
        /*OUT: {
        Reverse<--, 38738_1; 38697_1; 38540_1; 38517_1; 38496_0;>
        Reverse<--, 38738_1; 38697_1; 38496_1;>}*/
        mflops = 0.0;
    }
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    int _imopVarPre184;
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    int _imopVarPre185;
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    int _imopVarPre186;
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    _imopVarPre184 = grid_points[2];
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    _imopVarPre185 = grid_points[1];
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    _imopVarPre186 = grid_points[0];
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
    c_print_results("SP", class, _imopVarPre186, _imopVarPre185, _imopVarPre184, niter, nthreads, tmax, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "(none)");
    /*OUT: {
    Reverse<--, 38697_1; 38540_1; 38517_1; 38496_0;>
    Reverse<--, 38697_1; 38496_1;>}*/
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
    Reverse<--, 38786_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 38790_1; 38786_0;>}*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: {
            Reverse<--, 38786_0;>}*/
            /*OUT: {
            Reverse<--, 38786_0;>}*/
            /*OUT: {
            Reverse<--, 38794_1; 38790_0; 38786_0;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<--, 38790_0; 38786_0;>}*/
                /*OUT: {
                Reverse<--, 38790_0; 38786_0;>}*/
                /*OUT: {
                Reverse<--, 38794_0; 38790_0; 38786_0;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<--, 38794_0; 38790_0; 38786_0;>}*/
                    u[m][i][j][k] = u[m][i][j][k] + rhs[m][i][j][k];
                }
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<38810,>}*/
#pragma omp barrier
}
static void adi() {
    /*OUT: {
    Reverse<--,>}*/
    compute_rhs();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    txinvr();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    x_solve();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    y_solve();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    z_solve();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    add();
    /*OUT: {
    Reverse<--,>}*/
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
    Reverse<--, 38853_0;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 38853_0;>}*/
        rms[m] = 0.0;
    }
    /*OUT: {
    Reverse<--, 38853_1;>}*/
    /*OUT: {
    Reverse<--, 38853_1;>}*/
    /*OUT: {
    Reverse<--, 38866_1; 38860_0; 38853_1;>}*/
    for (i = 0; i <= grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<--, 38860_0; 38853_1;>}*/
        xi = (double) i * dnxm1;
        /*OUT: {
        Reverse<--, 38860_0; 38853_1;>}*/
        /*OUT: {
        Reverse<--, 38860_0; 38853_1;>}*/
        /*OUT: {
        Reverse<--, 38872_1; 38866_0; 38860_0; 38853_1;>}*/
        for (j = 0; j <= grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<--, 38866_0; 38860_0; 38853_1;>}*/
            eta = (double) j * dnym1;
            /*OUT: {
            Reverse<--, 38866_0; 38860_0; 38853_1;>}*/
            /*OUT: {
            Reverse<--, 38866_0; 38860_0; 38853_1;>}*/
            /*OUT: {
            Reverse<--, 38882_1; 38872_0; 38866_0; 38860_0; 38853_1;>}*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<--, 38872_0; 38866_0; 38860_0; 38853_1;>}*/
                zeta = (double) k * dnzm1;
                /*OUT: {
                Reverse<--, 38872_0; 38866_0; 38860_0; 38853_1;>}*/
                exact_solution(xi, eta, zeta, u_exact);
                /*OUT: {
                Reverse<--, 38872_0; 38866_0; 38860_0; 38853_1;>}*/
                /*OUT: {
                Reverse<--, 38872_0; 38866_0; 38860_0; 38853_1;>}*/
                /*OUT: {
                Reverse<--, 38872_0; 38866_0; 38860_0; 38853_1;>}*/
                /*OUT: {
                Reverse<--, 38882_0; 38872_0; 38866_0; 38860_0; 38853_1;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 38882_0; 38872_0; 38866_0; 38860_0; 38853_1;>}*/
                    add = u[m][i][j][k] - u_exact[m];
                    /*OUT: {
                    Reverse<--, 38882_0; 38872_0; 38866_0; 38860_0; 38853_1;>}*/
                    rms[m] = rms[m] + add * add;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 38860_1; 38853_1;>}*/
    /*OUT: {
    Reverse<--, 38860_1; 38853_1;>}*/
    /*OUT: {
    Reverse<--, 38899_1; 38896_0; 38860_1; 38853_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 38896_0; 38860_1; 38853_1;>}*/
        /*OUT: {
        Reverse<--, 38896_0; 38860_1; 38853_1;>}*/
        /*OUT: {
        Reverse<--, 38899_0; 38896_0; 38860_1; 38853_1;>}*/
        for (d = 0; d < 3; d++) {
            /*OUT: {
            Reverse<--, 38899_0; 38896_0; 38860_1; 38853_1;>}*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*OUT: {
        Reverse<--, 38899_1; 38896_0; 38860_1; 38853_1;>}*/
        double _imopVarPre188;
        /*OUT: {
        Reverse<--, 38899_1; 38896_0; 38860_1; 38853_1;>}*/
        double _imopVarPre189;
        /*OUT: {
        Reverse<--, 38899_1; 38896_0; 38860_1; 38853_1;>}*/
        _imopVarPre188 = rms[m];
        /*OUT: {
        Reverse<--, 38899_1; 38896_0; 38860_1; 38853_1;>}*/
        _imopVarPre189 = sqrt(_imopVarPre188);
        /*OUT: {
        Reverse<--, 38899_1; 38896_0; 38860_1; 38853_1;>}*/
        /*OUT: {
        Reverse<--, 38899_1; 38896_0; 38860_1; 38853_1;>}*/
        rms[m] = _imopVarPre189;
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
    Reverse<--, 38929_0;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 38929_0;>}*/
        rms[m] = 0.0;
    }
    /*OUT: {
    Reverse<--, 38929_1;>}*/
    /*OUT: {
    Reverse<--, 38929_1;>}*/
    /*OUT: {
    Reverse<--, 38940_1; 38936_0; 38929_1;>}*/
    for (i = 0; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<--, 38936_0; 38929_1;>}*/
        /*OUT: {
        Reverse<--, 38936_0; 38929_1;>}*/
        /*OUT: {
        Reverse<--, 38944_1; 38940_0; 38936_0; 38929_1;>}*/
        for (j = 0; j <= grid_points[1] - 2; j++) {
            /*OUT: {
            Reverse<--, 38940_0; 38936_0; 38929_1;>}*/
            /*OUT: {
            Reverse<--, 38940_0; 38936_0; 38929_1;>}*/
            /*OUT: {
            Reverse<--, 38947_1; 38944_0; 38940_0; 38936_0; 38929_1;>}*/
            for (k = 0; k <= grid_points[2] - 2; k++) {
                /*OUT: {
                Reverse<--, 38944_0; 38940_0; 38936_0; 38929_1;>}*/
                /*OUT: {
                Reverse<--, 38944_0; 38940_0; 38936_0; 38929_1;>}*/
                /*OUT: {
                Reverse<--, 38947_0; 38944_0; 38940_0; 38936_0; 38929_1;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 38947_0; 38944_0; 38940_0; 38936_0; 38929_1;>}*/
                    add = rhs[m][i][j][k];
                    /*OUT: {
                    Reverse<--, 38947_0; 38944_0; 38940_0; 38936_0; 38929_1;>}*/
                    rms[m] = rms[m] + add * add;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 38936_1; 38929_1;>}*/
    /*OUT: {
    Reverse<--, 38936_1; 38929_1;>}*/
    /*OUT: {
    Reverse<--, 38963_1; 38960_0; 38936_1; 38929_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 38960_0; 38936_1; 38929_1;>}*/
        /*OUT: {
        Reverse<--, 38960_0; 38936_1; 38929_1;>}*/
        /*OUT: {
        Reverse<--, 38963_0; 38960_0; 38936_1; 38929_1;>}*/
        for (d = 0; d < 3; d++) {
            /*OUT: {
            Reverse<--, 38963_0; 38960_0; 38936_1; 38929_1;>}*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*OUT: {
        Reverse<--, 38963_1; 38960_0; 38936_1; 38929_1;>}*/
        double _imopVarPre191;
        /*OUT: {
        Reverse<--, 38963_1; 38960_0; 38936_1; 38929_1;>}*/
        double _imopVarPre192;
        /*OUT: {
        Reverse<--, 38963_1; 38960_0; 38936_1; 38929_1;>}*/
        _imopVarPre191 = rms[m];
        /*OUT: {
        Reverse<--, 38963_1; 38960_0; 38936_1; 38929_1;>}*/
        _imopVarPre192 = sqrt(_imopVarPre191);
        /*OUT: {
        Reverse<--, 38963_1; 38960_0; 38936_1; 38929_1;>}*/
        /*OUT: {
        Reverse<--, 38963_1; 38960_0; 38936_1; 38929_1;>}*/
        rms[m] = _imopVarPre192;
    }
}
static void exact_rhs() {
    /*OUT: {
    Reverse<--,>}*/
    double dtemp[5];
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
    double dtpp;
    /*OUT: {
    Reverse<--,>}*/
    int m;
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
    int ip1;
    /*OUT: {
    Reverse<--,>}*/
    int im1;
    /*OUT: {
    Reverse<--,>}*/
    int jp1;
    /*OUT: {
    Reverse<--,>}*/
    int jm1;
    /*OUT: {
    Reverse<--,>}*/
    int km1;
    /*OUT: {
    Reverse<--,>}*/
    int kp1;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 39005_1; 39001_0;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 39001_0;>}*/
        /*OUT: {
        Reverse<--, 39001_0;>}*/
        /*OUT: {
        Reverse<--, 39009_1; 39005_0; 39001_0;>}*/
        for (i = 0; i <= grid_points[0] - 1; i++) {
            /*OUT: {
            Reverse<--, 39005_0; 39001_0;>}*/
            /*OUT: {
            Reverse<--, 39005_0; 39001_0;>}*/
            /*OUT: {
            Reverse<--, 39013_1; 39009_0; 39005_0; 39001_0;>}*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
                /*OUT: {
                Reverse<--, 39009_0; 39005_0; 39001_0;>}*/
                /*OUT: {
                Reverse<--, 39009_0; 39005_0; 39001_0;>}*/
                /*OUT: {
                Reverse<--, 39013_0; 39009_0; 39005_0; 39001_0;>}*/
                for (k = 0; k <= grid_points[2] - 1; k++) {
                    /*OUT: {
                    Reverse<--, 39013_0; 39009_0; 39005_0; 39001_0;>}*/
                    forcing[m][i][j][k] = 0.0;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 39001_1;>}*/
    /*OUT: {
    Reverse<--, 39001_1;>}*/
    /*OUT: {
    Reverse<--, 39029_1; 39023_0; 39001_1;>}*/
    for (k = 1; k <= grid_points[2] - 2; k++) {
        /*OUT: {
        Reverse<--, 39023_0; 39001_1;>}*/
        zeta = (double) k * dnzm1;
        /*OUT: {
        Reverse<--, 39023_0; 39001_1;>}*/
        /*OUT: {
        Reverse<--, 39023_0; 39001_1;>}*/
        /*OUT: {
        Reverse<--, 39358_1; 39330_1; 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: {
            Reverse<--, 39029_0; 39023_0; 39001_1;>}*/
            eta = (double) j * dnym1;
            /*OUT: {
            Reverse<--, 39029_0; 39023_0; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39029_0; 39023_0; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39056_1; 39045_1; 39035_0; 39029_0; 39023_0; 39001_1;>}*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
                /*OUT: {
                Reverse<--, 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                xi = (double) i * dnxm1;
                /*OUT: {
                Reverse<--, 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                exact_solution(xi, eta, zeta, dtemp);
                /*OUT: {
                Reverse<--, 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39045_0; 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 39045_0; 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                    ue[m][i] = dtemp[m];
                }
                /*OUT: {
                Reverse<--, 39045_1; 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                dtpp = 1.0 / dtemp[0];
                /*OUT: {
                Reverse<--, 39045_1; 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39045_1; 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39056_0; 39045_1; 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                for (m = 1; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 39056_0; 39045_1; 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                    buf[m][i] = dtpp * dtemp[m];
                }
                /*OUT: {
                Reverse<--, 39056_1; 39045_1; 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                cuf[i] = buf[1][i] * buf[1][i];
                /*OUT: {
                Reverse<--, 39056_1; 39045_1; 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                buf[0][i] = cuf[i] + buf[2][i] * buf[2][i] + buf[3][i] * buf[3][i];
                /*OUT: {
                Reverse<--, 39056_1; 39045_1; 39035_0; 39029_0; 39023_0; 39001_1;>}*/
                q[i] = 0.5 * (buf[1][i] * ue[1][i] + buf[2][i] * ue[2][i] + buf[3][i] * ue[3][i]);
            }
            /*OUT: {
            Reverse<--, 39035_1; 39029_0; 39023_0; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39035_1; 39029_0; 39023_0; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39101_0; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<--, 39101_0; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                im1 = i - 1;
                /*OUT: {
                Reverse<--, 39101_0; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                ip1 = i + 1;
                /*OUT: {
                Reverse<--, 39101_0; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                forcing[0][i][j][k] = forcing[0][i][j][k] - tx2 * (ue[1][ip1] - ue[1][im1]) + dx1tx1 * (ue[0][ip1] - 2.0 * ue[0][i] + ue[0][im1]);
                /*OUT: {
                Reverse<--, 39101_0; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                forcing[1][i][j][k] = forcing[1][i][j][k] - tx2 * ((ue[1][ip1] * buf[1][ip1] + c2 * (ue[4][ip1] - q[ip1])) - (ue[1][im1] * buf[1][im1] + c2 * (ue[4][im1] - q[im1]))) + xxcon1 * (buf[1][ip1] - 2.0 * buf[1][i] + buf[1][im1]) + dx2tx1 * (ue[1][ip1] - 2.0 * ue[1][i] + ue[1][im1]);
                /*OUT: {
                Reverse<--, 39101_0; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                forcing[2][i][j][k] = forcing[2][i][j][k] - tx2 * (ue[2][ip1] * buf[1][ip1] - ue[2][im1] * buf[1][im1]) + xxcon2 * (buf[2][ip1] - 2.0 * buf[2][i] + buf[2][im1]) + dx3tx1 * (ue[2][ip1] - 2.0 * ue[2][i] + ue[2][im1]);
                /*OUT: {
                Reverse<--, 39101_0; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                forcing[3][i][j][k] = forcing[3][i][j][k] - tx2 * (ue[3][ip1] * buf[1][ip1] - ue[3][im1] * buf[1][im1]) + xxcon2 * (buf[3][ip1] - 2.0 * buf[3][i] + buf[3][im1]) + dx4tx1 * (ue[3][ip1] - 2.0 * ue[3][i] + ue[3][im1]);
                /*OUT: {
                Reverse<--, 39101_0; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                forcing[4][i][j][k] = forcing[4][i][j][k] - tx2 * (buf[1][ip1] * (c1 * ue[4][ip1] - c2 * q[ip1]) - buf[1][im1] * (c1 * ue[4][im1] - c2 * q[im1])) + 0.5 * xxcon3 * (buf[0][ip1] - 2.0 * buf[0][i] + buf[0][im1]) + xxcon4 * (cuf[ip1] - 2.0 * cuf[i] + cuf[im1]) + xxcon5 * (buf[4][ip1] - 2.0 * buf[4][i] + buf[4][im1]) + dx5tx1 * (ue[4][ip1] - 2.0 * ue[4][i] + ue[4][im1]);
            }
            /*OUT: {
            Reverse<--, 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39287_0; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 39287_0; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                i = 1;
                /*OUT: {
                Reverse<--, 39287_0; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (5.0 * ue[m][i] - 4.0 * ue[m][i + 1] + ue[m][i + 2]);
                /*OUT: {
                Reverse<--, 39287_0; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                i = 2;
                /*OUT: {
                Reverse<--, 39287_0; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (-4.0 * ue[m][i - 1] + 6.0 * ue[m][i] - 4.0 * ue[m][i + 1] + ue[m][i + 2]);
            }
            /*OUT: {
            Reverse<--, 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39334_1; 39330_0; 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 39330_0; 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39330_0; 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39334_0; 39330_0; 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                for (i = 3; i <= grid_points[0] - 4; i++) {
                    /*OUT: {
                    Reverse<--, 39334_0; 39330_0; 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                    forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][i - 2] - 4.0 * ue[m][i - 1] + 6.0 * ue[m][i] - 4.0 * ue[m][i + 1] + ue[m][i + 2]);
                }
            }
            /*OUT: {
            Reverse<--, 39330_1; 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39330_1; 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39358_0; 39330_1; 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 39358_0; 39330_1; 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                i = grid_points[0] - 3;
                /*OUT: {
                Reverse<--, 39358_0; 39330_1; 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][i - 2] - 4.0 * ue[m][i - 1] + 6.0 * ue[m][i] - 4.0 * ue[m][i + 1]);
                /*OUT: {
                Reverse<--, 39358_0; 39330_1; 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                i = grid_points[0] - 2;
                /*OUT: {
                Reverse<--, 39358_0; 39330_1; 39287_1; 39101_1; 39035_1; 39029_0; 39023_0; 39001_1;>}*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][i - 2] - 4.0 * ue[m][i - 1] + 5.0 * ue[m][i]);
            }
        }
    }
    /*OUT: {
    Reverse<--, 39023_1; 39001_1;>}*/
    /*OUT: {
    Reverse<--, 39023_1; 39001_1;>}*/
    /*OUT: {
    Reverse<--, 39410_1; 39404_0; 39023_1; 39001_1;>}*/
    for (k = 1; k <= grid_points[2] - 2; k++) {
        /*OUT: {
        Reverse<--, 39404_0; 39023_1; 39001_1;>}*/
        zeta = (double) k * dnzm1;
        /*OUT: {
        Reverse<--, 39404_0; 39023_1; 39001_1;>}*/
        /*OUT: {
        Reverse<--, 39404_0; 39023_1; 39001_1;>}*/
        /*OUT: {
        Reverse<--, 39739_1; 39711_1; 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: {
            Reverse<--, 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            xi = (double) i * dnxm1;
            /*OUT: {
            Reverse<--, 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39437_1; 39426_1; 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
                /*OUT: {
                Reverse<--, 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                eta = (double) j * dnym1;
                /*OUT: {
                Reverse<--, 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                exact_solution(xi, eta, zeta, dtemp);
                /*OUT: {
                Reverse<--, 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39426_0; 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 39426_0; 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                    ue[m][j] = dtemp[m];
                }
                /*OUT: {
                Reverse<--, 39426_1; 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                dtpp = 1.0 / dtemp[0];
                /*OUT: {
                Reverse<--, 39426_1; 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39426_1; 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39437_0; 39426_1; 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                for (m = 1; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 39437_0; 39426_1; 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                    buf[m][j] = dtpp * dtemp[m];
                }
                /*OUT: {
                Reverse<--, 39437_1; 39426_1; 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                cuf[j] = buf[2][j] * buf[2][j];
                /*OUT: {
                Reverse<--, 39437_1; 39426_1; 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                buf[0][j] = cuf[j] + buf[1][j] * buf[1][j] + buf[3][j] * buf[3][j];
                /*OUT: {
                Reverse<--, 39437_1; 39426_1; 39416_0; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                q[j] = 0.5 * (buf[1][j] * ue[1][j] + buf[2][j] * ue[2][j] + buf[3][j] * ue[3][j]);
            }
            /*OUT: {
            Reverse<--, 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39482_0; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<--, 39482_0; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                jm1 = j - 1;
                /*OUT: {
                Reverse<--, 39482_0; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                jp1 = j + 1;
                /*OUT: {
                Reverse<--, 39482_0; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                forcing[0][i][j][k] = forcing[0][i][j][k] - ty2 * (ue[2][jp1] - ue[2][jm1]) + dy1ty1 * (ue[0][jp1] - 2.0 * ue[0][j] + ue[0][jm1]);
                /*OUT: {
                Reverse<--, 39482_0; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                forcing[1][i][j][k] = forcing[1][i][j][k] - ty2 * (ue[1][jp1] * buf[2][jp1] - ue[1][jm1] * buf[2][jm1]) + yycon2 * (buf[1][jp1] - 2.0 * buf[1][j] + buf[1][jm1]) + dy2ty1 * (ue[1][jp1] - 2.0 * ue[1][j] + ue[1][jm1]);
                /*OUT: {
                Reverse<--, 39482_0; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                forcing[2][i][j][k] = forcing[2][i][j][k] - ty2 * ((ue[2][jp1] * buf[2][jp1] + c2 * (ue[4][jp1] - q[jp1])) - (ue[2][jm1] * buf[2][jm1] + c2 * (ue[4][jm1] - q[jm1]))) + yycon1 * (buf[2][jp1] - 2.0 * buf[2][j] + buf[2][jm1]) + dy3ty1 * (ue[2][jp1] - 2.0 * ue[2][j] + ue[2][jm1]);
                /*OUT: {
                Reverse<--, 39482_0; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                forcing[3][i][j][k] = forcing[3][i][j][k] - ty2 * (ue[3][jp1] * buf[2][jp1] - ue[3][jm1] * buf[2][jm1]) + yycon2 * (buf[3][jp1] - 2.0 * buf[3][j] + buf[3][jm1]) + dy4ty1 * (ue[3][jp1] - 2.0 * ue[3][j] + ue[3][jm1]);
                /*OUT: {
                Reverse<--, 39482_0; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                forcing[4][i][j][k] = forcing[4][i][j][k] - ty2 * (buf[2][jp1] * (c1 * ue[4][jp1] - c2 * q[jp1]) - buf[2][jm1] * (c1 * ue[4][jm1] - c2 * q[jm1])) + 0.5 * yycon3 * (buf[0][jp1] - 2.0 * buf[0][j] + buf[0][jm1]) + yycon4 * (cuf[jp1] - 2.0 * cuf[j] + cuf[jm1]) + yycon5 * (buf[4][jp1] - 2.0 * buf[4][j] + buf[4][jm1]) + dy5ty1 * (ue[4][jp1] - 2.0 * ue[4][j] + ue[4][jm1]);
            }
            /*OUT: {
            Reverse<--, 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39668_0; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 39668_0; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                j = 1;
                /*OUT: {
                Reverse<--, 39668_0; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (5.0 * ue[m][j] - 4.0 * ue[m][j + 1] + ue[m][j + 2]);
                /*OUT: {
                Reverse<--, 39668_0; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                j = 2;
                /*OUT: {
                Reverse<--, 39668_0; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (-4.0 * ue[m][j - 1] + 6.0 * ue[m][j] - 4.0 * ue[m][j + 1] + ue[m][j + 2]);
            }
            /*OUT: {
            Reverse<--, 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39715_1; 39711_0; 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 39711_0; 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39711_0; 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39715_0; 39711_0; 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                for (j = 3; j <= grid_points[1] - 4; j++) {
                    /*OUT: {
                    Reverse<--, 39715_0; 39711_0; 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                    forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][j - 2] - 4.0 * ue[m][j - 1] + 6.0 * ue[m][j] - 4.0 * ue[m][j + 1] + ue[m][j + 2]);
                }
            }
            /*OUT: {
            Reverse<--, 39711_1; 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39711_1; 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39739_0; 39711_1; 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 39739_0; 39711_1; 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                j = grid_points[1] - 3;
                /*OUT: {
                Reverse<--, 39739_0; 39711_1; 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][j - 2] - 4.0 * ue[m][j - 1] + 6.0 * ue[m][j] - 4.0 * ue[m][j + 1]);
                /*OUT: {
                Reverse<--, 39739_0; 39711_1; 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                j = grid_points[1] - 2;
                /*OUT: {
                Reverse<--, 39739_0; 39711_1; 39668_1; 39482_1; 39416_1; 39410_0; 39404_0; 39023_1; 39001_1;>}*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][j - 2] - 4.0 * ue[m][j - 1] + 5.0 * ue[m][j]);
            }
        }
    }
    /*OUT: {
    Reverse<--, 39404_1; 39023_1; 39001_1;>}*/
    /*OUT: {
    Reverse<--, 39404_1; 39023_1; 39001_1;>}*/
    /*OUT: {
    Reverse<--, 39791_1; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
        /*OUT: {
        Reverse<--, 39785_0; 39404_1; 39023_1; 39001_1;>}*/
        eta = (double) j * dnym1;
        /*OUT: {
        Reverse<--, 39785_0; 39404_1; 39023_1; 39001_1;>}*/
        /*OUT: {
        Reverse<--, 39785_0; 39404_1; 39023_1; 39001_1;>}*/
        /*OUT: {
        Reverse<--, 40120_1; 40092_1; 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: {
            Reverse<--, 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            xi = (double) i * dnxm1;
            /*OUT: {
            Reverse<--, 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39818_1; 39807_1; 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<--, 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                zeta = (double) k * dnzm1;
                /*OUT: {
                Reverse<--, 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                exact_solution(xi, eta, zeta, dtemp);
                /*OUT: {
                Reverse<--, 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39807_0; 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 39807_0; 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                    ue[m][k] = dtemp[m];
                }
                /*OUT: {
                Reverse<--, 39807_1; 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                dtpp = 1.0 / dtemp[0];
                /*OUT: {
                Reverse<--, 39807_1; 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39807_1; 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 39818_0; 39807_1; 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                for (m = 1; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 39818_0; 39807_1; 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                    buf[m][k] = dtpp * dtemp[m];
                }
                /*OUT: {
                Reverse<--, 39818_1; 39807_1; 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                cuf[k] = buf[3][k] * buf[3][k];
                /*OUT: {
                Reverse<--, 39818_1; 39807_1; 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                buf[0][k] = cuf[k] + buf[1][k] * buf[1][k] + buf[2][k] * buf[2][k];
                /*OUT: {
                Reverse<--, 39818_1; 39807_1; 39797_0; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                q[k] = 0.5 * (buf[1][k] * ue[1][k] + buf[2][k] * ue[2][k] + buf[3][k] * ue[3][k]);
            }
            /*OUT: {
            Reverse<--, 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39863_0; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: {
                Reverse<--, 39863_0; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                km1 = k - 1;
                /*OUT: {
                Reverse<--, 39863_0; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                kp1 = k + 1;
                /*OUT: {
                Reverse<--, 39863_0; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                forcing[0][i][j][k] = forcing[0][i][j][k] - tz2 * (ue[3][kp1] - ue[3][km1]) + dz1tz1 * (ue[0][kp1] - 2.0 * ue[0][k] + ue[0][km1]);
                /*OUT: {
                Reverse<--, 39863_0; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                forcing[1][i][j][k] = forcing[1][i][j][k] - tz2 * (ue[1][kp1] * buf[3][kp1] - ue[1][km1] * buf[3][km1]) + zzcon2 * (buf[1][kp1] - 2.0 * buf[1][k] + buf[1][km1]) + dz2tz1 * (ue[1][kp1] - 2.0 * ue[1][k] + ue[1][km1]);
                /*OUT: {
                Reverse<--, 39863_0; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                forcing[2][i][j][k] = forcing[2][i][j][k] - tz2 * (ue[2][kp1] * buf[3][kp1] - ue[2][km1] * buf[3][km1]) + zzcon2 * (buf[2][kp1] - 2.0 * buf[2][k] + buf[2][km1]) + dz3tz1 * (ue[2][kp1] - 2.0 * ue[2][k] + ue[2][km1]);
                /*OUT: {
                Reverse<--, 39863_0; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                forcing[3][i][j][k] = forcing[3][i][j][k] - tz2 * ((ue[3][kp1] * buf[3][kp1] + c2 * (ue[4][kp1] - q[kp1])) - (ue[3][km1] * buf[3][km1] + c2 * (ue[4][km1] - q[km1]))) + zzcon1 * (buf[3][kp1] - 2.0 * buf[3][k] + buf[3][km1]) + dz4tz1 * (ue[3][kp1] - 2.0 * ue[3][k] + ue[3][km1]);
                /*OUT: {
                Reverse<--, 39863_0; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                forcing[4][i][j][k] = forcing[4][i][j][k] - tz2 * (buf[3][kp1] * (c1 * ue[4][kp1] - c2 * q[kp1]) - buf[3][km1] * (c1 * ue[4][km1] - c2 * q[km1])) + 0.5 * zzcon3 * (buf[0][kp1] - 2.0 * buf[0][k] + buf[0][km1]) + zzcon4 * (cuf[kp1] - 2.0 * cuf[k] + cuf[km1]) + zzcon5 * (buf[4][kp1] - 2.0 * buf[4][k] + buf[4][km1]) + dz5tz1 * (ue[4][kp1] - 2.0 * ue[4][k] + ue[4][km1]);
            }
            /*OUT: {
            Reverse<--, 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 40049_0; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 40049_0; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                k = 1;
                /*OUT: {
                Reverse<--, 40049_0; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (5.0 * ue[m][k] - 4.0 * ue[m][k + 1] + ue[m][k + 2]);
                /*OUT: {
                Reverse<--, 40049_0; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                k = 2;
                /*OUT: {
                Reverse<--, 40049_0; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (-4.0 * ue[m][k - 1] + 6.0 * ue[m][k] - 4.0 * ue[m][k + 1] + ue[m][k + 2]);
            }
            /*OUT: {
            Reverse<--, 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 40096_1; 40092_0; 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 40092_0; 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 40092_0; 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 40096_0; 40092_0; 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                for (k = 3; k <= grid_points[2] - 4; k++) {
                    /*OUT: {
                    Reverse<--, 40096_0; 40092_0; 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                    forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][k - 2] - 4.0 * ue[m][k - 1] + 6.0 * ue[m][k] - 4.0 * ue[m][k + 1] + ue[m][k + 2]);
                }
            }
            /*OUT: {
            Reverse<--, 40092_1; 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 40092_1; 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 40120_0; 40092_1; 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 40120_0; 40092_1; 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                k = grid_points[2] - 3;
                /*OUT: {
                Reverse<--, 40120_0; 40092_1; 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][k - 2] - 4.0 * ue[m][k - 1] + 6.0 * ue[m][k] - 4.0 * ue[m][k + 1]);
                /*OUT: {
                Reverse<--, 40120_0; 40092_1; 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                k = grid_points[2] - 2;
                /*OUT: {
                Reverse<--, 40120_0; 40092_1; 40049_1; 39863_1; 39797_1; 39791_0; 39785_0; 39404_1; 39023_1; 39001_1;>}*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][k - 2] - 4.0 * ue[m][k - 1] + 5.0 * ue[m][k]);
            }
        }
    }
    /*OUT: {
    Reverse<--, 39785_1; 39404_1; 39023_1; 39001_1;>}*/
    /*OUT: {
    Reverse<--, 39785_1; 39404_1; 39023_1; 39001_1;>}*/
    /*OUT: {
    Reverse<--, 40169_1; 40165_0; 39785_1; 39404_1; 39023_1; 39001_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 40165_0; 39785_1; 39404_1; 39023_1; 39001_1;>}*/
        /*OUT: {
        Reverse<--, 40165_0; 39785_1; 39404_1; 39023_1; 39001_1;>}*/
        /*OUT: {
        Reverse<--, 40173_1; 40169_0; 40165_0; 39785_1; 39404_1; 39023_1; 39001_1;>}*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: {
            Reverse<--, 40169_0; 40165_0; 39785_1; 39404_1; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 40169_0; 40165_0; 39785_1; 39404_1; 39023_1; 39001_1;>}*/
            /*OUT: {
            Reverse<--, 40177_1; 40173_0; 40169_0; 40165_0; 39785_1; 39404_1; 39023_1; 39001_1;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<--, 40173_0; 40169_0; 40165_0; 39785_1; 39404_1; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 40173_0; 40169_0; 40165_0; 39785_1; 39404_1; 39023_1; 39001_1;>}*/
                /*OUT: {
                Reverse<--, 40177_0; 40173_0; 40169_0; 40165_0; 39785_1; 39404_1; 39023_1; 39001_1;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<--, 40177_0; 40173_0; 40169_0; 40165_0; 39785_1; 39404_1; 39023_1; 39001_1;>}*/
                    forcing[m][i][j][k] = -1.0 * forcing[m][i][j][k];
                }
            }
        }
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
    Reverse<--, 40195_0;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 40195_0;>}*/
        dtemp[m] = ce[0][m] + xi * (ce[1][m] + xi * (ce[4][m] + xi * (ce[7][m] + xi * ce[10][m]))) + eta * (ce[2][m] + eta * (ce[5][m] + eta * (ce[8][m] + eta * ce[11][m]))) + zeta * (ce[3][m] + zeta * (ce[6][m] + zeta * (ce[9][m] + zeta * ce[12][m])));
    }
}
static void initialize() {
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
    int ix;
    /*OUT: {
    Reverse<--,>}*/
    int iy;
    /*OUT: {
    Reverse<--,>}*/
    int iz;
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
    double Pface[2][3][5];
    /*OUT: {
    Reverse<--,>}*/
    double Pxi;
    /*OUT: {
    Reverse<--,>}*/
    double Peta;
    /*OUT: {
    Reverse<--,>}*/
    double Pzeta;
    /*OUT: {
    Reverse<--,>}*/
    double temp[5];
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 40254_1; 40251_0;>}*/
    for (i = 0; i <= 12 - 1; i++) {
        /*OUT: {
        Reverse<--, 40251_0;>}*/
        /*OUT: {
        Reverse<--, 40251_0;>}*/
        /*OUT: {
        Reverse<--, 40257_1; 40254_0; 40251_0;>}*/
        for (j = 0; j <= 12 - 1; j++) {
            /*OUT: {
            Reverse<--, 40254_0; 40251_0;>}*/
            /*OUT: {
            Reverse<--, 40254_0; 40251_0;>}*/
            /*OUT: {
            Reverse<--, 40257_0; 40254_0; 40251_0;>}*/
            for (k = 0; k <= 12 - 1; k++) {
                /*OUT: {
                Reverse<--, 40257_0; 40254_0; 40251_0;>}*/
                u[0][i][j][k] = 1.0;
                /*OUT: {
                Reverse<--, 40257_0; 40254_0; 40251_0;>}*/
                u[1][i][j][k] = 0.0;
                /*OUT: {
                Reverse<--, 40257_0; 40254_0; 40251_0;>}*/
                u[2][i][j][k] = 0.0;
                /*OUT: {
                Reverse<--, 40257_0; 40254_0; 40251_0;>}*/
                u[3][i][j][k] = 0.0;
                /*OUT: {
                Reverse<--, 40257_0; 40254_0; 40251_0;>}*/
                u[4][i][j][k] = 1.0;
            }
        }
    }
    /*OUT: {
    Reverse<--, 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40297_1; 40291_0; 40251_1;>}*/
    for (i = 0; i <= grid_points[0] - 1; i++) {
        /*OUT: {
        Reverse<--, 40291_0; 40251_1;>}*/
        xi = (double) i * dnxm1;
        /*OUT: {
        Reverse<--, 40291_0; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40291_0; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40303_1; 40297_0; 40291_0; 40251_1;>}*/
        for (j = 0; j <= grid_points[1] - 1; j++) {
            /*OUT: {
            Reverse<--, 40297_0; 40291_0; 40251_1;>}*/
            eta = (double) j * dnym1;
            /*OUT: {
            Reverse<--, 40297_0; 40291_0; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40297_0; 40291_0; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40359_1; 40342_1; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<--, 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                zeta = (double) k * dnzm1;
                /*OUT: {
                Reverse<--, 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                /*OUT: {
                Reverse<--, 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                /*OUT: {
                Reverse<--, 40308_0; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                for (ix = 0; ix < 2; ix++) {
                    /*OUT: {
                    Reverse<--, 40308_0; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    double *_imopVarPre195;
                    /*OUT: {
                    Reverse<--, 40308_0; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    double _imopVarPre196;
                    /*OUT: {
                    Reverse<--, 40308_0; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    _imopVarPre195 = &Pface[ix][0][0];
                    /*OUT: {
                    Reverse<--, 40308_0; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    _imopVarPre196 = (double) ix;
                    /*OUT: {
                    Reverse<--, 40308_0; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    exact_solution(_imopVarPre196, eta, zeta, _imopVarPre195);
                    /*OUT: {
                    Reverse<--, 40308_0; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                }
                /*OUT: {
                Reverse<--, 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                /*OUT: {
                Reverse<--, 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                /*OUT: {
                Reverse<--, 40325_0; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                for (iy = 0; iy < 2; iy++) {
                    /*OUT: {
                    Reverse<--, 40325_0; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    double *_imopVarPre199;
                    /*OUT: {
                    Reverse<--, 40325_0; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    double _imopVarPre200;
                    /*OUT: {
                    Reverse<--, 40325_0; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    _imopVarPre199 = &Pface[iy][1][0];
                    /*OUT: {
                    Reverse<--, 40325_0; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    _imopVarPre200 = (double) iy;
                    /*OUT: {
                    Reverse<--, 40325_0; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    exact_solution(xi, _imopVarPre200, zeta, _imopVarPre199);
                    /*OUT: {
                    Reverse<--, 40325_0; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                }
                /*OUT: {
                Reverse<--, 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                /*OUT: {
                Reverse<--, 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                /*OUT: {
                Reverse<--, 40342_0; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                for (iz = 0; iz < 2; iz++) {
                    /*OUT: {
                    Reverse<--, 40342_0; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    double *_imopVarPre203;
                    /*OUT: {
                    Reverse<--, 40342_0; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    double _imopVarPre204;
                    /*OUT: {
                    Reverse<--, 40342_0; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    _imopVarPre203 = &Pface[iz][2][0];
                    /*OUT: {
                    Reverse<--, 40342_0; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    _imopVarPre204 = (double) iz;
                    /*OUT: {
                    Reverse<--, 40342_0; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    exact_solution(xi, eta, _imopVarPre204, _imopVarPre203);
                    /*OUT: {
                    Reverse<--, 40342_0; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                }
                /*OUT: {
                Reverse<--, 40342_1; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                /*OUT: {
                Reverse<--, 40342_1; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                /*OUT: {
                Reverse<--, 40359_0; 40342_1; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 40359_0; 40342_1; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    Pxi = xi * Pface[1][0][m] + (1.0 - xi) * Pface[0][0][m];
                    /*OUT: {
                    Reverse<--, 40359_0; 40342_1; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    Peta = eta * Pface[1][1][m] + (1.0 - eta) * Pface[0][1][m];
                    /*OUT: {
                    Reverse<--, 40359_0; 40342_1; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    Pzeta = zeta * Pface[1][2][m] + (1.0 - zeta) * Pface[0][2][m];
                    /*OUT: {
                    Reverse<--, 40359_0; 40342_1; 40325_1; 40308_1; 40303_0; 40297_0; 40291_0; 40251_1;>}*/
                    u[m][i][j][k] = Pxi + Peta + Pzeta - Pxi * Peta - Pxi * Pzeta - Peta * Pzeta + Pxi * Peta * Pzeta;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 40291_1; 40251_1;>}*/
    xi = 0.0;
    /*OUT: {
    Reverse<--, 40291_1; 40251_1;>}*/
    i = 0;
    /*OUT: {
    Reverse<--, 40291_1; 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40291_1; 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40406_1; 40400_0; 40291_1; 40251_1;>}*/
    for (j = 0; j < grid_points[1]; j++) {
        /*OUT: {
        Reverse<--, 40400_0; 40291_1; 40251_1;>}*/
        eta = (double) j * dnym1;
        /*OUT: {
        Reverse<--, 40400_0; 40291_1; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40400_0; 40291_1; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40416_1; 40406_0; 40400_0; 40291_1; 40251_1;>}*/
        for (k = 0; k < grid_points[2]; k++) {
            /*OUT: {
            Reverse<--, 40406_0; 40400_0; 40291_1; 40251_1;>}*/
            zeta = (double) k * dnzm1;
            /*OUT: {
            Reverse<--, 40406_0; 40400_0; 40291_1; 40251_1;>}*/
            exact_solution(xi, eta, zeta, temp);
            /*OUT: {
            Reverse<--, 40406_0; 40400_0; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40406_0; 40400_0; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40406_0; 40400_0; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40416_0; 40406_0; 40400_0; 40291_1; 40251_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 40416_0; 40406_0; 40400_0; 40291_1; 40251_1;>}*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*OUT: {
    Reverse<--, 40400_1; 40291_1; 40251_1;>}*/
    xi = 1.0;
    /*OUT: {
    Reverse<--, 40400_1; 40291_1; 40251_1;>}*/
    i = grid_points[0] - 1;
    /*OUT: {
    Reverse<--, 40400_1; 40291_1; 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40400_1; 40291_1; 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40438_1; 40432_0; 40400_1; 40291_1; 40251_1;>}*/
    for (j = 0; j < grid_points[1]; j++) {
        /*OUT: {
        Reverse<--, 40432_0; 40400_1; 40291_1; 40251_1;>}*/
        eta = (double) j * dnym1;
        /*OUT: {
        Reverse<--, 40432_0; 40400_1; 40291_1; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40432_0; 40400_1; 40291_1; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40448_1; 40438_0; 40432_0; 40400_1; 40291_1; 40251_1;>}*/
        for (k = 0; k < grid_points[2]; k++) {
            /*OUT: {
            Reverse<--, 40438_0; 40432_0; 40400_1; 40291_1; 40251_1;>}*/
            zeta = (double) k * dnzm1;
            /*OUT: {
            Reverse<--, 40438_0; 40432_0; 40400_1; 40291_1; 40251_1;>}*/
            exact_solution(xi, eta, zeta, temp);
            /*OUT: {
            Reverse<--, 40438_0; 40432_0; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40438_0; 40432_0; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40438_0; 40432_0; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40448_0; 40438_0; 40432_0; 40400_1; 40291_1; 40251_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 40448_0; 40438_0; 40432_0; 40400_1; 40291_1; 40251_1;>}*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*OUT: {
    Reverse<--, 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    eta = 0.0;
    /*OUT: {
    Reverse<--, 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    j = 0;
    /*OUT: {
    Reverse<--, 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40469_1; 40463_0; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: {
        Reverse<--, 40463_0; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        xi = (double) i * dnxm1;
        /*OUT: {
        Reverse<--, 40463_0; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40463_0; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40479_1; 40469_0; 40463_0; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        for (k = 0; k < grid_points[2]; k++) {
            /*OUT: {
            Reverse<--, 40469_0; 40463_0; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            zeta = (double) k * dnzm1;
            /*OUT: {
            Reverse<--, 40469_0; 40463_0; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            exact_solution(xi, eta, zeta, temp);
            /*OUT: {
            Reverse<--, 40469_0; 40463_0; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40469_0; 40463_0; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40469_0; 40463_0; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40479_0; 40469_0; 40463_0; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 40479_0; 40469_0; 40463_0; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*OUT: {
    Reverse<--, 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    eta = 1.0;
    /*OUT: {
    Reverse<--, 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    j = grid_points[1] - 1;
    /*OUT: {
    Reverse<--, 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40501_1; 40495_0; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: {
        Reverse<--, 40495_0; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        xi = (double) i * dnxm1;
        /*OUT: {
        Reverse<--, 40495_0; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40495_0; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40511_1; 40501_0; 40495_0; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        for (k = 0; k < grid_points[2]; k++) {
            /*OUT: {
            Reverse<--, 40501_0; 40495_0; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            zeta = (double) k * dnzm1;
            /*OUT: {
            Reverse<--, 40501_0; 40495_0; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            exact_solution(xi, eta, zeta, temp);
            /*OUT: {
            Reverse<--, 40501_0; 40495_0; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40501_0; 40495_0; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40501_0; 40495_0; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40511_0; 40501_0; 40495_0; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 40511_0; 40501_0; 40495_0; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*OUT: {
    Reverse<--, 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    zeta = 0.0;
    /*OUT: {
    Reverse<--, 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    k = 0;
    /*OUT: {
    Reverse<--, 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40532_1; 40526_0; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: {
        Reverse<--, 40526_0; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        xi = (double) i * dnxm1;
        /*OUT: {
        Reverse<--, 40526_0; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40526_0; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40542_1; 40532_0; 40526_0; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: {
            Reverse<--, 40532_0; 40526_0; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            eta = (double) j * dnym1;
            /*OUT: {
            Reverse<--, 40532_0; 40526_0; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            exact_solution(xi, eta, zeta, temp);
            /*OUT: {
            Reverse<--, 40532_0; 40526_0; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40532_0; 40526_0; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40532_0; 40526_0; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40542_0; 40532_0; 40526_0; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 40542_0; 40532_0; 40526_0; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*OUT: {
    Reverse<--, 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    zeta = 1.0;
    /*OUT: {
    Reverse<--, 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    k = grid_points[2] - 1;
    /*OUT: {
    Reverse<--, 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    /*OUT: {
    Reverse<--, 40564_1; 40558_0; 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: {
        Reverse<--, 40558_0; 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        xi = (double) i * dnxm1;
        /*OUT: {
        Reverse<--, 40558_0; 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40558_0; 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        /*OUT: {
        Reverse<--, 40574_1; 40564_0; 40558_0; 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: {
            Reverse<--, 40564_0; 40558_0; 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            eta = (double) j * dnym1;
            /*OUT: {
            Reverse<--, 40564_0; 40558_0; 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            exact_solution(xi, eta, zeta, temp);
            /*OUT: {
            Reverse<--, 40564_0; 40558_0; 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40564_0; 40558_0; 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40564_0; 40558_0; 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            /*OUT: {
            Reverse<--, 40574_0; 40564_0; 40558_0; 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 40574_0; 40564_0; 40558_0; 40526_1; 40495_1; 40463_1; 40432_1; 40400_1; 40291_1; 40251_1;>}*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
}
static void lhsinit() {
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
    int n;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 40588_0;>}*/
    for (n = 0; n < 15; n++) {
#pragma omp for nowait
        /*OUT: {
        Reverse<--, 40588_0;>}*/
        /*OUT: {
        Reverse<--, 40588_0;>}*/
        /*OUT: {
        Reverse<--, 40598_1; 40588_0;>}*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: {
            Reverse<--, 40588_0;>}*/
            /*OUT: {
            Reverse<--, 40588_0;>}*/
            /*OUT: {
            Reverse<--, 40602_1; 40598_0; 40588_0;>}*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: {
                Reverse<--, 40598_0; 40588_0;>}*/
                /*OUT: {
                Reverse<--, 40598_0; 40588_0;>}*/
                /*OUT: {
                Reverse<--, 40602_0; 40598_0; 40588_0;>}*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: {
                    Reverse<--, 40602_0; 40598_0; 40588_0;>}*/
                    lhs[n][i][j][k] = 0.0;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 40588_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<40610,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<40610,>}*/
    /*OUT: {
    Reverse<40610,>
    Reverse<40634,>}*/
    /*OUT: {
    Reverse<40634,>}*/
    for (n = 0; n < 3; n++) {
#pragma omp for nowait
        /*OUT: {
        Reverse<40610, 40612_0;>
        Reverse<40634, 40612_0;>}*/
        /*OUT: {
        Reverse<40610, 40612_0;>
        Reverse<40634, 40612_0;>}*/
        /*OUT: {
        Reverse<40610, 40622_1; 40612_0;>
        Reverse<40634, 40622_1; 40612_0;>}*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: {
            Reverse<40610, 40612_0;>
            Reverse<40634, 40612_0;>}*/
            /*OUT: {
            Reverse<40610, 40612_0;>
            Reverse<40634, 40612_0;>}*/
            /*OUT: {
            Reverse<40610, 40626_1; 40622_0; 40612_0;>
            Reverse<40634, 40626_1; 40622_0; 40612_0;>}*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: {
                Reverse<40610, 40622_0; 40612_0;>
                Reverse<40634, 40622_0; 40612_0;>}*/
                /*OUT: {
                Reverse<40610, 40622_0; 40612_0;>
                Reverse<40634, 40622_0; 40612_0;>}*/
                /*OUT: {
                Reverse<40610, 40626_0; 40622_0; 40612_0;>
                Reverse<40634, 40626_0; 40622_0; 40612_0;>}*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: {
                    Reverse<40610, 40626_0; 40622_0; 40612_0;>
                    Reverse<40634, 40626_0; 40622_0; 40612_0;>}*/
                    lhs[5 * n + 2][i][j][k] = 1.0;
                }
            }
        }
        /*OUT: {
        Reverse<40610, 40612_0;>
        Reverse<40634, 40612_0;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<40634,>}*/
#pragma omp barrier
    }
}
static void lhsx() {
    /*OUT: {
    Reverse<--,>}*/
    double ru1;
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
    /*OUT: {
    Reverse<--,>
    Reverse<40793, 40645_1;>}*/
    /*OUT: {
    Reverse<40793, 40645_1;>
    Reverse<--, 40645_1; 40641_0;>}*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
        /*OUT: {
        Reverse<40793, 40641_0; 40645_1;>
        Reverse<--, 40641_0;>}*/
        /*OUT: {
        Reverse<40793,>
        Reverse<--, 40641_0;>}*/
        /*OUT: {
        Reverse<40793,>}*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<40793, 40645_0;>
            Reverse<--, 40645_0; 40641_0;>}*/
            /*OUT: {
            Reverse<40793, 40645_0;>
            Reverse<--, 40645_0; 40641_0;>}*/
            /*OUT: {
            Reverse<40793, 40645_0;>
            Reverse<--, 40645_0; 40641_0;>}*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                cv[i] = us[i][j][k];
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                int _imopVarPre715;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                double _imopVarPre716;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                int _imopVarPre717;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                double _imopVarPre718;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                int _imopVarPre725;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                double _imopVarPre726;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                int _imopVarPre727;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                double _imopVarPre728;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                int _imopVarPre821;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                double _imopVarPre822;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                int _imopVarPre823;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                double _imopVarPre824;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                int _imopVarPre831;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                double _imopVarPre832;
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                _imopVarPre715 = ((dxmax + ru1) > dx1);
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                if (_imopVarPre715) {
                    /*OUT: {
                    Reverse<--, 40682_0; 40645_0; 40641_0;>
                    Reverse<40793, 40682_0; 40645_0;>}*/
                    _imopVarPre716 = (dxmax + ru1);
                } else {
                    /*OUT: {
                    Reverse<--, 40682_1; 40645_0; 40641_0;>
                    Reverse<40793, 40682_1; 40645_0;>}*/
                    _imopVarPre716 = dx1;
                }
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                _imopVarPre717 = ((dx5 + c1c5 * ru1) > _imopVarPre716);
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                if (_imopVarPre717) {
                    /*OUT: {
                    Reverse<40793, 40692_0; 40645_0;>
                    Reverse<--, 40692_0; 40645_0; 40641_0;>}*/
                    _imopVarPre718 = (dx5 + c1c5 * ru1);
                } else {
                    /*OUT: {
                    Reverse<40793, 40692_1; 40645_0;>
                    Reverse<--, 40692_1; 40645_0; 40641_0;>}*/
                    _imopVarPre725 = ((dxmax + ru1) > dx1);
                    /*OUT: {
                    Reverse<40793, 40692_1; 40645_0;>
                    Reverse<--, 40692_1; 40645_0; 40641_0;>}*/
                    if (_imopVarPre725) {
                        /*OUT: {
                        Reverse<--, 40700_0; 40692_1; 40645_0; 40641_0;>
                        Reverse<40793, 40700_0; 40692_1; 40645_0;>}*/
                        _imopVarPre726 = (dxmax + ru1);
                    } else {
                        /*OUT: {
                        Reverse<40793, 40700_1; 40692_1; 40645_0;>
                        Reverse<--, 40700_1; 40692_1; 40645_0; 40641_0;>}*/
                        _imopVarPre726 = dx1;
                    }
                    /*OUT: {
                    Reverse<40793, 40692_1; 40645_0;>
                    Reverse<--, 40692_1; 40645_0; 40641_0;>}*/
                    _imopVarPre718 = _imopVarPre726;
                }
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                _imopVarPre727 = ((dx2 + con43 * ru1) > _imopVarPre718);
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                if (_imopVarPre727) {
                    /*OUT: {
                    Reverse<40793, 40712_0; 40645_0;>
                    Reverse<--, 40712_0; 40645_0; 40641_0;>}*/
                    _imopVarPre728 = (dx2 + con43 * ru1);
                } else {
                    /*OUT: {
                    Reverse<40793, 40712_1; 40645_0;>
                    Reverse<--, 40712_1; 40645_0; 40641_0;>}*/
                    _imopVarPre821 = ((dxmax + ru1) > dx1);
                    /*OUT: {
                    Reverse<40793, 40712_1; 40645_0;>
                    Reverse<--, 40712_1; 40645_0; 40641_0;>}*/
                    if (_imopVarPre821) {
                        /*OUT: {
                        Reverse<40793, 40720_0; 40712_1; 40645_0;>
                        Reverse<--, 40720_0; 40712_1; 40645_0; 40641_0;>}*/
                        _imopVarPre822 = (dxmax + ru1);
                    } else {
                        /*OUT: {
                        Reverse<--, 40720_1; 40712_1; 40645_0; 40641_0;>
                        Reverse<40793, 40720_1; 40712_1; 40645_0;>}*/
                        _imopVarPre822 = dx1;
                    }
                    /*OUT: {
                    Reverse<40793, 40712_1; 40645_0;>
                    Reverse<--, 40712_1; 40645_0; 40641_0;>}*/
                    _imopVarPre823 = ((dx5 + c1c5 * ru1) > _imopVarPre822);
                    /*OUT: {
                    Reverse<40793, 40712_1; 40645_0;>
                    Reverse<--, 40712_1; 40645_0; 40641_0;>}*/
                    if (_imopVarPre823) {
                        /*OUT: {
                        Reverse<--, 40730_0; 40712_1; 40645_0; 40641_0;>
                        Reverse<40793, 40730_0; 40712_1; 40645_0;>}*/
                        _imopVarPre824 = (dx5 + c1c5 * ru1);
                    } else {
                        /*OUT: {
                        Reverse<40793, 40730_1; 40712_1; 40645_0;>
                        Reverse<--, 40730_1; 40712_1; 40645_0; 40641_0;>}*/
                        _imopVarPre831 = ((dxmax + ru1) > dx1);
                        /*OUT: {
                        Reverse<40793, 40730_1; 40712_1; 40645_0;>
                        Reverse<--, 40730_1; 40712_1; 40645_0; 40641_0;>}*/
                        if (_imopVarPre831) {
                            /*OUT: {
                            Reverse<40793, 40738_0; 40730_1; 40712_1; 40645_0;>
                            Reverse<--, 40738_0; 40730_1; 40712_1; 40645_0; 40641_0;>}*/
                            _imopVarPre832 = (dxmax + ru1);
                        } else {
                            /*OUT: {
                            Reverse<--, 40738_1; 40730_1; 40712_1; 40645_0; 40641_0;>
                            Reverse<40793, 40738_1; 40730_1; 40712_1; 40645_0;>}*/
                            _imopVarPre832 = dx1;
                        }
                        /*OUT: {
                        Reverse<40793, 40730_1; 40712_1; 40645_0;>
                        Reverse<--, 40730_1; 40712_1; 40645_0; 40641_0;>}*/
                        _imopVarPre824 = _imopVarPre832;
                    }
                    /*OUT: {
                    Reverse<40793, 40712_1; 40645_0;>
                    Reverse<--, 40712_1; 40645_0; 40641_0;>}*/
                    _imopVarPre728 = _imopVarPre824;
                }
                /*OUT: {
                Reverse<40793, 40645_0;>
                Reverse<--, 40645_0; 40641_0;>}*/
                rhon[i] = _imopVarPre728;
            }
            /*OUT: {
            Reverse<40793, 40645_0;>
            Reverse<--, 40645_0; 40641_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<40751,>}*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: {
            Reverse<40751,>}*/
            /*OUT: {
            Reverse<40751,>}*/
            /*OUT: {
            Reverse<40751,>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<40751,>}*/
                lhs[0][i][j][k] = 0.0;
                /*OUT: {
                Reverse<40751,>}*/
                lhs[1][i][j][k] = -dttx2 * cv[i - 1] - dttx1 * rhon[i - 1];
                /*OUT: {
                Reverse<40751,>}*/
                lhs[2][i][j][k] = 1.0 + c2dttx1 * rhon[i];
                /*OUT: {
                Reverse<40751,>}*/
                lhs[3][i][j][k] = dttx2 * cv[i + 1] - dttx1 * rhon[i + 1];
                /*OUT: {
                Reverse<40751,>}*/
                lhs[4][i][j][k] = 0.0;
            }
            /*OUT: {
            Reverse<40751,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<40793,>}*/
#pragma omp barrier
        }
    }
    /*OUT: {
    Reverse<40793, 40641_1; 40645_1;>
    Reverse<--, 40641_1;>}*/
    i = 1;
#pragma omp for nowait
    /*OUT: {
    Reverse<40793, 40641_1; 40645_1;>
    Reverse<--, 40641_1;>}*/
    /*OUT: {
    Reverse<40793, 40641_1; 40645_1;>
    Reverse<--, 40641_1;>}*/
    /*OUT: {
    Reverse<--, 40804_1; 40641_1;>
    Reverse<40793, 40804_1; 40641_1; 40645_1;>}*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
        /*OUT: {
        Reverse<40793, 40641_1; 40645_1;>
        Reverse<--, 40641_1;>}*/
        /*OUT: {
        Reverse<40793, 40641_1; 40645_1;>
        Reverse<--, 40641_1;>}*/
        /*OUT: {
        Reverse<--, 40804_0; 40641_1;>
        Reverse<40793, 40804_0; 40641_1; 40645_1;>}*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
            /*OUT: {
            Reverse<--, 40804_0; 40641_1;>
            Reverse<40793, 40804_0; 40641_1; 40645_1;>}*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*OUT: {
            Reverse<--, 40804_0; 40641_1;>
            Reverse<40793, 40804_0; 40641_1; 40645_1;>}*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*OUT: {
            Reverse<--, 40804_0; 40641_1;>
            Reverse<40793, 40804_0; 40641_1; 40645_1;>}*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*OUT: {
            Reverse<--, 40804_0; 40641_1;>
            Reverse<40793, 40804_0; 40641_1; 40645_1;>}*/
            lhs[1][i + 1][j][k] = lhs[1][i + 1][j][k] - comz4;
            /*OUT: {
            Reverse<--, 40804_0; 40641_1;>
            Reverse<40793, 40804_0; 40641_1; 40645_1;>}*/
            lhs[2][i + 1][j][k] = lhs[2][i + 1][j][k] + comz6;
            /*OUT: {
            Reverse<--, 40804_0; 40641_1;>
            Reverse<40793, 40804_0; 40641_1; 40645_1;>}*/
            lhs[3][i + 1][j][k] = lhs[3][i + 1][j][k] - comz4;
            /*OUT: {
            Reverse<--, 40804_0; 40641_1;>
            Reverse<40793, 40804_0; 40641_1; 40645_1;>}*/
            lhs[4][i + 1][j][k] = lhs[4][i + 1][j][k] + comz1;
        }
    }
#pragma omp for nowait
    /*OUT: {
    Reverse<40793, 40641_1; 40645_1;>
    Reverse<--, 40641_1;>}*/
    /*OUT: {
    Reverse<40793, 40641_1; 40645_1;>
    Reverse<--, 40641_1;>}*/
    /*OUT: {
    Reverse<--, 40884_1; 40641_1;>
    Reverse<40793, 40884_1; 40641_1; 40645_1;>}*/
    for (i = 3; i <= grid_points[0] - 4; i++) {
        /*OUT: {
        Reverse<40793, 40641_1; 40645_1;>
        Reverse<--, 40641_1;>}*/
        /*OUT: {
        Reverse<40793, 40641_1; 40645_1;>
        Reverse<--, 40641_1;>}*/
        /*OUT: {
        Reverse<40793, 40888_1; 40884_0; 40641_1; 40645_1;>
        Reverse<--, 40888_1; 40884_0; 40641_1;>}*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: {
            Reverse<--, 40884_0; 40641_1;>
            Reverse<40793, 40884_0; 40641_1; 40645_1;>}*/
            /*OUT: {
            Reverse<--, 40884_0; 40641_1;>
            Reverse<40793, 40884_0; 40641_1; 40645_1;>}*/
            /*OUT: {
            Reverse<--, 40888_0; 40884_0; 40641_1;>
            Reverse<40793, 40888_0; 40884_0; 40641_1; 40645_1;>}*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: {
                Reverse<--, 40888_0; 40884_0; 40641_1;>
                Reverse<40793, 40888_0; 40884_0; 40641_1; 40645_1;>}*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*OUT: {
                Reverse<--, 40888_0; 40884_0; 40641_1;>
                Reverse<40793, 40888_0; 40884_0; 40641_1; 40645_1;>}*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*OUT: {
                Reverse<--, 40888_0; 40884_0; 40641_1;>
                Reverse<40793, 40888_0; 40884_0; 40641_1; 40645_1;>}*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*OUT: {
                Reverse<--, 40888_0; 40884_0; 40641_1;>
                Reverse<40793, 40888_0; 40884_0; 40641_1; 40645_1;>}*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*OUT: {
                Reverse<--, 40888_0; 40884_0; 40641_1;>
                Reverse<40793, 40888_0; 40884_0; 40641_1; 40645_1;>}*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            }
        }
    }
    /*OUT: {
    Reverse<40793, 40641_1; 40645_1;>
    Reverse<--, 40641_1;>}*/
    i = grid_points[0] - 3;
#pragma omp for nowait
    /*OUT: {
    Reverse<40793, 40641_1; 40645_1;>
    Reverse<--, 40641_1;>}*/
    /*OUT: {
    Reverse<40793, 40641_1; 40645_1;>
    Reverse<--, 40641_1;>}*/
    /*OUT: {
    Reverse<40793, 40951_1; 40641_1; 40645_1;>
    Reverse<--, 40951_1; 40641_1;>}*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
        /*OUT: {
        Reverse<40793, 40641_1; 40645_1;>
        Reverse<--, 40641_1;>}*/
        /*OUT: {
        Reverse<40793, 40641_1; 40645_1;>
        Reverse<--, 40641_1;>}*/
        /*OUT: {
        Reverse<40793, 40951_0; 40641_1; 40645_1;>
        Reverse<--, 40951_0; 40641_1;>}*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
            /*OUT: {
            Reverse<40793, 40951_0; 40641_1; 40645_1;>
            Reverse<--, 40951_0; 40641_1;>}*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*OUT: {
            Reverse<40793, 40951_0; 40641_1; 40645_1;>
            Reverse<--, 40951_0; 40641_1;>}*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*OUT: {
            Reverse<40793, 40951_0; 40641_1; 40645_1;>
            Reverse<--, 40951_0; 40641_1;>}*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*OUT: {
            Reverse<40793, 40951_0; 40641_1; 40645_1;>
            Reverse<--, 40951_0; 40641_1;>}*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*OUT: {
            Reverse<40793, 40951_0; 40641_1; 40645_1;>
            Reverse<--, 40951_0; 40641_1;>}*/
            lhs[0][i + 1][j][k] = lhs[0][i + 1][j][k] + comz1;
            /*OUT: {
            Reverse<40793, 40951_0; 40641_1; 40645_1;>
            Reverse<--, 40951_0; 40641_1;>}*/
            lhs[1][i + 1][j][k] = lhs[1][i + 1][j][k] - comz4;
            /*OUT: {
            Reverse<40793, 40951_0; 40641_1; 40645_1;>
            Reverse<--, 40951_0; 40641_1;>}*/
            lhs[2][i + 1][j][k] = lhs[2][i + 1][j][k] + comz5;
        }
    }
    /*OUT: {
    Reverse<40793, 40641_1; 40645_1;>
    Reverse<--, 40641_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<41023,>}*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: {
    Reverse<41023,>}*/
    /*OUT: {
    Reverse<41023,>}*/
    /*OUT: {
    Reverse<41023, 41032_1;>}*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<41023,>}*/
        /*OUT: {
        Reverse<41023,>}*/
        /*OUT: {
        Reverse<41023, 41036_1; 41032_0;>}*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: {
            Reverse<41023, 41032_0;>}*/
            /*OUT: {
            Reverse<41023, 41032_0;>}*/
            /*OUT: {
            Reverse<41023, 41036_0; 41032_0;>}*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: {
                Reverse<41023, 41036_0; 41032_0;>}*/
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*OUT: {
                Reverse<41023, 41036_0; 41032_0;>}*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dttx2 * speed[i - 1][j][k];
                /*OUT: {
                Reverse<41023, 41036_0; 41032_0;>}*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*OUT: {
                Reverse<41023, 41036_0; 41032_0;>}*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dttx2 * speed[i + 1][j][k];
                /*OUT: {
                Reverse<41023, 41036_0; 41032_0;>}*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*OUT: {
                Reverse<41023, 41036_0; 41032_0;>}*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*OUT: {
                Reverse<41023, 41036_0; 41032_0;>}*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dttx2 * speed[i - 1][j][k];
                /*OUT: {
                Reverse<41023, 41036_0; 41032_0;>}*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*OUT: {
                Reverse<41023, 41036_0; 41032_0;>}*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dttx2 * speed[i + 1][j][k];
                /*OUT: {
                Reverse<41023, 41036_0; 41032_0;>}*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
            }
        }
    }
    /*OUT: {
    Reverse<41023,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<41150,>}*/
#pragma omp barrier
}
static void lhsy() {
    /*OUT: {
    Reverse<--,>}*/
    double ru1;
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
    /*OUT: {
    Reverse<--,>
    Reverse<41309, 41161_1;>}*/
    /*OUT: {
    Reverse<41309, 41161_1;>
    Reverse<--, 41161_1; 41157_0;>}*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<41309, 41157_0; 41161_1;>
        Reverse<--, 41157_0;>}*/
        /*OUT: {
        Reverse<41309,>
        Reverse<--, 41157_0;>}*/
        /*OUT: {
        Reverse<41309,>}*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<41309, 41161_0;>
            Reverse<--, 41161_0; 41157_0;>}*/
            /*OUT: {
            Reverse<41309, 41161_0;>
            Reverse<--, 41161_0; 41157_0;>}*/
            /*OUT: {
            Reverse<41309, 41161_0;>
            Reverse<--, 41161_0; 41157_0;>}*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                cv[j] = vs[i][j][k];
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                int _imopVarPre1343;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                double _imopVarPre1344;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                int _imopVarPre1345;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                double _imopVarPre1346;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                int _imopVarPre1353;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                double _imopVarPre1354;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                int _imopVarPre1355;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                double _imopVarPre1356;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                int _imopVarPre1449;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                double _imopVarPre1450;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                int _imopVarPre1451;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                double _imopVarPre1452;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                int _imopVarPre1459;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                double _imopVarPre1460;
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                _imopVarPre1343 = ((dymax + ru1) > dy1);
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                if (_imopVarPre1343) {
                    /*OUT: {
                    Reverse<41309, 41198_0; 41161_0;>
                    Reverse<--, 41198_0; 41161_0; 41157_0;>}*/
                    _imopVarPre1344 = (dymax + ru1);
                } else {
                    /*OUT: {
                    Reverse<--, 41198_1; 41161_0; 41157_0;>
                    Reverse<41309, 41198_1; 41161_0;>}*/
                    _imopVarPre1344 = dy1;
                }
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                _imopVarPre1345 = ((dy5 + c1c5 * ru1) > _imopVarPre1344);
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                if (_imopVarPre1345) {
                    /*OUT: {
                    Reverse<41309, 41208_0; 41161_0;>
                    Reverse<--, 41208_0; 41161_0; 41157_0;>}*/
                    _imopVarPre1346 = (dy5 + c1c5 * ru1);
                } else {
                    /*OUT: {
                    Reverse<41309, 41208_1; 41161_0;>
                    Reverse<--, 41208_1; 41161_0; 41157_0;>}*/
                    _imopVarPre1353 = ((dymax + ru1) > dy1);
                    /*OUT: {
                    Reverse<41309, 41208_1; 41161_0;>
                    Reverse<--, 41208_1; 41161_0; 41157_0;>}*/
                    if (_imopVarPre1353) {
                        /*OUT: {
                        Reverse<--, 41216_0; 41208_1; 41161_0; 41157_0;>
                        Reverse<41309, 41216_0; 41208_1; 41161_0;>}*/
                        _imopVarPre1354 = (dymax + ru1);
                    } else {
                        /*OUT: {
                        Reverse<--, 41216_1; 41208_1; 41161_0; 41157_0;>
                        Reverse<41309, 41216_1; 41208_1; 41161_0;>}*/
                        _imopVarPre1354 = dy1;
                    }
                    /*OUT: {
                    Reverse<41309, 41208_1; 41161_0;>
                    Reverse<--, 41208_1; 41161_0; 41157_0;>}*/
                    _imopVarPre1346 = _imopVarPre1354;
                }
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                _imopVarPre1355 = ((dy3 + con43 * ru1) > _imopVarPre1346);
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                if (_imopVarPre1355) {
                    /*OUT: {
                    Reverse<41309, 41228_0; 41161_0;>
                    Reverse<--, 41228_0; 41161_0; 41157_0;>}*/
                    _imopVarPre1356 = (dy3 + con43 * ru1);
                } else {
                    /*OUT: {
                    Reverse<41309, 41228_1; 41161_0;>
                    Reverse<--, 41228_1; 41161_0; 41157_0;>}*/
                    _imopVarPre1449 = ((dymax + ru1) > dy1);
                    /*OUT: {
                    Reverse<41309, 41228_1; 41161_0;>
                    Reverse<--, 41228_1; 41161_0; 41157_0;>}*/
                    if (_imopVarPre1449) {
                        /*OUT: {
                        Reverse<41309, 41236_0; 41228_1; 41161_0;>
                        Reverse<--, 41236_0; 41228_1; 41161_0; 41157_0;>}*/
                        _imopVarPre1450 = (dymax + ru1);
                    } else {
                        /*OUT: {
                        Reverse<41309, 41236_1; 41228_1; 41161_0;>
                        Reverse<--, 41236_1; 41228_1; 41161_0; 41157_0;>}*/
                        _imopVarPre1450 = dy1;
                    }
                    /*OUT: {
                    Reverse<41309, 41228_1; 41161_0;>
                    Reverse<--, 41228_1; 41161_0; 41157_0;>}*/
                    _imopVarPre1451 = ((dy5 + c1c5 * ru1) > _imopVarPre1450);
                    /*OUT: {
                    Reverse<41309, 41228_1; 41161_0;>
                    Reverse<--, 41228_1; 41161_0; 41157_0;>}*/
                    if (_imopVarPre1451) {
                        /*OUT: {
                        Reverse<41309, 41246_0; 41228_1; 41161_0;>
                        Reverse<--, 41246_0; 41228_1; 41161_0; 41157_0;>}*/
                        _imopVarPre1452 = (dy5 + c1c5 * ru1);
                    } else {
                        /*OUT: {
                        Reverse<41309, 41246_1; 41228_1; 41161_0;>
                        Reverse<--, 41246_1; 41228_1; 41161_0; 41157_0;>}*/
                        _imopVarPre1459 = ((dymax + ru1) > dy1);
                        /*OUT: {
                        Reverse<41309, 41246_1; 41228_1; 41161_0;>
                        Reverse<--, 41246_1; 41228_1; 41161_0; 41157_0;>}*/
                        if (_imopVarPre1459) {
                            /*OUT: {
                            Reverse<41309, 41254_0; 41246_1; 41228_1; 41161_0;>
                            Reverse<--, 41254_0; 41246_1; 41228_1; 41161_0; 41157_0;>}*/
                            _imopVarPre1460 = (dymax + ru1);
                        } else {
                            /*OUT: {
                            Reverse<41309, 41254_1; 41246_1; 41228_1; 41161_0;>
                            Reverse<--, 41254_1; 41246_1; 41228_1; 41161_0; 41157_0;>}*/
                            _imopVarPre1460 = dy1;
                        }
                        /*OUT: {
                        Reverse<41309, 41246_1; 41228_1; 41161_0;>
                        Reverse<--, 41246_1; 41228_1; 41161_0; 41157_0;>}*/
                        _imopVarPre1452 = _imopVarPre1460;
                    }
                    /*OUT: {
                    Reverse<41309, 41228_1; 41161_0;>
                    Reverse<--, 41228_1; 41161_0; 41157_0;>}*/
                    _imopVarPre1356 = _imopVarPre1452;
                }
                /*OUT: {
                Reverse<41309, 41161_0;>
                Reverse<--, 41161_0; 41157_0;>}*/
                rhoq[j] = _imopVarPre1356;
            }
            /*OUT: {
            Reverse<41309, 41161_0;>
            Reverse<--, 41161_0; 41157_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<41267,>}*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: {
            Reverse<41267,>}*/
            /*OUT: {
            Reverse<41267,>}*/
            /*OUT: {
            Reverse<41267,>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<41267,>}*/
                lhs[0][i][j][k] = 0.0;
                /*OUT: {
                Reverse<41267,>}*/
                lhs[1][i][j][k] = -dtty2 * cv[j - 1] - dtty1 * rhoq[j - 1];
                /*OUT: {
                Reverse<41267,>}*/
                lhs[2][i][j][k] = 1.0 + c2dtty1 * rhoq[j];
                /*OUT: {
                Reverse<41267,>}*/
                lhs[3][i][j][k] = dtty2 * cv[j + 1] - dtty1 * rhoq[j + 1];
                /*OUT: {
                Reverse<41267,>}*/
                lhs[4][i][j][k] = 0.0;
            }
            /*OUT: {
            Reverse<41267,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<41309,>}*/
#pragma omp barrier
        }
    }
    /*OUT: {
    Reverse<41309, 41157_1; 41161_1;>
    Reverse<--, 41157_1;>}*/
    j = 1;
#pragma omp for nowait
    /*OUT: {
    Reverse<41309, 41157_1; 41161_1;>
    Reverse<--, 41157_1;>}*/
    /*OUT: {
    Reverse<41309, 41157_1; 41161_1;>
    Reverse<--, 41157_1;>}*/
    /*OUT: {
    Reverse<41309, 41320_1; 41157_1; 41161_1;>
    Reverse<--, 41320_1; 41157_1;>}*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<41309, 41157_1; 41161_1;>
        Reverse<--, 41157_1;>}*/
        /*OUT: {
        Reverse<41309, 41157_1; 41161_1;>
        Reverse<--, 41157_1;>}*/
        /*OUT: {
        Reverse<--, 41320_0; 41157_1;>
        Reverse<41309, 41320_0; 41157_1; 41161_1;>}*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
            /*OUT: {
            Reverse<--, 41320_0; 41157_1;>
            Reverse<41309, 41320_0; 41157_1; 41161_1;>}*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*OUT: {
            Reverse<--, 41320_0; 41157_1;>
            Reverse<41309, 41320_0; 41157_1; 41161_1;>}*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*OUT: {
            Reverse<--, 41320_0; 41157_1;>
            Reverse<41309, 41320_0; 41157_1; 41161_1;>}*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*OUT: {
            Reverse<--, 41320_0; 41157_1;>
            Reverse<41309, 41320_0; 41157_1; 41161_1;>}*/
            lhs[1][i][j + 1][k] = lhs[1][i][j + 1][k] - comz4;
            /*OUT: {
            Reverse<--, 41320_0; 41157_1;>
            Reverse<41309, 41320_0; 41157_1; 41161_1;>}*/
            lhs[2][i][j + 1][k] = lhs[2][i][j + 1][k] + comz6;
            /*OUT: {
            Reverse<--, 41320_0; 41157_1;>
            Reverse<41309, 41320_0; 41157_1; 41161_1;>}*/
            lhs[3][i][j + 1][k] = lhs[3][i][j + 1][k] - comz4;
            /*OUT: {
            Reverse<--, 41320_0; 41157_1;>
            Reverse<41309, 41320_0; 41157_1; 41161_1;>}*/
            lhs[4][i][j + 1][k] = lhs[4][i][j + 1][k] + comz1;
        }
    }
#pragma omp for nowait
    /*OUT: {
    Reverse<41309, 41157_1; 41161_1;>
    Reverse<--, 41157_1;>}*/
    /*OUT: {
    Reverse<41309, 41157_1; 41161_1;>
    Reverse<--, 41157_1;>}*/
    /*OUT: {
    Reverse<--, 41400_1; 41157_1;>
    Reverse<41309, 41400_1; 41157_1; 41161_1;>}*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<41309, 41157_1; 41161_1;>
        Reverse<--, 41157_1;>}*/
        /*OUT: {
        Reverse<41309, 41157_1; 41161_1;>
        Reverse<--, 41157_1;>}*/
        /*OUT: {
        Reverse<--, 41404_1; 41400_0; 41157_1;>
        Reverse<41309, 41404_1; 41400_0; 41157_1; 41161_1;>}*/
        for (j = 3; j <= grid_points[1] - 4; j++) {
            /*OUT: {
            Reverse<--, 41400_0; 41157_1;>
            Reverse<41309, 41400_0; 41157_1; 41161_1;>}*/
            /*OUT: {
            Reverse<--, 41400_0; 41157_1;>
            Reverse<41309, 41400_0; 41157_1; 41161_1;>}*/
            /*OUT: {
            Reverse<--, 41404_0; 41400_0; 41157_1;>
            Reverse<41309, 41404_0; 41400_0; 41157_1; 41161_1;>}*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: {
                Reverse<--, 41404_0; 41400_0; 41157_1;>
                Reverse<41309, 41404_0; 41400_0; 41157_1; 41161_1;>}*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*OUT: {
                Reverse<--, 41404_0; 41400_0; 41157_1;>
                Reverse<41309, 41404_0; 41400_0; 41157_1; 41161_1;>}*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*OUT: {
                Reverse<--, 41404_0; 41400_0; 41157_1;>
                Reverse<41309, 41404_0; 41400_0; 41157_1; 41161_1;>}*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*OUT: {
                Reverse<--, 41404_0; 41400_0; 41157_1;>
                Reverse<41309, 41404_0; 41400_0; 41157_1; 41161_1;>}*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*OUT: {
                Reverse<--, 41404_0; 41400_0; 41157_1;>
                Reverse<41309, 41404_0; 41400_0; 41157_1; 41161_1;>}*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            }
        }
    }
    /*OUT: {
    Reverse<41309, 41157_1; 41161_1;>
    Reverse<--, 41157_1;>}*/
    j = grid_points[1] - 3;
#pragma omp for nowait
    /*OUT: {
    Reverse<41309, 41157_1; 41161_1;>
    Reverse<--, 41157_1;>}*/
    /*OUT: {
    Reverse<41309, 41157_1; 41161_1;>
    Reverse<--, 41157_1;>}*/
    /*OUT: {
    Reverse<--, 41467_1; 41157_1;>
    Reverse<41309, 41467_1; 41157_1; 41161_1;>}*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<41309, 41157_1; 41161_1;>
        Reverse<--, 41157_1;>}*/
        /*OUT: {
        Reverse<41309, 41157_1; 41161_1;>
        Reverse<--, 41157_1;>}*/
        /*OUT: {
        Reverse<--, 41467_0; 41157_1;>
        Reverse<41309, 41467_0; 41157_1; 41161_1;>}*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
            /*OUT: {
            Reverse<--, 41467_0; 41157_1;>
            Reverse<41309, 41467_0; 41157_1; 41161_1;>}*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*OUT: {
            Reverse<--, 41467_0; 41157_1;>
            Reverse<41309, 41467_0; 41157_1; 41161_1;>}*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*OUT: {
            Reverse<--, 41467_0; 41157_1;>
            Reverse<41309, 41467_0; 41157_1; 41161_1;>}*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*OUT: {
            Reverse<--, 41467_0; 41157_1;>
            Reverse<41309, 41467_0; 41157_1; 41161_1;>}*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*OUT: {
            Reverse<--, 41467_0; 41157_1;>
            Reverse<41309, 41467_0; 41157_1; 41161_1;>}*/
            lhs[0][i][j + 1][k] = lhs[0][i][j + 1][k] + comz1;
            /*OUT: {
            Reverse<--, 41467_0; 41157_1;>
            Reverse<41309, 41467_0; 41157_1; 41161_1;>}*/
            lhs[1][i][j + 1][k] = lhs[1][i][j + 1][k] - comz4;
            /*OUT: {
            Reverse<--, 41467_0; 41157_1;>
            Reverse<41309, 41467_0; 41157_1; 41161_1;>}*/
            lhs[2][i][j + 1][k] = lhs[2][i][j + 1][k] + comz5;
        }
    }
    /*OUT: {
    Reverse<41309, 41157_1; 41161_1;>
    Reverse<--, 41157_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<41539,>}*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: {
    Reverse<41539,>}*/
    /*OUT: {
    Reverse<41539,>}*/
    /*OUT: {
    Reverse<41539, 41548_1;>}*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<41539,>}*/
        /*OUT: {
        Reverse<41539,>}*/
        /*OUT: {
        Reverse<41539, 41552_1; 41548_0;>}*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: {
            Reverse<41539, 41548_0;>}*/
            /*OUT: {
            Reverse<41539, 41548_0;>}*/
            /*OUT: {
            Reverse<41539, 41552_0; 41548_0;>}*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: {
                Reverse<41539, 41552_0; 41548_0;>}*/
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*OUT: {
                Reverse<41539, 41552_0; 41548_0;>}*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dtty2 * speed[i][j - 1][k];
                /*OUT: {
                Reverse<41539, 41552_0; 41548_0;>}*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*OUT: {
                Reverse<41539, 41552_0; 41548_0;>}*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dtty2 * speed[i][j + 1][k];
                /*OUT: {
                Reverse<41539, 41552_0; 41548_0;>}*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*OUT: {
                Reverse<41539, 41552_0; 41548_0;>}*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*OUT: {
                Reverse<41539, 41552_0; 41548_0;>}*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dtty2 * speed[i][j - 1][k];
                /*OUT: {
                Reverse<41539, 41552_0; 41548_0;>}*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*OUT: {
                Reverse<41539, 41552_0; 41548_0;>}*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dtty2 * speed[i][j + 1][k];
                /*OUT: {
                Reverse<41539, 41552_0; 41548_0;>}*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
            }
        }
    }
    /*OUT: {
    Reverse<41539,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<41666,>}*/
#pragma omp barrier
}
static void lhsz() {
    /*OUT: {
    Reverse<--,>}*/
    double ru1;
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
    /*OUT: {
    Reverse<--,>
    Reverse<41825, 41677_1;>}*/
    /*OUT: {
    Reverse<41825, 41677_1;>
    Reverse<--, 41677_1; 41673_0;>}*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<--, 41673_0;>
        Reverse<41825, 41673_0; 41677_1;>}*/
        /*OUT: {
        Reverse<41825,>
        Reverse<--, 41673_0;>}*/
        /*OUT: {
        Reverse<41825,>}*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<--, 41677_0; 41673_0;>
            Reverse<41825, 41677_0;>}*/
            /*OUT: {
            Reverse<--, 41677_0; 41673_0;>
            Reverse<41825, 41677_0;>}*/
            /*OUT: {
            Reverse<--, 41677_0; 41673_0;>
            Reverse<41825, 41677_0;>}*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                cv[k] = ws[i][j][k];
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                int _imopVarPre1971;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                double _imopVarPre1972;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                int _imopVarPre1973;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                double _imopVarPre1974;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                int _imopVarPre1981;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                double _imopVarPre1982;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                int _imopVarPre1983;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                double _imopVarPre1984;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                int _imopVarPre2077;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                double _imopVarPre2078;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                int _imopVarPre2079;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                double _imopVarPre2080;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                int _imopVarPre2087;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                double _imopVarPre2088;
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                _imopVarPre1971 = ((dzmax + ru1) > dz1);
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                if (_imopVarPre1971) {
                    /*OUT: {
                    Reverse<41825, 41714_0; 41677_0;>
                    Reverse<--, 41714_0; 41677_0; 41673_0;>}*/
                    _imopVarPre1972 = (dzmax + ru1);
                } else {
                    /*OUT: {
                    Reverse<--, 41714_1; 41677_0; 41673_0;>
                    Reverse<41825, 41714_1; 41677_0;>}*/
                    _imopVarPre1972 = dz1;
                }
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                _imopVarPre1973 = ((dz5 + c1c5 * ru1) > _imopVarPre1972);
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                if (_imopVarPre1973) {
                    /*OUT: {
                    Reverse<--, 41724_0; 41677_0; 41673_0;>
                    Reverse<41825, 41724_0; 41677_0;>}*/
                    _imopVarPre1974 = (dz5 + c1c5 * ru1);
                } else {
                    /*OUT: {
                    Reverse<--, 41724_1; 41677_0; 41673_0;>
                    Reverse<41825, 41724_1; 41677_0;>}*/
                    _imopVarPre1981 = ((dzmax + ru1) > dz1);
                    /*OUT: {
                    Reverse<--, 41724_1; 41677_0; 41673_0;>
                    Reverse<41825, 41724_1; 41677_0;>}*/
                    if (_imopVarPre1981) {
                        /*OUT: {
                        Reverse<41825, 41732_0; 41724_1; 41677_0;>
                        Reverse<--, 41732_0; 41724_1; 41677_0; 41673_0;>}*/
                        _imopVarPre1982 = (dzmax + ru1);
                    } else {
                        /*OUT: {
                        Reverse<41825, 41732_1; 41724_1; 41677_0;>
                        Reverse<--, 41732_1; 41724_1; 41677_0; 41673_0;>}*/
                        _imopVarPre1982 = dz1;
                    }
                    /*OUT: {
                    Reverse<--, 41724_1; 41677_0; 41673_0;>
                    Reverse<41825, 41724_1; 41677_0;>}*/
                    _imopVarPre1974 = _imopVarPre1982;
                }
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                _imopVarPre1983 = ((dz4 + con43 * ru1) > _imopVarPre1974);
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                if (_imopVarPre1983) {
                    /*OUT: {
                    Reverse<41825, 41744_0; 41677_0;>
                    Reverse<--, 41744_0; 41677_0; 41673_0;>}*/
                    _imopVarPre1984 = (dz4 + con43 * ru1);
                } else {
                    /*OUT: {
                    Reverse<41825, 41744_1; 41677_0;>
                    Reverse<--, 41744_1; 41677_0; 41673_0;>}*/
                    _imopVarPre2077 = ((dzmax + ru1) > dz1);
                    /*OUT: {
                    Reverse<41825, 41744_1; 41677_0;>
                    Reverse<--, 41744_1; 41677_0; 41673_0;>}*/
                    if (_imopVarPre2077) {
                        /*OUT: {
                        Reverse<41825, 41752_0; 41744_1; 41677_0;>
                        Reverse<--, 41752_0; 41744_1; 41677_0; 41673_0;>}*/
                        _imopVarPre2078 = (dzmax + ru1);
                    } else {
                        /*OUT: {
                        Reverse<41825, 41752_1; 41744_1; 41677_0;>
                        Reverse<--, 41752_1; 41744_1; 41677_0; 41673_0;>}*/
                        _imopVarPre2078 = dz1;
                    }
                    /*OUT: {
                    Reverse<41825, 41744_1; 41677_0;>
                    Reverse<--, 41744_1; 41677_0; 41673_0;>}*/
                    _imopVarPre2079 = ((dz5 + c1c5 * ru1) > _imopVarPre2078);
                    /*OUT: {
                    Reverse<41825, 41744_1; 41677_0;>
                    Reverse<--, 41744_1; 41677_0; 41673_0;>}*/
                    if (_imopVarPre2079) {
                        /*OUT: {
                        Reverse<41825, 41762_0; 41744_1; 41677_0;>
                        Reverse<--, 41762_0; 41744_1; 41677_0; 41673_0;>}*/
                        _imopVarPre2080 = (dz5 + c1c5 * ru1);
                    } else {
                        /*OUT: {
                        Reverse<41825, 41762_1; 41744_1; 41677_0;>
                        Reverse<--, 41762_1; 41744_1; 41677_0; 41673_0;>}*/
                        _imopVarPre2087 = ((dzmax + ru1) > dz1);
                        /*OUT: {
                        Reverse<41825, 41762_1; 41744_1; 41677_0;>
                        Reverse<--, 41762_1; 41744_1; 41677_0; 41673_0;>}*/
                        if (_imopVarPre2087) {
                            /*OUT: {
                            Reverse<41825, 41770_0; 41762_1; 41744_1; 41677_0;>
                            Reverse<--, 41770_0; 41762_1; 41744_1; 41677_0; 41673_0;>}*/
                            _imopVarPre2088 = (dzmax + ru1);
                        } else {
                            /*OUT: {
                            Reverse<41825, 41770_1; 41762_1; 41744_1; 41677_0;>
                            Reverse<--, 41770_1; 41762_1; 41744_1; 41677_0; 41673_0;>}*/
                            _imopVarPre2088 = dz1;
                        }
                        /*OUT: {
                        Reverse<41825, 41762_1; 41744_1; 41677_0;>
                        Reverse<--, 41762_1; 41744_1; 41677_0; 41673_0;>}*/
                        _imopVarPre2080 = _imopVarPre2088;
                    }
                    /*OUT: {
                    Reverse<41825, 41744_1; 41677_0;>
                    Reverse<--, 41744_1; 41677_0; 41673_0;>}*/
                    _imopVarPre1984 = _imopVarPre2080;
                }
                /*OUT: {
                Reverse<--, 41677_0; 41673_0;>
                Reverse<41825, 41677_0;>}*/
                rhos[k] = _imopVarPre1984;
            }
            /*OUT: {
            Reverse<--, 41677_0; 41673_0;>
            Reverse<41825, 41677_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<41783,>}*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: {
            Reverse<41783,>}*/
            /*OUT: {
            Reverse<41783,>}*/
            /*OUT: {
            Reverse<41783,>}*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: {
                Reverse<41783,>}*/
                lhs[0][i][j][k] = 0.0;
                /*OUT: {
                Reverse<41783,>}*/
                lhs[1][i][j][k] = -dttz2 * cv[k - 1] - dttz1 * rhos[k - 1];
                /*OUT: {
                Reverse<41783,>}*/
                lhs[2][i][j][k] = 1.0 + c2dttz1 * rhos[k];
                /*OUT: {
                Reverse<41783,>}*/
                lhs[3][i][j][k] = dttz2 * cv[k + 1] - dttz1 * rhos[k + 1];
                /*OUT: {
                Reverse<41783,>}*/
                lhs[4][i][j][k] = 0.0;
            }
            /*OUT: {
            Reverse<41783,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<41825,>}*/
#pragma omp barrier
        }
    }
    /*OUT: {
    Reverse<--, 41673_1;>
    Reverse<41825, 41673_1; 41677_1;>}*/
    k = 1;
#pragma omp for nowait
    /*OUT: {
    Reverse<--, 41673_1;>
    Reverse<41825, 41673_1; 41677_1;>}*/
    /*OUT: {
    Reverse<--, 41673_1;>
    Reverse<41825, 41673_1; 41677_1;>}*/
    /*OUT: {
    Reverse<41825, 41836_1; 41673_1; 41677_1;>
    Reverse<--, 41836_1; 41673_1;>}*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<--, 41673_1;>
        Reverse<41825, 41673_1; 41677_1;>}*/
        /*OUT: {
        Reverse<--, 41673_1;>
        Reverse<41825, 41673_1; 41677_1;>}*/
        /*OUT: {
        Reverse<41825, 41836_0; 41673_1; 41677_1;>
        Reverse<--, 41836_0; 41673_1;>}*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: {
            Reverse<41825, 41836_0; 41673_1; 41677_1;>
            Reverse<--, 41836_0; 41673_1;>}*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*OUT: {
            Reverse<41825, 41836_0; 41673_1; 41677_1;>
            Reverse<--, 41836_0; 41673_1;>}*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*OUT: {
            Reverse<41825, 41836_0; 41673_1; 41677_1;>
            Reverse<--, 41836_0; 41673_1;>}*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*OUT: {
            Reverse<41825, 41836_0; 41673_1; 41677_1;>
            Reverse<--, 41836_0; 41673_1;>}*/
            lhs[1][i][j][k + 1] = lhs[1][i][j][k + 1] - comz4;
            /*OUT: {
            Reverse<41825, 41836_0; 41673_1; 41677_1;>
            Reverse<--, 41836_0; 41673_1;>}*/
            lhs[2][i][j][k + 1] = lhs[2][i][j][k + 1] + comz6;
            /*OUT: {
            Reverse<41825, 41836_0; 41673_1; 41677_1;>
            Reverse<--, 41836_0; 41673_1;>}*/
            lhs[3][i][j][k + 1] = lhs[3][i][j][k + 1] - comz4;
            /*OUT: {
            Reverse<41825, 41836_0; 41673_1; 41677_1;>
            Reverse<--, 41836_0; 41673_1;>}*/
            lhs[4][i][j][k + 1] = lhs[4][i][j][k + 1] + comz1;
        }
    }
#pragma omp for nowait
    /*OUT: {
    Reverse<--, 41673_1;>
    Reverse<41825, 41673_1; 41677_1;>}*/
    /*OUT: {
    Reverse<--, 41673_1;>
    Reverse<41825, 41673_1; 41677_1;>}*/
    /*OUT: {
    Reverse<--, 41916_1; 41673_1;>
    Reverse<41825, 41916_1; 41673_1; 41677_1;>}*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<--, 41673_1;>
        Reverse<41825, 41673_1; 41677_1;>}*/
        /*OUT: {
        Reverse<--, 41673_1;>
        Reverse<41825, 41673_1; 41677_1;>}*/
        /*OUT: {
        Reverse<41825, 41920_1; 41916_0; 41673_1; 41677_1;>
        Reverse<--, 41920_1; 41916_0; 41673_1;>}*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: {
            Reverse<--, 41916_0; 41673_1;>
            Reverse<41825, 41916_0; 41673_1; 41677_1;>}*/
            /*OUT: {
            Reverse<--, 41916_0; 41673_1;>
            Reverse<41825, 41916_0; 41673_1; 41677_1;>}*/
            /*OUT: {
            Reverse<41825, 41920_0; 41916_0; 41673_1; 41677_1;>
            Reverse<--, 41920_0; 41916_0; 41673_1;>}*/
            for (k = 3; k <= grid_points[2] - 4; k++) {
                /*OUT: {
                Reverse<41825, 41920_0; 41916_0; 41673_1; 41677_1;>
                Reverse<--, 41920_0; 41916_0; 41673_1;>}*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*OUT: {
                Reverse<41825, 41920_0; 41916_0; 41673_1; 41677_1;>
                Reverse<--, 41920_0; 41916_0; 41673_1;>}*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*OUT: {
                Reverse<41825, 41920_0; 41916_0; 41673_1; 41677_1;>
                Reverse<--, 41920_0; 41916_0; 41673_1;>}*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*OUT: {
                Reverse<41825, 41920_0; 41916_0; 41673_1; 41677_1;>
                Reverse<--, 41920_0; 41916_0; 41673_1;>}*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*OUT: {
                Reverse<41825, 41920_0; 41916_0; 41673_1; 41677_1;>
                Reverse<--, 41920_0; 41916_0; 41673_1;>}*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            }
        }
    }
    /*OUT: {
    Reverse<--, 41673_1;>
    Reverse<41825, 41673_1; 41677_1;>}*/
    k = grid_points[2] - 3;
#pragma omp for nowait
    /*OUT: {
    Reverse<--, 41673_1;>
    Reverse<41825, 41673_1; 41677_1;>}*/
    /*OUT: {
    Reverse<--, 41673_1;>
    Reverse<41825, 41673_1; 41677_1;>}*/
    /*OUT: {
    Reverse<--, 41983_1; 41673_1;>
    Reverse<41825, 41983_1; 41673_1; 41677_1;>}*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<--, 41673_1;>
        Reverse<41825, 41673_1; 41677_1;>}*/
        /*OUT: {
        Reverse<--, 41673_1;>
        Reverse<41825, 41673_1; 41677_1;>}*/
        /*OUT: {
        Reverse<41825, 41983_0; 41673_1; 41677_1;>
        Reverse<--, 41983_0; 41673_1;>}*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: {
            Reverse<41825, 41983_0; 41673_1; 41677_1;>
            Reverse<--, 41983_0; 41673_1;>}*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*OUT: {
            Reverse<41825, 41983_0; 41673_1; 41677_1;>
            Reverse<--, 41983_0; 41673_1;>}*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*OUT: {
            Reverse<41825, 41983_0; 41673_1; 41677_1;>
            Reverse<--, 41983_0; 41673_1;>}*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*OUT: {
            Reverse<41825, 41983_0; 41673_1; 41677_1;>
            Reverse<--, 41983_0; 41673_1;>}*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*OUT: {
            Reverse<41825, 41983_0; 41673_1; 41677_1;>
            Reverse<--, 41983_0; 41673_1;>}*/
            lhs[0][i][j][k + 1] = lhs[0][i][j][k + 1] + comz1;
            /*OUT: {
            Reverse<41825, 41983_0; 41673_1; 41677_1;>
            Reverse<--, 41983_0; 41673_1;>}*/
            lhs[1][i][j][k + 1] = lhs[1][i][j][k + 1] - comz4;
            /*OUT: {
            Reverse<41825, 41983_0; 41673_1; 41677_1;>
            Reverse<--, 41983_0; 41673_1;>}*/
            lhs[2][i][j][k + 1] = lhs[2][i][j][k + 1] + comz5;
        }
    }
    /*OUT: {
    Reverse<--, 41673_1;>
    Reverse<41825, 41673_1; 41677_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<42055,>}*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: {
    Reverse<42055,>}*/
    /*OUT: {
    Reverse<42055,>}*/
    /*OUT: {
    Reverse<42055, 42064_1;>}*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<42055,>}*/
        /*OUT: {
        Reverse<42055,>}*/
        /*OUT: {
        Reverse<42055, 42068_1; 42064_0;>}*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: {
            Reverse<42055, 42064_0;>}*/
            /*OUT: {
            Reverse<42055, 42064_0;>}*/
            /*OUT: {
            Reverse<42055, 42068_0; 42064_0;>}*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: {
                Reverse<42055, 42068_0; 42064_0;>}*/
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*OUT: {
                Reverse<42055, 42068_0; 42064_0;>}*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dttz2 * speed[i][j][k - 1];
                /*OUT: {
                Reverse<42055, 42068_0; 42064_0;>}*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*OUT: {
                Reverse<42055, 42068_0; 42064_0;>}*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dttz2 * speed[i][j][k + 1];
                /*OUT: {
                Reverse<42055, 42068_0; 42064_0;>}*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*OUT: {
                Reverse<42055, 42068_0; 42064_0;>}*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*OUT: {
                Reverse<42055, 42068_0; 42064_0;>}*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dttz2 * speed[i][j][k - 1];
                /*OUT: {
                Reverse<42055, 42068_0; 42064_0;>}*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*OUT: {
                Reverse<42055, 42068_0; 42064_0;>}*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dttz2 * speed[i][j][k + 1];
                /*OUT: {
                Reverse<42055, 42068_0; 42064_0;>}*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
            }
        }
    }
    /*OUT: {
    Reverse<42055,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<42182,>}*/
#pragma omp barrier
}
static void ninvr() {
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
    double r1;
    /*OUT: {
    Reverse<--,>}*/
    double r2;
    /*OUT: {
    Reverse<--,>}*/
    double r3;
    /*OUT: {
    Reverse<--,>}*/
    double r4;
    /*OUT: {
    Reverse<--,>}*/
    double r5;
    /*OUT: {
    Reverse<--,>}*/
    double t1;
    /*OUT: {
    Reverse<--,>}*/
    double t2;
#pragma omp parallel default(shared) private(i, j, k, r1, r2, r3, r4, r5, t1, t2)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<48564,>}*/
        /*OUT: {
        Reverse<48564,>}*/
        /*OUT: {
        Reverse<48564, 42201_1;>}*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: {
            Reverse<48564,>}*/
            /*OUT: {
            Reverse<48564,>}*/
            /*OUT: {
            Reverse<48564, 42205_1; 42201_0;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<48564, 42201_0;>}*/
                /*OUT: {
                Reverse<48564, 42201_0;>}*/
                /*OUT: {
                Reverse<48564, 42205_0; 42201_0;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<48564, 42205_0; 42201_0;>}*/
                    r1 = rhs[0][i][j][k];
                    /*OUT: {
                    Reverse<48564, 42205_0; 42201_0;>}*/
                    r2 = rhs[1][i][j][k];
                    /*OUT: {
                    Reverse<48564, 42205_0; 42201_0;>}*/
                    r3 = rhs[2][i][j][k];
                    /*OUT: {
                    Reverse<48564, 42205_0; 42201_0;>}*/
                    r4 = rhs[3][i][j][k];
                    /*OUT: {
                    Reverse<48564, 42205_0; 42201_0;>}*/
                    r5 = rhs[4][i][j][k];
                    /*OUT: {
                    Reverse<48564, 42205_0; 42201_0;>}*/
                    t1 = bt * r3;
                    /*OUT: {
                    Reverse<48564, 42205_0; 42201_0;>}*/
                    t2 = 0.5 * (r4 + r5);
                    /*OUT: {
                    Reverse<48564, 42205_0; 42201_0;>}*/
                    rhs[0][i][j][k] = -r2;
                    /*OUT: {
                    Reverse<48564, 42205_0; 42201_0;>}*/
                    rhs[1][i][j][k] = r1;
                    /*OUT: {
                    Reverse<48564, 42205_0; 42201_0;>}*/
                    rhs[2][i][j][k] = bt * (r4 - r5);
                    /*OUT: {
                    Reverse<48564, 42205_0; 42201_0;>}*/
                    rhs[3][i][j][k] = -t1 + t2;
                    /*OUT: {
                    Reverse<48564, 42205_0; 42201_0;>}*/
                    rhs[4][i][j][k] = t1 + t2;
                }
            }
        }
        /*OUT: {
        Reverse<48564,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<42273,>}*/
#pragma omp barrier
    }
}
static void pinvr() {
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
    double r1;
    /*OUT: {
    Reverse<--,>}*/
    double r2;
    /*OUT: {
    Reverse<--,>}*/
    double r3;
    /*OUT: {
    Reverse<--,>}*/
    double r4;
    /*OUT: {
    Reverse<--,>}*/
    double r5;
    /*OUT: {
    Reverse<--,>}*/
    double t1;
    /*OUT: {
    Reverse<--,>}*/
    double t2;
#pragma omp parallel default(shared) private(i, j, k, r1, r2, r3, r4, r5, t1, t2)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<48585,>}*/
        /*OUT: {
        Reverse<48585,>}*/
        /*OUT: {
        Reverse<48585, 42292_1;>}*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: {
            Reverse<48585,>}*/
            /*OUT: {
            Reverse<48585,>}*/
            /*OUT: {
            Reverse<48585, 42296_1; 42292_0;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<48585, 42292_0;>}*/
                /*OUT: {
                Reverse<48585, 42292_0;>}*/
                /*OUT: {
                Reverse<48585, 42296_0; 42292_0;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<48585, 42296_0; 42292_0;>}*/
                    r1 = rhs[0][i][j][k];
                    /*OUT: {
                    Reverse<48585, 42296_0; 42292_0;>}*/
                    r2 = rhs[1][i][j][k];
                    /*OUT: {
                    Reverse<48585, 42296_0; 42292_0;>}*/
                    r3 = rhs[2][i][j][k];
                    /*OUT: {
                    Reverse<48585, 42296_0; 42292_0;>}*/
                    r4 = rhs[3][i][j][k];
                    /*OUT: {
                    Reverse<48585, 42296_0; 42292_0;>}*/
                    r5 = rhs[4][i][j][k];
                    /*OUT: {
                    Reverse<48585, 42296_0; 42292_0;>}*/
                    t1 = bt * r1;
                    /*OUT: {
                    Reverse<48585, 42296_0; 42292_0;>}*/
                    t2 = 0.5 * (r4 + r5);
                    /*OUT: {
                    Reverse<48585, 42296_0; 42292_0;>}*/
                    rhs[0][i][j][k] = bt * (r4 - r5);
                    /*OUT: {
                    Reverse<48585, 42296_0; 42292_0;>}*/
                    rhs[1][i][j][k] = -r3;
                    /*OUT: {
                    Reverse<48585, 42296_0; 42292_0;>}*/
                    rhs[2][i][j][k] = r2;
                    /*OUT: {
                    Reverse<48585, 42296_0; 42292_0;>}*/
                    rhs[3][i][j][k] = -t1 + t2;
                    /*OUT: {
                    Reverse<48585, 42296_0; 42292_0;>}*/
                    rhs[4][i][j][k] = t1 + t2;
                }
            }
        }
        /*OUT: {
        Reverse<48585,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<42364,>}*/
#pragma omp barrier
    }
}
static void compute_rhs() {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<48606,>}*/
        int i;
        /*OUT: {
        Reverse<48606,>}*/
        int j;
        /*OUT: {
        Reverse<48606,>}*/
        int k;
        /*OUT: {
        Reverse<48606,>}*/
        int m;
        /*OUT: {
        Reverse<48606,>}*/
        double aux;
        /*OUT: {
        Reverse<48606,>}*/
        double rho_inv;
        /*OUT: {
        Reverse<48606,>}*/
        double uijk;
        /*OUT: {
        Reverse<48606,>}*/
        double up1;
        /*OUT: {
        Reverse<48606,>}*/
        double um1;
        /*OUT: {
        Reverse<48606,>}*/
        double vijk;
        /*OUT: {
        Reverse<48606,>}*/
        double vp1;
        /*OUT: {
        Reverse<48606,>}*/
        double vm1;
        /*OUT: {
        Reverse<48606,>}*/
        double wijk;
        /*OUT: {
        Reverse<48606,>}*/
        double wp1;
        /*OUT: {
        Reverse<48606,>}*/
        double wm1;
#pragma omp for nowait
        /*OUT: {
        Reverse<48606,>}*/
        /*OUT: {
        Reverse<48606,>}*/
        /*OUT: {
        Reverse<48606, 42388_1;>}*/
        for (i = 0; i <= grid_points[0] - 1; i++) {
            /*OUT: {
            Reverse<48606,>}*/
            /*OUT: {
            Reverse<48606,>}*/
            /*OUT: {
            Reverse<48606, 42392_1; 42388_0;>}*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
                /*OUT: {
                Reverse<48606, 42388_0;>}*/
                /*OUT: {
                Reverse<48606, 42388_0;>}*/
                /*OUT: {
                Reverse<48606, 42392_0; 42388_0;>}*/
                for (k = 0; k <= grid_points[2] - 1; k++) {
                    /*OUT: {
                    Reverse<48606, 42392_0; 42388_0;>}*/
                    rho_inv = 1.0 / u[0][i][j][k];
                    /*OUT: {
                    Reverse<48606, 42392_0; 42388_0;>}*/
                    rho_i[i][j][k] = rho_inv;
                    /*OUT: {
                    Reverse<48606, 42392_0; 42388_0;>}*/
                    us[i][j][k] = u[1][i][j][k] * rho_inv;
                    /*OUT: {
                    Reverse<48606, 42392_0; 42388_0;>}*/
                    vs[i][j][k] = u[2][i][j][k] * rho_inv;
                    /*OUT: {
                    Reverse<48606, 42392_0; 42388_0;>}*/
                    ws[i][j][k] = u[3][i][j][k] * rho_inv;
                    /*OUT: {
                    Reverse<48606, 42392_0; 42388_0;>}*/
                    square[i][j][k] = 0.5 * (u[1][i][j][k] * u[1][i][j][k] + u[2][i][j][k] * u[2][i][j][k] + u[3][i][j][k] * u[3][i][j][k]) * rho_inv;
                    /*OUT: {
                    Reverse<48606, 42392_0; 42388_0;>}*/
                    qs[i][j][k] = square[i][j][k] * rho_inv;
                    /*OUT: {
                    Reverse<48606, 42392_0; 42388_0;>}*/
                    aux = c1c2 * rho_inv * (u[4][i][j][k] - square[i][j][k]);
                    /*OUT: {
                    Reverse<48606, 42392_0; 42388_0;>}*/
                    aux = sqrt(aux);
                    /*OUT: {
                    Reverse<48606, 42392_0; 42388_0;>}*/
                    /*OUT: {
                    Reverse<48606, 42392_0; 42388_0;>}*/
                    speed[i][j][k] = aux;
                    /*OUT: {
                    Reverse<48606, 42392_0; 42388_0;>}*/
                    ainv[i][j][k] = 1.0 / aux;
                }
            }
        }
        /*OUT: {
        Reverse<48606,>}*/
        /*OUT: {
        Reverse<48606,>
        Reverse<42523,>}*/
        /*OUT: {
        Reverse<42523,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<48606, 42497_0;>
            Reverse<42523, 42497_0;>}*/
            /*OUT: {
            Reverse<48606, 42497_0;>
            Reverse<42523, 42497_0;>}*/
            /*OUT: {
            Reverse<48606, 42507_1; 42497_0;>
            Reverse<42523, 42507_1; 42497_0;>}*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
                /*OUT: {
                Reverse<48606, 42497_0;>
                Reverse<42523, 42497_0;>}*/
                /*OUT: {
                Reverse<48606, 42497_0;>
                Reverse<42523, 42497_0;>}*/
                /*OUT: {
                Reverse<48606, 42511_1; 42507_0; 42497_0;>
                Reverse<42523, 42511_1; 42507_0; 42497_0;>}*/
                for (j = 0; j <= grid_points[1] - 1; j++) {
                    /*OUT: {
                    Reverse<48606, 42507_0; 42497_0;>
                    Reverse<42523, 42507_0; 42497_0;>}*/
                    /*OUT: {
                    Reverse<48606, 42507_0; 42497_0;>
                    Reverse<42523, 42507_0; 42497_0;>}*/
                    /*OUT: {
                    Reverse<48606, 42511_0; 42507_0; 42497_0;>
                    Reverse<42523, 42511_0; 42507_0; 42497_0;>}*/
                    for (k = 0; k <= grid_points[2] - 1; k++) {
                        /*OUT: {
                        Reverse<48606, 42511_0; 42507_0; 42497_0;>
                        Reverse<42523, 42511_0; 42507_0; 42497_0;>}*/
                        rhs[m][i][j][k] = forcing[m][i][j][k];
                    }
                }
            }
            /*OUT: {
            Reverse<48606, 42497_0;>
            Reverse<42523, 42497_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<42523,>}*/
#pragma omp barrier
        }
#pragma omp for nowait
        /*OUT: {
        Reverse<48606, 42497_1;>
        Reverse<42523, 42497_1;>}*/
        /*OUT: {
        Reverse<48606, 42497_1;>
        Reverse<42523, 42497_1;>}*/
        /*OUT: {
        Reverse<48606, 42532_1; 42497_1;>
        Reverse<42523, 42532_1; 42497_1;>}*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: {
            Reverse<48606, 42497_1;>
            Reverse<42523, 42497_1;>}*/
            /*OUT: {
            Reverse<48606, 42497_1;>
            Reverse<42523, 42497_1;>}*/
            /*OUT: {
            Reverse<48606, 42536_1; 42532_0; 42497_1;>
            Reverse<42523, 42536_1; 42532_0; 42497_1;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<48606, 42532_0; 42497_1;>
                Reverse<42523, 42532_0; 42497_1;>}*/
                /*OUT: {
                Reverse<48606, 42532_0; 42497_1;>
                Reverse<42523, 42532_0; 42497_1;>}*/
                /*OUT: {
                Reverse<48606, 42536_0; 42532_0; 42497_1;>
                Reverse<42523, 42536_0; 42532_0; 42497_1;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<48606, 42536_0; 42532_0; 42497_1;>
                    Reverse<42523, 42536_0; 42532_0; 42497_1;>}*/
                    uijk = us[i][j][k];
                    /*OUT: {
                    Reverse<48606, 42536_0; 42532_0; 42497_1;>
                    Reverse<42523, 42536_0; 42532_0; 42497_1;>}*/
                    up1 = us[i + 1][j][k];
                    /*OUT: {
                    Reverse<48606, 42536_0; 42532_0; 42497_1;>
                    Reverse<42523, 42536_0; 42532_0; 42497_1;>}*/
                    um1 = us[i - 1][j][k];
                    /*OUT: {
                    Reverse<48606, 42536_0; 42532_0; 42497_1;>
                    Reverse<42523, 42536_0; 42532_0; 42497_1;>}*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dx1tx1 * (u[0][i + 1][j][k] - 2.0 * u[0][i][j][k] + u[0][i - 1][j][k]) - tx2 * (u[1][i + 1][j][k] - u[1][i - 1][j][k]);
                    /*OUT: {
                    Reverse<48606, 42536_0; 42532_0; 42497_1;>
                    Reverse<42523, 42536_0; 42532_0; 42497_1;>}*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dx2tx1 * (u[1][i + 1][j][k] - 2.0 * u[1][i][j][k] + u[1][i - 1][j][k]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[1][i + 1][j][k] * up1 - u[1][i - 1][j][k] * um1 + (u[4][i + 1][j][k] - square[i + 1][j][k] - u[4][i - 1][j][k] + square[i - 1][j][k]) * c2);
                    /*OUT: {
                    Reverse<48606, 42536_0; 42532_0; 42497_1;>
                    Reverse<42523, 42536_0; 42532_0; 42497_1;>}*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dx3tx1 * (u[2][i + 1][j][k] - 2.0 * u[2][i][j][k] + u[2][i - 1][j][k]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[2][i + 1][j][k] * up1 - u[2][i - 1][j][k] * um1);
                    /*OUT: {
                    Reverse<48606, 42536_0; 42532_0; 42497_1;>
                    Reverse<42523, 42536_0; 42532_0; 42497_1;>}*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dx4tx1 * (u[3][i + 1][j][k] - 2.0 * u[3][i][j][k] + u[3][i - 1][j][k]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[3][i + 1][j][k] * up1 - u[3][i - 1][j][k] * um1);
                    /*OUT: {
                    Reverse<48606, 42536_0; 42532_0; 42497_1;>
                    Reverse<42523, 42536_0; 42532_0; 42497_1;>}*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dx5tx1 * (u[4][i + 1][j][k] - 2.0 * u[4][i][j][k] + u[4][i - 1][j][k]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[4][i + 1][j][k] * rho_i[i + 1][j][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i - 1][j][k] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[4][i + 1][j][k] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[4][i - 1][j][k] - c2 * square[i - 1][j][k]) * um1);
                }
            }
        }
        /*OUT: {
        Reverse<48606, 42497_1;>
        Reverse<42523, 42497_1;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<42790,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<42790,>}*/
        i = 1;
        /*OUT: {
        Reverse<42790,>}*/
        /*OUT: {
        Reverse<42790,>
        Reverse<42829,>}*/
        /*OUT: {
        Reverse<42829,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<42790, 42794_0;>
            Reverse<42829, 42794_0;>}*/
            /*OUT: {
            Reverse<42790, 42794_0;>
            Reverse<42829, 42794_0;>}*/
            /*OUT: {
            Reverse<42790, 42804_1; 42794_0;>
            Reverse<42829, 42804_1; 42794_0;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<42790, 42794_0;>
                Reverse<42829, 42794_0;>}*/
                /*OUT: {
                Reverse<42790, 42794_0;>
                Reverse<42829, 42794_0;>}*/
                /*OUT: {
                Reverse<42790, 42804_0; 42794_0;>
                Reverse<42829, 42804_0; 42794_0;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<42790, 42804_0; 42794_0;>
                    Reverse<42829, 42804_0; 42794_0;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                }
            }
            /*OUT: {
            Reverse<42790, 42794_0;>
            Reverse<42829, 42794_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<42829,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<42790, 42794_1;>
        Reverse<42829, 42794_1;>}*/
        i = 2;
        /*OUT: {
        Reverse<42790, 42794_1;>
        Reverse<42829, 42794_1;>}*/
        /*OUT: {
        Reverse<42872,>
        Reverse<42790, 42794_1;>
        Reverse<42829, 42794_1;>}*/
        /*OUT: {
        Reverse<42872,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<42790, 42833_0; 42794_1;>
            Reverse<42829, 42833_0; 42794_1;>
            Reverse<42872, 42833_0;>}*/
            /*OUT: {
            Reverse<42790, 42833_0; 42794_1;>
            Reverse<42829, 42833_0; 42794_1;>
            Reverse<42872, 42833_0;>}*/
            /*OUT: {
            Reverse<42872, 42843_1; 42833_0;>
            Reverse<42790, 42843_1; 42833_0; 42794_1;>
            Reverse<42829, 42843_1; 42833_0; 42794_1;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<42790, 42833_0; 42794_1;>
                Reverse<42829, 42833_0; 42794_1;>
                Reverse<42872, 42833_0;>}*/
                /*OUT: {
                Reverse<42790, 42833_0; 42794_1;>
                Reverse<42829, 42833_0; 42794_1;>
                Reverse<42872, 42833_0;>}*/
                /*OUT: {
                Reverse<42872, 42843_0; 42833_0;>
                Reverse<42790, 42843_0; 42833_0; 42794_1;>
                Reverse<42829, 42843_0; 42833_0; 42794_1;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<42872, 42843_0; 42833_0;>
                    Reverse<42790, 42843_0; 42833_0; 42794_1;>
                    Reverse<42829, 42843_0; 42833_0; 42794_1;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                }
            }
            /*OUT: {
            Reverse<42790, 42833_0; 42794_1;>
            Reverse<42829, 42833_0; 42794_1;>
            Reverse<42872, 42833_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<42872,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<42790, 42833_1; 42794_1;>
        Reverse<42829, 42833_1; 42794_1;>
        Reverse<42872, 42833_1;>}*/
        /*OUT: {
        Reverse<42921,>
        Reverse<42790, 42833_1; 42794_1;>
        Reverse<42829, 42833_1; 42794_1;>
        Reverse<42872, 42833_1;>}*/
        /*OUT: {
        Reverse<42921,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<42921, 42874_0;>
            Reverse<42790, 42874_0; 42833_1; 42794_1;>
            Reverse<42872, 42874_0; 42833_1;>
            Reverse<42829, 42874_0; 42833_1; 42794_1;>}*/
            /*OUT: {
            Reverse<42921, 42874_0;>
            Reverse<42790, 42874_0; 42833_1; 42794_1;>
            Reverse<42872, 42874_0; 42833_1;>
            Reverse<42829, 42874_0; 42833_1; 42794_1;>}*/
            /*OUT: {
            Reverse<42872, 42884_1; 42874_0; 42833_1;>
            Reverse<42790, 42884_1; 42874_0; 42833_1; 42794_1;>
            Reverse<42921, 42884_1; 42874_0;>
            Reverse<42829, 42884_1; 42874_0; 42833_1; 42794_1;>}*/
            for (i = 3 * 1; i <= grid_points[0] - 3 * 1 - 1; i++) {
                /*OUT: {
                Reverse<42921, 42874_0;>
                Reverse<42790, 42874_0; 42833_1; 42794_1;>
                Reverse<42872, 42874_0; 42833_1;>
                Reverse<42829, 42874_0; 42833_1; 42794_1;>}*/
                /*OUT: {
                Reverse<42921, 42874_0;>
                Reverse<42790, 42874_0; 42833_1; 42794_1;>
                Reverse<42872, 42874_0; 42833_1;>
                Reverse<42829, 42874_0; 42833_1; 42794_1;>}*/
                /*OUT: {
                Reverse<42921, 42888_1; 42884_0; 42874_0;>
                Reverse<42790, 42888_1; 42884_0; 42874_0; 42833_1; 42794_1;>
                Reverse<42829, 42888_1; 42884_0; 42874_0; 42833_1; 42794_1;>
                Reverse<42872, 42888_1; 42884_0; 42874_0; 42833_1;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<42790, 42884_0; 42874_0; 42833_1; 42794_1;>
                    Reverse<42872, 42884_0; 42874_0; 42833_1;>
                    Reverse<42829, 42884_0; 42874_0; 42833_1; 42794_1;>
                    Reverse<42921, 42884_0; 42874_0;>}*/
                    /*OUT: {
                    Reverse<42790, 42884_0; 42874_0; 42833_1; 42794_1;>
                    Reverse<42872, 42884_0; 42874_0; 42833_1;>
                    Reverse<42829, 42884_0; 42874_0; 42833_1; 42794_1;>
                    Reverse<42921, 42884_0; 42874_0;>}*/
                    /*OUT: {
                    Reverse<42921, 42888_0; 42884_0; 42874_0;>
                    Reverse<42790, 42888_0; 42884_0; 42874_0; 42833_1; 42794_1;>
                    Reverse<42829, 42888_0; 42884_0; 42874_0; 42833_1; 42794_1;>
                    Reverse<42872, 42888_0; 42884_0; 42874_0; 42833_1;>}*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*OUT: {
                        Reverse<42921, 42888_0; 42884_0; 42874_0;>
                        Reverse<42790, 42888_0; 42884_0; 42874_0; 42833_1; 42794_1;>
                        Reverse<42829, 42888_0; 42884_0; 42874_0; 42833_1; 42794_1;>
                        Reverse<42872, 42888_0; 42884_0; 42874_0; 42833_1;>}*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                    }
                }
            }
            /*OUT: {
            Reverse<42921, 42874_0;>
            Reverse<42790, 42874_0; 42833_1; 42794_1;>
            Reverse<42872, 42874_0; 42833_1;>
            Reverse<42829, 42874_0; 42833_1; 42794_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<42921,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<42921, 42874_1;>
        Reverse<42872, 42874_1; 42833_1;>
        Reverse<42790, 42874_1; 42833_1; 42794_1;>
        Reverse<42829, 42874_1; 42833_1; 42794_1;>}*/
        i = grid_points[0] - 3;
        /*OUT: {
        Reverse<42921, 42874_1;>
        Reverse<42872, 42874_1; 42833_1;>
        Reverse<42790, 42874_1; 42833_1; 42794_1;>
        Reverse<42829, 42874_1; 42833_1; 42794_1;>}*/
        /*OUT: {
        Reverse<42965,>
        Reverse<42921, 42874_1;>
        Reverse<42872, 42874_1; 42833_1;>
        Reverse<42790, 42874_1; 42833_1; 42794_1;>
        Reverse<42829, 42874_1; 42833_1; 42794_1;>}*/
        /*OUT: {
        Reverse<42965,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<42921, 42926_0; 42874_1;>
            Reverse<42872, 42926_0; 42874_1; 42833_1;>
            Reverse<42965, 42926_0;>
            Reverse<42790, 42926_0; 42874_1; 42833_1; 42794_1;>
            Reverse<42829, 42926_0; 42874_1; 42833_1; 42794_1;>}*/
            /*OUT: {
            Reverse<42921, 42926_0; 42874_1;>
            Reverse<42872, 42926_0; 42874_1; 42833_1;>
            Reverse<42965, 42926_0;>
            Reverse<42790, 42926_0; 42874_1; 42833_1; 42794_1;>
            Reverse<42829, 42926_0; 42874_1; 42833_1; 42794_1;>}*/
            /*OUT: {
            Reverse<42790, 42936_1; 42926_0; 42874_1; 42833_1; 42794_1;>
            Reverse<42829, 42936_1; 42926_0; 42874_1; 42833_1; 42794_1;>
            Reverse<42965, 42936_1; 42926_0;>
            Reverse<42872, 42936_1; 42926_0; 42874_1; 42833_1;>
            Reverse<42921, 42936_1; 42926_0; 42874_1;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<42921, 42926_0; 42874_1;>
                Reverse<42872, 42926_0; 42874_1; 42833_1;>
                Reverse<42965, 42926_0;>
                Reverse<42790, 42926_0; 42874_1; 42833_1; 42794_1;>
                Reverse<42829, 42926_0; 42874_1; 42833_1; 42794_1;>}*/
                /*OUT: {
                Reverse<42921, 42926_0; 42874_1;>
                Reverse<42872, 42926_0; 42874_1; 42833_1;>
                Reverse<42965, 42926_0;>
                Reverse<42790, 42926_0; 42874_1; 42833_1; 42794_1;>
                Reverse<42829, 42926_0; 42874_1; 42833_1; 42794_1;>}*/
                /*OUT: {
                Reverse<42965, 42936_0; 42926_0;>
                Reverse<42790, 42936_0; 42926_0; 42874_1; 42833_1; 42794_1;>
                Reverse<42829, 42936_0; 42926_0; 42874_1; 42833_1; 42794_1;>
                Reverse<42872, 42936_0; 42926_0; 42874_1; 42833_1;>
                Reverse<42921, 42936_0; 42926_0; 42874_1;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<42965, 42936_0; 42926_0;>
                    Reverse<42790, 42936_0; 42926_0; 42874_1; 42833_1; 42794_1;>
                    Reverse<42829, 42936_0; 42926_0; 42874_1; 42833_1; 42794_1;>
                    Reverse<42872, 42936_0; 42926_0; 42874_1; 42833_1;>
                    Reverse<42921, 42936_0; 42926_0; 42874_1;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k]);
                }
            }
            /*OUT: {
            Reverse<42921, 42926_0; 42874_1;>
            Reverse<42872, 42926_0; 42874_1; 42833_1;>
            Reverse<42965, 42926_0;>
            Reverse<42790, 42926_0; 42874_1; 42833_1; 42794_1;>
            Reverse<42829, 42926_0; 42874_1; 42833_1; 42794_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<42965,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<42921, 42926_1; 42874_1;>
        Reverse<42872, 42926_1; 42874_1; 42833_1;>
        Reverse<42965, 42926_1;>
        Reverse<42790, 42926_1; 42874_1; 42833_1; 42794_1;>
        Reverse<42829, 42926_1; 42874_1; 42833_1; 42794_1;>}*/
        i = grid_points[0] - 2;
        /*OUT: {
        Reverse<42921, 42926_1; 42874_1;>
        Reverse<42872, 42926_1; 42874_1; 42833_1;>
        Reverse<42965, 42926_1;>
        Reverse<42790, 42926_1; 42874_1; 42833_1; 42794_1;>
        Reverse<42829, 42926_1; 42874_1; 42833_1; 42794_1;>}*/
        /*OUT: {
        Reverse<43005,>
        Reverse<42921, 42926_1; 42874_1;>
        Reverse<42872, 42926_1; 42874_1; 42833_1;>
        Reverse<42965, 42926_1;>
        Reverse<42790, 42926_1; 42874_1; 42833_1; 42794_1;>
        Reverse<42829, 42926_1; 42874_1; 42833_1; 42794_1;>}*/
        /*OUT: {
        Reverse<43005,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<42790, 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
            Reverse<42829, 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
            Reverse<42872, 42970_0; 42926_1; 42874_1; 42833_1;>
            Reverse<43005, 42970_0;>
            Reverse<42921, 42970_0; 42926_1; 42874_1;>
            Reverse<42965, 42970_0; 42926_1;>}*/
            /*OUT: {
            Reverse<42790, 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
            Reverse<42829, 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
            Reverse<42872, 42970_0; 42926_1; 42874_1; 42833_1;>
            Reverse<43005, 42970_0;>
            Reverse<42921, 42970_0; 42926_1; 42874_1;>
            Reverse<42965, 42970_0; 42926_1;>}*/
            /*OUT: {
            Reverse<42790, 42980_1; 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
            Reverse<42829, 42980_1; 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
            Reverse<42872, 42980_1; 42970_0; 42926_1; 42874_1; 42833_1;>
            Reverse<42965, 42980_1; 42970_0; 42926_1;>
            Reverse<42921, 42980_1; 42970_0; 42926_1; 42874_1;>
            Reverse<43005, 42980_1; 42970_0;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<42790, 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
                Reverse<42829, 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
                Reverse<42872, 42970_0; 42926_1; 42874_1; 42833_1;>
                Reverse<43005, 42970_0;>
                Reverse<42921, 42970_0; 42926_1; 42874_1;>
                Reverse<42965, 42970_0; 42926_1;>}*/
                /*OUT: {
                Reverse<42790, 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
                Reverse<42829, 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
                Reverse<42872, 42970_0; 42926_1; 42874_1; 42833_1;>
                Reverse<43005, 42970_0;>
                Reverse<42921, 42970_0; 42926_1; 42874_1;>
                Reverse<42965, 42970_0; 42926_1;>}*/
                /*OUT: {
                Reverse<43005, 42980_0; 42970_0;>
                Reverse<42872, 42980_0; 42970_0; 42926_1; 42874_1; 42833_1;>
                Reverse<42965, 42980_0; 42970_0; 42926_1;>
                Reverse<42790, 42980_0; 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
                Reverse<42829, 42980_0; 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
                Reverse<42921, 42980_0; 42970_0; 42926_1; 42874_1;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<43005, 42980_0; 42970_0;>
                    Reverse<42872, 42980_0; 42970_0; 42926_1; 42874_1; 42833_1;>
                    Reverse<42965, 42980_0; 42970_0; 42926_1;>
                    Reverse<42790, 42980_0; 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
                    Reverse<42829, 42980_0; 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
                    Reverse<42921, 42980_0; 42970_0; 42926_1; 42874_1;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 5.0 * u[m][i][j][k]);
                }
            }
            /*OUT: {
            Reverse<42790, 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
            Reverse<42829, 42970_0; 42926_1; 42874_1; 42833_1; 42794_1;>
            Reverse<42872, 42970_0; 42926_1; 42874_1; 42833_1;>
            Reverse<43005, 42970_0;>
            Reverse<42921, 42970_0; 42926_1; 42874_1;>
            Reverse<42965, 42970_0; 42926_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<43005,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<42790, 42970_1; 42926_1; 42874_1; 42833_1; 42794_1;>
        Reverse<42829, 42970_1; 42926_1; 42874_1; 42833_1; 42794_1;>
        Reverse<42872, 42970_1; 42926_1; 42874_1; 42833_1;>
        Reverse<43005, 42970_1;>
        Reverse<42921, 42970_1; 42926_1; 42874_1;>
        Reverse<42965, 42970_1; 42926_1;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<43006,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<43006,>}*/
        /*OUT: {
        Reverse<43006,>}*/
        /*OUT: {
        Reverse<43006, 43015_1;>}*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: {
            Reverse<43006,>}*/
            /*OUT: {
            Reverse<43006,>}*/
            /*OUT: {
            Reverse<43006, 43019_1; 43015_0;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<43006, 43015_0;>}*/
                /*OUT: {
                Reverse<43006, 43015_0;>}*/
                /*OUT: {
                Reverse<43006, 43019_0; 43015_0;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<43006, 43019_0; 43015_0;>}*/
                    vijk = vs[i][j][k];
                    /*OUT: {
                    Reverse<43006, 43019_0; 43015_0;>}*/
                    vp1 = vs[i][j + 1][k];
                    /*OUT: {
                    Reverse<43006, 43019_0; 43015_0;>}*/
                    vm1 = vs[i][j - 1][k];
                    /*OUT: {
                    Reverse<43006, 43019_0; 43015_0;>}*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dy1ty1 * (u[0][i][j + 1][k] - 2.0 * u[0][i][j][k] + u[0][i][j - 1][k]) - ty2 * (u[2][i][j + 1][k] - u[2][i][j - 1][k]);
                    /*OUT: {
                    Reverse<43006, 43019_0; 43015_0;>}*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dy2ty1 * (u[1][i][j + 1][k] - 2.0 * u[1][i][j][k] + u[1][i][j - 1][k]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[1][i][j + 1][k] * vp1 - u[1][i][j - 1][k] * vm1);
                    /*OUT: {
                    Reverse<43006, 43019_0; 43015_0;>}*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dy3ty1 * (u[2][i][j + 1][k] - 2.0 * u[2][i][j][k] + u[2][i][j - 1][k]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[2][i][j + 1][k] * vp1 - u[2][i][j - 1][k] * vm1 + (u[4][i][j + 1][k] - square[i][j + 1][k] - u[4][i][j - 1][k] + square[i][j - 1][k]) * c2);
                    /*OUT: {
                    Reverse<43006, 43019_0; 43015_0;>}*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dy4ty1 * (u[3][i][j + 1][k] - 2.0 * u[3][i][j][k] + u[3][i][j - 1][k]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[3][i][j + 1][k] * vp1 - u[3][i][j - 1][k] * vm1);
                    /*OUT: {
                    Reverse<43006, 43019_0; 43015_0;>}*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dy5ty1 * (u[4][i][j + 1][k] - 2.0 * u[4][i][j][k] + u[4][i][j - 1][k]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[4][i][j + 1][k] * rho_i[i][j + 1][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j - 1][k] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[4][i][j + 1][k] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[4][i][j - 1][k] - c2 * square[i][j - 1][k]) * vm1);
                }
            }
        }
        /*OUT: {
        Reverse<43006,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<43273,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<43273,>}*/
        j = 1;
        /*OUT: {
        Reverse<43273,>}*/
        /*OUT: {
        Reverse<43273,>
        Reverse<43312,>}*/
        /*OUT: {
        Reverse<43312,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<43273, 43277_0;>
            Reverse<43312, 43277_0;>}*/
            /*OUT: {
            Reverse<43273, 43277_0;>
            Reverse<43312, 43277_0;>}*/
            /*OUT: {
            Reverse<43273, 43287_1; 43277_0;>
            Reverse<43312, 43287_1; 43277_0;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<43273, 43277_0;>
                Reverse<43312, 43277_0;>}*/
                /*OUT: {
                Reverse<43273, 43277_0;>
                Reverse<43312, 43277_0;>}*/
                /*OUT: {
                Reverse<43273, 43287_0; 43277_0;>
                Reverse<43312, 43287_0; 43277_0;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<43273, 43287_0; 43277_0;>
                    Reverse<43312, 43287_0; 43277_0;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                }
            }
            /*OUT: {
            Reverse<43273, 43277_0;>
            Reverse<43312, 43277_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<43312,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<43273, 43277_1;>
        Reverse<43312, 43277_1;>}*/
        j = 2;
        /*OUT: {
        Reverse<43273, 43277_1;>
        Reverse<43312, 43277_1;>}*/
        /*OUT: {
        Reverse<43355,>
        Reverse<43273, 43277_1;>
        Reverse<43312, 43277_1;>}*/
        /*OUT: {
        Reverse<43355,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<43273, 43316_0; 43277_1;>
            Reverse<43312, 43316_0; 43277_1;>
            Reverse<43355, 43316_0;>}*/
            /*OUT: {
            Reverse<43273, 43316_0; 43277_1;>
            Reverse<43312, 43316_0; 43277_1;>
            Reverse<43355, 43316_0;>}*/
            /*OUT: {
            Reverse<43273, 43326_1; 43316_0; 43277_1;>
            Reverse<43312, 43326_1; 43316_0; 43277_1;>
            Reverse<43355, 43326_1; 43316_0;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<43273, 43316_0; 43277_1;>
                Reverse<43312, 43316_0; 43277_1;>
                Reverse<43355, 43316_0;>}*/
                /*OUT: {
                Reverse<43273, 43316_0; 43277_1;>
                Reverse<43312, 43316_0; 43277_1;>
                Reverse<43355, 43316_0;>}*/
                /*OUT: {
                Reverse<43273, 43326_0; 43316_0; 43277_1;>
                Reverse<43312, 43326_0; 43316_0; 43277_1;>
                Reverse<43355, 43326_0; 43316_0;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<43273, 43326_0; 43316_0; 43277_1;>
                    Reverse<43312, 43326_0; 43316_0; 43277_1;>
                    Reverse<43355, 43326_0; 43316_0;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                }
            }
            /*OUT: {
            Reverse<43273, 43316_0; 43277_1;>
            Reverse<43312, 43316_0; 43277_1;>
            Reverse<43355, 43316_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<43355,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<43273, 43316_1; 43277_1;>
        Reverse<43312, 43316_1; 43277_1;>
        Reverse<43355, 43316_1;>}*/
        /*OUT: {
        Reverse<43404,>
        Reverse<43273, 43316_1; 43277_1;>
        Reverse<43312, 43316_1; 43277_1;>
        Reverse<43355, 43316_1;>}*/
        /*OUT: {
        Reverse<43404,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<43355, 43357_0; 43316_1;>
            Reverse<43404, 43357_0;>
            Reverse<43273, 43357_0; 43316_1; 43277_1;>
            Reverse<43312, 43357_0; 43316_1; 43277_1;>}*/
            /*OUT: {
            Reverse<43355, 43357_0; 43316_1;>
            Reverse<43404, 43357_0;>
            Reverse<43273, 43357_0; 43316_1; 43277_1;>
            Reverse<43312, 43357_0; 43316_1; 43277_1;>}*/
            /*OUT: {
            Reverse<43273, 43367_1; 43357_0; 43316_1; 43277_1;>
            Reverse<43355, 43367_1; 43357_0; 43316_1;>
            Reverse<43312, 43367_1; 43357_0; 43316_1; 43277_1;>
            Reverse<43404, 43367_1; 43357_0;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<43355, 43357_0; 43316_1;>
                Reverse<43404, 43357_0;>
                Reverse<43273, 43357_0; 43316_1; 43277_1;>
                Reverse<43312, 43357_0; 43316_1; 43277_1;>}*/
                /*OUT: {
                Reverse<43355, 43357_0; 43316_1;>
                Reverse<43404, 43357_0;>
                Reverse<43273, 43357_0; 43316_1; 43277_1;>
                Reverse<43312, 43357_0; 43316_1; 43277_1;>}*/
                /*OUT: {
                Reverse<43355, 43371_1; 43367_0; 43357_0; 43316_1;>
                Reverse<43404, 43371_1; 43367_0; 43357_0;>
                Reverse<43273, 43371_1; 43367_0; 43357_0; 43316_1; 43277_1;>
                Reverse<43312, 43371_1; 43367_0; 43357_0; 43316_1; 43277_1;>}*/
                for (j = 3 * 1; j <= grid_points[1] - 3 * 1 - 1; j++) {
                    /*OUT: {
                    Reverse<43273, 43367_0; 43357_0; 43316_1; 43277_1;>
                    Reverse<43312, 43367_0; 43357_0; 43316_1; 43277_1;>
                    Reverse<43355, 43367_0; 43357_0; 43316_1;>
                    Reverse<43404, 43367_0; 43357_0;>}*/
                    /*OUT: {
                    Reverse<43273, 43367_0; 43357_0; 43316_1; 43277_1;>
                    Reverse<43312, 43367_0; 43357_0; 43316_1; 43277_1;>
                    Reverse<43355, 43367_0; 43357_0; 43316_1;>
                    Reverse<43404, 43367_0; 43357_0;>}*/
                    /*OUT: {
                    Reverse<43355, 43371_0; 43367_0; 43357_0; 43316_1;>
                    Reverse<43404, 43371_0; 43367_0; 43357_0;>
                    Reverse<43273, 43371_0; 43367_0; 43357_0; 43316_1; 43277_1;>
                    Reverse<43312, 43371_0; 43367_0; 43357_0; 43316_1; 43277_1;>}*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*OUT: {
                        Reverse<43355, 43371_0; 43367_0; 43357_0; 43316_1;>
                        Reverse<43404, 43371_0; 43367_0; 43357_0;>
                        Reverse<43273, 43371_0; 43367_0; 43357_0; 43316_1; 43277_1;>
                        Reverse<43312, 43371_0; 43367_0; 43357_0; 43316_1; 43277_1;>}*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                    }
                }
            }
            /*OUT: {
            Reverse<43355, 43357_0; 43316_1;>
            Reverse<43404, 43357_0;>
            Reverse<43273, 43357_0; 43316_1; 43277_1;>
            Reverse<43312, 43357_0; 43316_1; 43277_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<43404,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<43355, 43357_1; 43316_1;>
        Reverse<43404, 43357_1;>
        Reverse<43273, 43357_1; 43316_1; 43277_1;>
        Reverse<43312, 43357_1; 43316_1; 43277_1;>}*/
        j = grid_points[1] - 3;
        /*OUT: {
        Reverse<43355, 43357_1; 43316_1;>
        Reverse<43404, 43357_1;>
        Reverse<43273, 43357_1; 43316_1; 43277_1;>
        Reverse<43312, 43357_1; 43316_1; 43277_1;>}*/
        /*OUT: {
        Reverse<43448,>
        Reverse<43355, 43357_1; 43316_1;>
        Reverse<43404, 43357_1;>
        Reverse<43273, 43357_1; 43316_1; 43277_1;>
        Reverse<43312, 43357_1; 43316_1; 43277_1;>}*/
        /*OUT: {
        Reverse<43448,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<43355, 43409_0; 43357_1; 43316_1;>
            Reverse<43273, 43409_0; 43357_1; 43316_1; 43277_1;>
            Reverse<43312, 43409_0; 43357_1; 43316_1; 43277_1;>
            Reverse<43448, 43409_0;>
            Reverse<43404, 43409_0; 43357_1;>}*/
            /*OUT: {
            Reverse<43355, 43409_0; 43357_1; 43316_1;>
            Reverse<43273, 43409_0; 43357_1; 43316_1; 43277_1;>
            Reverse<43312, 43409_0; 43357_1; 43316_1; 43277_1;>
            Reverse<43448, 43409_0;>
            Reverse<43404, 43409_0; 43357_1;>}*/
            /*OUT: {
            Reverse<43404, 43419_1; 43409_0; 43357_1;>
            Reverse<43355, 43419_1; 43409_0; 43357_1; 43316_1;>
            Reverse<43273, 43419_1; 43409_0; 43357_1; 43316_1; 43277_1;>
            Reverse<43448, 43419_1; 43409_0;>
            Reverse<43312, 43419_1; 43409_0; 43357_1; 43316_1; 43277_1;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<43355, 43409_0; 43357_1; 43316_1;>
                Reverse<43273, 43409_0; 43357_1; 43316_1; 43277_1;>
                Reverse<43312, 43409_0; 43357_1; 43316_1; 43277_1;>
                Reverse<43448, 43409_0;>
                Reverse<43404, 43409_0; 43357_1;>}*/
                /*OUT: {
                Reverse<43355, 43409_0; 43357_1; 43316_1;>
                Reverse<43273, 43409_0; 43357_1; 43316_1; 43277_1;>
                Reverse<43312, 43409_0; 43357_1; 43316_1; 43277_1;>
                Reverse<43448, 43409_0;>
                Reverse<43404, 43409_0; 43357_1;>}*/
                /*OUT: {
                Reverse<43448, 43419_0; 43409_0;>
                Reverse<43355, 43419_0; 43409_0; 43357_1; 43316_1;>
                Reverse<43273, 43419_0; 43409_0; 43357_1; 43316_1; 43277_1;>
                Reverse<43404, 43419_0; 43409_0; 43357_1;>
                Reverse<43312, 43419_0; 43409_0; 43357_1; 43316_1; 43277_1;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<43448, 43419_0; 43409_0;>
                    Reverse<43355, 43419_0; 43409_0; 43357_1; 43316_1;>
                    Reverse<43273, 43419_0; 43409_0; 43357_1; 43316_1; 43277_1;>
                    Reverse<43404, 43419_0; 43409_0; 43357_1;>
                    Reverse<43312, 43419_0; 43409_0; 43357_1; 43316_1; 43277_1;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k]);
                }
            }
            /*OUT: {
            Reverse<43355, 43409_0; 43357_1; 43316_1;>
            Reverse<43273, 43409_0; 43357_1; 43316_1; 43277_1;>
            Reverse<43312, 43409_0; 43357_1; 43316_1; 43277_1;>
            Reverse<43448, 43409_0;>
            Reverse<43404, 43409_0; 43357_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<43448,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<43355, 43409_1; 43357_1; 43316_1;>
        Reverse<43404, 43409_1; 43357_1;>
        Reverse<43273, 43409_1; 43357_1; 43316_1; 43277_1;>
        Reverse<43448, 43409_1;>
        Reverse<43312, 43409_1; 43357_1; 43316_1; 43277_1;>}*/
        j = grid_points[1] - 2;
        /*OUT: {
        Reverse<43355, 43409_1; 43357_1; 43316_1;>
        Reverse<43404, 43409_1; 43357_1;>
        Reverse<43273, 43409_1; 43357_1; 43316_1; 43277_1;>
        Reverse<43448, 43409_1;>
        Reverse<43312, 43409_1; 43357_1; 43316_1; 43277_1;>}*/
        /*OUT: {
        Reverse<43488,>
        Reverse<43355, 43409_1; 43357_1; 43316_1;>
        Reverse<43404, 43409_1; 43357_1;>
        Reverse<43273, 43409_1; 43357_1; 43316_1; 43277_1;>
        Reverse<43448, 43409_1;>
        Reverse<43312, 43409_1; 43357_1; 43316_1; 43277_1;>}*/
        /*OUT: {
        Reverse<43488,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<43488, 43453_0;>
            Reverse<43448, 43453_0; 43409_1;>
            Reverse<43273, 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
            Reverse<43312, 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
            Reverse<43404, 43453_0; 43409_1; 43357_1;>
            Reverse<43355, 43453_0; 43409_1; 43357_1; 43316_1;>}*/
            /*OUT: {
            Reverse<43488, 43453_0;>
            Reverse<43448, 43453_0; 43409_1;>
            Reverse<43273, 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
            Reverse<43312, 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
            Reverse<43404, 43453_0; 43409_1; 43357_1;>
            Reverse<43355, 43453_0; 43409_1; 43357_1; 43316_1;>}*/
            /*OUT: {
            Reverse<43488, 43463_1; 43453_0;>
            Reverse<43355, 43463_1; 43453_0; 43409_1; 43357_1; 43316_1;>
            Reverse<43273, 43463_1; 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
            Reverse<43448, 43463_1; 43453_0; 43409_1;>
            Reverse<43404, 43463_1; 43453_0; 43409_1; 43357_1;>
            Reverse<43312, 43463_1; 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<43488, 43453_0;>
                Reverse<43448, 43453_0; 43409_1;>
                Reverse<43273, 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
                Reverse<43312, 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
                Reverse<43404, 43453_0; 43409_1; 43357_1;>
                Reverse<43355, 43453_0; 43409_1; 43357_1; 43316_1;>}*/
                /*OUT: {
                Reverse<43488, 43453_0;>
                Reverse<43448, 43453_0; 43409_1;>
                Reverse<43273, 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
                Reverse<43312, 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
                Reverse<43404, 43453_0; 43409_1; 43357_1;>
                Reverse<43355, 43453_0; 43409_1; 43357_1; 43316_1;>}*/
                /*OUT: {
                Reverse<43355, 43463_0; 43453_0; 43409_1; 43357_1; 43316_1;>
                Reverse<43273, 43463_0; 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
                Reverse<43312, 43463_0; 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
                Reverse<43448, 43463_0; 43453_0; 43409_1;>
                Reverse<43488, 43463_0; 43453_0;>
                Reverse<43404, 43463_0; 43453_0; 43409_1; 43357_1;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<43355, 43463_0; 43453_0; 43409_1; 43357_1; 43316_1;>
                    Reverse<43273, 43463_0; 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
                    Reverse<43312, 43463_0; 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
                    Reverse<43448, 43463_0; 43453_0; 43409_1;>
                    Reverse<43488, 43463_0; 43453_0;>
                    Reverse<43404, 43463_0; 43453_0; 43409_1; 43357_1;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 5.0 * u[m][i][j][k]);
                }
            }
            /*OUT: {
            Reverse<43488, 43453_0;>
            Reverse<43448, 43453_0; 43409_1;>
            Reverse<43273, 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
            Reverse<43312, 43453_0; 43409_1; 43357_1; 43316_1; 43277_1;>
            Reverse<43404, 43453_0; 43409_1; 43357_1;>
            Reverse<43355, 43453_0; 43409_1; 43357_1; 43316_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<43488,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<43488, 43453_1;>
        Reverse<43273, 43453_1; 43409_1; 43357_1; 43316_1; 43277_1;>
        Reverse<43448, 43453_1; 43409_1;>
        Reverse<43312, 43453_1; 43409_1; 43357_1; 43316_1; 43277_1;>
        Reverse<43355, 43453_1; 43409_1; 43357_1; 43316_1;>
        Reverse<43404, 43453_1; 43409_1; 43357_1;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<43489,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<43489,>}*/
        /*OUT: {
        Reverse<43489,>}*/
        /*OUT: {
        Reverse<43489, 43498_1;>}*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: {
            Reverse<43489,>}*/
            /*OUT: {
            Reverse<43489,>}*/
            /*OUT: {
            Reverse<43489, 43502_1; 43498_0;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<43489, 43498_0;>}*/
                /*OUT: {
                Reverse<43489, 43498_0;>}*/
                /*OUT: {
                Reverse<43489, 43502_0; 43498_0;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<43489, 43502_0; 43498_0;>}*/
                    wijk = ws[i][j][k];
                    /*OUT: {
                    Reverse<43489, 43502_0; 43498_0;>}*/
                    wp1 = ws[i][j][k + 1];
                    /*OUT: {
                    Reverse<43489, 43502_0; 43498_0;>}*/
                    wm1 = ws[i][j][k - 1];
                    /*OUT: {
                    Reverse<43489, 43502_0; 43498_0;>}*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dz1tz1 * (u[0][i][j][k + 1] - 2.0 * u[0][i][j][k] + u[0][i][j][k - 1]) - tz2 * (u[3][i][j][k + 1] - u[3][i][j][k - 1]);
                    /*OUT: {
                    Reverse<43489, 43502_0; 43498_0;>}*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dz2tz1 * (u[1][i][j][k + 1] - 2.0 * u[1][i][j][k] + u[1][i][j][k - 1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[1][i][j][k + 1] * wp1 - u[1][i][j][k - 1] * wm1);
                    /*OUT: {
                    Reverse<43489, 43502_0; 43498_0;>}*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dz3tz1 * (u[2][i][j][k + 1] - 2.0 * u[2][i][j][k] + u[2][i][j][k - 1]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[2][i][j][k + 1] * wp1 - u[2][i][j][k - 1] * wm1);
                    /*OUT: {
                    Reverse<43489, 43502_0; 43498_0;>}*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dz4tz1 * (u[3][i][j][k + 1] - 2.0 * u[3][i][j][k] + u[3][i][j][k - 1]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[3][i][j][k + 1] * wp1 - u[3][i][j][k - 1] * wm1 + (u[4][i][j][k + 1] - square[i][j][k + 1] - u[4][i][j][k - 1] + square[i][j][k - 1]) * c2);
                    /*OUT: {
                    Reverse<43489, 43502_0; 43498_0;>}*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dz5tz1 * (u[4][i][j][k + 1] - 2.0 * u[4][i][j][k] + u[4][i][j][k - 1]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[4][i][j][k + 1] * rho_i[i][j][k + 1] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j][k - 1] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[4][i][j][k + 1] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[4][i][j][k - 1] - c2 * square[i][j][k - 1]) * wm1);
                }
            }
        }
        /*OUT: {
        Reverse<43489,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<43756,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<43756,>}*/
        k = 1;
        /*OUT: {
        Reverse<43756,>}*/
        /*OUT: {
        Reverse<43756,>
        Reverse<43795,>}*/
        /*OUT: {
        Reverse<43795,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<43756, 43760_0;>
            Reverse<43795, 43760_0;>}*/
            /*OUT: {
            Reverse<43756, 43760_0;>
            Reverse<43795, 43760_0;>}*/
            /*OUT: {
            Reverse<43756, 43770_1; 43760_0;>
            Reverse<43795, 43770_1; 43760_0;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<43756, 43760_0;>
                Reverse<43795, 43760_0;>}*/
                /*OUT: {
                Reverse<43756, 43760_0;>
                Reverse<43795, 43760_0;>}*/
                /*OUT: {
                Reverse<43756, 43770_0; 43760_0;>
                Reverse<43795, 43770_0; 43760_0;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<43756, 43770_0; 43760_0;>
                    Reverse<43795, 43770_0; 43760_0;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                }
            }
            /*OUT: {
            Reverse<43756, 43760_0;>
            Reverse<43795, 43760_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<43795,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<43756, 43760_1;>
        Reverse<43795, 43760_1;>}*/
        k = 2;
        /*OUT: {
        Reverse<43756, 43760_1;>
        Reverse<43795, 43760_1;>}*/
        /*OUT: {
        Reverse<43838,>
        Reverse<43756, 43760_1;>
        Reverse<43795, 43760_1;>}*/
        /*OUT: {
        Reverse<43838,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<43838, 43799_0;>
            Reverse<43756, 43799_0; 43760_1;>
            Reverse<43795, 43799_0; 43760_1;>}*/
            /*OUT: {
            Reverse<43838, 43799_0;>
            Reverse<43756, 43799_0; 43760_1;>
            Reverse<43795, 43799_0; 43760_1;>}*/
            /*OUT: {
            Reverse<43838, 43809_1; 43799_0;>
            Reverse<43756, 43809_1; 43799_0; 43760_1;>
            Reverse<43795, 43809_1; 43799_0; 43760_1;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<43838, 43799_0;>
                Reverse<43756, 43799_0; 43760_1;>
                Reverse<43795, 43799_0; 43760_1;>}*/
                /*OUT: {
                Reverse<43838, 43799_0;>
                Reverse<43756, 43799_0; 43760_1;>
                Reverse<43795, 43799_0; 43760_1;>}*/
                /*OUT: {
                Reverse<43838, 43809_0; 43799_0;>
                Reverse<43756, 43809_0; 43799_0; 43760_1;>
                Reverse<43795, 43809_0; 43799_0; 43760_1;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<43838, 43809_0; 43799_0;>
                    Reverse<43756, 43809_0; 43799_0; 43760_1;>
                    Reverse<43795, 43809_0; 43799_0; 43760_1;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                }
            }
            /*OUT: {
            Reverse<43838, 43799_0;>
            Reverse<43756, 43799_0; 43760_1;>
            Reverse<43795, 43799_0; 43760_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<43838,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<43838, 43799_1;>
        Reverse<43756, 43799_1; 43760_1;>
        Reverse<43795, 43799_1; 43760_1;>}*/
        /*OUT: {
        Reverse<43887,>
        Reverse<43838, 43799_1;>
        Reverse<43756, 43799_1; 43760_1;>
        Reverse<43795, 43799_1; 43760_1;>}*/
        /*OUT: {
        Reverse<43887,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<43887, 43840_0;>
            Reverse<43756, 43840_0; 43799_1; 43760_1;>
            Reverse<43795, 43840_0; 43799_1; 43760_1;>
            Reverse<43838, 43840_0; 43799_1;>}*/
            /*OUT: {
            Reverse<43887, 43840_0;>
            Reverse<43756, 43840_0; 43799_1; 43760_1;>
            Reverse<43795, 43840_0; 43799_1; 43760_1;>
            Reverse<43838, 43840_0; 43799_1;>}*/
            /*OUT: {
            Reverse<43756, 43850_1; 43840_0; 43799_1; 43760_1;>
            Reverse<43795, 43850_1; 43840_0; 43799_1; 43760_1;>
            Reverse<43838, 43850_1; 43840_0; 43799_1;>
            Reverse<43887, 43850_1; 43840_0;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<43887, 43840_0;>
                Reverse<43756, 43840_0; 43799_1; 43760_1;>
                Reverse<43795, 43840_0; 43799_1; 43760_1;>
                Reverse<43838, 43840_0; 43799_1;>}*/
                /*OUT: {
                Reverse<43887, 43840_0;>
                Reverse<43756, 43840_0; 43799_1; 43760_1;>
                Reverse<43795, 43840_0; 43799_1; 43760_1;>
                Reverse<43838, 43840_0; 43799_1;>}*/
                /*OUT: {
                Reverse<43838, 43854_1; 43850_0; 43840_0; 43799_1;>
                Reverse<43756, 43854_1; 43850_0; 43840_0; 43799_1; 43760_1;>
                Reverse<43795, 43854_1; 43850_0; 43840_0; 43799_1; 43760_1;>
                Reverse<43887, 43854_1; 43850_0; 43840_0;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<43756, 43850_0; 43840_0; 43799_1; 43760_1;>
                    Reverse<43795, 43850_0; 43840_0; 43799_1; 43760_1;>
                    Reverse<43838, 43850_0; 43840_0; 43799_1;>
                    Reverse<43887, 43850_0; 43840_0;>}*/
                    /*OUT: {
                    Reverse<43756, 43850_0; 43840_0; 43799_1; 43760_1;>
                    Reverse<43795, 43850_0; 43840_0; 43799_1; 43760_1;>
                    Reverse<43838, 43850_0; 43840_0; 43799_1;>
                    Reverse<43887, 43850_0; 43840_0;>}*/
                    /*OUT: {
                    Reverse<43838, 43854_0; 43850_0; 43840_0; 43799_1;>
                    Reverse<43756, 43854_0; 43850_0; 43840_0; 43799_1; 43760_1;>
                    Reverse<43795, 43854_0; 43850_0; 43840_0; 43799_1; 43760_1;>
                    Reverse<43887, 43854_0; 43850_0; 43840_0;>}*/
                    for (k = 3 * 1; k <= grid_points[2] - 3 * 1 - 1; k++) {
                        /*OUT: {
                        Reverse<43838, 43854_0; 43850_0; 43840_0; 43799_1;>
                        Reverse<43756, 43854_0; 43850_0; 43840_0; 43799_1; 43760_1;>
                        Reverse<43795, 43854_0; 43850_0; 43840_0; 43799_1; 43760_1;>
                        Reverse<43887, 43854_0; 43850_0; 43840_0;>}*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                    }
                }
            }
            /*OUT: {
            Reverse<43887, 43840_0;>
            Reverse<43756, 43840_0; 43799_1; 43760_1;>
            Reverse<43795, 43840_0; 43799_1; 43760_1;>
            Reverse<43838, 43840_0; 43799_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<43887,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<43887, 43840_1;>
        Reverse<43756, 43840_1; 43799_1; 43760_1;>
        Reverse<43795, 43840_1; 43799_1; 43760_1;>
        Reverse<43838, 43840_1; 43799_1;>}*/
        k = grid_points[2] - 3;
        /*OUT: {
        Reverse<43887, 43840_1;>
        Reverse<43756, 43840_1; 43799_1; 43760_1;>
        Reverse<43795, 43840_1; 43799_1; 43760_1;>
        Reverse<43838, 43840_1; 43799_1;>}*/
        /*OUT: {
        Reverse<43931,>
        Reverse<43887, 43840_1;>
        Reverse<43756, 43840_1; 43799_1; 43760_1;>
        Reverse<43795, 43840_1; 43799_1; 43760_1;>
        Reverse<43838, 43840_1; 43799_1;>}*/
        /*OUT: {
        Reverse<43931,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<43931, 43892_0;>
            Reverse<43838, 43892_0; 43840_1; 43799_1;>
            Reverse<43756, 43892_0; 43840_1; 43799_1; 43760_1;>
            Reverse<43795, 43892_0; 43840_1; 43799_1; 43760_1;>
            Reverse<43887, 43892_0; 43840_1;>}*/
            /*OUT: {
            Reverse<43931, 43892_0;>
            Reverse<43838, 43892_0; 43840_1; 43799_1;>
            Reverse<43756, 43892_0; 43840_1; 43799_1; 43760_1;>
            Reverse<43795, 43892_0; 43840_1; 43799_1; 43760_1;>
            Reverse<43887, 43892_0; 43840_1;>}*/
            /*OUT: {
            Reverse<43756, 43902_1; 43892_0; 43840_1; 43799_1; 43760_1;>
            Reverse<43795, 43902_1; 43892_0; 43840_1; 43799_1; 43760_1;>
            Reverse<43887, 43902_1; 43892_0; 43840_1;>
            Reverse<43931, 43902_1; 43892_0;>
            Reverse<43838, 43902_1; 43892_0; 43840_1; 43799_1;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<43931, 43892_0;>
                Reverse<43838, 43892_0; 43840_1; 43799_1;>
                Reverse<43756, 43892_0; 43840_1; 43799_1; 43760_1;>
                Reverse<43795, 43892_0; 43840_1; 43799_1; 43760_1;>
                Reverse<43887, 43892_0; 43840_1;>}*/
                /*OUT: {
                Reverse<43931, 43892_0;>
                Reverse<43838, 43892_0; 43840_1; 43799_1;>
                Reverse<43756, 43892_0; 43840_1; 43799_1; 43760_1;>
                Reverse<43795, 43892_0; 43840_1; 43799_1; 43760_1;>
                Reverse<43887, 43892_0; 43840_1;>}*/
                /*OUT: {
                Reverse<43887, 43902_0; 43892_0; 43840_1;>
                Reverse<43756, 43902_0; 43892_0; 43840_1; 43799_1; 43760_1;>
                Reverse<43795, 43902_0; 43892_0; 43840_1; 43799_1; 43760_1;>
                Reverse<43838, 43902_0; 43892_0; 43840_1; 43799_1;>
                Reverse<43931, 43902_0; 43892_0;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<43887, 43902_0; 43892_0; 43840_1;>
                    Reverse<43756, 43902_0; 43892_0; 43840_1; 43799_1; 43760_1;>
                    Reverse<43795, 43902_0; 43892_0; 43840_1; 43799_1; 43760_1;>
                    Reverse<43838, 43902_0; 43892_0; 43840_1; 43799_1;>
                    Reverse<43931, 43902_0; 43892_0;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1]);
                }
            }
            /*OUT: {
            Reverse<43931, 43892_0;>
            Reverse<43838, 43892_0; 43840_1; 43799_1;>
            Reverse<43756, 43892_0; 43840_1; 43799_1; 43760_1;>
            Reverse<43795, 43892_0; 43840_1; 43799_1; 43760_1;>
            Reverse<43887, 43892_0; 43840_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<43931,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<43931, 43892_1;>
        Reverse<43838, 43892_1; 43840_1; 43799_1;>
        Reverse<43756, 43892_1; 43840_1; 43799_1; 43760_1;>
        Reverse<43795, 43892_1; 43840_1; 43799_1; 43760_1;>
        Reverse<43887, 43892_1; 43840_1;>}*/
        k = grid_points[2] - 2;
        /*OUT: {
        Reverse<43931, 43892_1;>
        Reverse<43838, 43892_1; 43840_1; 43799_1;>
        Reverse<43756, 43892_1; 43840_1; 43799_1; 43760_1;>
        Reverse<43795, 43892_1; 43840_1; 43799_1; 43760_1;>
        Reverse<43887, 43892_1; 43840_1;>}*/
        /*OUT: {
        Reverse<43971,>
        Reverse<43931, 43892_1;>
        Reverse<43838, 43892_1; 43840_1; 43799_1;>
        Reverse<43756, 43892_1; 43840_1; 43799_1; 43760_1;>
        Reverse<43795, 43892_1; 43840_1; 43799_1; 43760_1;>
        Reverse<43887, 43892_1; 43840_1;>}*/
        /*OUT: {
        Reverse<43971,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<43756, 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43795, 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43971, 43936_0;>
            Reverse<43887, 43936_0; 43892_1; 43840_1;>
            Reverse<43838, 43936_0; 43892_1; 43840_1; 43799_1;>
            Reverse<43931, 43936_0; 43892_1;>}*/
            /*OUT: {
            Reverse<43756, 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43795, 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43971, 43936_0;>
            Reverse<43887, 43936_0; 43892_1; 43840_1;>
            Reverse<43838, 43936_0; 43892_1; 43840_1; 43799_1;>
            Reverse<43931, 43936_0; 43892_1;>}*/
            /*OUT: {
            Reverse<43756, 43946_1; 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43795, 43946_1; 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43931, 43946_1; 43936_0; 43892_1;>
            Reverse<43838, 43946_1; 43936_0; 43892_1; 43840_1; 43799_1;>
            Reverse<43971, 43946_1; 43936_0;>
            Reverse<43887, 43946_1; 43936_0; 43892_1; 43840_1;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<43756, 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
                Reverse<43795, 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
                Reverse<43971, 43936_0;>
                Reverse<43887, 43936_0; 43892_1; 43840_1;>
                Reverse<43838, 43936_0; 43892_1; 43840_1; 43799_1;>
                Reverse<43931, 43936_0; 43892_1;>}*/
                /*OUT: {
                Reverse<43756, 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
                Reverse<43795, 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
                Reverse<43971, 43936_0;>
                Reverse<43887, 43936_0; 43892_1; 43840_1;>
                Reverse<43838, 43936_0; 43892_1; 43840_1; 43799_1;>
                Reverse<43931, 43936_0; 43892_1;>}*/
                /*OUT: {
                Reverse<43838, 43946_0; 43936_0; 43892_1; 43840_1; 43799_1;>
                Reverse<43887, 43946_0; 43936_0; 43892_1; 43840_1;>
                Reverse<43756, 43946_0; 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
                Reverse<43795, 43946_0; 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
                Reverse<43971, 43946_0; 43936_0;>
                Reverse<43931, 43946_0; 43936_0; 43892_1;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<43838, 43946_0; 43936_0; 43892_1; 43840_1; 43799_1;>
                    Reverse<43887, 43946_0; 43936_0; 43892_1; 43840_1;>
                    Reverse<43756, 43946_0; 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
                    Reverse<43795, 43946_0; 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
                    Reverse<43971, 43946_0; 43936_0;>
                    Reverse<43931, 43946_0; 43936_0; 43892_1;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 5.0 * u[m][i][j][k]);
                }
            }
            /*OUT: {
            Reverse<43756, 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43795, 43936_0; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43971, 43936_0;>
            Reverse<43887, 43936_0; 43892_1; 43840_1;>
            Reverse<43838, 43936_0; 43892_1; 43840_1; 43799_1;>
            Reverse<43931, 43936_0; 43892_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<43971,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<43971, 43936_1;>
        Reverse<43756, 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
        Reverse<43795, 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
        Reverse<43838, 43936_1; 43892_1; 43840_1; 43799_1;>
        Reverse<43887, 43936_1; 43892_1; 43840_1;>
        Reverse<43931, 43936_1; 43892_1;>}*/
        /*OUT: {
        Reverse<43999,>
        Reverse<43971, 43936_1;>
        Reverse<43756, 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
        Reverse<43795, 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
        Reverse<43838, 43936_1; 43892_1; 43840_1; 43799_1;>
        Reverse<43887, 43936_1; 43892_1; 43840_1;>
        Reverse<43931, 43936_1; 43892_1;>}*/
        /*OUT: {
        Reverse<43999,>}*/
        for (m = 0; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<43971, 43973_0; 43936_1;>
            Reverse<43756, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43999, 43973_0;>
            Reverse<43931, 43973_0; 43936_1; 43892_1;>
            Reverse<43795, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43887, 43973_0; 43936_1; 43892_1; 43840_1;>
            Reverse<43838, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1;>}*/
            /*OUT: {
            Reverse<43971, 43973_0; 43936_1;>
            Reverse<43756, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43999, 43973_0;>
            Reverse<43931, 43973_0; 43936_1; 43892_1;>
            Reverse<43795, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43887, 43973_0; 43936_1; 43892_1; 43840_1;>
            Reverse<43838, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1;>}*/
            /*OUT: {
            Reverse<43971, 43983_1; 43973_0; 43936_1;>
            Reverse<43838, 43983_1; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1;>
            Reverse<43756, 43983_1; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43887, 43983_1; 43973_0; 43936_1; 43892_1; 43840_1;>
            Reverse<43795, 43983_1; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43931, 43983_1; 43973_0; 43936_1; 43892_1;>
            Reverse<43999, 43983_1; 43973_0;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<43971, 43973_0; 43936_1;>
                Reverse<43756, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                Reverse<43999, 43973_0;>
                Reverse<43931, 43973_0; 43936_1; 43892_1;>
                Reverse<43795, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                Reverse<43887, 43973_0; 43936_1; 43892_1; 43840_1;>
                Reverse<43838, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1;>}*/
                /*OUT: {
                Reverse<43971, 43973_0; 43936_1;>
                Reverse<43756, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                Reverse<43999, 43973_0;>
                Reverse<43931, 43973_0; 43936_1; 43892_1;>
                Reverse<43795, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                Reverse<43887, 43973_0; 43936_1; 43892_1; 43840_1;>
                Reverse<43838, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1;>}*/
                /*OUT: {
                Reverse<43756, 43987_1; 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                Reverse<43795, 43987_1; 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                Reverse<43971, 43987_1; 43983_0; 43973_0; 43936_1;>
                Reverse<43838, 43987_1; 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1;>
                Reverse<43931, 43987_1; 43983_0; 43973_0; 43936_1; 43892_1;>
                Reverse<43999, 43987_1; 43983_0; 43973_0;>
                Reverse<43887, 43987_1; 43983_0; 43973_0; 43936_1; 43892_1; 43840_1;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<43971, 43983_0; 43973_0; 43936_1;>
                    Reverse<43838, 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1;>
                    Reverse<43756, 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                    Reverse<43795, 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                    Reverse<43931, 43983_0; 43973_0; 43936_1; 43892_1;>
                    Reverse<43887, 43983_0; 43973_0; 43936_1; 43892_1; 43840_1;>
                    Reverse<43999, 43983_0; 43973_0;>}*/
                    /*OUT: {
                    Reverse<43971, 43983_0; 43973_0; 43936_1;>
                    Reverse<43838, 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1;>
                    Reverse<43756, 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                    Reverse<43795, 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                    Reverse<43931, 43983_0; 43973_0; 43936_1; 43892_1;>
                    Reverse<43887, 43983_0; 43973_0; 43936_1; 43892_1; 43840_1;>
                    Reverse<43999, 43983_0; 43973_0;>}*/
                    /*OUT: {
                    Reverse<43887, 43987_0; 43983_0; 43973_0; 43936_1; 43892_1; 43840_1;>
                    Reverse<43756, 43987_0; 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                    Reverse<43795, 43987_0; 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                    Reverse<43971, 43987_0; 43983_0; 43973_0; 43936_1;>
                    Reverse<43999, 43987_0; 43983_0; 43973_0;>
                    Reverse<43838, 43987_0; 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1;>
                    Reverse<43931, 43987_0; 43983_0; 43973_0; 43936_1; 43892_1;>}*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*OUT: {
                        Reverse<43887, 43987_0; 43983_0; 43973_0; 43936_1; 43892_1; 43840_1;>
                        Reverse<43756, 43987_0; 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                        Reverse<43795, 43987_0; 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
                        Reverse<43971, 43987_0; 43983_0; 43973_0; 43936_1;>
                        Reverse<43999, 43987_0; 43983_0; 43973_0;>
                        Reverse<43838, 43987_0; 43983_0; 43973_0; 43936_1; 43892_1; 43840_1; 43799_1;>
                        Reverse<43931, 43987_0; 43983_0; 43973_0; 43936_1; 43892_1;>}*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] * dt;
                    }
                }
            }
            /*OUT: {
            Reverse<43971, 43973_0; 43936_1;>
            Reverse<43756, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43999, 43973_0;>
            Reverse<43931, 43973_0; 43936_1; 43892_1;>
            Reverse<43795, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1; 43760_1;>
            Reverse<43887, 43973_0; 43936_1; 43892_1; 43840_1;>
            Reverse<43838, 43973_0; 43936_1; 43892_1; 43840_1; 43799_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<43999,>}*/
#pragma omp barrier
        }
    }
}
static void set_constants() {
    /*OUT: {
    Reverse<--,>}*/
    ce[0][0] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][0] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][0] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][0] = 4.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][0] = 5.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[5][0] = 3.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[6][0] = 0.5;
    /*OUT: {
    Reverse<--,>}*/
    ce[7][0] = 0.02;
    /*OUT: {
    Reverse<--,>}*/
    ce[8][0] = 0.01;
    /*OUT: {
    Reverse<--,>}*/
    ce[9][0] = 0.03;
    /*OUT: {
    Reverse<--,>}*/
    ce[10][0] = 0.5;
    /*OUT: {
    Reverse<--,>}*/
    ce[11][0] = 0.4;
    /*OUT: {
    Reverse<--,>}*/
    ce[12][0] = 0.3;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][1] = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][1] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][1] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][1] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][1] = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[5][1] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[6][1] = 3.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[7][1] = 0.01;
    /*OUT: {
    Reverse<--,>}*/
    ce[8][1] = 0.03;
    /*OUT: {
    Reverse<--,>}*/
    ce[9][1] = 0.02;
    /*OUT: {
    Reverse<--,>}*/
    ce[10][1] = 0.4;
    /*OUT: {
    Reverse<--,>}*/
    ce[11][1] = 0.3;
    /*OUT: {
    Reverse<--,>}*/
    ce[12][1] = 0.5;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][2] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][2] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][2] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][2] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][2] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[5][2] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[6][2] = 3.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[7][2] = 0.04;
    /*OUT: {
    Reverse<--,>}*/
    ce[8][2] = 0.03;
    /*OUT: {
    Reverse<--,>}*/
    ce[9][2] = 0.05;
    /*OUT: {
    Reverse<--,>}*/
    ce[10][2] = 0.3;
    /*OUT: {
    Reverse<--,>}*/
    ce[11][2] = 0.5;
    /*OUT: {
    Reverse<--,>}*/
    ce[12][2] = 0.4;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][3] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][3] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][3] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][3] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][3] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[5][3] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[6][3] = 3.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[7][3] = 0.03;
    /*OUT: {
    Reverse<--,>}*/
    ce[8][3] = 0.05;
    /*OUT: {
    Reverse<--,>}*/
    ce[9][3] = 0.04;
    /*OUT: {
    Reverse<--,>}*/
    ce[10][3] = 0.2;
    /*OUT: {
    Reverse<--,>}*/
    ce[11][3] = 0.1;
    /*OUT: {
    Reverse<--,>}*/
    ce[12][3] = 0.3;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][4] = 5.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][4] = 4.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][4] = 3.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][4] = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][4] = 0.1;
    /*OUT: {
    Reverse<--,>}*/
    ce[5][4] = 0.4;
    /*OUT: {
    Reverse<--,>}*/
    ce[6][4] = 0.3;
    /*OUT: {
    Reverse<--,>}*/
    ce[7][4] = 0.05;
    /*OUT: {
    Reverse<--,>}*/
    ce[8][4] = 0.04;
    /*OUT: {
    Reverse<--,>}*/
    ce[9][4] = 0.03;
    /*OUT: {
    Reverse<--,>}*/
    ce[10][4] = 0.1;
    /*OUT: {
    Reverse<--,>}*/
    ce[11][4] = 0.3;
    /*OUT: {
    Reverse<--,>}*/
    ce[12][4] = 0.2;
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
    bt = sqrt(0.5);
    /*OUT: {
    Reverse<--,>}*/
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
    int _imopVarPre2091;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre2092;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre2091 = (dx3 > dx4);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre2091) {
        /*OUT: {
        Reverse<--, 44358_0;>}*/
        _imopVarPre2092 = dx3;
    } else {
        /*OUT: {
        Reverse<--, 44358_1;>}*/
        _imopVarPre2092 = dx4;
    }
    /*OUT: {
    Reverse<--,>}*/
    dxmax = _imopVarPre2092;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre2095;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre2096;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre2095 = (dy2 > dy4);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre2095) {
        /*OUT: {
        Reverse<--, 44370_0;>}*/
        _imopVarPre2096 = dy2;
    } else {
        /*OUT: {
        Reverse<--, 44370_1;>}*/
        _imopVarPre2096 = dy4;
    }
    /*OUT: {
    Reverse<--,>}*/
    dymax = _imopVarPre2096;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre2099;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre2100;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre2099 = (dz2 > dz3);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre2099) {
        /*OUT: {
        Reverse<--, 44382_0;>}*/
        _imopVarPre2100 = dz2;
    } else {
        /*OUT: {
        Reverse<--, 44382_1;>}*/
        _imopVarPre2100 = dz3;
    }
    /*OUT: {
    Reverse<--,>}*/
    dzmax = _imopVarPre2100;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre2141;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre2142;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre2143;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre2144;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre2151;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre2152;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre2141 = (dy1 > dz1);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre2141) {
        /*OUT: {
        Reverse<--, 44398_0;>}*/
        _imopVarPre2142 = dy1;
    } else {
        /*OUT: {
        Reverse<--, 44398_1;>}*/
        _imopVarPre2142 = dz1;
    }
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre2143 = (dx1 > _imopVarPre2142);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre2143) {
        /*OUT: {
        Reverse<--, 44406_0;>}*/
        _imopVarPre2144 = dx1;
    } else {
        /*OUT: {
        Reverse<--, 44406_1;>}*/
        _imopVarPre2151 = (dy1 > dz1);
        /*OUT: {
        Reverse<--, 44406_1;>}*/
        if (_imopVarPre2151) {
            /*OUT: {
            Reverse<--, 44412_0; 44406_1;>}*/
            _imopVarPre2152 = dy1;
        } else {
            /*OUT: {
            Reverse<--, 44412_1; 44406_1;>}*/
            _imopVarPre2152 = dz1;
        }
        /*OUT: {
        Reverse<--, 44406_1;>}*/
        _imopVarPre2144 = _imopVarPre2152;
    }
    /*OUT: {
    Reverse<--,>}*/
    dssp = 0.25 * _imopVarPre2144;
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
static void txinvr() {
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
    double t1;
    /*OUT: {
    Reverse<--,>}*/
    double t2;
    /*OUT: {
    Reverse<--,>}*/
    double t3;
    /*OUT: {
    Reverse<--,>}*/
    double ac;
    /*OUT: {
    Reverse<--,>}*/
    double ru1;
    /*OUT: {
    Reverse<--,>}*/
    double uu;
    /*OUT: {
    Reverse<--,>}*/
    double vv;
    /*OUT: {
    Reverse<--,>}*/
    double ww;
    /*OUT: {
    Reverse<--,>}*/
    double r1;
    /*OUT: {
    Reverse<--,>}*/
    double r2;
    /*OUT: {
    Reverse<--,>}*/
    double r3;
    /*OUT: {
    Reverse<--,>}*/
    double r4;
    /*OUT: {
    Reverse<--,>}*/
    double r5;
    /*OUT: {
    Reverse<--,>}*/
    double ac2inv;
#pragma omp for nowait
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 44550_1;>}*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 44554_1; 44550_0;>}*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: {
            Reverse<--, 44550_0;>}*/
            /*OUT: {
            Reverse<--, 44550_0;>}*/
            /*OUT: {
            Reverse<--, 44554_0; 44550_0;>}*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                ru1 = rho_i[i][j][k];
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                uu = us[i][j][k];
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                vv = vs[i][j][k];
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                ww = ws[i][j][k];
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                ac = speed[i][j][k];
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                ac2inv = ainv[i][j][k] * ainv[i][j][k];
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                r1 = rhs[0][i][j][k];
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                r2 = rhs[1][i][j][k];
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                r3 = rhs[2][i][j][k];
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                r4 = rhs[3][i][j][k];
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                r5 = rhs[4][i][j][k];
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                t1 = c2 * ac2inv * (qs[i][j][k] * r1 - uu * r2 - vv * r3 - ww * r4 + r5);
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                t2 = bt * ru1 * (uu * r1 - r2);
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                t3 = (bt * ru1 * ac) * t1;
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                rhs[0][i][j][k] = r1 - t1;
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                rhs[1][i][j][k] = -ru1 * (ww * r1 - r4);
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                rhs[2][i][j][k] = ru1 * (vv * r1 - r3);
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                rhs[3][i][j][k] = -t2 + t3;
                /*OUT: {
                Reverse<--, 44554_0; 44550_0;>}*/
                rhs[4][i][j][k] = t2 + t3;
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<44663,>}*/
#pragma omp barrier
}
static void tzetar() {
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
    double t1;
    /*OUT: {
    Reverse<--,>}*/
    double t2;
    /*OUT: {
    Reverse<--,>}*/
    double t3;
    /*OUT: {
    Reverse<--,>}*/
    double ac;
    /*OUT: {
    Reverse<--,>}*/
    double xvel;
    /*OUT: {
    Reverse<--,>}*/
    double yvel;
    /*OUT: {
    Reverse<--,>}*/
    double zvel;
    /*OUT: {
    Reverse<--,>}*/
    double r1;
    /*OUT: {
    Reverse<--,>}*/
    double r2;
    /*OUT: {
    Reverse<--,>}*/
    double r3;
    /*OUT: {
    Reverse<--,>}*/
    double r4;
    /*OUT: {
    Reverse<--,>}*/
    double r5;
    /*OUT: {
    Reverse<--,>}*/
    double btuz;
    /*OUT: {
    Reverse<--,>}*/
    double acinv;
    /*OUT: {
    Reverse<--,>}*/
    double ac2u;
    /*OUT: {
    Reverse<--,>}*/
    double uzik1;
#pragma omp for private(i, j, k, t1, t2, t3, ac, xvel, yvel, zvel, r1, r2, r3, r4, r5, btuz, ac2u, uzik1) nowait
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 44691_1;>}*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 44695_1; 44691_0;>}*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: {
            Reverse<--, 44691_0;>}*/
            /*OUT: {
            Reverse<--, 44691_0;>}*/
            /*OUT: {
            Reverse<--, 44695_0; 44691_0;>}*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                xvel = us[i][j][k];
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                yvel = vs[i][j][k];
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                zvel = ws[i][j][k];
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                ac = speed[i][j][k];
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                acinv = ainv[i][j][k];
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                ac2u = ac * ac;
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                r1 = rhs[0][i][j][k];
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                r2 = rhs[1][i][j][k];
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                r3 = rhs[2][i][j][k];
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                r4 = rhs[3][i][j][k];
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                r5 = rhs[4][i][j][k];
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                uzik1 = u[0][i][j][k];
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                btuz = bt * uzik1;
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                t1 = btuz * acinv * (r4 + r5);
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                t2 = r3 + t1;
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                t3 = btuz * (r4 - r5);
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                rhs[0][i][j][k] = t2;
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                rhs[1][i][j][k] = -uzik1 * r2 + xvel * t2;
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                rhs[2][i][j][k] = uzik1 * r1 + yvel * t2;
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                rhs[3][i][j][k] = zvel * t2 + t3;
                /*OUT: {
                Reverse<--, 44695_0; 44691_0;>}*/
                rhs[4][i][j][k] = uzik1 * (-xvel * r2 + yvel * r1) + qs[i][j][k] * t2 + c2iv * ac2u * t1 + zvel * t3;
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<44804,>}*/
#pragma omp barrier
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
    Reverse<--, 44835_0;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 44835_0;>}*/
        xcr[m] = xcr[m] / dt;
    }
    /*OUT: {
    Reverse<--, 44835_1;>}*/
    *class = 'U';
    /*OUT: {
    Reverse<--, 44835_1;>}*/
    *verified = 1;
    /*OUT: {
    Reverse<--, 44835_1;>}*/
    /*OUT: {
    Reverse<--, 44835_1;>}*/
    /*OUT: {
    Reverse<--, 44846_0; 44835_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 44846_0; 44835_1;>}*/
        xcrref[m] = 1.0;
        /*OUT: {
        Reverse<--, 44846_0; 44835_1;>}*/
        xceref[m] = 1.0;
    }
    /*OUT: {
    Reverse<--, 44846_1; 44835_1;>}*/
    int _imopVarPre2156;
    /*OUT: {
    Reverse<--, 44846_1; 44835_1;>}*/
    int _imopVarPre2157;
    /*OUT: {
    Reverse<--, 44846_1; 44835_1;>}*/
    int _imopVarPre2158;
    /*OUT: {
    Reverse<--, 44846_1; 44835_1;>}*/
    _imopVarPre2156 = grid_points[0] == 12;
    /*OUT: {
    Reverse<--, 44846_1; 44835_1;>}*/
    if (_imopVarPre2156) {
        /*OUT: {
        Reverse<--, 44860_0; 44846_1; 44835_1;>}*/
        _imopVarPre2157 = grid_points[1] == 12;
        /*OUT: {
        Reverse<--, 44860_0; 44846_1; 44835_1;>}*/
        if (_imopVarPre2157) {
            /*OUT: {
            Reverse<--, 44864_0; 44860_0; 44846_1; 44835_1;>}*/
            _imopVarPre2158 = grid_points[2] == 12;
            /*OUT: {
            Reverse<--, 44864_0; 44860_0; 44846_1; 44835_1;>}*/
            if (_imopVarPre2158) {
                /*OUT: {
                Reverse<--, 44868_0; 44864_0; 44860_0; 44846_1; 44835_1;>}*/
                _imopVarPre2158 = no_time_steps == 100;
            }
            /*OUT: {
            Reverse<--, 44864_0; 44860_0; 44846_1; 44835_1;>}*/
            _imopVarPre2157 = _imopVarPre2158;
        }
        /*OUT: {
        Reverse<--, 44860_0; 44846_1; 44835_1;>}*/
        _imopVarPre2156 = _imopVarPre2157;
    }
    /*OUT: {
    Reverse<--, 44846_1; 44835_1;>}*/
    if (_imopVarPre2156) {
        /*OUT: {
        Reverse<--, 44875_0; 44846_1; 44835_1;>}*/
        *class = 'S';
        /*OUT: {
        Reverse<--, 44875_0; 44846_1; 44835_1;>}*/
        dtref = 1.5e-2;
        /*OUT: {
        Reverse<--, 44875_0; 44846_1; 44835_1;>}*/
        xcrref[0] = 2.7470315451339479e-02;
        /*OUT: {
        Reverse<--, 44875_0; 44846_1; 44835_1;>}*/
        xcrref[1] = 1.0360746705285417e-02;
        /*OUT: {
        Reverse<--, 44875_0; 44846_1; 44835_1;>}*/
        xcrref[2] = 1.6235745065095532e-02;
        /*OUT: {
        Reverse<--, 44875_0; 44846_1; 44835_1;>}*/
        xcrref[3] = 1.5840557224455615e-02;
        /*OUT: {
        Reverse<--, 44875_0; 44846_1; 44835_1;>}*/
        xcrref[4] = 3.4849040609362460e-02;
        /*OUT: {
        Reverse<--, 44875_0; 44846_1; 44835_1;>}*/
        xceref[0] = 2.7289258557377227e-05;
        /*OUT: {
        Reverse<--, 44875_0; 44846_1; 44835_1;>}*/
        xceref[1] = 1.0364446640837285e-05;
        /*OUT: {
        Reverse<--, 44875_0; 44846_1; 44835_1;>}*/
        xceref[2] = 1.6154798287166471e-05;
        /*OUT: {
        Reverse<--, 44875_0; 44846_1; 44835_1;>}*/
        xceref[3] = 1.5750704994480102e-05;
        /*OUT: {
        Reverse<--, 44875_0; 44846_1; 44835_1;>}*/
        xceref[4] = 3.4177666183390531e-05;
    } else {
        /*OUT: {
        Reverse<--, 44875_1; 44846_1; 44835_1;>}*/
        int _imopVarPre2162;
        /*OUT: {
        Reverse<--, 44875_1; 44846_1; 44835_1;>}*/
        int _imopVarPre2163;
        /*OUT: {
        Reverse<--, 44875_1; 44846_1; 44835_1;>}*/
        int _imopVarPre2164;
        /*OUT: {
        Reverse<--, 44875_1; 44846_1; 44835_1;>}*/
        _imopVarPre2162 = grid_points[0] == 36;
        /*OUT: {
        Reverse<--, 44875_1; 44846_1; 44835_1;>}*/
        if (_imopVarPre2162) {
            /*OUT: {
            Reverse<--, 44916_0; 44875_1; 44846_1; 44835_1;>}*/
            _imopVarPre2163 = grid_points[1] == 36;
            /*OUT: {
            Reverse<--, 44916_0; 44875_1; 44846_1; 44835_1;>}*/
            if (_imopVarPre2163) {
                /*OUT: {
                Reverse<--, 44920_0; 44916_0; 44875_1; 44846_1; 44835_1;>}*/
                _imopVarPre2164 = grid_points[2] == 36;
                /*OUT: {
                Reverse<--, 44920_0; 44916_0; 44875_1; 44846_1; 44835_1;>}*/
                if (_imopVarPre2164) {
                    /*OUT: {
                    Reverse<--, 44924_0; 44920_0; 44916_0; 44875_1; 44846_1; 44835_1;>}*/
                    _imopVarPre2164 = no_time_steps == 400;
                }
                /*OUT: {
                Reverse<--, 44920_0; 44916_0; 44875_1; 44846_1; 44835_1;>}*/
                _imopVarPre2163 = _imopVarPre2164;
            }
            /*OUT: {
            Reverse<--, 44916_0; 44875_1; 44846_1; 44835_1;>}*/
            _imopVarPre2162 = _imopVarPre2163;
        }
        /*OUT: {
        Reverse<--, 44875_1; 44846_1; 44835_1;>}*/
        if (_imopVarPre2162) {
            /*OUT: {
            Reverse<--, 44931_0; 44875_1; 44846_1; 44835_1;>}*/
            *class = 'W';
            /*OUT: {
            Reverse<--, 44931_0; 44875_1; 44846_1; 44835_1;>}*/
            dtref = 1.5e-3;
            /*OUT: {
            Reverse<--, 44931_0; 44875_1; 44846_1; 44835_1;>}*/
            xcrref[0] = 0.1893253733584e-02;
            /*OUT: {
            Reverse<--, 44931_0; 44875_1; 44846_1; 44835_1;>}*/
            xcrref[1] = 0.1717075447775e-03;
            /*OUT: {
            Reverse<--, 44931_0; 44875_1; 44846_1; 44835_1;>}*/
            xcrref[2] = 0.2778153350936e-03;
            /*OUT: {
            Reverse<--, 44931_0; 44875_1; 44846_1; 44835_1;>}*/
            xcrref[3] = 0.2887475409984e-03;
            /*OUT: {
            Reverse<--, 44931_0; 44875_1; 44846_1; 44835_1;>}*/
            xcrref[4] = 0.3143611161242e-02;
            /*OUT: {
            Reverse<--, 44931_0; 44875_1; 44846_1; 44835_1;>}*/
            xceref[0] = 0.7542088599534e-04;
            /*OUT: {
            Reverse<--, 44931_0; 44875_1; 44846_1; 44835_1;>}*/
            xceref[1] = 0.6512852253086e-05;
            /*OUT: {
            Reverse<--, 44931_0; 44875_1; 44846_1; 44835_1;>}*/
            xceref[2] = 0.1049092285688e-04;
            /*OUT: {
            Reverse<--, 44931_0; 44875_1; 44846_1; 44835_1;>}*/
            xceref[3] = 0.1128838671535e-04;
            /*OUT: {
            Reverse<--, 44931_0; 44875_1; 44846_1; 44835_1;>}*/
            xceref[4] = 0.1212845639773e-03;
        } else {
            /*OUT: {
            Reverse<--, 44931_1; 44875_1; 44846_1; 44835_1;>}*/
            int _imopVarPre2168;
            /*OUT: {
            Reverse<--, 44931_1; 44875_1; 44846_1; 44835_1;>}*/
            int _imopVarPre2169;
            /*OUT: {
            Reverse<--, 44931_1; 44875_1; 44846_1; 44835_1;>}*/
            int _imopVarPre2170;
            /*OUT: {
            Reverse<--, 44931_1; 44875_1; 44846_1; 44835_1;>}*/
            _imopVarPre2168 = grid_points[0] == 64;
            /*OUT: {
            Reverse<--, 44931_1; 44875_1; 44846_1; 44835_1;>}*/
            if (_imopVarPre2168) {
                /*OUT: {
                Reverse<--, 44972_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                _imopVarPre2169 = grid_points[1] == 64;
                /*OUT: {
                Reverse<--, 44972_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                if (_imopVarPre2169) {
                    /*OUT: {
                    Reverse<--, 44976_0; 44972_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    _imopVarPre2170 = grid_points[2] == 64;
                    /*OUT: {
                    Reverse<--, 44976_0; 44972_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    if (_imopVarPre2170) {
                        /*OUT: {
                        Reverse<--, 44980_0; 44976_0; 44972_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        _imopVarPre2170 = no_time_steps == 400;
                    }
                    /*OUT: {
                    Reverse<--, 44976_0; 44972_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    _imopVarPre2169 = _imopVarPre2170;
                }
                /*OUT: {
                Reverse<--, 44972_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                _imopVarPre2168 = _imopVarPre2169;
            }
            /*OUT: {
            Reverse<--, 44931_1; 44875_1; 44846_1; 44835_1;>}*/
            if (_imopVarPre2168) {
                /*OUT: {
                Reverse<--, 44987_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                *class = 'A';
                /*OUT: {
                Reverse<--, 44987_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                dtref = 1.5e-3;
                /*OUT: {
                Reverse<--, 44987_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                xcrref[0] = 2.4799822399300195;
                /*OUT: {
                Reverse<--, 44987_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                xcrref[1] = 1.1276337964368832;
                /*OUT: {
                Reverse<--, 44987_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                xcrref[2] = 1.5028977888770491;
                /*OUT: {
                Reverse<--, 44987_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                xcrref[3] = 1.4217816211695179;
                /*OUT: {
                Reverse<--, 44987_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                xcrref[4] = 2.1292113035138280;
                /*OUT: {
                Reverse<--, 44987_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                xceref[0] = 1.0900140297820550e-04;
                /*OUT: {
                Reverse<--, 44987_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                xceref[1] = 3.7343951769282091e-05;
                /*OUT: {
                Reverse<--, 44987_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                xceref[2] = 5.0092785406541633e-05;
                /*OUT: {
                Reverse<--, 44987_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                xceref[3] = 4.7671093939528255e-05;
                /*OUT: {
                Reverse<--, 44987_0; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                xceref[4] = 1.3621613399213001e-04;
            } else {
                /*OUT: {
                Reverse<--, 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                int _imopVarPre2174;
                /*OUT: {
                Reverse<--, 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                int _imopVarPre2175;
                /*OUT: {
                Reverse<--, 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                int _imopVarPre2176;
                /*OUT: {
                Reverse<--, 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                _imopVarPre2174 = grid_points[0] == 102;
                /*OUT: {
                Reverse<--, 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                if (_imopVarPre2174) {
                    /*OUT: {
                    Reverse<--, 45028_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    _imopVarPre2175 = grid_points[1] == 102;
                    /*OUT: {
                    Reverse<--, 45028_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    if (_imopVarPre2175) {
                        /*OUT: {
                        Reverse<--, 45032_0; 45028_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        _imopVarPre2176 = grid_points[2] == 102;
                        /*OUT: {
                        Reverse<--, 45032_0; 45028_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        if (_imopVarPre2176) {
                            /*OUT: {
                            Reverse<--, 45036_0; 45032_0; 45028_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                            _imopVarPre2176 = no_time_steps == 400;
                        }
                        /*OUT: {
                        Reverse<--, 45032_0; 45028_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        _imopVarPre2175 = _imopVarPre2176;
                    }
                    /*OUT: {
                    Reverse<--, 45028_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    _imopVarPre2174 = _imopVarPre2175;
                }
                /*OUT: {
                Reverse<--, 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                if (_imopVarPre2174) {
                    /*OUT: {
                    Reverse<--, 45043_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    *class = 'B';
                    /*OUT: {
                    Reverse<--, 45043_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    dtref = 1.0e-3;
                    /*OUT: {
                    Reverse<--, 45043_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    xcrref[0] = 0.6903293579998e+02;
                    /*OUT: {
                    Reverse<--, 45043_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    xcrref[1] = 0.3095134488084e+02;
                    /*OUT: {
                    Reverse<--, 45043_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    xcrref[2] = 0.4103336647017e+02;
                    /*OUT: {
                    Reverse<--, 45043_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    xcrref[3] = 0.3864769009604e+02;
                    /*OUT: {
                    Reverse<--, 45043_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    xcrref[4] = 0.5643482272596e+02;
                    /*OUT: {
                    Reverse<--, 45043_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    xceref[0] = 0.9810006190188e-02;
                    /*OUT: {
                    Reverse<--, 45043_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    xceref[1] = 0.1022827905670e-02;
                    /*OUT: {
                    Reverse<--, 45043_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    xceref[2] = 0.1720597911692e-02;
                    /*OUT: {
                    Reverse<--, 45043_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    xceref[3] = 0.1694479428231e-02;
                    /*OUT: {
                    Reverse<--, 45043_0; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    xceref[4] = 0.1847456263981e-01;
                } else {
                    /*OUT: {
                    Reverse<--, 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    int _imopVarPre2180;
                    /*OUT: {
                    Reverse<--, 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    int _imopVarPre2181;
                    /*OUT: {
                    Reverse<--, 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    int _imopVarPre2182;
                    /*OUT: {
                    Reverse<--, 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    _imopVarPre2180 = grid_points[0] == 162;
                    /*OUT: {
                    Reverse<--, 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    if (_imopVarPre2180) {
                        /*OUT: {
                        Reverse<--, 45084_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        _imopVarPre2181 = grid_points[1] == 162;
                        /*OUT: {
                        Reverse<--, 45084_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        if (_imopVarPre2181) {
                            /*OUT: {
                            Reverse<--, 45088_0; 45084_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                            _imopVarPre2182 = grid_points[2] == 162;
                            /*OUT: {
                            Reverse<--, 45088_0; 45084_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                            if (_imopVarPre2182) {
                                /*OUT: {
                                Reverse<--, 45092_0; 45088_0; 45084_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                                _imopVarPre2182 = no_time_steps == 400;
                            }
                            /*OUT: {
                            Reverse<--, 45088_0; 45084_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                            _imopVarPre2181 = _imopVarPre2182;
                        }
                        /*OUT: {
                        Reverse<--, 45084_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        _imopVarPre2180 = _imopVarPre2181;
                    }
                    /*OUT: {
                    Reverse<--, 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                    if (_imopVarPre2180) {
                        /*OUT: {
                        Reverse<--, 45099_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        *class = 'C';
                        /*OUT: {
                        Reverse<--, 45099_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        dtref = 0.67e-3;
                        /*OUT: {
                        Reverse<--, 45099_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        xcrref[0] = 0.5881691581829e+03;
                        /*OUT: {
                        Reverse<--, 45099_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        xcrref[1] = 0.2454417603569e+03;
                        /*OUT: {
                        Reverse<--, 45099_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        xcrref[2] = 0.3293829191851e+03;
                        /*OUT: {
                        Reverse<--, 45099_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        xcrref[3] = 0.3081924971891e+03;
                        /*OUT: {
                        Reverse<--, 45099_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        xcrref[4] = 0.4597223799176e+03;
                        /*OUT: {
                        Reverse<--, 45099_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        xceref[0] = 0.2598120500183e+00;
                        /*OUT: {
                        Reverse<--, 45099_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        xceref[1] = 0.2590888922315e-01;
                        /*OUT: {
                        Reverse<--, 45099_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        xceref[2] = 0.5132886416320e-01;
                        /*OUT: {
                        Reverse<--, 45099_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        xceref[3] = 0.4806073419454e-01;
                        /*OUT: {
                        Reverse<--, 45099_0; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        xceref[4] = 0.5483377491301e+00;
                    } else {
                        /*OUT: {
                        Reverse<--, 45099_1; 45043_1; 44987_1; 44931_1; 44875_1; 44846_1; 44835_1;>}*/
                        *verified = 0;
                    }
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 44846_1; 44835_1;>}*/
    /*OUT: {
    Reverse<--, 44846_1; 44835_1;>}*/
    /*OUT: {
    Reverse<--, 45137_0; 44846_1; 44835_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 45137_0; 44846_1; 44835_1;>}*/
        double _imopVarPre2184;
        /*OUT: {
        Reverse<--, 45137_0; 44846_1; 44835_1;>}*/
        double _imopVarPre2185;
        /*OUT: {
        Reverse<--, 45137_0; 44846_1; 44835_1;>}*/
        _imopVarPre2184 = (xcr[m] - xcrref[m]) / xcrref[m];
        /*OUT: {
        Reverse<--, 45137_0; 44846_1; 44835_1;>}*/
        _imopVarPre2185 = fabs(_imopVarPre2184);
        /*OUT: {
        Reverse<--, 45137_0; 44846_1; 44835_1;>}*/
        /*OUT: {
        Reverse<--, 45137_0; 44846_1; 44835_1;>}*/
        xcrdif[m] = _imopVarPre2185;
        /*OUT: {
        Reverse<--, 45137_0; 44846_1; 44835_1;>}*/
        double _imopVarPre2187;
        /*OUT: {
        Reverse<--, 45137_0; 44846_1; 44835_1;>}*/
        double _imopVarPre2188;
        /*OUT: {
        Reverse<--, 45137_0; 44846_1; 44835_1;>}*/
        _imopVarPre2187 = (xce[m] - xceref[m]) / xceref[m];
        /*OUT: {
        Reverse<--, 45137_0; 44846_1; 44835_1;>}*/
        _imopVarPre2188 = fabs(_imopVarPre2187);
        /*OUT: {
        Reverse<--, 45137_0; 44846_1; 44835_1;>}*/
        /*OUT: {
        Reverse<--, 45137_0; 44846_1; 44835_1;>}*/
        xcedif[m] = _imopVarPre2188;
    }
    /*OUT: {
    Reverse<--, 45137_1; 44846_1; 44835_1;>}*/
    if (*class != 'U') {
        /*OUT: {
        Reverse<--, 45173_0; 45137_1; 44846_1; 44835_1;>}*/
        char _imopVarPre2190;
        /*OUT: {
        Reverse<--, 45173_0; 45137_1; 44846_1; 44835_1;>}*/
        _imopVarPre2190 = *class;
        /*OUT: {
        Reverse<--, 45173_0; 45137_1; 44846_1; 44835_1;>}*/
        printf(" Verification being performed for class %1c\n", _imopVarPre2190);
        /*OUT: {
        Reverse<--, 45173_0; 45137_1; 44846_1; 44835_1;>}*/
        /*OUT: {
        Reverse<--, 45173_0; 45137_1; 44846_1; 44835_1;>}*/
        printf(" accuracy setting for epsilon = %20.13e\n", epsilon);
        /*OUT: {
        Reverse<--, 45173_0; 45137_1; 44846_1; 44835_1;>}*/
        /*OUT: {
        Reverse<--, 45173_0; 45137_1; 44846_1; 44835_1;>}*/
        double _imopVarPre2193;
        /*OUT: {
        Reverse<--, 45173_0; 45137_1; 44846_1; 44835_1;>}*/
        double _imopVarPre2194;
        /*OUT: {
        Reverse<--, 45173_0; 45137_1; 44846_1; 44835_1;>}*/
        _imopVarPre2193 = dt - dtref;
        /*OUT: {
        Reverse<--, 45173_0; 45137_1; 44846_1; 44835_1;>}*/
        _imopVarPre2194 = fabs(_imopVarPre2193);
        /*OUT: {
        Reverse<--, 45173_0; 45137_1; 44846_1; 44835_1;>}*/
        /*OUT: {
        Reverse<--, 45173_0; 45137_1; 44846_1; 44835_1;>}*/
        if (_imopVarPre2194 > epsilon) {
            /*OUT: {
            Reverse<--, 45197_0; 45173_0; 45137_1; 44846_1; 44835_1;>}*/
            *verified = 0;
            /*OUT: {
            Reverse<--, 45197_0; 45173_0; 45137_1; 44846_1; 44835_1;>}*/
            *class = 'U';
            /*OUT: {
            Reverse<--, 45197_0; 45173_0; 45137_1; 44846_1; 44835_1;>}*/
            printf(" DT does not match the reference value of %15.8e\n", dtref);
            /*OUT: {
            Reverse<--, 45197_0; 45173_0; 45137_1; 44846_1; 44835_1;>}*/
        }
    } else {
        /*OUT: {
        Reverse<--, 45173_1; 45137_1; 44846_1; 44835_1;>}*/
        printf(" Unknown class\n");
        /*OUT: {
        Reverse<--, 45173_1; 45137_1; 44846_1; 44835_1;>}*/
    }
    /*OUT: {
    Reverse<--, 45137_1; 44846_1; 44835_1;>}*/
    if (*class != 'U') {
        /*OUT: {
        Reverse<--, 45212_0; 45137_1; 44846_1; 44835_1;>}*/
        printf(" Comparison of RMS-norms of residual\n");
        /*OUT: {
        Reverse<--, 45212_0; 45137_1; 44846_1; 44835_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 45212_1; 45137_1; 44846_1; 44835_1;>}*/
        printf(" RMS-norms of residual\n");
        /*OUT: {
        Reverse<--, 45212_1; 45137_1; 44846_1; 44835_1;>}*/
    }
    /*OUT: {
    Reverse<--, 45137_1; 44846_1; 44835_1;>}*/
    /*OUT: {
    Reverse<--, 45137_1; 44846_1; 44835_1;>}*/
    /*OUT: {
    Reverse<--, 45224_0; 45137_1; 44846_1; 44835_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 45224_0; 45137_1; 44846_1; 44835_1;>}*/
        if (*class == 'U') {
            /*OUT: {
            Reverse<--, 45226_0; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
            double _imopVarPre2196;
            /*OUT: {
            Reverse<--, 45226_0; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
            _imopVarPre2196 = xcr[m];
            /*OUT: {
            Reverse<--, 45226_0; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
            printf("          %2d%20.13e\n", m, _imopVarPre2196);
            /*OUT: {
            Reverse<--, 45226_0; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
            if (xcrdif[m] > epsilon) {
                /*OUT: {
                Reverse<--, 45237_0; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                *verified = 0;
                /*OUT: {
                Reverse<--, 45237_0; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                double _imopVarPre2200;
                /*OUT: {
                Reverse<--, 45237_0; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                double _imopVarPre2201;
                /*OUT: {
                Reverse<--, 45237_0; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                double _imopVarPre2202;
                /*OUT: {
                Reverse<--, 45237_0; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                _imopVarPre2200 = xcrdif[m];
                /*OUT: {
                Reverse<--, 45237_0; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                _imopVarPre2201 = xcrref[m];
                /*OUT: {
                Reverse<--, 45237_0; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                _imopVarPre2202 = xcr[m];
                /*OUT: {
                Reverse<--, 45237_0; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2202, _imopVarPre2201, _imopVarPre2200);
                /*OUT: {
                Reverse<--, 45237_0; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
            } else {
                /*OUT: {
                Reverse<--, 45237_1; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                double _imopVarPre2206;
                /*OUT: {
                Reverse<--, 45237_1; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                double _imopVarPre2207;
                /*OUT: {
                Reverse<--, 45237_1; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                double _imopVarPre2208;
                /*OUT: {
                Reverse<--, 45237_1; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                _imopVarPre2206 = xcrdif[m];
                /*OUT: {
                Reverse<--, 45237_1; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                _imopVarPre2207 = xcrref[m];
                /*OUT: {
                Reverse<--, 45237_1; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                _imopVarPre2208 = xcr[m];
                /*OUT: {
                Reverse<--, 45237_1; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2208, _imopVarPre2207, _imopVarPre2206);
                /*OUT: {
                Reverse<--, 45237_1; 45226_1; 45224_0; 45137_1; 44846_1; 44835_1;>}*/
            }
        }
    }
    /*OUT: {
    Reverse<--, 45224_1; 45137_1; 44846_1; 44835_1;>}*/
    if (*class != 'U') {
        /*OUT: {
        Reverse<--, 45274_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
        printf(" Comparison of RMS-norms of solution error\n");
        /*OUT: {
        Reverse<--, 45274_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 45274_1; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
        printf(" RMS-norms of solution error\n");
        /*OUT: {
        Reverse<--, 45274_1; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
    }
    /*OUT: {
    Reverse<--, 45224_1; 45137_1; 44846_1; 44835_1;>}*/
    /*OUT: {
    Reverse<--, 45224_1; 45137_1; 44846_1; 44835_1;>}*/
    /*OUT: {
    Reverse<--, 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
        if (*class == 'U') {
            /*OUT: {
            Reverse<--, 45288_0; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
            double _imopVarPre2210;
            /*OUT: {
            Reverse<--, 45288_0; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
            _imopVarPre2210 = xce[m];
            /*OUT: {
            Reverse<--, 45288_0; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
            printf("          %2d%20.13e\n", m, _imopVarPre2210);
            /*OUT: {
            Reverse<--, 45288_0; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
            if (xcedif[m] > epsilon) {
                /*OUT: {
                Reverse<--, 45299_0; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                *verified = 0;
                /*OUT: {
                Reverse<--, 45299_0; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                double _imopVarPre2214;
                /*OUT: {
                Reverse<--, 45299_0; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                double _imopVarPre2215;
                /*OUT: {
                Reverse<--, 45299_0; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                double _imopVarPre2216;
                /*OUT: {
                Reverse<--, 45299_0; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                _imopVarPre2214 = xcedif[m];
                /*OUT: {
                Reverse<--, 45299_0; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                _imopVarPre2215 = xceref[m];
                /*OUT: {
                Reverse<--, 45299_0; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                _imopVarPre2216 = xce[m];
                /*OUT: {
                Reverse<--, 45299_0; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2216, _imopVarPre2215, _imopVarPre2214);
                /*OUT: {
                Reverse<--, 45299_0; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
            } else {
                /*OUT: {
                Reverse<--, 45299_1; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                double _imopVarPre2220;
                /*OUT: {
                Reverse<--, 45299_1; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                double _imopVarPre2221;
                /*OUT: {
                Reverse<--, 45299_1; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                double _imopVarPre2222;
                /*OUT: {
                Reverse<--, 45299_1; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                _imopVarPre2220 = xcedif[m];
                /*OUT: {
                Reverse<--, 45299_1; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                _imopVarPre2221 = xceref[m];
                /*OUT: {
                Reverse<--, 45299_1; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                _imopVarPre2222 = xce[m];
                /*OUT: {
                Reverse<--, 45299_1; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2222, _imopVarPre2221, _imopVarPre2220);
                /*OUT: {
                Reverse<--, 45299_1; 45288_1; 45286_0; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
            }
        }
    }
    /*OUT: {
    Reverse<--, 45286_1; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
    if (*class == 'U') {
        /*OUT: {
        Reverse<--, 45336_0; 45286_1; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
        printf(" No reference values provided\n");
        /*OUT: {
        Reverse<--, 45336_0; 45286_1; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
        /*OUT: {
        Reverse<--, 45336_0; 45286_1; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
        printf(" No verification performed\n");
        /*OUT: {
        Reverse<--, 45336_0; 45286_1; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 45336_1; 45286_1; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
        if (*verified) {
            /*OUT: {
            Reverse<--, 45347_0; 45336_1; 45286_1; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
            printf(" Verification Successful\n");
            /*OUT: {
            Reverse<--, 45347_0; 45336_1; 45286_1; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 45347_1; 45336_1; 45286_1; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
            printf(" Verification failed\n");
            /*OUT: {
            Reverse<--, 45347_1; 45336_1; 45286_1; 45224_1; 45137_1; 44846_1; 44835_1;>}*/
        }
    }
}
static void x_solve() {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<49135,>}*/
        int i;
        /*OUT: {
        Reverse<49135,>}*/
        int j;
        /*OUT: {
        Reverse<49135,>}*/
        int k;
        /*OUT: {
        Reverse<49135,>}*/
        int n;
        /*OUT: {
        Reverse<49135,>}*/
        int i1;
        /*OUT: {
        Reverse<49135,>}*/
        int i2;
        /*OUT: {
        Reverse<49135,>}*/
        int m;
        /*OUT: {
        Reverse<49135,>}*/
        double fac1;
        /*OUT: {
        Reverse<49135,>}*/
        double fac2;
        /*OUT: {
        Reverse<49135,>}*/
        lhsx();
        /*OUT: {
        Reverse<49135,>}*/
        /*OUT: {
        Reverse<49135,>}*/
        n = 0;
        /*OUT: {
        Reverse<49135,>}*/
        /*OUT: {
        Reverse<49135,>
        Reverse<45545,>}*/
        /*OUT: {
        Reverse<45545,>}*/
        for (i = 0; i <= grid_points[0] - 3; i++) {
            /*OUT: {
            Reverse<49135, 45376_0;>
            Reverse<45545, 45376_0;>}*/
            i1 = i + 1;
            /*OUT: {
            Reverse<49135, 45376_0;>
            Reverse<45545, 45376_0;>}*/
            i2 = i + 2;
#pragma omp for nowait
            /*OUT: {
            Reverse<49135, 45376_0;>
            Reverse<45545, 45376_0;>}*/
            /*OUT: {
            Reverse<49135, 45376_0;>
            Reverse<45545, 45376_0;>}*/
            /*OUT: {
            Reverse<49135, 45390_1; 45376_0;>
            Reverse<45545, 45390_1; 45376_0;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<49135, 45376_0;>
                Reverse<45545, 45376_0;>}*/
                /*OUT: {
                Reverse<49135, 45376_0;>
                Reverse<45545, 45376_0;>}*/
                /*OUT: {
                Reverse<49135, 45525_1; 45468_1; 45419_1; 45390_0; 45376_0;>
                Reverse<45545, 45525_1; 45468_1; 45419_1; 45390_0; 45376_0;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<49135, 45390_0; 45376_0;>
                    Reverse<45545, 45390_0; 45376_0;>}*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*OUT: {
                    Reverse<49135, 45390_0; 45376_0;>
                    Reverse<45545, 45390_0; 45376_0;>}*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<49135, 45390_0; 45376_0;>
                    Reverse<45545, 45390_0; 45376_0;>}*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<49135, 45390_0; 45376_0;>
                    Reverse<45545, 45390_0; 45376_0;>}*/
                    /*OUT: {
                    Reverse<49135, 45390_0; 45376_0;>
                    Reverse<45545, 45390_0; 45376_0;>}*/
                    /*OUT: {
                    Reverse<49135, 45419_0; 45390_0; 45376_0;>
                    Reverse<45545, 45419_0; 45390_0; 45376_0;>}*/
                    for (m = 0; m < 3; m++) {
                        /*OUT: {
                        Reverse<49135, 45419_0; 45390_0; 45376_0;>
                        Reverse<45545, 45419_0; 45390_0; 45376_0;>}*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*OUT: {
                    Reverse<49135, 45419_1; 45390_0; 45376_0;>
                    Reverse<45545, 45419_1; 45390_0; 45376_0;>}*/
                    lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<49135, 45419_1; 45390_0; 45376_0;>
                    Reverse<45545, 45419_1; 45390_0; 45376_0;>}*/
                    lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<49135, 45419_1; 45390_0; 45376_0;>
                    Reverse<45545, 45419_1; 45390_0; 45376_0;>}*/
                    /*OUT: {
                    Reverse<49135, 45419_1; 45390_0; 45376_0;>
                    Reverse<45545, 45419_1; 45390_0; 45376_0;>}*/
                    /*OUT: {
                    Reverse<49135, 45468_0; 45419_1; 45390_0; 45376_0;>
                    Reverse<45545, 45468_0; 45419_1; 45390_0; 45376_0;>}*/
                    for (m = 0; m < 3; m++) {
                        /*OUT: {
                        Reverse<49135, 45468_0; 45419_1; 45390_0; 45376_0;>
                        Reverse<45545, 45468_0; 45419_1; 45390_0; 45376_0;>}*/
                        rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                    }
                    /*OUT: {
                    Reverse<49135, 45468_1; 45419_1; 45390_0; 45376_0;>
                    Reverse<45545, 45468_1; 45419_1; 45390_0; 45376_0;>}*/
                    lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<49135, 45468_1; 45419_1; 45390_0; 45376_0;>
                    Reverse<45545, 45468_1; 45419_1; 45390_0; 45376_0;>}*/
                    lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<49135, 45468_1; 45419_1; 45390_0; 45376_0;>
                    Reverse<45545, 45468_1; 45419_1; 45390_0; 45376_0;>}*/
                    /*OUT: {
                    Reverse<49135, 45468_1; 45419_1; 45390_0; 45376_0;>
                    Reverse<45545, 45468_1; 45419_1; 45390_0; 45376_0;>}*/
                    /*OUT: {
                    Reverse<49135, 45525_0; 45468_1; 45419_1; 45390_0; 45376_0;>
                    Reverse<45545, 45525_0; 45468_1; 45419_1; 45390_0; 45376_0;>}*/
                    for (m = 0; m < 3; m++) {
                        /*OUT: {
                        Reverse<49135, 45525_0; 45468_1; 45419_1; 45390_0; 45376_0;>
                        Reverse<45545, 45525_0; 45468_1; 45419_1; 45390_0; 45376_0;>}*/
                        rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                    }
                }
            }
            /*OUT: {
            Reverse<49135, 45376_0;>
            Reverse<45545, 45376_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<45545,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<49135, 45376_1;>
        Reverse<45545, 45376_1;>}*/
        i = grid_points[0] - 2;
        /*OUT: {
        Reverse<49135, 45376_1;>
        Reverse<45545, 45376_1;>}*/
        i1 = grid_points[0] - 1;
#pragma omp for nowait
        /*OUT: {
        Reverse<49135, 45376_1;>
        Reverse<45545, 45376_1;>}*/
        /*OUT: {
        Reverse<49135, 45376_1;>
        Reverse<45545, 45376_1;>}*/
        /*OUT: {
        Reverse<49135, 45560_1; 45376_1;>
        Reverse<45545, 45560_1; 45376_1;>}*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: {
            Reverse<49135, 45376_1;>
            Reverse<45545, 45376_1;>}*/
            /*OUT: {
            Reverse<49135, 45376_1;>
            Reverse<45545, 45376_1;>}*/
            /*OUT: {
            Reverse<49135, 45665_1; 45638_1; 45589_1; 45560_0; 45376_1;>
            Reverse<45545, 45665_1; 45638_1; 45589_1; 45560_0; 45376_1;>}*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: {
                Reverse<49135, 45560_0; 45376_1;>
                Reverse<45545, 45560_0; 45376_1;>}*/
                fac1 = 1.0 / lhs[n + 2][i][j][k];
                /*OUT: {
                Reverse<49135, 45560_0; 45376_1;>
                Reverse<45545, 45560_0; 45376_1;>}*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*OUT: {
                Reverse<49135, 45560_0; 45376_1;>
                Reverse<45545, 45560_0; 45376_1;>}*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*OUT: {
                Reverse<49135, 45560_0; 45376_1;>
                Reverse<45545, 45560_0; 45376_1;>}*/
                /*OUT: {
                Reverse<49135, 45560_0; 45376_1;>
                Reverse<45545, 45560_0; 45376_1;>}*/
                /*OUT: {
                Reverse<49135, 45589_0; 45560_0; 45376_1;>
                Reverse<45545, 45589_0; 45560_0; 45376_1;>}*/
                for (m = 0; m < 3; m++) {
                    /*OUT: {
                    Reverse<49135, 45589_0; 45560_0; 45376_1;>
                    Reverse<45545, 45589_0; 45560_0; 45376_1;>}*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*OUT: {
                Reverse<49135, 45589_1; 45560_0; 45376_1;>
                Reverse<45545, 45589_1; 45560_0; 45376_1;>}*/
                lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                /*OUT: {
                Reverse<49135, 45589_1; 45560_0; 45376_1;>
                Reverse<45545, 45589_1; 45560_0; 45376_1;>}*/
                lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                /*OUT: {
                Reverse<49135, 45589_1; 45560_0; 45376_1;>
                Reverse<45545, 45589_1; 45560_0; 45376_1;>}*/
                /*OUT: {
                Reverse<49135, 45589_1; 45560_0; 45376_1;>
                Reverse<45545, 45589_1; 45560_0; 45376_1;>}*/
                /*OUT: {
                Reverse<49135, 45638_0; 45589_1; 45560_0; 45376_1;>
                Reverse<45545, 45638_0; 45589_1; 45560_0; 45376_1;>}*/
                for (m = 0; m < 3; m++) {
                    /*OUT: {
                    Reverse<49135, 45638_0; 45589_1; 45560_0; 45376_1;>
                    Reverse<45545, 45638_0; 45589_1; 45560_0; 45376_1;>}*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                }
                /*OUT: {
                Reverse<49135, 45638_1; 45589_1; 45560_0; 45376_1;>
                Reverse<45545, 45638_1; 45589_1; 45560_0; 45376_1;>}*/
                fac2 = 1. / lhs[n + 2][i1][j][k];
                /*OUT: {
                Reverse<49135, 45638_1; 45589_1; 45560_0; 45376_1;>
                Reverse<45545, 45638_1; 45589_1; 45560_0; 45376_1;>}*/
                /*OUT: {
                Reverse<49135, 45638_1; 45589_1; 45560_0; 45376_1;>
                Reverse<45545, 45638_1; 45589_1; 45560_0; 45376_1;>}*/
                /*OUT: {
                Reverse<49135, 45665_0; 45638_1; 45589_1; 45560_0; 45376_1;>
                Reverse<45545, 45665_0; 45638_1; 45589_1; 45560_0; 45376_1;>}*/
                for (m = 0; m < 3; m++) {
                    /*OUT: {
                    Reverse<49135, 45665_0; 45638_1; 45589_1; 45560_0; 45376_1;>
                    Reverse<45545, 45665_0; 45638_1; 45589_1; 45560_0; 45376_1;>}*/
                    rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
                }
            }
        }
        /*OUT: {
        Reverse<49135, 45376_1;>
        Reverse<45545, 45376_1;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<45677,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<45677,>}*/
        /*OUT: {
        Reverse<45677,>
        Reverse<45969,>}*/
        /*OUT: {
        Reverse<45969,>}*/
        for (m = 3; m < 5; m++) {
            /*OUT: {
            Reverse<45677, 45679_0;>
            Reverse<45969, 45679_0;>}*/
            n = (m - 3 + 1) * 5;
            /*OUT: {
            Reverse<45677, 45679_0;>
            Reverse<45969, 45679_0;>}*/
            /*OUT: {
            Reverse<45846,>
            Reverse<45677, 45679_0;>
            Reverse<45969, 45679_0;>}*/
            /*OUT: {
            Reverse<45846,>}*/
            for (i = 0; i <= grid_points[0] - 3; i++) {
                /*OUT: {
                Reverse<45677, 45686_0; 45679_0;>
                Reverse<45969, 45686_0; 45679_0;>
                Reverse<45846, 45686_0;>}*/
                i1 = i + 1;
                /*OUT: {
                Reverse<45677, 45686_0; 45679_0;>
                Reverse<45969, 45686_0; 45679_0;>
                Reverse<45846, 45686_0;>}*/
                i2 = i + 2;
#pragma omp for nowait
                /*OUT: {
                Reverse<45677, 45686_0; 45679_0;>
                Reverse<45969, 45686_0; 45679_0;>
                Reverse<45846, 45686_0;>}*/
                /*OUT: {
                Reverse<45677, 45686_0; 45679_0;>
                Reverse<45969, 45686_0; 45679_0;>
                Reverse<45846, 45686_0;>}*/
                /*OUT: {
                Reverse<45677, 45700_1; 45686_0; 45679_0;>
                Reverse<45969, 45700_1; 45686_0; 45679_0;>
                Reverse<45846, 45700_1; 45686_0;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<45677, 45686_0; 45679_0;>
                    Reverse<45969, 45686_0; 45679_0;>
                    Reverse<45846, 45686_0;>}*/
                    /*OUT: {
                    Reverse<45677, 45686_0; 45679_0;>
                    Reverse<45969, 45686_0; 45679_0;>
                    Reverse<45846, 45686_0;>}*/
                    /*OUT: {
                    Reverse<45677, 45700_0; 45686_0; 45679_0;>
                    Reverse<45969, 45700_0; 45686_0; 45679_0;>
                    Reverse<45846, 45700_0; 45686_0;>}*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*OUT: {
                        Reverse<45677, 45700_0; 45686_0; 45679_0;>
                        Reverse<45969, 45700_0; 45686_0; 45679_0;>
                        Reverse<45846, 45700_0; 45686_0;>}*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*OUT: {
                        Reverse<45677, 45700_0; 45686_0; 45679_0;>
                        Reverse<45969, 45700_0; 45686_0; 45679_0;>
                        Reverse<45846, 45700_0; 45686_0;>}*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*OUT: {
                        Reverse<45677, 45700_0; 45686_0; 45679_0;>
                        Reverse<45969, 45700_0; 45686_0; 45679_0;>
                        Reverse<45846, 45700_0; 45686_0;>}*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*OUT: {
                        Reverse<45677, 45700_0; 45686_0; 45679_0;>
                        Reverse<45969, 45700_0; 45686_0; 45679_0;>
                        Reverse<45846, 45700_0; 45686_0;>}*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*OUT: {
                        Reverse<45677, 45700_0; 45686_0; 45679_0;>
                        Reverse<45969, 45700_0; 45686_0; 45679_0;>
                        Reverse<45846, 45700_0; 45686_0;>}*/
                        lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                        /*OUT: {
                        Reverse<45677, 45700_0; 45686_0; 45679_0;>
                        Reverse<45969, 45700_0; 45686_0; 45679_0;>
                        Reverse<45846, 45700_0; 45686_0;>}*/
                        lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                        /*OUT: {
                        Reverse<45677, 45700_0; 45686_0; 45679_0;>
                        Reverse<45969, 45700_0; 45686_0; 45679_0;>
                        Reverse<45846, 45700_0; 45686_0;>}*/
                        rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                        /*OUT: {
                        Reverse<45677, 45700_0; 45686_0; 45679_0;>
                        Reverse<45969, 45700_0; 45686_0; 45679_0;>
                        Reverse<45846, 45700_0; 45686_0;>}*/
                        lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                        /*OUT: {
                        Reverse<45677, 45700_0; 45686_0; 45679_0;>
                        Reverse<45969, 45700_0; 45686_0; 45679_0;>
                        Reverse<45846, 45700_0; 45686_0;>}*/
                        lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                        /*OUT: {
                        Reverse<45677, 45700_0; 45686_0; 45679_0;>
                        Reverse<45969, 45700_0; 45686_0; 45679_0;>
                        Reverse<45846, 45700_0; 45686_0;>}*/
                        rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                    }
                }
                /*OUT: {
                Reverse<45677, 45686_0; 45679_0;>
                Reverse<45969, 45686_0; 45679_0;>
                Reverse<45846, 45686_0;>}*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: {
                Reverse<45846,>}*/
#pragma omp barrier
            }
            /*OUT: {
            Reverse<45677, 45686_1; 45679_0;>
            Reverse<45846, 45686_1;>
            Reverse<45969, 45686_1; 45679_0;>}*/
            i = grid_points[0] - 2;
            /*OUT: {
            Reverse<45677, 45686_1; 45679_0;>
            Reverse<45846, 45686_1;>
            Reverse<45969, 45686_1; 45679_0;>}*/
            i1 = grid_points[0] - 1;
#pragma omp for nowait
            /*OUT: {
            Reverse<45677, 45686_1; 45679_0;>
            Reverse<45846, 45686_1;>
            Reverse<45969, 45686_1; 45679_0;>}*/
            /*OUT: {
            Reverse<45677, 45686_1; 45679_0;>
            Reverse<45846, 45686_1;>
            Reverse<45969, 45686_1; 45679_0;>}*/
            /*OUT: {
            Reverse<45846, 45861_1; 45686_1;>
            Reverse<45677, 45861_1; 45686_1; 45679_0;>
            Reverse<45969, 45861_1; 45686_1; 45679_0;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<45677, 45686_1; 45679_0;>
                Reverse<45846, 45686_1;>
                Reverse<45969, 45686_1; 45679_0;>}*/
                /*OUT: {
                Reverse<45677, 45686_1; 45679_0;>
                Reverse<45846, 45686_1;>
                Reverse<45969, 45686_1; 45679_0;>}*/
                /*OUT: {
                Reverse<45846, 45861_0; 45686_1;>
                Reverse<45677, 45861_0; 45686_1; 45679_0;>
                Reverse<45969, 45861_0; 45686_1; 45679_0;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<45846, 45861_0; 45686_1;>
                    Reverse<45677, 45861_0; 45686_1; 45679_0;>
                    Reverse<45969, 45861_0; 45686_1; 45679_0;>}*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*OUT: {
                    Reverse<45846, 45861_0; 45686_1;>
                    Reverse<45677, 45861_0; 45686_1; 45679_0;>
                    Reverse<45969, 45861_0; 45686_1; 45679_0;>}*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<45846, 45861_0; 45686_1;>
                    Reverse<45677, 45861_0; 45686_1; 45679_0;>
                    Reverse<45969, 45861_0; 45686_1; 45679_0;>}*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<45846, 45861_0; 45686_1;>
                    Reverse<45677, 45861_0; 45686_1; 45679_0;>
                    Reverse<45969, 45861_0; 45686_1; 45679_0;>}*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*OUT: {
                    Reverse<45846, 45861_0; 45686_1;>
                    Reverse<45677, 45861_0; 45686_1; 45679_0;>
                    Reverse<45969, 45861_0; 45686_1; 45679_0;>}*/
                    lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<45846, 45861_0; 45686_1;>
                    Reverse<45677, 45861_0; 45686_1; 45679_0;>
                    Reverse<45969, 45861_0; 45686_1; 45679_0;>}*/
                    lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<45846, 45861_0; 45686_1;>
                    Reverse<45677, 45861_0; 45686_1; 45679_0;>
                    Reverse<45969, 45861_0; 45686_1; 45679_0;>}*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                    /*OUT: {
                    Reverse<45846, 45861_0; 45686_1;>
                    Reverse<45677, 45861_0; 45686_1; 45679_0;>
                    Reverse<45969, 45861_0; 45686_1; 45679_0;>}*/
                    fac2 = 1. / lhs[n + 2][i1][j][k];
                    /*OUT: {
                    Reverse<45846, 45861_0; 45686_1;>
                    Reverse<45677, 45861_0; 45686_1; 45679_0;>
                    Reverse<45969, 45861_0; 45686_1; 45679_0;>}*/
                    rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
                }
            }
            /*OUT: {
            Reverse<45677, 45686_1; 45679_0;>
            Reverse<45846, 45686_1;>
            Reverse<45969, 45686_1; 45679_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<45969,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<45677, 45679_1;>
        Reverse<45969, 45679_1;>}*/
        i = grid_points[0] - 2;
        /*OUT: {
        Reverse<45677, 45679_1;>
        Reverse<45969, 45679_1;>}*/
        i1 = grid_points[0] - 1;
        /*OUT: {
        Reverse<45677, 45679_1;>
        Reverse<45969, 45679_1;>}*/
        n = 0;
        /*OUT: {
        Reverse<45677, 45679_1;>
        Reverse<45969, 45679_1;>}*/
        /*OUT: {
        Reverse<46009,>
        Reverse<45677, 45679_1;>
        Reverse<45969, 45679_1;>}*/
        /*OUT: {
        Reverse<46009,>}*/
        for (m = 0; m < 3; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<45677, 45979_0; 45679_1;>
            Reverse<45969, 45979_0; 45679_1;>
            Reverse<46009, 45979_0;>}*/
            /*OUT: {
            Reverse<45677, 45979_0; 45679_1;>
            Reverse<45969, 45979_0; 45679_1;>
            Reverse<46009, 45979_0;>}*/
            /*OUT: {
            Reverse<46009, 45989_1; 45979_0;>
            Reverse<45677, 45989_1; 45979_0; 45679_1;>
            Reverse<45969, 45989_1; 45979_0; 45679_1;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<45677, 45979_0; 45679_1;>
                Reverse<45969, 45979_0; 45679_1;>
                Reverse<46009, 45979_0;>}*/
                /*OUT: {
                Reverse<45677, 45979_0; 45679_1;>
                Reverse<45969, 45979_0; 45679_1;>
                Reverse<46009, 45979_0;>}*/
                /*OUT: {
                Reverse<46009, 45989_0; 45979_0;>
                Reverse<45677, 45989_0; 45979_0; 45679_1;>
                Reverse<45969, 45989_0; 45979_0; 45679_1;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<46009, 45989_0; 45979_0;>
                    Reverse<45677, 45989_0; 45979_0; 45679_1;>
                    Reverse<45969, 45989_0; 45979_0; 45679_1;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
                }
            }
            /*OUT: {
            Reverse<45677, 45979_0; 45679_1;>
            Reverse<45969, 45979_0; 45679_1;>
            Reverse<46009, 45979_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<46009,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<46009, 45979_1;>
        Reverse<45677, 45979_1; 45679_1;>
        Reverse<45969, 45979_1; 45679_1;>}*/
        /*OUT: {
        Reverse<46044,>
        Reverse<46009, 45979_1;>
        Reverse<45677, 45979_1; 45679_1;>
        Reverse<45969, 45979_1; 45679_1;>}*/
        /*OUT: {
        Reverse<46044,>}*/
        for (m = 3; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<46044, 46011_0;>
            Reverse<45677, 46011_0; 45979_1; 45679_1;>
            Reverse<45969, 46011_0; 45979_1; 45679_1;>
            Reverse<46009, 46011_0; 45979_1;>}*/
            /*OUT: {
            Reverse<46044, 46011_0;>
            Reverse<45677, 46011_0; 45979_1; 45679_1;>
            Reverse<45969, 46011_0; 45979_1; 45679_1;>
            Reverse<46009, 46011_0; 45979_1;>}*/
            /*OUT: {
            Reverse<45677, 46021_1; 46011_0; 45979_1; 45679_1;>
            Reverse<45969, 46021_1; 46011_0; 45979_1; 45679_1;>
            Reverse<46009, 46021_1; 46011_0; 45979_1;>
            Reverse<46044, 46021_1; 46011_0;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<46044, 46011_0;>
                Reverse<45677, 46011_0; 45979_1; 45679_1;>
                Reverse<45969, 46011_0; 45979_1; 45679_1;>
                Reverse<46009, 46011_0; 45979_1;>}*/
                /*OUT: {
                Reverse<46044, 46011_0;>
                Reverse<45677, 46011_0; 45979_1; 45679_1;>
                Reverse<45969, 46011_0; 45979_1; 45679_1;>
                Reverse<46009, 46011_0; 45979_1;>}*/
                /*OUT: {
                Reverse<46009, 46021_0; 46011_0; 45979_1;>
                Reverse<45677, 46021_0; 46011_0; 45979_1; 45679_1;>
                Reverse<45969, 46021_0; 46011_0; 45979_1; 45679_1;>
                Reverse<46044, 46021_0; 46011_0;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<46009, 46021_0; 46011_0; 45979_1;>
                    Reverse<45677, 46021_0; 46011_0; 45979_1; 45679_1;>
                    Reverse<45969, 46021_0; 46011_0; 45979_1; 45679_1;>
                    Reverse<46044, 46021_0; 46011_0;>}*/
                    n = (m - 3 + 1) * 5;
                    /*OUT: {
                    Reverse<46009, 46021_0; 46011_0; 45979_1;>
                    Reverse<45677, 46021_0; 46011_0; 45979_1; 45679_1;>
                    Reverse<45969, 46021_0; 46011_0; 45979_1; 45679_1;>
                    Reverse<46044, 46021_0; 46011_0;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
                }
            }
            /*OUT: {
            Reverse<46044, 46011_0;>
            Reverse<45677, 46011_0; 45979_1; 45679_1;>
            Reverse<45969, 46011_0; 45979_1; 45679_1;>
            Reverse<46009, 46011_0; 45979_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<46044,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<46044, 46011_1;>
        Reverse<45677, 46011_1; 45979_1; 45679_1;>
        Reverse<45969, 46011_1; 45979_1; 45679_1;>
        Reverse<46009, 46011_1; 45979_1;>}*/
        n = 0;
        /*OUT: {
        Reverse<46044, 46011_1;>
        Reverse<45677, 46011_1; 45979_1; 45679_1;>
        Reverse<45969, 46011_1; 45979_1; 45679_1;>
        Reverse<46009, 46011_1; 45979_1;>}*/
        /*OUT: {
        Reverse<46094,>
        Reverse<46044, 46011_1;>
        Reverse<45677, 46011_1; 45979_1; 45679_1;>
        Reverse<45969, 46011_1; 45979_1; 45679_1;>
        Reverse<46009, 46011_1; 45979_1;>}*/
        /*OUT: {
        Reverse<46094,>}*/
        for (i = grid_points[0] - 3; i >= 0; i--) {
            /*OUT: {
            Reverse<46044, 46049_0; 46011_1;>
            Reverse<46009, 46049_0; 46011_1; 45979_1;>
            Reverse<45677, 46049_0; 46011_1; 45979_1; 45679_1;>
            Reverse<45969, 46049_0; 46011_1; 45979_1; 45679_1;>
            Reverse<46094, 46049_0;>}*/
            i1 = i + 1;
            /*OUT: {
            Reverse<46044, 46049_0; 46011_1;>
            Reverse<46009, 46049_0; 46011_1; 45979_1;>
            Reverse<45677, 46049_0; 46011_1; 45979_1; 45679_1;>
            Reverse<45969, 46049_0; 46011_1; 45979_1; 45679_1;>
            Reverse<46094, 46049_0;>}*/
            i2 = i + 2;
#pragma omp for nowait
            /*OUT: {
            Reverse<46044, 46049_0; 46011_1;>
            Reverse<46009, 46049_0; 46011_1; 45979_1;>
            Reverse<45677, 46049_0; 46011_1; 45979_1; 45679_1;>
            Reverse<45969, 46049_0; 46011_1; 45979_1; 45679_1;>
            Reverse<46094, 46049_0;>}*/
            /*OUT: {
            Reverse<46044, 46049_0; 46011_1;>
            Reverse<46009, 46049_0; 46011_1; 45979_1;>
            Reverse<45677, 46049_0; 46011_1; 45979_1; 45679_1;>
            Reverse<45969, 46049_0; 46011_1; 45979_1; 45679_1;>
            Reverse<46094, 46049_0;>}*/
            /*OUT: {
            Reverse<46044, 46062_1; 46049_0; 46011_1;>
            Reverse<46009, 46062_1; 46049_0; 46011_1; 45979_1;>
            Reverse<46094, 46062_1; 46049_0;>
            Reverse<45677, 46062_1; 46049_0; 46011_1; 45979_1; 45679_1;>
            Reverse<45969, 46062_1; 46049_0; 46011_1; 45979_1; 45679_1;>}*/
            for (m = 0; m < 3; m++) {
                /*OUT: {
                Reverse<46044, 46049_0; 46011_1;>
                Reverse<46009, 46049_0; 46011_1; 45979_1;>
                Reverse<45677, 46049_0; 46011_1; 45979_1; 45679_1;>
                Reverse<45969, 46049_0; 46011_1; 45979_1; 45679_1;>
                Reverse<46094, 46049_0;>}*/
                /*OUT: {
                Reverse<46044, 46049_0; 46011_1;>
                Reverse<46009, 46049_0; 46011_1; 45979_1;>
                Reverse<45677, 46049_0; 46011_1; 45979_1; 45679_1;>
                Reverse<45969, 46049_0; 46011_1; 45979_1; 45679_1;>
                Reverse<46094, 46049_0;>}*/
                /*OUT: {
                Reverse<46009, 46066_1; 46062_0; 46049_0; 46011_1; 45979_1;>
                Reverse<46044, 46066_1; 46062_0; 46049_0; 46011_1;>
                Reverse<45677, 46066_1; 46062_0; 46049_0; 46011_1; 45979_1; 45679_1;>
                Reverse<45969, 46066_1; 46062_0; 46049_0; 46011_1; 45979_1; 45679_1;>
                Reverse<46094, 46066_1; 46062_0; 46049_0;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<46009, 46062_0; 46049_0; 46011_1; 45979_1;>
                    Reverse<46044, 46062_0; 46049_0; 46011_1;>
                    Reverse<45677, 46062_0; 46049_0; 46011_1; 45979_1; 45679_1;>
                    Reverse<45969, 46062_0; 46049_0; 46011_1; 45979_1; 45679_1;>
                    Reverse<46094, 46062_0; 46049_0;>}*/
                    /*OUT: {
                    Reverse<46009, 46062_0; 46049_0; 46011_1; 45979_1;>
                    Reverse<46044, 46062_0; 46049_0; 46011_1;>
                    Reverse<45677, 46062_0; 46049_0; 46011_1; 45979_1; 45679_1;>
                    Reverse<45969, 46062_0; 46049_0; 46011_1; 45979_1; 45679_1;>
                    Reverse<46094, 46062_0; 46049_0;>}*/
                    /*OUT: {
                    Reverse<45677, 46066_0; 46062_0; 46049_0; 46011_1; 45979_1; 45679_1;>
                    Reverse<45969, 46066_0; 46062_0; 46049_0; 46011_1; 45979_1; 45679_1;>
                    Reverse<46044, 46066_0; 46062_0; 46049_0; 46011_1;>
                    Reverse<46094, 46066_0; 46062_0; 46049_0;>
                    Reverse<46009, 46066_0; 46062_0; 46049_0; 46011_1; 45979_1;>}*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*OUT: {
                        Reverse<45677, 46066_0; 46062_0; 46049_0; 46011_1; 45979_1; 45679_1;>
                        Reverse<45969, 46066_0; 46062_0; 46049_0; 46011_1; 45979_1; 45679_1;>
                        Reverse<46044, 46066_0; 46062_0; 46049_0; 46011_1;>
                        Reverse<46094, 46066_0; 46062_0; 46049_0;>
                        Reverse<46009, 46066_0; 46062_0; 46049_0; 46011_1; 45979_1;>}*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                    }
                }
            }
            /*OUT: {
            Reverse<46044, 46049_0; 46011_1;>
            Reverse<46009, 46049_0; 46011_1; 45979_1;>
            Reverse<45677, 46049_0; 46011_1; 45979_1; 45679_1;>
            Reverse<45969, 46049_0; 46011_1; 45979_1; 45679_1;>
            Reverse<46094, 46049_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<46094,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<46044, 46049_1; 46011_1;>
        Reverse<46009, 46049_1; 46011_1; 45979_1;>
        Reverse<45677, 46049_1; 46011_1; 45979_1; 45679_1;>
        Reverse<45969, 46049_1; 46011_1; 45979_1; 45679_1;>
        Reverse<46094, 46049_1;>}*/
        /*OUT: {
        Reverse<46044, 46049_1; 46011_1;>
        Reverse<46009, 46049_1; 46011_1; 45979_1;>
        Reverse<45677, 46049_1; 46011_1; 45979_1; 45679_1;>
        Reverse<45969, 46049_1; 46011_1; 45979_1; 45679_1;>
        Reverse<46145, 46103_1;>
        Reverse<46094, 46049_1;>}*/
        /*OUT: {
        Reverse<46044, 46103_1; 46096_0; 46049_1; 46011_1;>
        Reverse<46009, 46103_1; 46096_0; 46049_1; 46011_1; 45979_1;>
        Reverse<46145, 46103_1;>
        Reverse<46094, 46103_1; 46096_0; 46049_1;>
        Reverse<45677, 46103_1; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
        Reverse<45969, 46103_1; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>}*/
        for (m = 3; m < 5; m++) {
            /*OUT: {
            Reverse<46044, 46096_0; 46049_1; 46011_1;>
            Reverse<46009, 46096_0; 46049_1; 46011_1; 45979_1;>
            Reverse<45677, 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
            Reverse<45969, 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
            Reverse<46145, 46096_0; 46103_1;>
            Reverse<46094, 46096_0; 46049_1;>}*/
            n = (m - 3 + 1) * 5;
            /*OUT: {
            Reverse<46044, 46096_0; 46049_1; 46011_1;>
            Reverse<46009, 46096_0; 46049_1; 46011_1; 45979_1;>
            Reverse<45677, 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
            Reverse<45969, 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
            Reverse<46145, 46096_0; 46103_1;>
            Reverse<46094, 46096_0; 46049_1;>}*/
            /*OUT: {
            Reverse<46145,>
            Reverse<46044, 46096_0; 46049_1; 46011_1;>
            Reverse<46009, 46096_0; 46049_1; 46011_1; 45979_1;>
            Reverse<45677, 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
            Reverse<45969, 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
            Reverse<46094, 46096_0; 46049_1;>}*/
            /*OUT: {
            Reverse<46145,>}*/
            for (i = grid_points[0] - 3; i >= 0; i--) {
                /*OUT: {
                Reverse<45677, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                Reverse<45969, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                Reverse<46044, 46103_0; 46096_0; 46049_1; 46011_1;>
                Reverse<46009, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1;>
                Reverse<46145, 46103_0;>
                Reverse<46094, 46103_0; 46096_0; 46049_1;>}*/
                i1 = i + 1;
                /*OUT: {
                Reverse<45677, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                Reverse<45969, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                Reverse<46044, 46103_0; 46096_0; 46049_1; 46011_1;>
                Reverse<46009, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1;>
                Reverse<46145, 46103_0;>
                Reverse<46094, 46103_0; 46096_0; 46049_1;>}*/
                i2 = i + 2;
#pragma omp for nowait
                /*OUT: {
                Reverse<45677, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                Reverse<45969, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                Reverse<46044, 46103_0; 46096_0; 46049_1; 46011_1;>
                Reverse<46009, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1;>
                Reverse<46145, 46103_0;>
                Reverse<46094, 46103_0; 46096_0; 46049_1;>}*/
                /*OUT: {
                Reverse<45677, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                Reverse<45969, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                Reverse<46044, 46103_0; 46096_0; 46049_1; 46011_1;>
                Reverse<46009, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1;>
                Reverse<46145, 46103_0;>
                Reverse<46094, 46103_0; 46096_0; 46049_1;>}*/
                /*OUT: {
                Reverse<45677, 46117_1; 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                Reverse<45969, 46117_1; 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                Reverse<46094, 46117_1; 46103_0; 46096_0; 46049_1;>
                Reverse<46145, 46117_1; 46103_0;>
                Reverse<46009, 46117_1; 46103_0; 46096_0; 46049_1; 46011_1; 45979_1;>
                Reverse<46044, 46117_1; 46103_0; 46096_0; 46049_1; 46011_1;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<45677, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                    Reverse<45969, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                    Reverse<46044, 46103_0; 46096_0; 46049_1; 46011_1;>
                    Reverse<46009, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1;>
                    Reverse<46145, 46103_0;>
                    Reverse<46094, 46103_0; 46096_0; 46049_1;>}*/
                    /*OUT: {
                    Reverse<45677, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                    Reverse<45969, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                    Reverse<46044, 46103_0; 46096_0; 46049_1; 46011_1;>
                    Reverse<46009, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1;>
                    Reverse<46145, 46103_0;>
                    Reverse<46094, 46103_0; 46096_0; 46049_1;>}*/
                    /*OUT: {
                    Reverse<46094, 46117_0; 46103_0; 46096_0; 46049_1;>
                    Reverse<45677, 46117_0; 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                    Reverse<45969, 46117_0; 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                    Reverse<46145, 46117_0; 46103_0;>
                    Reverse<46044, 46117_0; 46103_0; 46096_0; 46049_1; 46011_1;>
                    Reverse<46009, 46117_0; 46103_0; 46096_0; 46049_1; 46011_1; 45979_1;>}*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*OUT: {
                        Reverse<46094, 46117_0; 46103_0; 46096_0; 46049_1;>
                        Reverse<45677, 46117_0; 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                        Reverse<45969, 46117_0; 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                        Reverse<46145, 46117_0; 46103_0;>
                        Reverse<46044, 46117_0; 46103_0; 46096_0; 46049_1; 46011_1;>
                        Reverse<46009, 46117_0; 46103_0; 46096_0; 46049_1; 46011_1; 45979_1;>}*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                    }
                }
                /*OUT: {
                Reverse<45677, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                Reverse<45969, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1; 45679_1;>
                Reverse<46044, 46103_0; 46096_0; 46049_1; 46011_1;>
                Reverse<46009, 46103_0; 46096_0; 46049_1; 46011_1; 45979_1;>
                Reverse<46145, 46103_0;>
                Reverse<46094, 46103_0; 46096_0; 46049_1;>}*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: {
                Reverse<46145,>}*/
#pragma omp barrier
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    ninvr();
    /*OUT: {
    Reverse<--,>}*/
}
static void y_solve() {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<49268,>}*/
        int i;
        /*OUT: {
        Reverse<49268,>}*/
        int j;
        /*OUT: {
        Reverse<49268,>}*/
        int k;
        /*OUT: {
        Reverse<49268,>}*/
        int n;
        /*OUT: {
        Reverse<49268,>}*/
        int j1;
        /*OUT: {
        Reverse<49268,>}*/
        int j2;
        /*OUT: {
        Reverse<49268,>}*/
        int m;
        /*OUT: {
        Reverse<49268,>}*/
        double fac1;
        /*OUT: {
        Reverse<49268,>}*/
        double fac2;
        /*OUT: {
        Reverse<49268,>}*/
        lhsy();
        /*OUT: {
        Reverse<49268,>}*/
        /*OUT: {
        Reverse<49268,>}*/
        n = 0;
        /*OUT: {
        Reverse<49268,>}*/
        /*OUT: {
        Reverse<49268,>
        Reverse<46338,>}*/
        /*OUT: {
        Reverse<46338,>}*/
        for (j = 0; j <= grid_points[1] - 3; j++) {
            /*OUT: {
            Reverse<49268, 46169_0;>
            Reverse<46338, 46169_0;>}*/
            j1 = j + 1;
            /*OUT: {
            Reverse<49268, 46169_0;>
            Reverse<46338, 46169_0;>}*/
            j2 = j + 2;
#pragma omp for nowait
            /*OUT: {
            Reverse<49268, 46169_0;>
            Reverse<46338, 46169_0;>}*/
            /*OUT: {
            Reverse<49268, 46169_0;>
            Reverse<46338, 46169_0;>}*/
            /*OUT: {
            Reverse<49268, 46183_1; 46169_0;>
            Reverse<46338, 46183_1; 46169_0;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<49268, 46169_0;>
                Reverse<46338, 46169_0;>}*/
                /*OUT: {
                Reverse<49268, 46169_0;>
                Reverse<46338, 46169_0;>}*/
                /*OUT: {
                Reverse<49268, 46318_1; 46261_1; 46212_1; 46183_0; 46169_0;>
                Reverse<46338, 46318_1; 46261_1; 46212_1; 46183_0; 46169_0;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<49268, 46183_0; 46169_0;>
                    Reverse<46338, 46183_0; 46169_0;>}*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*OUT: {
                    Reverse<49268, 46183_0; 46169_0;>
                    Reverse<46338, 46183_0; 46169_0;>}*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<49268, 46183_0; 46169_0;>
                    Reverse<46338, 46183_0; 46169_0;>}*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<49268, 46183_0; 46169_0;>
                    Reverse<46338, 46183_0; 46169_0;>}*/
                    /*OUT: {
                    Reverse<49268, 46183_0; 46169_0;>
                    Reverse<46338, 46183_0; 46169_0;>}*/
                    /*OUT: {
                    Reverse<49268, 46212_0; 46183_0; 46169_0;>
                    Reverse<46338, 46212_0; 46183_0; 46169_0;>}*/
                    for (m = 0; m < 3; m++) {
                        /*OUT: {
                        Reverse<49268, 46212_0; 46183_0; 46169_0;>
                        Reverse<46338, 46212_0; 46183_0; 46169_0;>}*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*OUT: {
                    Reverse<49268, 46212_1; 46183_0; 46169_0;>
                    Reverse<46338, 46212_1; 46183_0; 46169_0;>}*/
                    lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<49268, 46212_1; 46183_0; 46169_0;>
                    Reverse<46338, 46212_1; 46183_0; 46169_0;>}*/
                    lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<49268, 46212_1; 46183_0; 46169_0;>
                    Reverse<46338, 46212_1; 46183_0; 46169_0;>}*/
                    /*OUT: {
                    Reverse<49268, 46212_1; 46183_0; 46169_0;>
                    Reverse<46338, 46212_1; 46183_0; 46169_0;>}*/
                    /*OUT: {
                    Reverse<49268, 46261_0; 46212_1; 46183_0; 46169_0;>
                    Reverse<46338, 46261_0; 46212_1; 46183_0; 46169_0;>}*/
                    for (m = 0; m < 3; m++) {
                        /*OUT: {
                        Reverse<49268, 46261_0; 46212_1; 46183_0; 46169_0;>
                        Reverse<46338, 46261_0; 46212_1; 46183_0; 46169_0;>}*/
                        rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                    }
                    /*OUT: {
                    Reverse<49268, 46261_1; 46212_1; 46183_0; 46169_0;>
                    Reverse<46338, 46261_1; 46212_1; 46183_0; 46169_0;>}*/
                    lhs[n + 1][i][j2][k] = lhs[n + 1][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<49268, 46261_1; 46212_1; 46183_0; 46169_0;>
                    Reverse<46338, 46261_1; 46212_1; 46183_0; 46169_0;>}*/
                    lhs[n + 2][i][j2][k] = lhs[n + 2][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<49268, 46261_1; 46212_1; 46183_0; 46169_0;>
                    Reverse<46338, 46261_1; 46212_1; 46183_0; 46169_0;>}*/
                    /*OUT: {
                    Reverse<49268, 46261_1; 46212_1; 46183_0; 46169_0;>
                    Reverse<46338, 46261_1; 46212_1; 46183_0; 46169_0;>}*/
                    /*OUT: {
                    Reverse<49268, 46318_0; 46261_1; 46212_1; 46183_0; 46169_0;>
                    Reverse<46338, 46318_0; 46261_1; 46212_1; 46183_0; 46169_0;>}*/
                    for (m = 0; m < 3; m++) {
                        /*OUT: {
                        Reverse<49268, 46318_0; 46261_1; 46212_1; 46183_0; 46169_0;>
                        Reverse<46338, 46318_0; 46261_1; 46212_1; 46183_0; 46169_0;>}*/
                        rhs[m][i][j2][k] = rhs[m][i][j2][k] - lhs[n + 0][i][j2][k] * rhs[m][i][j][k];
                    }
                }
            }
            /*OUT: {
            Reverse<49268, 46169_0;>
            Reverse<46338, 46169_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<46338,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<49268, 46169_1;>
        Reverse<46338, 46169_1;>}*/
        j = grid_points[1] - 2;
        /*OUT: {
        Reverse<49268, 46169_1;>
        Reverse<46338, 46169_1;>}*/
        j1 = grid_points[1] - 1;
#pragma omp for nowait
        /*OUT: {
        Reverse<49268, 46169_1;>
        Reverse<46338, 46169_1;>}*/
        /*OUT: {
        Reverse<49268, 46169_1;>
        Reverse<46338, 46169_1;>}*/
        /*OUT: {
        Reverse<49268, 46353_1; 46169_1;>
        Reverse<46338, 46353_1; 46169_1;>}*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: {
            Reverse<49268, 46169_1;>
            Reverse<46338, 46169_1;>}*/
            /*OUT: {
            Reverse<49268, 46169_1;>
            Reverse<46338, 46169_1;>}*/
            /*OUT: {
            Reverse<49268, 46458_1; 46431_1; 46382_1; 46353_0; 46169_1;>
            Reverse<46338, 46458_1; 46431_1; 46382_1; 46353_0; 46169_1;>}*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: {
                Reverse<49268, 46353_0; 46169_1;>
                Reverse<46338, 46353_0; 46169_1;>}*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*OUT: {
                Reverse<49268, 46353_0; 46169_1;>
                Reverse<46338, 46353_0; 46169_1;>}*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*OUT: {
                Reverse<49268, 46353_0; 46169_1;>
                Reverse<46338, 46353_0; 46169_1;>}*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*OUT: {
                Reverse<49268, 46353_0; 46169_1;>
                Reverse<46338, 46353_0; 46169_1;>}*/
                /*OUT: {
                Reverse<49268, 46353_0; 46169_1;>
                Reverse<46338, 46353_0; 46169_1;>}*/
                /*OUT: {
                Reverse<49268, 46382_0; 46353_0; 46169_1;>
                Reverse<46338, 46382_0; 46353_0; 46169_1;>}*/
                for (m = 0; m < 3; m++) {
                    /*OUT: {
                    Reverse<49268, 46382_0; 46353_0; 46169_1;>
                    Reverse<46338, 46382_0; 46353_0; 46169_1;>}*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*OUT: {
                Reverse<49268, 46382_1; 46353_0; 46169_1;>
                Reverse<46338, 46382_1; 46353_0; 46169_1;>}*/
                lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                /*OUT: {
                Reverse<49268, 46382_1; 46353_0; 46169_1;>
                Reverse<46338, 46382_1; 46353_0; 46169_1;>}*/
                lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                /*OUT: {
                Reverse<49268, 46382_1; 46353_0; 46169_1;>
                Reverse<46338, 46382_1; 46353_0; 46169_1;>}*/
                /*OUT: {
                Reverse<49268, 46382_1; 46353_0; 46169_1;>
                Reverse<46338, 46382_1; 46353_0; 46169_1;>}*/
                /*OUT: {
                Reverse<49268, 46431_0; 46382_1; 46353_0; 46169_1;>
                Reverse<46338, 46431_0; 46382_1; 46353_0; 46169_1;>}*/
                for (m = 0; m < 3; m++) {
                    /*OUT: {
                    Reverse<49268, 46431_0; 46382_1; 46353_0; 46169_1;>
                    Reverse<46338, 46431_0; 46382_1; 46353_0; 46169_1;>}*/
                    rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                }
                /*OUT: {
                Reverse<49268, 46431_1; 46382_1; 46353_0; 46169_1;>
                Reverse<46338, 46431_1; 46382_1; 46353_0; 46169_1;>}*/
                fac2 = 1. / lhs[n + 2][i][j1][k];
                /*OUT: {
                Reverse<49268, 46431_1; 46382_1; 46353_0; 46169_1;>
                Reverse<46338, 46431_1; 46382_1; 46353_0; 46169_1;>}*/
                /*OUT: {
                Reverse<49268, 46431_1; 46382_1; 46353_0; 46169_1;>
                Reverse<46338, 46431_1; 46382_1; 46353_0; 46169_1;>}*/
                /*OUT: {
                Reverse<49268, 46458_0; 46431_1; 46382_1; 46353_0; 46169_1;>
                Reverse<46338, 46458_0; 46431_1; 46382_1; 46353_0; 46169_1;>}*/
                for (m = 0; m < 3; m++) {
                    /*OUT: {
                    Reverse<49268, 46458_0; 46431_1; 46382_1; 46353_0; 46169_1;>
                    Reverse<46338, 46458_0; 46431_1; 46382_1; 46353_0; 46169_1;>}*/
                    rhs[m][i][j1][k] = fac2 * rhs[m][i][j1][k];
                }
            }
        }
        /*OUT: {
        Reverse<49268, 46169_1;>
        Reverse<46338, 46169_1;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<46470,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<46470,>}*/
        /*OUT: {
        Reverse<46470,>
        Reverse<46762,>}*/
        /*OUT: {
        Reverse<46762,>}*/
        for (m = 3; m < 5; m++) {
            /*OUT: {
            Reverse<46470, 46472_0;>
            Reverse<46762, 46472_0;>}*/
            n = (m - 3 + 1) * 5;
            /*OUT: {
            Reverse<46470, 46472_0;>
            Reverse<46762, 46472_0;>}*/
            /*OUT: {
            Reverse<46639,>
            Reverse<46470, 46472_0;>
            Reverse<46762, 46472_0;>}*/
            /*OUT: {
            Reverse<46639,>}*/
            for (j = 0; j <= grid_points[1] - 3; j++) {
                /*OUT: {
                Reverse<46470, 46479_0; 46472_0;>
                Reverse<46639, 46479_0;>
                Reverse<46762, 46479_0; 46472_0;>}*/
                j1 = j + 1;
                /*OUT: {
                Reverse<46470, 46479_0; 46472_0;>
                Reverse<46639, 46479_0;>
                Reverse<46762, 46479_0; 46472_0;>}*/
                j2 = j + 2;
#pragma omp for nowait
                /*OUT: {
                Reverse<46470, 46479_0; 46472_0;>
                Reverse<46639, 46479_0;>
                Reverse<46762, 46479_0; 46472_0;>}*/
                /*OUT: {
                Reverse<46470, 46479_0; 46472_0;>
                Reverse<46639, 46479_0;>
                Reverse<46762, 46479_0; 46472_0;>}*/
                /*OUT: {
                Reverse<46470, 46493_1; 46479_0; 46472_0;>
                Reverse<46762, 46493_1; 46479_0; 46472_0;>
                Reverse<46639, 46493_1; 46479_0;>}*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                    /*OUT: {
                    Reverse<46470, 46479_0; 46472_0;>
                    Reverse<46639, 46479_0;>
                    Reverse<46762, 46479_0; 46472_0;>}*/
                    /*OUT: {
                    Reverse<46470, 46479_0; 46472_0;>
                    Reverse<46639, 46479_0;>
                    Reverse<46762, 46479_0; 46472_0;>}*/
                    /*OUT: {
                    Reverse<46470, 46493_0; 46479_0; 46472_0;>
                    Reverse<46762, 46493_0; 46479_0; 46472_0;>
                    Reverse<46639, 46493_0; 46479_0;>}*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*OUT: {
                        Reverse<46470, 46493_0; 46479_0; 46472_0;>
                        Reverse<46762, 46493_0; 46479_0; 46472_0;>
                        Reverse<46639, 46493_0; 46479_0;>}*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*OUT: {
                        Reverse<46470, 46493_0; 46479_0; 46472_0;>
                        Reverse<46762, 46493_0; 46479_0; 46472_0;>
                        Reverse<46639, 46493_0; 46479_0;>}*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*OUT: {
                        Reverse<46470, 46493_0; 46479_0; 46472_0;>
                        Reverse<46762, 46493_0; 46479_0; 46472_0;>
                        Reverse<46639, 46493_0; 46479_0;>}*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*OUT: {
                        Reverse<46470, 46493_0; 46479_0; 46472_0;>
                        Reverse<46762, 46493_0; 46479_0; 46472_0;>
                        Reverse<46639, 46493_0; 46479_0;>}*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*OUT: {
                        Reverse<46470, 46493_0; 46479_0; 46472_0;>
                        Reverse<46762, 46493_0; 46479_0; 46472_0;>
                        Reverse<46639, 46493_0; 46479_0;>}*/
                        lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                        /*OUT: {
                        Reverse<46470, 46493_0; 46479_0; 46472_0;>
                        Reverse<46762, 46493_0; 46479_0; 46472_0;>
                        Reverse<46639, 46493_0; 46479_0;>}*/
                        lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                        /*OUT: {
                        Reverse<46470, 46493_0; 46479_0; 46472_0;>
                        Reverse<46762, 46493_0; 46479_0; 46472_0;>
                        Reverse<46639, 46493_0; 46479_0;>}*/
                        rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                        /*OUT: {
                        Reverse<46470, 46493_0; 46479_0; 46472_0;>
                        Reverse<46762, 46493_0; 46479_0; 46472_0;>
                        Reverse<46639, 46493_0; 46479_0;>}*/
                        lhs[n + 1][i][j2][k] = lhs[n + 1][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 3][i][j][k];
                        /*OUT: {
                        Reverse<46470, 46493_0; 46479_0; 46472_0;>
                        Reverse<46762, 46493_0; 46479_0; 46472_0;>
                        Reverse<46639, 46493_0; 46479_0;>}*/
                        lhs[n + 2][i][j2][k] = lhs[n + 2][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 4][i][j][k];
                        /*OUT: {
                        Reverse<46470, 46493_0; 46479_0; 46472_0;>
                        Reverse<46762, 46493_0; 46479_0; 46472_0;>
                        Reverse<46639, 46493_0; 46479_0;>}*/
                        rhs[m][i][j2][k] = rhs[m][i][j2][k] - lhs[n + 0][i][j2][k] * rhs[m][i][j][k];
                    }
                }
                /*OUT: {
                Reverse<46470, 46479_0; 46472_0;>
                Reverse<46639, 46479_0;>
                Reverse<46762, 46479_0; 46472_0;>}*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: {
                Reverse<46639,>}*/
#pragma omp barrier
            }
            /*OUT: {
            Reverse<46470, 46479_1; 46472_0;>
            Reverse<46762, 46479_1; 46472_0;>
            Reverse<46639, 46479_1;>}*/
            j = grid_points[1] - 2;
            /*OUT: {
            Reverse<46470, 46479_1; 46472_0;>
            Reverse<46762, 46479_1; 46472_0;>
            Reverse<46639, 46479_1;>}*/
            j1 = grid_points[1] - 1;
#pragma omp for nowait
            /*OUT: {
            Reverse<46470, 46479_1; 46472_0;>
            Reverse<46762, 46479_1; 46472_0;>
            Reverse<46639, 46479_1;>}*/
            /*OUT: {
            Reverse<46470, 46479_1; 46472_0;>
            Reverse<46762, 46479_1; 46472_0;>
            Reverse<46639, 46479_1;>}*/
            /*OUT: {
            Reverse<46639, 46654_1; 46479_1;>
            Reverse<46470, 46654_1; 46479_1; 46472_0;>
            Reverse<46762, 46654_1; 46479_1; 46472_0;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<46470, 46479_1; 46472_0;>
                Reverse<46762, 46479_1; 46472_0;>
                Reverse<46639, 46479_1;>}*/
                /*OUT: {
                Reverse<46470, 46479_1; 46472_0;>
                Reverse<46762, 46479_1; 46472_0;>
                Reverse<46639, 46479_1;>}*/
                /*OUT: {
                Reverse<46470, 46654_0; 46479_1; 46472_0;>
                Reverse<46762, 46654_0; 46479_1; 46472_0;>
                Reverse<46639, 46654_0; 46479_1;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<46470, 46654_0; 46479_1; 46472_0;>
                    Reverse<46762, 46654_0; 46479_1; 46472_0;>
                    Reverse<46639, 46654_0; 46479_1;>}*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*OUT: {
                    Reverse<46470, 46654_0; 46479_1; 46472_0;>
                    Reverse<46762, 46654_0; 46479_1; 46472_0;>
                    Reverse<46639, 46654_0; 46479_1;>}*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<46470, 46654_0; 46479_1; 46472_0;>
                    Reverse<46762, 46654_0; 46479_1; 46472_0;>
                    Reverse<46639, 46654_0; 46479_1;>}*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<46470, 46654_0; 46479_1; 46472_0;>
                    Reverse<46762, 46654_0; 46479_1; 46472_0;>
                    Reverse<46639, 46654_0; 46479_1;>}*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*OUT: {
                    Reverse<46470, 46654_0; 46479_1; 46472_0;>
                    Reverse<46762, 46654_0; 46479_1; 46472_0;>
                    Reverse<46639, 46654_0; 46479_1;>}*/
                    lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<46470, 46654_0; 46479_1; 46472_0;>
                    Reverse<46762, 46654_0; 46479_1; 46472_0;>
                    Reverse<46639, 46654_0; 46479_1;>}*/
                    lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<46470, 46654_0; 46479_1; 46472_0;>
                    Reverse<46762, 46654_0; 46479_1; 46472_0;>
                    Reverse<46639, 46654_0; 46479_1;>}*/
                    rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                    /*OUT: {
                    Reverse<46470, 46654_0; 46479_1; 46472_0;>
                    Reverse<46762, 46654_0; 46479_1; 46472_0;>
                    Reverse<46639, 46654_0; 46479_1;>}*/
                    fac2 = 1. / lhs[n + 2][i][j1][k];
                    /*OUT: {
                    Reverse<46470, 46654_0; 46479_1; 46472_0;>
                    Reverse<46762, 46654_0; 46479_1; 46472_0;>
                    Reverse<46639, 46654_0; 46479_1;>}*/
                    rhs[m][i][j1][k] = fac2 * rhs[m][i][j1][k];
                }
            }
            /*OUT: {
            Reverse<46470, 46479_1; 46472_0;>
            Reverse<46762, 46479_1; 46472_0;>
            Reverse<46639, 46479_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<46762,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<46470, 46472_1;>
        Reverse<46762, 46472_1;>}*/
        j = grid_points[1] - 2;
        /*OUT: {
        Reverse<46470, 46472_1;>
        Reverse<46762, 46472_1;>}*/
        j1 = grid_points[1] - 1;
        /*OUT: {
        Reverse<46470, 46472_1;>
        Reverse<46762, 46472_1;>}*/
        n = 0;
        /*OUT: {
        Reverse<46470, 46472_1;>
        Reverse<46762, 46472_1;>}*/
        /*OUT: {
        Reverse<46802,>
        Reverse<46470, 46472_1;>
        Reverse<46762, 46472_1;>}*/
        /*OUT: {
        Reverse<46802,>}*/
        for (m = 0; m < 3; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<46470, 46772_0; 46472_1;>
            Reverse<46762, 46772_0; 46472_1;>
            Reverse<46802, 46772_0;>}*/
            /*OUT: {
            Reverse<46470, 46772_0; 46472_1;>
            Reverse<46762, 46772_0; 46472_1;>
            Reverse<46802, 46772_0;>}*/
            /*OUT: {
            Reverse<46470, 46782_1; 46772_0; 46472_1;>
            Reverse<46762, 46782_1; 46772_0; 46472_1;>
            Reverse<46802, 46782_1; 46772_0;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<46470, 46772_0; 46472_1;>
                Reverse<46762, 46772_0; 46472_1;>
                Reverse<46802, 46772_0;>}*/
                /*OUT: {
                Reverse<46470, 46772_0; 46472_1;>
                Reverse<46762, 46772_0; 46472_1;>
                Reverse<46802, 46772_0;>}*/
                /*OUT: {
                Reverse<46802, 46782_0; 46772_0;>
                Reverse<46470, 46782_0; 46772_0; 46472_1;>
                Reverse<46762, 46782_0; 46772_0; 46472_1;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<46802, 46782_0; 46772_0;>
                    Reverse<46470, 46782_0; 46772_0; 46472_1;>
                    Reverse<46762, 46782_0; 46772_0; 46472_1;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k];
                }
            }
            /*OUT: {
            Reverse<46470, 46772_0; 46472_1;>
            Reverse<46762, 46772_0; 46472_1;>
            Reverse<46802, 46772_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<46802,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<46470, 46772_1; 46472_1;>
        Reverse<46762, 46772_1; 46472_1;>
        Reverse<46802, 46772_1;>}*/
        /*OUT: {
        Reverse<46837,>
        Reverse<46470, 46772_1; 46472_1;>
        Reverse<46762, 46772_1; 46472_1;>
        Reverse<46802, 46772_1;>}*/
        /*OUT: {
        Reverse<46837,>}*/
        for (m = 3; m < 5; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<46470, 46804_0; 46772_1; 46472_1;>
            Reverse<46762, 46804_0; 46772_1; 46472_1;>
            Reverse<46837, 46804_0;>
            Reverse<46802, 46804_0; 46772_1;>}*/
            /*OUT: {
            Reverse<46470, 46804_0; 46772_1; 46472_1;>
            Reverse<46762, 46804_0; 46772_1; 46472_1;>
            Reverse<46837, 46804_0;>
            Reverse<46802, 46804_0; 46772_1;>}*/
            /*OUT: {
            Reverse<46837, 46814_1; 46804_0;>
            Reverse<46802, 46814_1; 46804_0; 46772_1;>
            Reverse<46470, 46814_1; 46804_0; 46772_1; 46472_1;>
            Reverse<46762, 46814_1; 46804_0; 46772_1; 46472_1;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<46470, 46804_0; 46772_1; 46472_1;>
                Reverse<46762, 46804_0; 46772_1; 46472_1;>
                Reverse<46837, 46804_0;>
                Reverse<46802, 46804_0; 46772_1;>}*/
                /*OUT: {
                Reverse<46470, 46804_0; 46772_1; 46472_1;>
                Reverse<46762, 46804_0; 46772_1; 46472_1;>
                Reverse<46837, 46804_0;>
                Reverse<46802, 46804_0; 46772_1;>}*/
                /*OUT: {
                Reverse<46470, 46814_0; 46804_0; 46772_1; 46472_1;>
                Reverse<46762, 46814_0; 46804_0; 46772_1; 46472_1;>
                Reverse<46837, 46814_0; 46804_0;>
                Reverse<46802, 46814_0; 46804_0; 46772_1;>}*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: {
                    Reverse<46470, 46814_0; 46804_0; 46772_1; 46472_1;>
                    Reverse<46762, 46814_0; 46804_0; 46772_1; 46472_1;>
                    Reverse<46837, 46814_0; 46804_0;>
                    Reverse<46802, 46814_0; 46804_0; 46772_1;>}*/
                    n = (m - 3 + 1) * 5;
                    /*OUT: {
                    Reverse<46470, 46814_0; 46804_0; 46772_1; 46472_1;>
                    Reverse<46762, 46814_0; 46804_0; 46772_1; 46472_1;>
                    Reverse<46837, 46814_0; 46804_0;>
                    Reverse<46802, 46814_0; 46804_0; 46772_1;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k];
                }
            }
            /*OUT: {
            Reverse<46470, 46804_0; 46772_1; 46472_1;>
            Reverse<46762, 46804_0; 46772_1; 46472_1;>
            Reverse<46837, 46804_0;>
            Reverse<46802, 46804_0; 46772_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<46837,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<46470, 46804_1; 46772_1; 46472_1;>
        Reverse<46762, 46804_1; 46772_1; 46472_1;>
        Reverse<46837, 46804_1;>
        Reverse<46802, 46804_1; 46772_1;>}*/
        n = 0;
        /*OUT: {
        Reverse<46470, 46804_1; 46772_1; 46472_1;>
        Reverse<46762, 46804_1; 46772_1; 46472_1;>
        Reverse<46837, 46804_1;>
        Reverse<46802, 46804_1; 46772_1;>}*/
        /*OUT: {
        Reverse<46470, 46804_1; 46772_1; 46472_1;>
        Reverse<46762, 46804_1; 46772_1; 46472_1;>
        Reverse<46837, 46804_1;>
        Reverse<46887, 46845_1;>
        Reverse<46802, 46804_1; 46772_1;>}*/
        /*OUT: {
        Reverse<46802, 46845_1; 46841_0; 46804_1; 46772_1;>
        Reverse<46887, 46845_1;>
        Reverse<46470, 46845_1; 46841_0; 46804_1; 46772_1; 46472_1;>
        Reverse<46762, 46845_1; 46841_0; 46804_1; 46772_1; 46472_1;>
        Reverse<46837, 46845_1; 46841_0; 46804_1;>}*/
        for (m = 0; m < 3; m++) {
            /*OUT: {
            Reverse<46470, 46841_0; 46804_1; 46772_1; 46472_1;>
            Reverse<46762, 46841_0; 46804_1; 46772_1; 46472_1;>
            Reverse<46837, 46841_0; 46804_1;>
            Reverse<46887, 46841_0; 46845_1;>
            Reverse<46802, 46841_0; 46804_1; 46772_1;>}*/
            /*OUT: {
            Reverse<46887,>
            Reverse<46470, 46841_0; 46804_1; 46772_1; 46472_1;>
            Reverse<46762, 46841_0; 46804_1; 46772_1; 46472_1;>
            Reverse<46837, 46841_0; 46804_1;>
            Reverse<46802, 46841_0; 46804_1; 46772_1;>}*/
            /*OUT: {
            Reverse<46887,>}*/
            for (j = grid_points[1] - 3; j >= 0; j--) {
                /*OUT: {
                Reverse<46802, 46845_0; 46841_0; 46804_1; 46772_1;>
                Reverse<46837, 46845_0; 46841_0; 46804_1;>
                Reverse<46470, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                Reverse<46762, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                Reverse<46887, 46845_0;>}*/
                j1 = j + 1;
                /*OUT: {
                Reverse<46802, 46845_0; 46841_0; 46804_1; 46772_1;>
                Reverse<46837, 46845_0; 46841_0; 46804_1;>
                Reverse<46470, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                Reverse<46762, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                Reverse<46887, 46845_0;>}*/
                j2 = j + 2;
#pragma omp for nowait
                /*OUT: {
                Reverse<46802, 46845_0; 46841_0; 46804_1; 46772_1;>
                Reverse<46837, 46845_0; 46841_0; 46804_1;>
                Reverse<46470, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                Reverse<46762, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                Reverse<46887, 46845_0;>}*/
                /*OUT: {
                Reverse<46802, 46845_0; 46841_0; 46804_1; 46772_1;>
                Reverse<46837, 46845_0; 46841_0; 46804_1;>
                Reverse<46470, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                Reverse<46762, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                Reverse<46887, 46845_0;>}*/
                /*OUT: {
                Reverse<46470, 46859_1; 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                Reverse<46762, 46859_1; 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                Reverse<46802, 46859_1; 46845_0; 46841_0; 46804_1; 46772_1;>
                Reverse<46887, 46859_1; 46845_0;>
                Reverse<46837, 46859_1; 46845_0; 46841_0; 46804_1;>}*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                    /*OUT: {
                    Reverse<46802, 46845_0; 46841_0; 46804_1; 46772_1;>
                    Reverse<46837, 46845_0; 46841_0; 46804_1;>
                    Reverse<46470, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                    Reverse<46762, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                    Reverse<46887, 46845_0;>}*/
                    /*OUT: {
                    Reverse<46802, 46845_0; 46841_0; 46804_1; 46772_1;>
                    Reverse<46837, 46845_0; 46841_0; 46804_1;>
                    Reverse<46470, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                    Reverse<46762, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                    Reverse<46887, 46845_0;>}*/
                    /*OUT: {
                    Reverse<46470, 46859_0; 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                    Reverse<46762, 46859_0; 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                    Reverse<46802, 46859_0; 46845_0; 46841_0; 46804_1; 46772_1;>
                    Reverse<46887, 46859_0; 46845_0;>
                    Reverse<46837, 46859_0; 46845_0; 46841_0; 46804_1;>}*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*OUT: {
                        Reverse<46470, 46859_0; 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                        Reverse<46762, 46859_0; 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                        Reverse<46802, 46859_0; 46845_0; 46841_0; 46804_1; 46772_1;>
                        Reverse<46887, 46859_0; 46845_0;>
                        Reverse<46837, 46859_0; 46845_0; 46841_0; 46804_1;>}*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k] - lhs[n + 4][i][j][k] * rhs[m][i][j2][k];
                    }
                }
                /*OUT: {
                Reverse<46802, 46845_0; 46841_0; 46804_1; 46772_1;>
                Reverse<46837, 46845_0; 46841_0; 46804_1;>
                Reverse<46470, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                Reverse<46762, 46845_0; 46841_0; 46804_1; 46772_1; 46472_1;>
                Reverse<46887, 46845_0;>}*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: {
                Reverse<46887,>}*/
#pragma omp barrier
            }
        }
        /*OUT: {
        Reverse<46837, 46841_1; 46804_1;>
        Reverse<46470, 46841_1; 46804_1; 46772_1; 46472_1;>
        Reverse<46762, 46841_1; 46804_1; 46772_1; 46472_1;>
        Reverse<46887, 46841_1; 46845_1;>
        Reverse<46802, 46841_1; 46804_1; 46772_1;>}*/
        /*OUT: {
        Reverse<46837, 46841_1; 46804_1;>
        Reverse<46470, 46841_1; 46804_1; 46772_1; 46472_1;>
        Reverse<46762, 46841_1; 46804_1; 46772_1; 46472_1;>
        Reverse<46938, 46896_1;>
        Reverse<46887, 46841_1; 46845_1;>
        Reverse<46802, 46841_1; 46804_1; 46772_1;>}*/
        /*OUT: {
        Reverse<46837, 46896_1; 46889_0; 46841_1; 46804_1;>
        Reverse<46470, 46896_1; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
        Reverse<46887, 46896_1; 46889_0; 46841_1; 46845_1;>
        Reverse<46762, 46896_1; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
        Reverse<46938, 46896_1;>
        Reverse<46802, 46896_1; 46889_0; 46841_1; 46804_1; 46772_1;>}*/
        for (m = 3; m < 5; m++) {
            /*OUT: {
            Reverse<46938, 46889_0; 46896_1;>
            Reverse<46470, 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
            Reverse<46762, 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
            Reverse<46802, 46889_0; 46841_1; 46804_1; 46772_1;>
            Reverse<46887, 46889_0; 46841_1; 46845_1;>
            Reverse<46837, 46889_0; 46841_1; 46804_1;>}*/
            n = (m - 3 + 1) * 5;
            /*OUT: {
            Reverse<46938, 46889_0; 46896_1;>
            Reverse<46470, 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
            Reverse<46762, 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
            Reverse<46802, 46889_0; 46841_1; 46804_1; 46772_1;>
            Reverse<46887, 46889_0; 46841_1; 46845_1;>
            Reverse<46837, 46889_0; 46841_1; 46804_1;>}*/
            /*OUT: {
            Reverse<46938,>
            Reverse<46470, 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
            Reverse<46762, 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
            Reverse<46802, 46889_0; 46841_1; 46804_1; 46772_1;>
            Reverse<46887, 46889_0; 46841_1; 46845_1;>
            Reverse<46837, 46889_0; 46841_1; 46804_1;>}*/
            /*OUT: {
            Reverse<46938,>}*/
            for (j = grid_points[1] - 3; j >= 0; j--) {
                /*OUT: {
                Reverse<46470, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                Reverse<46762, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                Reverse<46837, 46896_0; 46889_0; 46841_1; 46804_1;>
                Reverse<46887, 46896_0; 46889_0; 46841_1; 46845_1;>
                Reverse<46938, 46896_0;>
                Reverse<46802, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1;>}*/
                j1 = j + 1;
                /*OUT: {
                Reverse<46470, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                Reverse<46762, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                Reverse<46837, 46896_0; 46889_0; 46841_1; 46804_1;>
                Reverse<46887, 46896_0; 46889_0; 46841_1; 46845_1;>
                Reverse<46938, 46896_0;>
                Reverse<46802, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1;>}*/
                j2 = j1 + 1;
#pragma omp for nowait
                /*OUT: {
                Reverse<46470, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                Reverse<46762, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                Reverse<46837, 46896_0; 46889_0; 46841_1; 46804_1;>
                Reverse<46887, 46896_0; 46889_0; 46841_1; 46845_1;>
                Reverse<46938, 46896_0;>
                Reverse<46802, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1;>}*/
                /*OUT: {
                Reverse<46470, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                Reverse<46762, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                Reverse<46837, 46896_0; 46889_0; 46841_1; 46804_1;>
                Reverse<46887, 46896_0; 46889_0; 46841_1; 46845_1;>
                Reverse<46938, 46896_0;>
                Reverse<46802, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1;>}*/
                /*OUT: {
                Reverse<46802, 46910_1; 46896_0; 46889_0; 46841_1; 46804_1; 46772_1;>
                Reverse<46887, 46910_1; 46896_0; 46889_0; 46841_1; 46845_1;>
                Reverse<46837, 46910_1; 46896_0; 46889_0; 46841_1; 46804_1;>
                Reverse<46470, 46910_1; 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                Reverse<46762, 46910_1; 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                Reverse<46938, 46910_1; 46896_0;>}*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                    /*OUT: {
                    Reverse<46470, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                    Reverse<46762, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                    Reverse<46837, 46896_0; 46889_0; 46841_1; 46804_1;>
                    Reverse<46887, 46896_0; 46889_0; 46841_1; 46845_1;>
                    Reverse<46938, 46896_0;>
                    Reverse<46802, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1;>}*/
                    /*OUT: {
                    Reverse<46470, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                    Reverse<46762, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                    Reverse<46837, 46896_0; 46889_0; 46841_1; 46804_1;>
                    Reverse<46887, 46896_0; 46889_0; 46841_1; 46845_1;>
                    Reverse<46938, 46896_0;>
                    Reverse<46802, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1;>}*/
                    /*OUT: {
                    Reverse<46470, 46910_0; 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                    Reverse<46762, 46910_0; 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                    Reverse<46887, 46910_0; 46896_0; 46889_0; 46841_1; 46845_1;>
                    Reverse<46837, 46910_0; 46896_0; 46889_0; 46841_1; 46804_1;>
                    Reverse<46938, 46910_0; 46896_0;>
                    Reverse<46802, 46910_0; 46896_0; 46889_0; 46841_1; 46804_1; 46772_1;>}*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                        /*OUT: {
                        Reverse<46470, 46910_0; 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                        Reverse<46762, 46910_0; 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                        Reverse<46887, 46910_0; 46896_0; 46889_0; 46841_1; 46845_1;>
                        Reverse<46837, 46910_0; 46896_0; 46889_0; 46841_1; 46804_1;>
                        Reverse<46938, 46910_0; 46896_0;>
                        Reverse<46802, 46910_0; 46896_0; 46889_0; 46841_1; 46804_1; 46772_1;>}*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k] - lhs[n + 4][i][j][k] * rhs[m][i][j2][k];
                    }
                }
                /*OUT: {
                Reverse<46470, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                Reverse<46762, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1; 46472_1;>
                Reverse<46837, 46896_0; 46889_0; 46841_1; 46804_1;>
                Reverse<46887, 46896_0; 46889_0; 46841_1; 46845_1;>
                Reverse<46938, 46896_0;>
                Reverse<46802, 46896_0; 46889_0; 46841_1; 46804_1; 46772_1;>}*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: {
                Reverse<46938,>}*/
#pragma omp barrier
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    pinvr();
    /*OUT: {
    Reverse<--,>}*/
}
static void z_solve() {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<49401,>}*/
        int i;
        /*OUT: {
        Reverse<49401,>}*/
        int j;
        /*OUT: {
        Reverse<49401,>}*/
        int k;
        /*OUT: {
        Reverse<49401,>}*/
        int n;
        /*OUT: {
        Reverse<49401,>}*/
        int k1;
        /*OUT: {
        Reverse<49401,>}*/
        int k2;
        /*OUT: {
        Reverse<49401,>}*/
        int m;
        /*OUT: {
        Reverse<49401,>}*/
        double fac1;
        /*OUT: {
        Reverse<49401,>}*/
        double fac2;
        /*OUT: {
        Reverse<49401,>}*/
        lhsz();
        /*OUT: {
        Reverse<49401,>}*/
        /*OUT: {
        Reverse<49401,>}*/
        n = 0;
#pragma omp for nowait
        /*OUT: {
        Reverse<49401,>}*/
        /*OUT: {
        Reverse<49401,>}*/
        /*OUT: {
        Reverse<49401, 46968_1;>}*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: {
            Reverse<49401,>}*/
            /*OUT: {
            Reverse<49401,>}*/
            /*OUT: {
            Reverse<49401, 46972_1; 46968_0;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<49401, 46968_0;>}*/
                /*OUT: {
                Reverse<49401, 46968_0;>}*/
                /*OUT: {
                Reverse<49401, 47111_1; 47054_1; 47005_1; 46972_0; 46968_0;>}*/
                for (k = 0; k <= grid_points[2] - 3; k++) {
                    /*OUT: {
                    Reverse<49401, 46972_0; 46968_0;>}*/
                    k1 = k + 1;
                    /*OUT: {
                    Reverse<49401, 46972_0; 46968_0;>}*/
                    k2 = k + 2;
                    /*OUT: {
                    Reverse<49401, 46972_0; 46968_0;>}*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*OUT: {
                    Reverse<49401, 46972_0; 46968_0;>}*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<49401, 46972_0; 46968_0;>}*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<49401, 46972_0; 46968_0;>}*/
                    /*OUT: {
                    Reverse<49401, 46972_0; 46968_0;>}*/
                    /*OUT: {
                    Reverse<49401, 47005_0; 46972_0; 46968_0;>}*/
                    for (m = 0; m < 3; m++) {
                        /*OUT: {
                        Reverse<49401, 47005_0; 46972_0; 46968_0;>}*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*OUT: {
                    Reverse<49401, 47005_1; 46972_0; 46968_0;>}*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<49401, 47005_1; 46972_0; 46968_0;>}*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<49401, 47005_1; 46972_0; 46968_0;>}*/
                    /*OUT: {
                    Reverse<49401, 47005_1; 46972_0; 46968_0;>}*/
                    /*OUT: {
                    Reverse<49401, 47054_0; 47005_1; 46972_0; 46968_0;>}*/
                    for (m = 0; m < 3; m++) {
                        /*OUT: {
                        Reverse<49401, 47054_0; 47005_1; 46972_0; 46968_0;>}*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    }
                    /*OUT: {
                    Reverse<49401, 47054_1; 47005_1; 46972_0; 46968_0;>}*/
                    lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<49401, 47054_1; 47005_1; 46972_0; 46968_0;>}*/
                    lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<49401, 47054_1; 47005_1; 46972_0; 46968_0;>}*/
                    /*OUT: {
                    Reverse<49401, 47054_1; 47005_1; 46972_0; 46968_0;>}*/
                    /*OUT: {
                    Reverse<49401, 47111_0; 47054_1; 47005_1; 46972_0; 46968_0;>}*/
                    for (m = 0; m < 3; m++) {
                        /*OUT: {
                        Reverse<49401, 47111_0; 47054_1; 47005_1; 46972_0; 46968_0;>}*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                    }
                }
            }
        }
        /*OUT: {
        Reverse<49401,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<47131,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<47131,>}*/
        k = grid_points[2] - 2;
        /*OUT: {
        Reverse<47131,>}*/
        k1 = grid_points[2] - 1;
#pragma omp for nowait
        /*OUT: {
        Reverse<47131,>}*/
        /*OUT: {
        Reverse<47131,>}*/
        /*OUT: {
        Reverse<47131, 47146_1;>}*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: {
            Reverse<47131,>}*/
            /*OUT: {
            Reverse<47131,>}*/
            /*OUT: {
            Reverse<47131, 47251_1; 47224_1; 47175_1; 47146_0;>}*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: {
                Reverse<47131, 47146_0;>}*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*OUT: {
                Reverse<47131, 47146_0;>}*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*OUT: {
                Reverse<47131, 47146_0;>}*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*OUT: {
                Reverse<47131, 47146_0;>}*/
                /*OUT: {
                Reverse<47131, 47146_0;>}*/
                /*OUT: {
                Reverse<47131, 47175_0; 47146_0;>}*/
                for (m = 0; m < 3; m++) {
                    /*OUT: {
                    Reverse<47131, 47175_0; 47146_0;>}*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*OUT: {
                Reverse<47131, 47175_1; 47146_0;>}*/
                lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                /*OUT: {
                Reverse<47131, 47175_1; 47146_0;>}*/
                lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                /*OUT: {
                Reverse<47131, 47175_1; 47146_0;>}*/
                /*OUT: {
                Reverse<47131, 47175_1; 47146_0;>}*/
                /*OUT: {
                Reverse<47131, 47224_0; 47175_1; 47146_0;>}*/
                for (m = 0; m < 3; m++) {
                    /*OUT: {
                    Reverse<47131, 47224_0; 47175_1; 47146_0;>}*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                }
                /*OUT: {
                Reverse<47131, 47224_1; 47175_1; 47146_0;>}*/
                fac2 = 1. / lhs[n + 2][i][j][k1];
                /*OUT: {
                Reverse<47131, 47224_1; 47175_1; 47146_0;>}*/
                /*OUT: {
                Reverse<47131, 47224_1; 47175_1; 47146_0;>}*/
                /*OUT: {
                Reverse<47131, 47251_0; 47224_1; 47175_1; 47146_0;>}*/
                for (m = 0; m < 3; m++) {
                    /*OUT: {
                    Reverse<47131, 47251_0; 47224_1; 47175_1; 47146_0;>}*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
        }
        /*OUT: {
        Reverse<47131,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<47263,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<47263,>}*/
        /*OUT: {
        Reverse<47263,>
        Reverse<47555,>}*/
        /*OUT: {
        Reverse<47555,>}*/
        for (m = 3; m < 5; m++) {
            /*OUT: {
            Reverse<47263, 47265_0;>
            Reverse<47555, 47265_0;>}*/
            n = (m - 3 + 1) * 5;
#pragma omp for nowait
            /*OUT: {
            Reverse<47263, 47265_0;>
            Reverse<47555, 47265_0;>}*/
            /*OUT: {
            Reverse<47263, 47265_0;>
            Reverse<47555, 47265_0;>}*/
            /*OUT: {
            Reverse<47263, 47278_1; 47265_0;>
            Reverse<47555, 47278_1; 47265_0;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<47263, 47265_0;>
                Reverse<47555, 47265_0;>}*/
                /*OUT: {
                Reverse<47263, 47265_0;>
                Reverse<47555, 47265_0;>}*/
                /*OUT: {
                Reverse<47263, 47282_1; 47278_0; 47265_0;>
                Reverse<47555, 47282_1; 47278_0; 47265_0;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<47263, 47278_0; 47265_0;>
                    Reverse<47555, 47278_0; 47265_0;>}*/
                    /*OUT: {
                    Reverse<47263, 47278_0; 47265_0;>
                    Reverse<47555, 47278_0; 47265_0;>}*/
                    /*OUT: {
                    Reverse<47263, 47282_0; 47278_0; 47265_0;>
                    Reverse<47555, 47282_0; 47278_0; 47265_0;>}*/
                    for (k = 0; k <= grid_points[2] - 3; k++) {
                        /*OUT: {
                        Reverse<47263, 47282_0; 47278_0; 47265_0;>
                        Reverse<47555, 47282_0; 47278_0; 47265_0;>}*/
                        k1 = k + 1;
                        /*OUT: {
                        Reverse<47263, 47282_0; 47278_0; 47265_0;>
                        Reverse<47555, 47282_0; 47278_0; 47265_0;>}*/
                        k2 = k + 2;
                        /*OUT: {
                        Reverse<47263, 47282_0; 47278_0; 47265_0;>
                        Reverse<47555, 47282_0; 47278_0; 47265_0;>}*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*OUT: {
                        Reverse<47263, 47282_0; 47278_0; 47265_0;>
                        Reverse<47555, 47282_0; 47278_0; 47265_0;>}*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*OUT: {
                        Reverse<47263, 47282_0; 47278_0; 47265_0;>
                        Reverse<47555, 47282_0; 47278_0; 47265_0;>}*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*OUT: {
                        Reverse<47263, 47282_0; 47278_0; 47265_0;>
                        Reverse<47555, 47282_0; 47278_0; 47265_0;>}*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*OUT: {
                        Reverse<47263, 47282_0; 47278_0; 47265_0;>
                        Reverse<47555, 47282_0; 47278_0; 47265_0;>}*/
                        lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                        /*OUT: {
                        Reverse<47263, 47282_0; 47278_0; 47265_0;>
                        Reverse<47555, 47282_0; 47278_0; 47265_0;>}*/
                        lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                        /*OUT: {
                        Reverse<47263, 47282_0; 47278_0; 47265_0;>
                        Reverse<47555, 47282_0; 47278_0; 47265_0;>}*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                        /*OUT: {
                        Reverse<47263, 47282_0; 47278_0; 47265_0;>
                        Reverse<47555, 47282_0; 47278_0; 47265_0;>}*/
                        lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                        /*OUT: {
                        Reverse<47263, 47282_0; 47278_0; 47265_0;>
                        Reverse<47555, 47282_0; 47278_0; 47265_0;>}*/
                        lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                        /*OUT: {
                        Reverse<47263, 47282_0; 47278_0; 47265_0;>
                        Reverse<47555, 47282_0; 47278_0; 47265_0;>}*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                    }
                }
            }
            /*OUT: {
            Reverse<47263, 47265_0;>
            Reverse<47555, 47265_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<47432,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<47432,>}*/
            k = grid_points[2] - 2;
            /*OUT: {
            Reverse<47432,>}*/
            k1 = grid_points[2] - 1;
#pragma omp for nowait
            /*OUT: {
            Reverse<47432,>}*/
            /*OUT: {
            Reverse<47432,>}*/
            /*OUT: {
            Reverse<47432, 47447_1;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<47432,>}*/
                /*OUT: {
                Reverse<47432,>}*/
                /*OUT: {
                Reverse<47432, 47447_0;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<47432, 47447_0;>}*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*OUT: {
                    Reverse<47432, 47447_0;>}*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<47432, 47447_0;>}*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<47432, 47447_0;>}*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*OUT: {
                    Reverse<47432, 47447_0;>}*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*OUT: {
                    Reverse<47432, 47447_0;>}*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*OUT: {
                    Reverse<47432, 47447_0;>}*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    /*OUT: {
                    Reverse<47432, 47447_0;>}*/
                    fac2 = 1. / lhs[n + 2][i][j][k1];
                    /*OUT: {
                    Reverse<47432, 47447_0;>}*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
            /*OUT: {
            Reverse<47432,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<47555,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<47263, 47265_1;>
        Reverse<47555, 47265_1;>}*/
        k = grid_points[2] - 2;
        /*OUT: {
        Reverse<47263, 47265_1;>
        Reverse<47555, 47265_1;>}*/
        k1 = grid_points[2] - 1;
        /*OUT: {
        Reverse<47263, 47265_1;>
        Reverse<47555, 47265_1;>}*/
        n = 0;
        /*OUT: {
        Reverse<47263, 47265_1;>
        Reverse<47555, 47265_1;>}*/
        /*OUT: {
        Reverse<47595,>
        Reverse<47263, 47265_1;>
        Reverse<47555, 47265_1;>}*/
        /*OUT: {
        Reverse<47595,>}*/
        for (m = 0; m < 3; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<47595, 47565_0;>
            Reverse<47263, 47565_0; 47265_1;>
            Reverse<47555, 47565_0; 47265_1;>}*/
            /*OUT: {
            Reverse<47595, 47565_0;>
            Reverse<47263, 47565_0; 47265_1;>
            Reverse<47555, 47565_0; 47265_1;>}*/
            /*OUT: {
            Reverse<47595, 47575_1; 47565_0;>
            Reverse<47263, 47575_1; 47565_0; 47265_1;>
            Reverse<47555, 47575_1; 47565_0; 47265_1;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<47595, 47565_0;>
                Reverse<47263, 47565_0; 47265_1;>
                Reverse<47555, 47565_0; 47265_1;>}*/
                /*OUT: {
                Reverse<47595, 47565_0;>
                Reverse<47263, 47565_0; 47265_1;>
                Reverse<47555, 47565_0; 47265_1;>}*/
                /*OUT: {
                Reverse<47595, 47575_0; 47565_0;>
                Reverse<47263, 47575_0; 47565_0; 47265_1;>
                Reverse<47555, 47575_0; 47565_0; 47265_1;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<47595, 47575_0; 47565_0;>
                    Reverse<47263, 47575_0; 47565_0; 47265_1;>
                    Reverse<47555, 47575_0; 47565_0; 47265_1;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                }
            }
            /*OUT: {
            Reverse<47595, 47565_0;>
            Reverse<47263, 47565_0; 47265_1;>
            Reverse<47555, 47565_0; 47265_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<47595,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<47263, 47565_1; 47265_1;>
        Reverse<47555, 47565_1; 47265_1;>
        Reverse<47595, 47565_1;>}*/
        /*OUT: {
        Reverse<47630,>
        Reverse<47263, 47565_1; 47265_1;>
        Reverse<47555, 47565_1; 47265_1;>
        Reverse<47595, 47565_1;>}*/
        /*OUT: {
        Reverse<47630,>}*/
        for (m = 3; m < 5; m++) {
            /*OUT: {
            Reverse<47263, 47597_0; 47565_1; 47265_1;>
            Reverse<47555, 47597_0; 47565_1; 47265_1;>
            Reverse<47630, 47597_0;>
            Reverse<47595, 47597_0; 47565_1;>}*/
            n = (m - 3 + 1) * 5;
#pragma omp for nowait
            /*OUT: {
            Reverse<47263, 47597_0; 47565_1; 47265_1;>
            Reverse<47555, 47597_0; 47565_1; 47265_1;>
            Reverse<47630, 47597_0;>
            Reverse<47595, 47597_0; 47565_1;>}*/
            /*OUT: {
            Reverse<47263, 47597_0; 47565_1; 47265_1;>
            Reverse<47555, 47597_0; 47565_1; 47265_1;>
            Reverse<47630, 47597_0;>
            Reverse<47595, 47597_0; 47565_1;>}*/
            /*OUT: {
            Reverse<47595, 47610_1; 47597_0; 47565_1;>
            Reverse<47263, 47610_1; 47597_0; 47565_1; 47265_1;>
            Reverse<47630, 47610_1; 47597_0;>
            Reverse<47555, 47610_1; 47597_0; 47565_1; 47265_1;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<47263, 47597_0; 47565_1; 47265_1;>
                Reverse<47555, 47597_0; 47565_1; 47265_1;>
                Reverse<47630, 47597_0;>
                Reverse<47595, 47597_0; 47565_1;>}*/
                /*OUT: {
                Reverse<47263, 47597_0; 47565_1; 47265_1;>
                Reverse<47555, 47597_0; 47565_1; 47265_1;>
                Reverse<47630, 47597_0;>
                Reverse<47595, 47597_0; 47565_1;>}*/
                /*OUT: {
                Reverse<47595, 47610_0; 47597_0; 47565_1;>
                Reverse<47263, 47610_0; 47597_0; 47565_1; 47265_1;>
                Reverse<47630, 47610_0; 47597_0;>
                Reverse<47555, 47610_0; 47597_0; 47565_1; 47265_1;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<47595, 47610_0; 47597_0; 47565_1;>
                    Reverse<47263, 47610_0; 47597_0; 47565_1; 47265_1;>
                    Reverse<47630, 47610_0; 47597_0;>
                    Reverse<47555, 47610_0; 47597_0; 47565_1; 47265_1;>}*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                }
            }
            /*OUT: {
            Reverse<47263, 47597_0; 47565_1; 47265_1;>
            Reverse<47555, 47597_0; 47565_1; 47265_1;>
            Reverse<47630, 47597_0;>
            Reverse<47595, 47597_0; 47565_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<47630,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<47595, 47597_1; 47565_1;>
        Reverse<47630, 47597_1;>
        Reverse<47263, 47597_1; 47565_1; 47265_1;>
        Reverse<47555, 47597_1; 47565_1; 47265_1;>}*/
        n = 0;
        /*OUT: {
        Reverse<47595, 47597_1; 47565_1;>
        Reverse<47630, 47597_1;>
        Reverse<47263, 47597_1; 47565_1; 47265_1;>
        Reverse<47555, 47597_1; 47565_1; 47265_1;>}*/
        /*OUT: {
        Reverse<47680,>
        Reverse<47595, 47597_1; 47565_1;>
        Reverse<47630, 47597_1;>
        Reverse<47263, 47597_1; 47565_1; 47265_1;>
        Reverse<47555, 47597_1; 47565_1; 47265_1;>}*/
        /*OUT: {
        Reverse<47680,>}*/
        for (m = 0; m < 3; m++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<47630, 47634_0; 47597_1;>
            Reverse<47595, 47634_0; 47597_1; 47565_1;>
            Reverse<47680, 47634_0;>
            Reverse<47263, 47634_0; 47597_1; 47565_1; 47265_1;>
            Reverse<47555, 47634_0; 47597_1; 47565_1; 47265_1;>}*/
            /*OUT: {
            Reverse<47630, 47634_0; 47597_1;>
            Reverse<47595, 47634_0; 47597_1; 47565_1;>
            Reverse<47680, 47634_0;>
            Reverse<47263, 47634_0; 47597_1; 47565_1; 47265_1;>
            Reverse<47555, 47634_0; 47597_1; 47565_1; 47265_1;>}*/
            /*OUT: {
            Reverse<47680, 47644_1; 47634_0;>
            Reverse<47630, 47644_1; 47634_0; 47597_1;>
            Reverse<47595, 47644_1; 47634_0; 47597_1; 47565_1;>
            Reverse<47263, 47644_1; 47634_0; 47597_1; 47565_1; 47265_1;>
            Reverse<47555, 47644_1; 47634_0; 47597_1; 47565_1; 47265_1;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<47630, 47634_0; 47597_1;>
                Reverse<47595, 47634_0; 47597_1; 47565_1;>
                Reverse<47680, 47634_0;>
                Reverse<47263, 47634_0; 47597_1; 47565_1; 47265_1;>
                Reverse<47555, 47634_0; 47597_1; 47565_1; 47265_1;>}*/
                /*OUT: {
                Reverse<47630, 47634_0; 47597_1;>
                Reverse<47595, 47634_0; 47597_1; 47565_1;>
                Reverse<47680, 47634_0;>
                Reverse<47263, 47634_0; 47597_1; 47565_1; 47265_1;>
                Reverse<47555, 47634_0; 47597_1; 47565_1; 47265_1;>}*/
                /*OUT: {
                Reverse<47263, 47648_1; 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                Reverse<47555, 47648_1; 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                Reverse<47630, 47648_1; 47644_0; 47634_0; 47597_1;>
                Reverse<47595, 47648_1; 47644_0; 47634_0; 47597_1; 47565_1;>
                Reverse<47680, 47648_1; 47644_0; 47634_0;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<47680, 47644_0; 47634_0;>
                    Reverse<47595, 47644_0; 47634_0; 47597_1; 47565_1;>
                    Reverse<47263, 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                    Reverse<47555, 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                    Reverse<47630, 47644_0; 47634_0; 47597_1;>}*/
                    /*OUT: {
                    Reverse<47680, 47644_0; 47634_0;>
                    Reverse<47595, 47644_0; 47634_0; 47597_1; 47565_1;>
                    Reverse<47263, 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                    Reverse<47555, 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                    Reverse<47630, 47644_0; 47634_0; 47597_1;>}*/
                    /*OUT: {
                    Reverse<47630, 47648_0; 47644_0; 47634_0; 47597_1;>
                    Reverse<47263, 47648_0; 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                    Reverse<47555, 47648_0; 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                    Reverse<47680, 47648_0; 47644_0; 47634_0;>
                    Reverse<47595, 47648_0; 47644_0; 47634_0; 47597_1; 47565_1;>}*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                        /*OUT: {
                        Reverse<47630, 47648_0; 47644_0; 47634_0; 47597_1;>
                        Reverse<47263, 47648_0; 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                        Reverse<47555, 47648_0; 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                        Reverse<47680, 47648_0; 47644_0; 47634_0;>
                        Reverse<47595, 47648_0; 47644_0; 47634_0; 47597_1; 47565_1;>}*/
                        k1 = k + 1;
                        /*OUT: {
                        Reverse<47630, 47648_0; 47644_0; 47634_0; 47597_1;>
                        Reverse<47263, 47648_0; 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                        Reverse<47555, 47648_0; 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                        Reverse<47680, 47648_0; 47644_0; 47634_0;>
                        Reverse<47595, 47648_0; 47644_0; 47634_0; 47597_1; 47565_1;>}*/
                        k2 = k + 2;
                        /*OUT: {
                        Reverse<47630, 47648_0; 47644_0; 47634_0; 47597_1;>
                        Reverse<47263, 47648_0; 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                        Reverse<47555, 47648_0; 47644_0; 47634_0; 47597_1; 47565_1; 47265_1;>
                        Reverse<47680, 47648_0; 47644_0; 47634_0;>
                        Reverse<47595, 47648_0; 47644_0; 47634_0; 47597_1; 47565_1;>}*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                    }
                }
            }
            /*OUT: {
            Reverse<47630, 47634_0; 47597_1;>
            Reverse<47595, 47634_0; 47597_1; 47565_1;>
            Reverse<47680, 47634_0;>
            Reverse<47263, 47634_0; 47597_1; 47565_1; 47265_1;>
            Reverse<47555, 47634_0; 47597_1; 47565_1; 47265_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<47680,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<47630, 47634_1; 47597_1;>
        Reverse<47680, 47634_1;>
        Reverse<47595, 47634_1; 47597_1; 47565_1;>
        Reverse<47263, 47634_1; 47597_1; 47565_1; 47265_1;>
        Reverse<47555, 47634_1; 47597_1; 47565_1; 47265_1;>}*/
        /*OUT: {
        Reverse<47731,>
        Reverse<47630, 47634_1; 47597_1;>
        Reverse<47680, 47634_1;>
        Reverse<47595, 47634_1; 47597_1; 47565_1;>
        Reverse<47263, 47634_1; 47597_1; 47565_1; 47265_1;>
        Reverse<47555, 47634_1; 47597_1; 47565_1; 47265_1;>}*/
        /*OUT: {
        Reverse<47731,>}*/
        for (m = 3; m < 5; m++) {
            /*OUT: {
            Reverse<47731, 47682_0;>
            Reverse<47263, 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
            Reverse<47555, 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
            Reverse<47630, 47682_0; 47634_1; 47597_1;>
            Reverse<47680, 47682_0; 47634_1;>
            Reverse<47595, 47682_0; 47634_1; 47597_1; 47565_1;>}*/
            n = (m - 3 + 1) * 5;
#pragma omp for nowait
            /*OUT: {
            Reverse<47731, 47682_0;>
            Reverse<47263, 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
            Reverse<47555, 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
            Reverse<47630, 47682_0; 47634_1; 47597_1;>
            Reverse<47680, 47682_0; 47634_1;>
            Reverse<47595, 47682_0; 47634_1; 47597_1; 47565_1;>}*/
            /*OUT: {
            Reverse<47731, 47682_0;>
            Reverse<47263, 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
            Reverse<47555, 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
            Reverse<47630, 47682_0; 47634_1; 47597_1;>
            Reverse<47680, 47682_0; 47634_1;>
            Reverse<47595, 47682_0; 47634_1; 47597_1; 47565_1;>}*/
            /*OUT: {
            Reverse<47680, 47695_1; 47682_0; 47634_1;>
            Reverse<47731, 47695_1; 47682_0;>
            Reverse<47263, 47695_1; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
            Reverse<47555, 47695_1; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
            Reverse<47595, 47695_1; 47682_0; 47634_1; 47597_1; 47565_1;>
            Reverse<47630, 47695_1; 47682_0; 47634_1; 47597_1;>}*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: {
                Reverse<47731, 47682_0;>
                Reverse<47263, 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                Reverse<47555, 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                Reverse<47630, 47682_0; 47634_1; 47597_1;>
                Reverse<47680, 47682_0; 47634_1;>
                Reverse<47595, 47682_0; 47634_1; 47597_1; 47565_1;>}*/
                /*OUT: {
                Reverse<47731, 47682_0;>
                Reverse<47263, 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                Reverse<47555, 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                Reverse<47630, 47682_0; 47634_1; 47597_1;>
                Reverse<47680, 47682_0; 47634_1;>
                Reverse<47595, 47682_0; 47634_1; 47597_1; 47565_1;>}*/
                /*OUT: {
                Reverse<47595, 47699_1; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1;>
                Reverse<47680, 47699_1; 47695_0; 47682_0; 47634_1;>
                Reverse<47263, 47699_1; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                Reverse<47555, 47699_1; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                Reverse<47731, 47699_1; 47695_0; 47682_0;>
                Reverse<47630, 47699_1; 47695_0; 47682_0; 47634_1; 47597_1;>}*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: {
                    Reverse<47595, 47695_0; 47682_0; 47634_1; 47597_1; 47565_1;>
                    Reverse<47731, 47695_0; 47682_0;>
                    Reverse<47263, 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                    Reverse<47555, 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                    Reverse<47630, 47695_0; 47682_0; 47634_1; 47597_1;>
                    Reverse<47680, 47695_0; 47682_0; 47634_1;>}*/
                    /*OUT: {
                    Reverse<47595, 47695_0; 47682_0; 47634_1; 47597_1; 47565_1;>
                    Reverse<47731, 47695_0; 47682_0;>
                    Reverse<47263, 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                    Reverse<47555, 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                    Reverse<47630, 47695_0; 47682_0; 47634_1; 47597_1;>
                    Reverse<47680, 47695_0; 47682_0; 47634_1;>}*/
                    /*OUT: {
                    Reverse<47263, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                    Reverse<47555, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                    Reverse<47680, 47699_0; 47695_0; 47682_0; 47634_1;>
                    Reverse<47595, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1;>
                    Reverse<47731, 47699_0; 47695_0; 47682_0;>
                    Reverse<47630, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1;>}*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                        /*OUT: {
                        Reverse<47263, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                        Reverse<47555, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                        Reverse<47680, 47699_0; 47695_0; 47682_0; 47634_1;>
                        Reverse<47595, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1;>
                        Reverse<47731, 47699_0; 47695_0; 47682_0;>
                        Reverse<47630, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1;>}*/
                        k1 = k + 1;
                        /*OUT: {
                        Reverse<47263, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                        Reverse<47555, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                        Reverse<47680, 47699_0; 47695_0; 47682_0; 47634_1;>
                        Reverse<47595, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1;>
                        Reverse<47731, 47699_0; 47695_0; 47682_0;>
                        Reverse<47630, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1;>}*/
                        k2 = k + 2;
                        /*OUT: {
                        Reverse<47263, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                        Reverse<47555, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
                        Reverse<47680, 47699_0; 47695_0; 47682_0; 47634_1;>
                        Reverse<47595, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1; 47565_1;>
                        Reverse<47731, 47699_0; 47695_0; 47682_0;>
                        Reverse<47630, 47699_0; 47695_0; 47682_0; 47634_1; 47597_1;>}*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                    }
                }
            }
            /*OUT: {
            Reverse<47731, 47682_0;>
            Reverse<47263, 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
            Reverse<47555, 47682_0; 47634_1; 47597_1; 47565_1; 47265_1;>
            Reverse<47630, 47682_0; 47634_1; 47597_1;>
            Reverse<47680, 47682_0; 47634_1;>
            Reverse<47595, 47682_0; 47634_1; 47597_1; 47565_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<47731,>}*/
#pragma omp barrier
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    tzetar();
    /*OUT: {
    Reverse<--,>}*/
}
