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
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
int main(int argc, char **argv) {
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int niter;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int step;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int n3;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int nthreads = 1;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double navg;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double mflops;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double tmax;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    boolean verified;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    char class;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    FILE *fp;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - BT Benchmark\n\n");
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    fp = fopen("inputbt.data", "r");
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    if (fp != ((void *) 0)) {
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        printf(" Reading from input file inputbt.data");
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        int *_imopVarPre141;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre141 = &niter;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(argv) := [heapCell#0];
        ]*/
        fscanf(fp, "%d", _imopVarPre141);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(argv) := [heapCell#0];
        ]*/
        int _imopVarPre143;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre143 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(argv) := [heapCell#0];
        ]*/
        while (_imopVarPre143 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre141) := [niter];
            ptsTo(argv) := [heapCell#0];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre141) := [niter];
            ptsTo(argv) := [heapCell#0];
            ]*/
            _imopVarPre143 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre141) := [niter];
            ptsTo(argv) := [heapCell#0];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        double *_imopVarPre145;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre145 = &dt;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(argv) := [heapCell#0];
        ]*/
        fscanf(fp, "%lg", _imopVarPre145);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(argv) := [heapCell#0];
        ]*/
        int _imopVarPre147;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre147 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(argv) := [heapCell#0];
        ]*/
        while (_imopVarPre147 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre141) := [niter];
            ptsTo(_imopVarPre145) := [dt];
            ptsTo(argv) := [heapCell#0];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre141) := [niter];
            ptsTo(_imopVarPre145) := [dt];
            ptsTo(argv) := [heapCell#0];
            ]*/
            _imopVarPre147 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre141) := [niter];
            ptsTo(_imopVarPre145) := [dt];
            ptsTo(argv) := [heapCell#0];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(_imopVarPre151) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        int *_imopVarPre151;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(_imopVarPre151) := [nullCell];
        ptsTo(_imopVarPre152) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        int *_imopVarPre152;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(_imopVarPre151) := [nullCell];
        ptsTo(_imopVarPre152) := [nullCell];
        ptsTo(_imopVarPre153) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        int *_imopVarPre153;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(_imopVarPre151) := [grid_points.f];
        ptsTo(_imopVarPre152) := [nullCell];
        ptsTo(_imopVarPre153) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre151 = &grid_points[2];
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(_imopVarPre151) := [grid_points.f];
        ptsTo(_imopVarPre152) := [grid_points.f];
        ptsTo(_imopVarPre153) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre152 = &grid_points[1];
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(_imopVarPre151) := [grid_points.f];
        ptsTo(_imopVarPre152) := [grid_points.f];
        ptsTo(_imopVarPre153) := [grid_points.f];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre153 = &grid_points[0];
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(_imopVarPre151) := [grid_points.f];
        ptsTo(_imopVarPre152) := [grid_points.f];
        ptsTo(_imopVarPre153) := [grid_points.f];
        ptsTo(argv) := [heapCell#0];
        ]*/
        fscanf(fp, "%d%d%d", _imopVarPre153, _imopVarPre152, _imopVarPre151);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(_imopVarPre151) := [grid_points.f];
        ptsTo(_imopVarPre152) := [grid_points.f];
        ptsTo(_imopVarPre153) := [grid_points.f];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(_imopVarPre151) := [grid_points.f];
        ptsTo(_imopVarPre152) := [grid_points.f];
        ptsTo(_imopVarPre153) := [grid_points.f];
        ptsTo(argv) := [heapCell#0];
        ]*/
        fclose(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre141) := [niter];
        ptsTo(_imopVarPre145) := [dt];
        ptsTo(_imopVarPre151) := [grid_points.f];
        ptsTo(_imopVarPre152) := [grid_points.f];
        ptsTo(_imopVarPre153) := [grid_points.f];
        ptsTo(argv) := [heapCell#0];
        ]*/
    } else {
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        printf(" No input file inputbt.data. Using compiled defaults\n");
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        niter = 60;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        dt = 0.010;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        grid_points[0] = 12;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        grid_points[1] = 12;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        grid_points[2] = 12;
    }
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre157;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre158;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre159;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre157 = grid_points[2];
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre158 = grid_points[1];
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre159 = grid_points[0];
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    printf(" Size: %3dx%3dx%3d\n", _imopVarPre159, _imopVarPre158, _imopVarPre157);
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    printf(" Iterations: %3d   dt: %10.6f\n", niter, dt);
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre160;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre161;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre160 = grid_points[0] > 12;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    if (!_imopVarPre160) {
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre161 = grid_points[1] > 12;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        if (!_imopVarPre161) {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ]*/
            _imopVarPre161 = grid_points[2] > 12;
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre160 = _imopVarPre161;
    }
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    if (_imopVarPre160) {
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        int _imopVarPre165;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        int _imopVarPre166;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        int _imopVarPre167;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre165 = grid_points[2];
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre166 = grid_points[1];
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre167 = grid_points[0];
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        printf(" %dx%dx%d\n", _imopVarPre167, _imopVarPre166, _imopVarPre165);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        printf(" Problem size too big for compiled array sizes\n");
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        exit(1);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
    }
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    set_constants();
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    initialize();
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    lhsinit();
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    exact_rhs();
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    adi();
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    initialize();
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    timer_clear(1);
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    timer_start(1);
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (step = 1; step <= niter; step++) {
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int _imopVarPre168;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre168 = step % 20 == 0;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        if (!_imopVarPre168) {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre168 = step == 1;
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        if (_imopVarPre168) {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            printf(" Time step %4d\n", step);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        adi();
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
    }
#pragma omp parallel
    {
    }
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    timer_stop(1);
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    tmax = timer_read(1);
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int *_imopVarPre171;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre172) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    char *_imopVarPre172;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    _imopVarPre171 = &verified;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    _imopVarPre172 = &class;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    verify(niter, _imopVarPre172, _imopVarPre171);
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    n3 = grid_points[0] * grid_points[1] * grid_points[2];
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    navg = (grid_points[0] + grid_points[1] + grid_points[2]) / 3.0;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    if (tmax != 0.0) {
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre171) := [verified];
        ptsTo(_imopVarPre172) := [class];
        ptsTo(argv) := [heapCell#0];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        mflops = 1.0e-6 * (double) niter * (3478.8 * (double) n3 - 17655.7 * (navg * navg) + 28023.7 * navg) / tmax;
    } else {
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre171) := [verified];
        ptsTo(_imopVarPre172) := [class];
        ptsTo(argv) := [heapCell#0];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        mflops = 0.0;
    }
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int _imopVarPre176;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int _imopVarPre177;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int _imopVarPre178;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    _imopVarPre176 = grid_points[2];
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    _imopVarPre177 = grid_points[1];
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    _imopVarPre178 = grid_points[0];
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    c_print_results("BT", class, _imopVarPre178, _imopVarPre177, _imopVarPre176, niter, nthreads, tmax, mflops, "          floating point", verified, "3.0 structured", "15 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "(none)");
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
}
static void add() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int k;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int m;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    u[i][j][k][m] = u[i][j][k][m] + rhs[i][j][k][m];
                }
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
}
static void adi() {
#pragma omp parallel
    {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        compute_rhs();
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
    }
#pragma omp parallel
    {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        x_solve();
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
    }
#pragma omp parallel
    {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        y_solve();
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
    }
#pragma omp parallel
    {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        z_solve();
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
    }
#pragma omp parallel
    {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        add();
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
    }
}
/*OUT: [ptsTo(rms) := [xce.f];
ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
]*/
static void error_norm(double rms[5]) {
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int k;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int m;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int d;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double xi;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double eta;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double zeta;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double u_exact[5];
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double add;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        rms[m] = 0.0;
    }
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xi = (double) i * dnxm1;
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: [ptsTo(rms) := [xce.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            eta = (double) j * dnym1;
            /*OUT: [ptsTo(rms) := [xce.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rms) := [xce.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rms) := [xce.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: [ptsTo(rms) := [xce.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                zeta = (double) k * dnzm1;
                /*OUT: [ptsTo(rms) := [xce.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                exact_solution(xi, eta, zeta, u_exact);
                /*OUT: [ptsTo(rms) := [xce.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rms) := [xce.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rms) := [xce.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rms) := [xce.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rms) := [xce.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    add = u[i][j][k][m] - u_exact[m];
                    /*OUT: [ptsTo(rms) := [xce.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    rms[m] = rms[m] + add * add;
                }
            }
        }
    }
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (d = 0; d <= 2; d++) {
            /*OUT: [ptsTo(rms) := [xce.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double _imopVarPre180;
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double _imopVarPre181;
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre180 = rms[m];
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre181 = sqrt(_imopVarPre180);
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        rms[m] = _imopVarPre181;
    }
}
/*OUT: [ptsTo(rms) := [xcr.f];
ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
]*/
static void rhs_norm(double rms[5]) {
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int k;
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int d;
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int m;
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double add;
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        rms[m] = 0.0;
    }
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rms) := [xcr.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rms) := [xcr.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rms) := [xcr.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rms) := [xcr.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rms) := [xcr.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rms) := [xcr.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rms) := [xcr.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    add = rhs[i][j][k][m];
                    /*OUT: [ptsTo(rms) := [xcr.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    rms[m] = rms[m] + add * add;
                }
            }
        }
    }
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (d = 0; d <= 2; d++) {
            /*OUT: [ptsTo(rms) := [xcr.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double _imopVarPre183;
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double _imopVarPre184;
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre183 = rms[m];
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre184 = sqrt(_imopVarPre183);
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        rms[m] = _imopVarPre184;
    }
}
static void exact_rhs() {
#pragma omp parallel
    {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double dtemp[5];
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double xi;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double eta;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double zeta;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double dtpp;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int m;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int i;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int j;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int k;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int ip1;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int im1;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int jp1;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int jm1;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int km1;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int kp1;
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        forcing[i][j][k][m] = 0.0;
                    }
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            eta = (double) j * dnym1;
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                zeta = (double) k * dnzm1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (i = 0; i < grid_points[0]; i++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    xi = (double) i * dnxm1;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    exact_solution(xi, eta, zeta, dtemp);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        ue[i][m] = dtemp[m];
                    }
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    dtpp = 1.0 / dtemp[0];
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (m = 1; m <= 4; m++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        buf[i][m] = dtpp * dtemp[m];
                    }
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    cuf[i] = buf[i][1] * buf[i][1];
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    buf[i][0] = cuf[i] + buf[i][2] * buf[i][2] + buf[i][3] * buf[i][3];
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    q[i] = 0.5 * (buf[i][1] * ue[i][1] + buf[i][2] * ue[i][2] + buf[i][3] * ue[i][3]);
                }
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (i = 1; i < grid_points[0] - 1; i++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    im1 = i - 1;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    ip1 = i + 1;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - tx2 * (ue[ip1][1] - ue[im1][1]) + dx1tx1 * (ue[ip1][0] - 2.0 * ue[i][0] + ue[im1][0]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - tx2 * ((ue[ip1][1] * buf[ip1][1] + c2 * (ue[ip1][4] - q[ip1])) - (ue[im1][1] * buf[im1][1] + c2 * (ue[im1][4] - q[im1]))) + xxcon1 * (buf[ip1][1] - 2.0 * buf[i][1] + buf[im1][1]) + dx2tx1 * (ue[ip1][1] - 2.0 * ue[i][1] + ue[im1][1]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - tx2 * (ue[ip1][2] * buf[ip1][1] - ue[im1][2] * buf[im1][1]) + xxcon2 * (buf[ip1][2] - 2.0 * buf[i][2] + buf[im1][2]) + dx3tx1 * (ue[ip1][2] - 2.0 * ue[i][2] + ue[im1][2]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - tx2 * (ue[ip1][3] * buf[ip1][1] - ue[im1][3] * buf[im1][1]) + xxcon2 * (buf[ip1][3] - 2.0 * buf[i][3] + buf[im1][3]) + dx4tx1 * (ue[ip1][3] - 2.0 * ue[i][3] + ue[im1][3]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - tx2 * (buf[ip1][1] * (c1 * ue[ip1][4] - c2 * q[ip1]) - buf[im1][1] * (c1 * ue[im1][4] - c2 * q[im1])) + 0.5 * xxcon3 * (buf[ip1][0] - 2.0 * buf[i][0] + buf[im1][0]) + xxcon4 * (cuf[ip1] - 2.0 * cuf[i] + cuf[im1]) + xxcon5 * (buf[ip1][4] - 2.0 * buf[i][4] + buf[im1][4]) + dx5tx1 * (ue[ip1][4] - 2.0 * ue[i][4] + ue[im1][4]);
                }
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    i = 1;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    i = 2;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                }
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (i = 1 * 3; i <= grid_points[0] - 3 * 1 - 1; i++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                    }
                }
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    i = grid_points[0] - 3;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    i = grid_points[0] - 2;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 5.0 * ue[i][m]);
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 1; i < grid_points[0] - 1; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xi = (double) i * dnxm1;
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                zeta = (double) k * dnzm1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (j = 0; j < grid_points[1]; j++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    eta = (double) j * dnym1;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    exact_solution(xi, eta, zeta, dtemp);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        ue[j][m] = dtemp[m];
                    }
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    dtpp = 1.0 / dtemp[0];
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (m = 1; m <= 4; m++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        buf[j][m] = dtpp * dtemp[m];
                    }
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    cuf[j] = buf[j][2] * buf[j][2];
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    buf[j][0] = cuf[j] + buf[j][1] * buf[j][1] + buf[j][3] * buf[j][3];
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    q[j] = 0.5 * (buf[j][1] * ue[j][1] + buf[j][2] * ue[j][2] + buf[j][3] * ue[j][3]);
                }
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    jm1 = j - 1;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    jp1 = j + 1;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - ty2 * (ue[jp1][2] - ue[jm1][2]) + dy1ty1 * (ue[jp1][0] - 2.0 * ue[j][0] + ue[jm1][0]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - ty2 * (ue[jp1][1] * buf[jp1][2] - ue[jm1][1] * buf[jm1][2]) + yycon2 * (buf[jp1][1] - 2.0 * buf[j][1] + buf[jm1][1]) + dy2ty1 * (ue[jp1][1] - 2.0 * ue[j][1] + ue[jm1][1]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - ty2 * ((ue[jp1][2] * buf[jp1][2] + c2 * (ue[jp1][4] - q[jp1])) - (ue[jm1][2] * buf[jm1][2] + c2 * (ue[jm1][4] - q[jm1]))) + yycon1 * (buf[jp1][2] - 2.0 * buf[j][2] + buf[jm1][2]) + dy3ty1 * (ue[jp1][2] - 2.0 * ue[j][2] + ue[jm1][2]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - ty2 * (ue[jp1][3] * buf[jp1][2] - ue[jm1][3] * buf[jm1][2]) + yycon2 * (buf[jp1][3] - 2.0 * buf[j][3] + buf[jm1][3]) + dy4ty1 * (ue[jp1][3] - 2.0 * ue[j][3] + ue[jm1][3]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - ty2 * (buf[jp1][2] * (c1 * ue[jp1][4] - c2 * q[jp1]) - buf[jm1][2] * (c1 * ue[jm1][4] - c2 * q[jm1])) + 0.5 * yycon3 * (buf[jp1][0] - 2.0 * buf[j][0] + buf[jm1][0]) + yycon4 * (cuf[jp1] - 2.0 * cuf[j] + cuf[jm1]) + yycon5 * (buf[jp1][4] - 2.0 * buf[j][4] + buf[jm1][4]) + dy5ty1 * (ue[jp1][4] - 2.0 * ue[j][4] + ue[jm1][4]);
                }
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    j = 1;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    j = 2;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                }
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (j = 1 * 3; j <= grid_points[1] - 3 * 1 - 1; j++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                    }
                }
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    j = grid_points[1] - 3;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    j = grid_points[1] - 2;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 5.0 * ue[j][m]);
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 1; i < grid_points[0] - 1; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xi = (double) i * dnxm1;
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                eta = (double) j * dnym1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    zeta = (double) k * dnzm1;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    exact_solution(xi, eta, zeta, dtemp);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        ue[k][m] = dtemp[m];
                    }
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    dtpp = 1.0 / dtemp[0];
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (m = 1; m <= 4; m++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        buf[k][m] = dtpp * dtemp[m];
                    }
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    cuf[k] = buf[k][3] * buf[k][3];
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    buf[k][0] = cuf[k] + buf[k][1] * buf[k][1] + buf[k][2] * buf[k][2];
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    q[k] = 0.5 * (buf[k][1] * ue[k][1] + buf[k][2] * ue[k][2] + buf[k][3] * ue[k][3]);
                }
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    km1 = k - 1;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    kp1 = k + 1;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - tz2 * (ue[kp1][3] - ue[km1][3]) + dz1tz1 * (ue[kp1][0] - 2.0 * ue[k][0] + ue[km1][0]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - tz2 * (ue[kp1][1] * buf[kp1][3] - ue[km1][1] * buf[km1][3]) + zzcon2 * (buf[kp1][1] - 2.0 * buf[k][1] + buf[km1][1]) + dz2tz1 * (ue[kp1][1] - 2.0 * ue[k][1] + ue[km1][1]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - tz2 * (ue[kp1][2] * buf[kp1][3] - ue[km1][2] * buf[km1][3]) + zzcon2 * (buf[kp1][2] - 2.0 * buf[k][2] + buf[km1][2]) + dz3tz1 * (ue[kp1][2] - 2.0 * ue[k][2] + ue[km1][2]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - tz2 * ((ue[kp1][3] * buf[kp1][3] + c2 * (ue[kp1][4] - q[kp1])) - (ue[km1][3] * buf[km1][3] + c2 * (ue[km1][4] - q[km1]))) + zzcon1 * (buf[kp1][3] - 2.0 * buf[k][3] + buf[km1][3]) + dz4tz1 * (ue[kp1][3] - 2.0 * ue[k][3] + ue[km1][3]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - tz2 * (buf[kp1][3] * (c1 * ue[kp1][4] - c2 * q[kp1]) - buf[km1][3] * (c1 * ue[km1][4] - c2 * q[km1])) + 0.5 * zzcon3 * (buf[kp1][0] - 2.0 * buf[k][0] + buf[km1][0]) + zzcon4 * (cuf[kp1] - 2.0 * cuf[k] + cuf[km1]) + zzcon5 * (buf[kp1][4] - 2.0 * buf[k][4] + buf[km1][4]) + dz5tz1 * (ue[kp1][4] - 2.0 * ue[k][4] + ue[km1][4]);
                }
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    k = 1;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    k = 2;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                }
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (k = 1 * 3; k <= grid_points[2] - 3 * 1 - 1; k++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                    }
                }
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    k = grid_points[2] - 3;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m]);
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    k = grid_points[2] - 2;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 5.0 * ue[k][m]);
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 1; i < grid_points[0] - 1; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        forcing[i][j][k][m] = -1.0 * forcing[i][j][k][m];
                    }
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
    }
}
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
]*/
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
]*/
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
]*/
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(dtemp) := [dtemp.f, u_exact.f, Pface.f, temp.f];
ptsTo(ue.f) := [dtemp.f];
]*/
static void exact_solution(double xi, double eta , double zeta , double dtemp[5]) {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(dtemp) := [dtemp.f, u_exact.f, Pface.f, temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int m;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(dtemp) := [dtemp.f, u_exact.f, Pface.f, temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(dtemp) := [dtemp.f, u_exact.f, Pface.f, temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(dtemp) := [dtemp.f, u_exact.f, Pface.f, temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(dtemp) := [dtemp.f, u_exact.f, Pface.f, temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        dtemp[m] = ce[m][0] + xi * (ce[m][1] + xi * (ce[m][4] + xi * (ce[m][7] + xi * ce[m][10]))) + eta * (ce[m][2] + eta * (ce[m][5] + eta * (ce[m][8] + eta * ce[m][11]))) + zeta * (ce[m][3] + zeta * (ce[m][6] + zeta * (ce[m][9] + zeta * ce[m][12])));
    }
}
static void initialize() {
#pragma omp parallel
    {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int i;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int j;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int k;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int m;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int ix;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int iy;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int iz;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double xi;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double eta;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double zeta;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double Pface[2][3][5];
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double Pxi;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double Peta;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double Pzeta;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double temp[5];
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 0; i < 12; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (j = 0; j < 12; j++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (k = 0; k < 12; k++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        u[i][j][k][m] = 1.0;
                    }
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xi = (double) i * dnxm1;
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                eta = (double) j * dnym1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    zeta = (double) k * dnzm1;
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (ix = 0; ix < 2; ix++) {
                        /*OUT: [ptsTo(_imopVarPre187) := [nullCell];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        double *_imopVarPre187;
                        /*OUT: [ptsTo(_imopVarPre187) := [nullCell];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        double _imopVarPre188;
                        /*OUT: [ptsTo(_imopVarPre187) := [Pface.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        _imopVarPre187 = &(Pface[ix][0][0]);
                        /*OUT: [ptsTo(_imopVarPre187) := [Pface.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        _imopVarPre188 = (double) ix;
                        /*OUT: [ptsTo(_imopVarPre187) := [Pface.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        exact_solution(_imopVarPre188, eta, zeta, _imopVarPre187);
                        /*OUT: [ptsTo(_imopVarPre187) := [Pface.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                    }
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (iy = 0; iy < 2; iy++) {
                        /*OUT: [ptsTo(_imopVarPre191) := [nullCell];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        double *_imopVarPre191;
                        /*OUT: [ptsTo(_imopVarPre191) := [nullCell];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        double _imopVarPre192;
                        /*OUT: [ptsTo(_imopVarPre191) := [Pface.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        _imopVarPre191 = &Pface[iy][1][0];
                        /*OUT: [ptsTo(_imopVarPre191) := [Pface.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        _imopVarPre192 = (double) iy;
                        /*OUT: [ptsTo(_imopVarPre191) := [Pface.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        exact_solution(xi, _imopVarPre192, zeta, _imopVarPre191);
                        /*OUT: [ptsTo(_imopVarPre191) := [Pface.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                    }
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (iz = 0; iz < 2; iz++) {
                        /*OUT: [ptsTo(_imopVarPre195) := [nullCell];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        double *_imopVarPre195;
                        /*OUT: [ptsTo(_imopVarPre195) := [nullCell];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        double _imopVarPre196;
                        /*OUT: [ptsTo(_imopVarPre195) := [Pface.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        _imopVarPre195 = &Pface[iz][2][0];
                        /*OUT: [ptsTo(_imopVarPre195) := [Pface.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        _imopVarPre196 = (double) iz;
                        /*OUT: [ptsTo(_imopVarPre195) := [Pface.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        exact_solution(xi, eta, _imopVarPre196, _imopVarPre195);
                        /*OUT: [ptsTo(_imopVarPre195) := [Pface.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                    }
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        Pxi = xi * Pface[1][0][m] + (1.0 - xi) * Pface[0][0][m];
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        Peta = eta * Pface[1][1][m] + (1.0 - eta) * Pface[0][1][m];
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        Pzeta = zeta * Pface[1][2][m] + (1.0 - zeta) * Pface[0][2][m];
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        u[i][j][k][m] = Pxi + Peta + Pzeta - Pxi * Peta - Pxi * Pzeta - Peta * Pzeta + Pxi * Peta * Pzeta;
                    }
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        i = 0;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xi = 0.0;
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            eta = (double) j * dnym1;
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                zeta = (double) k * dnzm1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                exact_solution(xi, eta, zeta, temp);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        i = grid_points[0] - 1;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xi = 1.0;
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            eta = (double) j * dnym1;
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                zeta = (double) k * dnzm1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                exact_solution(xi, eta, zeta, temp);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        j = 0;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        eta = 0.0;
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xi = (double) i * dnxm1;
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                zeta = (double) k * dnzm1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                exact_solution(xi, eta, zeta, temp);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        j = grid_points[1] - 1;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        eta = 1.0;
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xi = (double) i * dnxm1;
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                zeta = (double) k * dnzm1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                exact_solution(xi, eta, zeta, temp);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        k = 0;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        zeta = 0.0;
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xi = (double) i * dnxm1;
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                eta = (double) j * dnym1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                exact_solution(xi, eta, zeta, temp);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        k = grid_points[2] - 1;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        zeta = 1.0;
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xi = (double) i * dnxm1;
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                eta = (double) j * dnym1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                exact_solution(xi, eta, zeta, temp);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
    }
}
static void lhsinit() {
#pragma omp parallel
    {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int i;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int j;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int k;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int m;
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int n;
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        for (n = 0; n < 5; n++) {
                            /*OUT: [ptsTo(rhs.f) := [forcing.f];
                            ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ]*/
                            lhs[i][j][k][0][m][n] = 0.0;
                            /*OUT: [ptsTo(rhs.f) := [forcing.f];
                            ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ]*/
                            lhs[i][j][k][1][m][n] = 0.0;
                            /*OUT: [ptsTo(rhs.f) := [forcing.f];
                            ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ]*/
                            lhs[i][j][k][2][m][n] = 0.0;
                        }
                    }
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        lhs[i][j][k][1][m][m] = 1.0;
                    }
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
    }
}
static void lhsx() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int k;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (i = 0; i < grid_points[0]; i++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp1 = 1.0 / u[i][j][k][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp2 = tmp1 * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp3 = tmp1 * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][0] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][1] = 1.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][2] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][3] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][0] = -(u[i][j][k][1] * tmp2 * u[i][j][k][1]) + c2 * 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][1] = (2.0 - c2) * (u[i][j][k][1] / u[i][j][k][0]);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][2] = -c2 * (u[i][j][k][2] * tmp1);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][3] = -c2 * (u[i][j][k][3] * tmp1);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][4] = c2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][0] = -(u[i][j][k][1] * u[i][j][k][2]) * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][1] = u[i][j][k][2] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][2] = u[i][j][k][1] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][3] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][0] = -(u[i][j][k][1] * u[i][j][k][3]) * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][1] = u[i][j][k][3] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][2] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][3] = u[i][j][k][1] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][0] = (c2 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2 - c1 * (u[i][j][k][4] * tmp1)) * (u[i][j][k][1] * tmp1);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][1] = c1 * u[i][j][k][4] * tmp1 - 0.50 * c2 * (3.0 * u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][2] = -c2 * (u[i][j][k][2] * u[i][j][k][1]) * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][3] = -c2 * (u[i][j][k][3] * u[i][j][k][1]) * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][4] = c1 * (u[i][j][k][1] * tmp1);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][0] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][1] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][2] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][3] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][0] = -con43 * c3c4 * tmp2 * u[i][j][k][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][1] = con43 * c3c4 * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][2] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][3] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][0] = -c3c4 * tmp2 * u[i][j][k][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][1] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][2] = c3c4 * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][3] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][0] = -c3c4 * tmp2 * u[i][j][k][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][1] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][2] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][3] = c3c4 * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][0] = -(con43 * c3c4 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][1] = (con43 * c3c4 - c1345) * tmp2 * u[i][j][k][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][2] = (c3c4 - c1345) * tmp2 * u[i][j][k][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][3] = (c3c4 - c1345) * tmp2 * u[i][j][k][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][4] = c1345 * tmp1;
            }
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (i = 1; i < grid_points[0] - 1; i++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp1 = dt * tx1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp2 = dt * tx2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][0] = -tmp2 * fjac[i - 1][j][k][0][0] - tmp1 * njac[i - 1][j][k][0][0] - tmp1 * dx1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][1] = -tmp2 * fjac[i - 1][j][k][0][1] - tmp1 * njac[i - 1][j][k][0][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][2] = -tmp2 * fjac[i - 1][j][k][0][2] - tmp1 * njac[i - 1][j][k][0][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][3] = -tmp2 * fjac[i - 1][j][k][0][3] - tmp1 * njac[i - 1][j][k][0][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][4] = -tmp2 * fjac[i - 1][j][k][0][4] - tmp1 * njac[i - 1][j][k][0][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][0] = -tmp2 * fjac[i - 1][j][k][1][0] - tmp1 * njac[i - 1][j][k][1][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][1] = -tmp2 * fjac[i - 1][j][k][1][1] - tmp1 * njac[i - 1][j][k][1][1] - tmp1 * dx2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][2] = -tmp2 * fjac[i - 1][j][k][1][2] - tmp1 * njac[i - 1][j][k][1][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][3] = -tmp2 * fjac[i - 1][j][k][1][3] - tmp1 * njac[i - 1][j][k][1][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][4] = -tmp2 * fjac[i - 1][j][k][1][4] - tmp1 * njac[i - 1][j][k][1][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][0] = -tmp2 * fjac[i - 1][j][k][2][0] - tmp1 * njac[i - 1][j][k][2][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][1] = -tmp2 * fjac[i - 1][j][k][2][1] - tmp1 * njac[i - 1][j][k][2][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][2] = -tmp2 * fjac[i - 1][j][k][2][2] - tmp1 * njac[i - 1][j][k][2][2] - tmp1 * dx3;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][3] = -tmp2 * fjac[i - 1][j][k][2][3] - tmp1 * njac[i - 1][j][k][2][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][4] = -tmp2 * fjac[i - 1][j][k][2][4] - tmp1 * njac[i - 1][j][k][2][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][0] = -tmp2 * fjac[i - 1][j][k][3][0] - tmp1 * njac[i - 1][j][k][3][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][1] = -tmp2 * fjac[i - 1][j][k][3][1] - tmp1 * njac[i - 1][j][k][3][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][2] = -tmp2 * fjac[i - 1][j][k][3][2] - tmp1 * njac[i - 1][j][k][3][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][3] = -tmp2 * fjac[i - 1][j][k][3][3] - tmp1 * njac[i - 1][j][k][3][3] - tmp1 * dx4;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][4] = -tmp2 * fjac[i - 1][j][k][3][4] - tmp1 * njac[i - 1][j][k][3][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][0] = -tmp2 * fjac[i - 1][j][k][4][0] - tmp1 * njac[i - 1][j][k][4][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][1] = -tmp2 * fjac[i - 1][j][k][4][1] - tmp1 * njac[i - 1][j][k][4][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][2] = -tmp2 * fjac[i - 1][j][k][4][2] - tmp1 * njac[i - 1][j][k][4][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][3] = -tmp2 * fjac[i - 1][j][k][4][3] - tmp1 * njac[i - 1][j][k][4][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][4] = -tmp2 * fjac[i - 1][j][k][4][4] - tmp1 * njac[i - 1][j][k][4][4] - tmp1 * dx5;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i][j][k][0][0] + tmp1 * 2.0 * dx1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][1] = tmp1 * 2.0 * njac[i][j][k][0][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][2] = tmp1 * 2.0 * njac[i][j][k][0][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][3] = tmp1 * 2.0 * njac[i][j][k][0][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][4] = tmp1 * 2.0 * njac[i][j][k][0][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][0] = tmp1 * 2.0 * njac[i][j][k][1][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i][j][k][1][1] + tmp1 * 2.0 * dx2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][2] = tmp1 * 2.0 * njac[i][j][k][1][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][3] = tmp1 * 2.0 * njac[i][j][k][1][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][4] = tmp1 * 2.0 * njac[i][j][k][1][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][0] = tmp1 * 2.0 * njac[i][j][k][2][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][1] = tmp1 * 2.0 * njac[i][j][k][2][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i][j][k][2][2] + tmp1 * 2.0 * dx3;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][3] = tmp1 * 2.0 * njac[i][j][k][2][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][4] = tmp1 * 2.0 * njac[i][j][k][2][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][0] = tmp1 * 2.0 * njac[i][j][k][3][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][1] = tmp1 * 2.0 * njac[i][j][k][3][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][2] = tmp1 * 2.0 * njac[i][j][k][3][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i][j][k][3][3] + tmp1 * 2.0 * dx4;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][4] = tmp1 * 2.0 * njac[i][j][k][3][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][0] = tmp1 * 2.0 * njac[i][j][k][4][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][1] = tmp1 * 2.0 * njac[i][j][k][4][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][2] = tmp1 * 2.0 * njac[i][j][k][4][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][3] = tmp1 * 2.0 * njac[i][j][k][4][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i][j][k][4][4] + tmp1 * 2.0 * dx5;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][0] = tmp2 * fjac[i + 1][j][k][0][0] - tmp1 * njac[i + 1][j][k][0][0] - tmp1 * dx1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][1] = tmp2 * fjac[i + 1][j][k][0][1] - tmp1 * njac[i + 1][j][k][0][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][2] = tmp2 * fjac[i + 1][j][k][0][2] - tmp1 * njac[i + 1][j][k][0][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][3] = tmp2 * fjac[i + 1][j][k][0][3] - tmp1 * njac[i + 1][j][k][0][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][4] = tmp2 * fjac[i + 1][j][k][0][4] - tmp1 * njac[i + 1][j][k][0][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][0] = tmp2 * fjac[i + 1][j][k][1][0] - tmp1 * njac[i + 1][j][k][1][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][1] = tmp2 * fjac[i + 1][j][k][1][1] - tmp1 * njac[i + 1][j][k][1][1] - tmp1 * dx2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][2] = tmp2 * fjac[i + 1][j][k][1][2] - tmp1 * njac[i + 1][j][k][1][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][3] = tmp2 * fjac[i + 1][j][k][1][3] - tmp1 * njac[i + 1][j][k][1][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][4] = tmp2 * fjac[i + 1][j][k][1][4] - tmp1 * njac[i + 1][j][k][1][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][0] = tmp2 * fjac[i + 1][j][k][2][0] - tmp1 * njac[i + 1][j][k][2][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][1] = tmp2 * fjac[i + 1][j][k][2][1] - tmp1 * njac[i + 1][j][k][2][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][2] = tmp2 * fjac[i + 1][j][k][2][2] - tmp1 * njac[i + 1][j][k][2][2] - tmp1 * dx3;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][3] = tmp2 * fjac[i + 1][j][k][2][3] - tmp1 * njac[i + 1][j][k][2][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][4] = tmp2 * fjac[i + 1][j][k][2][4] - tmp1 * njac[i + 1][j][k][2][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][0] = tmp2 * fjac[i + 1][j][k][3][0] - tmp1 * njac[i + 1][j][k][3][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][1] = tmp2 * fjac[i + 1][j][k][3][1] - tmp1 * njac[i + 1][j][k][3][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][2] = tmp2 * fjac[i + 1][j][k][3][2] - tmp1 * njac[i + 1][j][k][3][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][3] = tmp2 * fjac[i + 1][j][k][3][3] - tmp1 * njac[i + 1][j][k][3][3] - tmp1 * dx4;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][4] = tmp2 * fjac[i + 1][j][k][3][4] - tmp1 * njac[i + 1][j][k][3][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][0] = tmp2 * fjac[i + 1][j][k][4][0] - tmp1 * njac[i + 1][j][k][4][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][1] = tmp2 * fjac[i + 1][j][k][4][1] - tmp1 * njac[i + 1][j][k][4][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][2] = tmp2 * fjac[i + 1][j][k][4][2] - tmp1 * njac[i + 1][j][k][4][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][3] = tmp2 * fjac[i + 1][j][k][4][3] - tmp1 * njac[i + 1][j][k][4][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][4] = tmp2 * fjac[i + 1][j][k][4][4] - tmp1 * njac[i + 1][j][k][4][4] - tmp1 * dx5;
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
}
static void lhsy() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int k;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp1 = 1.0 / u[i][j][k][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp2 = tmp1 * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp3 = tmp1 * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][0] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][1] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][2] = 1.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][3] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][0] = -(u[i][j][k][1] * u[i][j][k][2]) * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][1] = u[i][j][k][2] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][2] = u[i][j][k][1] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][3] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][0] = -(u[i][j][k][2] * u[i][j][k][2] * tmp2) + 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][1] = -c2 * u[i][j][k][1] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][2] = (2.0 - c2) * u[i][j][k][2] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][3] = -c2 * u[i][j][k][3] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][4] = c2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][0] = -(u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][1] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][2] = u[i][j][k][3] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][3] = u[i][j][k][2] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][0] = (c2 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2 - c1 * u[i][j][k][4] * tmp1) * u[i][j][k][2] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][1] = -c2 * u[i][j][k][1] * u[i][j][k][2] * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][2] = c1 * u[i][j][k][4] * tmp1 - 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + 3.0 * u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][3] = -c2 * (u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][4] = c1 * u[i][j][k][2] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][0] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][1] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][2] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][3] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][0] = -c3c4 * tmp2 * u[i][j][k][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][1] = c3c4 * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][2] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][3] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][0] = -con43 * c3c4 * tmp2 * u[i][j][k][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][1] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][2] = con43 * c3c4 * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][3] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][0] = -c3c4 * tmp2 * u[i][j][k][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][1] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][2] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][3] = c3c4 * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][1] = (c3c4 - c1345) * tmp2 * u[i][j][k][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][2] = (con43 * c3c4 - c1345) * tmp2 * u[i][j][k][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][3] = (c3c4 - c1345) * tmp2 * u[i][j][k][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][4] = c1345 * tmp1;
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp1 = dt * ty1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp2 = dt * ty2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][0] = -tmp2 * fjac[i][j - 1][k][0][0] - tmp1 * njac[i][j - 1][k][0][0] - tmp1 * dy1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][1] = -tmp2 * fjac[i][j - 1][k][0][1] - tmp1 * njac[i][j - 1][k][0][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][2] = -tmp2 * fjac[i][j - 1][k][0][2] - tmp1 * njac[i][j - 1][k][0][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][3] = -tmp2 * fjac[i][j - 1][k][0][3] - tmp1 * njac[i][j - 1][k][0][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][4] = -tmp2 * fjac[i][j - 1][k][0][4] - tmp1 * njac[i][j - 1][k][0][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][0] = -tmp2 * fjac[i][j - 1][k][1][0] - tmp1 * njac[i][j - 1][k][1][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][1] = -tmp2 * fjac[i][j - 1][k][1][1] - tmp1 * njac[i][j - 1][k][1][1] - tmp1 * dy2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][2] = -tmp2 * fjac[i][j - 1][k][1][2] - tmp1 * njac[i][j - 1][k][1][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][3] = -tmp2 * fjac[i][j - 1][k][1][3] - tmp1 * njac[i][j - 1][k][1][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][4] = -tmp2 * fjac[i][j - 1][k][1][4] - tmp1 * njac[i][j - 1][k][1][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][0] = -tmp2 * fjac[i][j - 1][k][2][0] - tmp1 * njac[i][j - 1][k][2][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][1] = -tmp2 * fjac[i][j - 1][k][2][1] - tmp1 * njac[i][j - 1][k][2][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][2] = -tmp2 * fjac[i][j - 1][k][2][2] - tmp1 * njac[i][j - 1][k][2][2] - tmp1 * dy3;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][3] = -tmp2 * fjac[i][j - 1][k][2][3] - tmp1 * njac[i][j - 1][k][2][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][4] = -tmp2 * fjac[i][j - 1][k][2][4] - tmp1 * njac[i][j - 1][k][2][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][0] = -tmp2 * fjac[i][j - 1][k][3][0] - tmp1 * njac[i][j - 1][k][3][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][1] = -tmp2 * fjac[i][j - 1][k][3][1] - tmp1 * njac[i][j - 1][k][3][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][2] = -tmp2 * fjac[i][j - 1][k][3][2] - tmp1 * njac[i][j - 1][k][3][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][3] = -tmp2 * fjac[i][j - 1][k][3][3] - tmp1 * njac[i][j - 1][k][3][3] - tmp1 * dy4;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][4] = -tmp2 * fjac[i][j - 1][k][3][4] - tmp1 * njac[i][j - 1][k][3][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][0] = -tmp2 * fjac[i][j - 1][k][4][0] - tmp1 * njac[i][j - 1][k][4][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][1] = -tmp2 * fjac[i][j - 1][k][4][1] - tmp1 * njac[i][j - 1][k][4][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][2] = -tmp2 * fjac[i][j - 1][k][4][2] - tmp1 * njac[i][j - 1][k][4][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][3] = -tmp2 * fjac[i][j - 1][k][4][3] - tmp1 * njac[i][j - 1][k][4][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][4] = -tmp2 * fjac[i][j - 1][k][4][4] - tmp1 * njac[i][j - 1][k][4][4] - tmp1 * dy5;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i][j][k][0][0] + tmp1 * 2.0 * dy1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][1] = tmp1 * 2.0 * njac[i][j][k][0][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][2] = tmp1 * 2.0 * njac[i][j][k][0][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][3] = tmp1 * 2.0 * njac[i][j][k][0][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][4] = tmp1 * 2.0 * njac[i][j][k][0][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][0] = tmp1 * 2.0 * njac[i][j][k][1][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i][j][k][1][1] + tmp1 * 2.0 * dy2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][2] = tmp1 * 2.0 * njac[i][j][k][1][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][3] = tmp1 * 2.0 * njac[i][j][k][1][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][4] = tmp1 * 2.0 * njac[i][j][k][1][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][0] = tmp1 * 2.0 * njac[i][j][k][2][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][1] = tmp1 * 2.0 * njac[i][j][k][2][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i][j][k][2][2] + tmp1 * 2.0 * dy3;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][3] = tmp1 * 2.0 * njac[i][j][k][2][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][4] = tmp1 * 2.0 * njac[i][j][k][2][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][0] = tmp1 * 2.0 * njac[i][j][k][3][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][1] = tmp1 * 2.0 * njac[i][j][k][3][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][2] = tmp1 * 2.0 * njac[i][j][k][3][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i][j][k][3][3] + tmp1 * 2.0 * dy4;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][4] = tmp1 * 2.0 * njac[i][j][k][3][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][0] = tmp1 * 2.0 * njac[i][j][k][4][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][1] = tmp1 * 2.0 * njac[i][j][k][4][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][2] = tmp1 * 2.0 * njac[i][j][k][4][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][3] = tmp1 * 2.0 * njac[i][j][k][4][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i][j][k][4][4] + tmp1 * 2.0 * dy5;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][0] = tmp2 * fjac[i][j + 1][k][0][0] - tmp1 * njac[i][j + 1][k][0][0] - tmp1 * dy1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][1] = tmp2 * fjac[i][j + 1][k][0][1] - tmp1 * njac[i][j + 1][k][0][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][2] = tmp2 * fjac[i][j + 1][k][0][2] - tmp1 * njac[i][j + 1][k][0][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][3] = tmp2 * fjac[i][j + 1][k][0][3] - tmp1 * njac[i][j + 1][k][0][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][4] = tmp2 * fjac[i][j + 1][k][0][4] - tmp1 * njac[i][j + 1][k][0][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][0] = tmp2 * fjac[i][j + 1][k][1][0] - tmp1 * njac[i][j + 1][k][1][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][1] = tmp2 * fjac[i][j + 1][k][1][1] - tmp1 * njac[i][j + 1][k][1][1] - tmp1 * dy2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][2] = tmp2 * fjac[i][j + 1][k][1][2] - tmp1 * njac[i][j + 1][k][1][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][3] = tmp2 * fjac[i][j + 1][k][1][3] - tmp1 * njac[i][j + 1][k][1][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][4] = tmp2 * fjac[i][j + 1][k][1][4] - tmp1 * njac[i][j + 1][k][1][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][0] = tmp2 * fjac[i][j + 1][k][2][0] - tmp1 * njac[i][j + 1][k][2][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][1] = tmp2 * fjac[i][j + 1][k][2][1] - tmp1 * njac[i][j + 1][k][2][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][2] = tmp2 * fjac[i][j + 1][k][2][2] - tmp1 * njac[i][j + 1][k][2][2] - tmp1 * dy3;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][3] = tmp2 * fjac[i][j + 1][k][2][3] - tmp1 * njac[i][j + 1][k][2][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][4] = tmp2 * fjac[i][j + 1][k][2][4] - tmp1 * njac[i][j + 1][k][2][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][0] = tmp2 * fjac[i][j + 1][k][3][0] - tmp1 * njac[i][j + 1][k][3][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][1] = tmp2 * fjac[i][j + 1][k][3][1] - tmp1 * njac[i][j + 1][k][3][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][2] = tmp2 * fjac[i][j + 1][k][3][2] - tmp1 * njac[i][j + 1][k][3][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][3] = tmp2 * fjac[i][j + 1][k][3][3] - tmp1 * njac[i][j + 1][k][3][3] - tmp1 * dy4;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][4] = tmp2 * fjac[i][j + 1][k][3][4] - tmp1 * njac[i][j + 1][k][3][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][0] = tmp2 * fjac[i][j + 1][k][4][0] - tmp1 * njac[i][j + 1][k][4][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][1] = tmp2 * fjac[i][j + 1][k][4][1] - tmp1 * njac[i][j + 1][k][4][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][2] = tmp2 * fjac[i][j + 1][k][4][2] - tmp1 * njac[i][j + 1][k][4][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][3] = tmp2 * fjac[i][j + 1][k][4][3] - tmp1 * njac[i][j + 1][k][4][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][4] = tmp2 * fjac[i][j + 1][k][4][4] - tmp1 * njac[i][j + 1][k][4][4] - tmp1 * dy5;
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
}
static void lhsz() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int k;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp1 = 1.0 / u[i][j][k][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp2 = tmp1 * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp3 = tmp1 * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][0] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][1] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][2] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][3] = 1.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][0][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][0] = -(u[i][j][k][1] * u[i][j][k][3]) * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][1] = u[i][j][k][3] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][2] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][3] = u[i][j][k][1] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][1][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][0] = -(u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][1] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][2] = u[i][j][k][3] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][3] = u[i][j][k][2] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][2][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][0] = -(u[i][j][k][3] * u[i][j][k][3] * tmp2) + 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][1] = -c2 * u[i][j][k][1] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][2] = -c2 * u[i][j][k][2] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][3] = (2.0 - c2) * u[i][j][k][3] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][3][4] = c2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][0] = (c2 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2 - c1 * (u[i][j][k][4] * tmp1)) * (u[i][j][k][3] * tmp1);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][1] = -c2 * (u[i][j][k][1] * u[i][j][k][3]) * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][2] = -c2 * (u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][3] = c1 * (u[i][j][k][4] * tmp1) - 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + 3.0 * u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                fjac[i][j][k][4][4] = c1 * u[i][j][k][3] * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][0] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][1] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][2] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][3] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][0][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][0] = -c3c4 * tmp2 * u[i][j][k][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][1] = c3c4 * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][2] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][3] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][1][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][0] = -c3c4 * tmp2 * u[i][j][k][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][1] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][2] = c3c4 * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][3] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][2][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][0] = -con43 * c3c4 * tmp2 * u[i][j][k][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][1] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][2] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][3] = con43 * c3 * c4 * tmp1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][3][4] = 0.0;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][1] = (c3c4 - c1345) * tmp2 * u[i][j][k][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][2] = (c3c4 - c1345) * tmp2 * u[i][j][k][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][3] = (con43 * c3c4 - c1345) * tmp2 * u[i][j][k][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                njac[i][j][k][4][4] = c1345 * tmp1;
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp1 = dt * tz1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                tmp2 = dt * tz2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][0] = -tmp2 * fjac[i][j][k - 1][0][0] - tmp1 * njac[i][j][k - 1][0][0] - tmp1 * dz1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][1] = -tmp2 * fjac[i][j][k - 1][0][1] - tmp1 * njac[i][j][k - 1][0][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][2] = -tmp2 * fjac[i][j][k - 1][0][2] - tmp1 * njac[i][j][k - 1][0][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][3] = -tmp2 * fjac[i][j][k - 1][0][3] - tmp1 * njac[i][j][k - 1][0][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][0][4] = -tmp2 * fjac[i][j][k - 1][0][4] - tmp1 * njac[i][j][k - 1][0][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][0] = -tmp2 * fjac[i][j][k - 1][1][0] - tmp1 * njac[i][j][k - 1][1][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][1] = -tmp2 * fjac[i][j][k - 1][1][1] - tmp1 * njac[i][j][k - 1][1][1] - tmp1 * dz2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][2] = -tmp2 * fjac[i][j][k - 1][1][2] - tmp1 * njac[i][j][k - 1][1][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][3] = -tmp2 * fjac[i][j][k - 1][1][3] - tmp1 * njac[i][j][k - 1][1][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][1][4] = -tmp2 * fjac[i][j][k - 1][1][4] - tmp1 * njac[i][j][k - 1][1][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][0] = -tmp2 * fjac[i][j][k - 1][2][0] - tmp1 * njac[i][j][k - 1][2][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][1] = -tmp2 * fjac[i][j][k - 1][2][1] - tmp1 * njac[i][j][k - 1][2][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][2] = -tmp2 * fjac[i][j][k - 1][2][2] - tmp1 * njac[i][j][k - 1][2][2] - tmp1 * dz3;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][3] = -tmp2 * fjac[i][j][k - 1][2][3] - tmp1 * njac[i][j][k - 1][2][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][2][4] = -tmp2 * fjac[i][j][k - 1][2][4] - tmp1 * njac[i][j][k - 1][2][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][0] = -tmp2 * fjac[i][j][k - 1][3][0] - tmp1 * njac[i][j][k - 1][3][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][1] = -tmp2 * fjac[i][j][k - 1][3][1] - tmp1 * njac[i][j][k - 1][3][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][2] = -tmp2 * fjac[i][j][k - 1][3][2] - tmp1 * njac[i][j][k - 1][3][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][3] = -tmp2 * fjac[i][j][k - 1][3][3] - tmp1 * njac[i][j][k - 1][3][3] - tmp1 * dz4;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][3][4] = -tmp2 * fjac[i][j][k - 1][3][4] - tmp1 * njac[i][j][k - 1][3][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][0] = -tmp2 * fjac[i][j][k - 1][4][0] - tmp1 * njac[i][j][k - 1][4][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][1] = -tmp2 * fjac[i][j][k - 1][4][1] - tmp1 * njac[i][j][k - 1][4][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][2] = -tmp2 * fjac[i][j][k - 1][4][2] - tmp1 * njac[i][j][k - 1][4][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][3] = -tmp2 * fjac[i][j][k - 1][4][3] - tmp1 * njac[i][j][k - 1][4][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][0][4][4] = -tmp2 * fjac[i][j][k - 1][4][4] - tmp1 * njac[i][j][k - 1][4][4] - tmp1 * dz5;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i][j][k][0][0] + tmp1 * 2.0 * dz1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][1] = tmp1 * 2.0 * njac[i][j][k][0][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][2] = tmp1 * 2.0 * njac[i][j][k][0][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][3] = tmp1 * 2.0 * njac[i][j][k][0][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][0][4] = tmp1 * 2.0 * njac[i][j][k][0][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][0] = tmp1 * 2.0 * njac[i][j][k][1][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i][j][k][1][1] + tmp1 * 2.0 * dz2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][2] = tmp1 * 2.0 * njac[i][j][k][1][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][3] = tmp1 * 2.0 * njac[i][j][k][1][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][1][4] = tmp1 * 2.0 * njac[i][j][k][1][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][0] = tmp1 * 2.0 * njac[i][j][k][2][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][1] = tmp1 * 2.0 * njac[i][j][k][2][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i][j][k][2][2] + tmp1 * 2.0 * dz3;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][3] = tmp1 * 2.0 * njac[i][j][k][2][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][2][4] = tmp1 * 2.0 * njac[i][j][k][2][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][0] = tmp1 * 2.0 * njac[i][j][k][3][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][1] = tmp1 * 2.0 * njac[i][j][k][3][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][2] = tmp1 * 2.0 * njac[i][j][k][3][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i][j][k][3][3] + tmp1 * 2.0 * dz4;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][3][4] = tmp1 * 2.0 * njac[i][j][k][3][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][0] = tmp1 * 2.0 * njac[i][j][k][4][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][1] = tmp1 * 2.0 * njac[i][j][k][4][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][2] = tmp1 * 2.0 * njac[i][j][k][4][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][3] = tmp1 * 2.0 * njac[i][j][k][4][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i][j][k][4][4] + tmp1 * 2.0 * dz5;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][0] = tmp2 * fjac[i][j][k + 1][0][0] - tmp1 * njac[i][j][k + 1][0][0] - tmp1 * dz1;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][1] = tmp2 * fjac[i][j][k + 1][0][1] - tmp1 * njac[i][j][k + 1][0][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][2] = tmp2 * fjac[i][j][k + 1][0][2] - tmp1 * njac[i][j][k + 1][0][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][3] = tmp2 * fjac[i][j][k + 1][0][3] - tmp1 * njac[i][j][k + 1][0][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][0][4] = tmp2 * fjac[i][j][k + 1][0][4] - tmp1 * njac[i][j][k + 1][0][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][0] = tmp2 * fjac[i][j][k + 1][1][0] - tmp1 * njac[i][j][k + 1][1][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][1] = tmp2 * fjac[i][j][k + 1][1][1] - tmp1 * njac[i][j][k + 1][1][1] - tmp1 * dz2;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][2] = tmp2 * fjac[i][j][k + 1][1][2] - tmp1 * njac[i][j][k + 1][1][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][3] = tmp2 * fjac[i][j][k + 1][1][3] - tmp1 * njac[i][j][k + 1][1][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][1][4] = tmp2 * fjac[i][j][k + 1][1][4] - tmp1 * njac[i][j][k + 1][1][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][0] = tmp2 * fjac[i][j][k + 1][2][0] - tmp1 * njac[i][j][k + 1][2][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][1] = tmp2 * fjac[i][j][k + 1][2][1] - tmp1 * njac[i][j][k + 1][2][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][2] = tmp2 * fjac[i][j][k + 1][2][2] - tmp1 * njac[i][j][k + 1][2][2] - tmp1 * dz3;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][3] = tmp2 * fjac[i][j][k + 1][2][3] - tmp1 * njac[i][j][k + 1][2][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][2][4] = tmp2 * fjac[i][j][k + 1][2][4] - tmp1 * njac[i][j][k + 1][2][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][0] = tmp2 * fjac[i][j][k + 1][3][0] - tmp1 * njac[i][j][k + 1][3][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][1] = tmp2 * fjac[i][j][k + 1][3][1] - tmp1 * njac[i][j][k + 1][3][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][2] = tmp2 * fjac[i][j][k + 1][3][2] - tmp1 * njac[i][j][k + 1][3][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][3] = tmp2 * fjac[i][j][k + 1][3][3] - tmp1 * njac[i][j][k + 1][3][3] - tmp1 * dz4;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][3][4] = tmp2 * fjac[i][j][k + 1][3][4] - tmp1 * njac[i][j][k + 1][3][4];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][0] = tmp2 * fjac[i][j][k + 1][4][0] - tmp1 * njac[i][j][k + 1][4][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][1] = tmp2 * fjac[i][j][k + 1][4][1] - tmp1 * njac[i][j][k + 1][4][1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][2] = tmp2 * fjac[i][j][k + 1][4][2] - tmp1 * njac[i][j][k + 1][4][2];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][3] = tmp2 * fjac[i][j][k + 1][4][3] - tmp1 * njac[i][j][k + 1][4][3];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                lhs[i][j][k][2][4][4] = tmp2 * fjac[i][j][k + 1][4][4] - tmp1 * njac[i][j][k + 1][4][4] - tmp1 * dz5;
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
}
static void compute_rhs() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int k;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int m;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double rho_inv;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double uijk;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double up1;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double um1;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double vijk;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double vp1;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double vm1;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double wijk;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double wp1;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double wm1;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rho_inv = 1.0 / u[i][j][k][0];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rho_i[i][j][k] = rho_inv;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                us[i][j][k] = u[i][j][k][1] * rho_inv;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                vs[i][j][k] = u[i][j][k][2] * rho_inv;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                ws[i][j][k] = u[i][j][k][3] * rho_inv;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                square[i][j][k] = 0.5 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * rho_inv;
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                qs[i][j][k] = square[i][j][k] * rho_inv;
            }
        }
    }
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 0; k < grid_points[2]; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    rhs[i][j][k][m] = forcing[i][j][k][m];
                }
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                uijk = us[i][j][k];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                up1 = us[i + 1][j][k];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                um1 = us[i - 1][j][k];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dx1tx1 * (u[i + 1][j][k][0] - 2.0 * u[i][j][k][0] + u[i - 1][j][k][0]) - tx2 * (u[i + 1][j][k][1] - u[i - 1][j][k][1]);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dx2tx1 * (u[i + 1][j][k][1] - 2.0 * u[i][j][k][1] + u[i - 1][j][k][1]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[i + 1][j][k][1] * up1 - u[i - 1][j][k][1] * um1 + (u[i + 1][j][k][4] - square[i + 1][j][k] - u[i - 1][j][k][4] + square[i - 1][j][k]) * c2);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dx3tx1 * (u[i + 1][j][k][2] - 2.0 * u[i][j][k][2] + u[i - 1][j][k][2]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[i + 1][j][k][2] * up1 - u[i - 1][j][k][2] * um1);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dx4tx1 * (u[i + 1][j][k][3] - 2.0 * u[i][j][k][3] + u[i - 1][j][k][3]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[i + 1][j][k][3] * up1 - u[i - 1][j][k][3] * um1);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dx5tx1 * (u[i + 1][j][k][4] - 2.0 * u[i][j][k][4] + u[i - 1][j][k][4]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[i + 1][j][k][4] * rho_i[i + 1][j][k] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i - 1][j][k][4] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[i + 1][j][k][4] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[i - 1][j][k][4] - c2 * square[i - 1][j][k]) * um1);
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    i = 1;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    i = 2;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
            }
        }
    }
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 3; i < grid_points[0] - 3; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
                }
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    i = grid_points[0] - 3;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m]);
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    i = grid_points[0] - 2;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4. * u[i - 1][j][k][m] + 5.0 * u[i][j][k][m]);
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                vijk = vs[i][j][k];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                vp1 = vs[i][j + 1][k];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                vm1 = vs[i][j - 1][k];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dy1ty1 * (u[i][j + 1][k][0] - 2.0 * u[i][j][k][0] + u[i][j - 1][k][0]) - ty2 * (u[i][j + 1][k][2] - u[i][j - 1][k][2]);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dy2ty1 * (u[i][j + 1][k][1] - 2.0 * u[i][j][k][1] + u[i][j - 1][k][1]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[i][j + 1][k][1] * vp1 - u[i][j - 1][k][1] * vm1);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dy3ty1 * (u[i][j + 1][k][2] - 2.0 * u[i][j][k][2] + u[i][j - 1][k][2]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[i][j + 1][k][2] * vp1 - u[i][j - 1][k][2] * vm1 + (u[i][j + 1][k][4] - square[i][j + 1][k] - u[i][j - 1][k][4] + square[i][j - 1][k]) * c2);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dy4ty1 * (u[i][j + 1][k][3] - 2.0 * u[i][j][k][3] + u[i][j - 1][k][3]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[i][j + 1][k][3] * vp1 - u[i][j - 1][k][3] * vm1);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dy5ty1 * (u[i][j + 1][k][4] - 2.0 * u[i][j][k][4] + u[i][j - 1][k][4]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[i][j + 1][k][4] * rho_i[i][j + 1][k] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i][j - 1][k][4] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[i][j + 1][k][4] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[i][j - 1][k][4] - c2 * square[i][j - 1][k]) * vm1);
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    j = 1;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    j = 2;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
            }
        }
    }
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 3; j < grid_points[1] - 3; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
                }
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    j = grid_points[1] - 3;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m]);
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    j = grid_points[1] - 2;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4. * u[i][j - 1][k][m] + 5. * u[i][j][k][m]);
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                wijk = ws[i][j][k];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                wp1 = ws[i][j][k + 1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                wm1 = ws[i][j][k - 1];
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dz1tz1 * (u[i][j][k + 1][0] - 2.0 * u[i][j][k][0] + u[i][j][k - 1][0]) - tz2 * (u[i][j][k + 1][3] - u[i][j][k - 1][3]);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dz2tz1 * (u[i][j][k + 1][1] - 2.0 * u[i][j][k][1] + u[i][j][k - 1][1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[i][j][k + 1][1] * wp1 - u[i][j][k - 1][1] * wm1);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dz3tz1 * (u[i][j][k + 1][2] - 2.0 * u[i][j][k][2] + u[i][j][k - 1][2]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[i][j][k + 1][2] * wp1 - u[i][j][k - 1][2] * wm1);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dz4tz1 * (u[i][j][k + 1][3] - 2.0 * u[i][j][k][3] + u[i][j][k - 1][3]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[i][j][k + 1][3] * wp1 - u[i][j][k - 1][3] * wm1 + (u[i][j][k + 1][4] - square[i][j][k + 1] - u[i][j][k - 1][4] + square[i][j][k - 1]) * c2);
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dz5tz1 * (u[i][j][k + 1][4] - 2.0 * u[i][j][k][4] + u[i][j][k - 1][4]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[i][j][k + 1][4] * rho_i[i][j][k + 1] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i][j][k - 1][4] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[i][j][k + 1][4] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[i][j][k - 1][4] - c2 * square[i][j][k - 1]) * wm1);
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    k = 1;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    k = 2;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
            }
        }
    }
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 3; k < grid_points[2] - 3; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
                }
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    k = grid_points[2] - 3;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m]);
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    k = grid_points[2] - 2;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 5.0 * u[i][j][k][m]);
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (i = 1; i < grid_points[0] - 1; i++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] * dt;
                }
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
}
static void set_constants() {
    /*OUT: []*/
    ce[0][0] = 2.0;
    /*OUT: []*/
    ce[0][1] = 0.0;
    /*OUT: []*/
    ce[0][2] = 0.0;
    /*OUT: []*/
    ce[0][3] = 4.0;
    /*OUT: []*/
    ce[0][4] = 5.0;
    /*OUT: []*/
    ce[0][5] = 3.0;
    /*OUT: []*/
    ce[0][6] = 0.5;
    /*OUT: []*/
    ce[0][7] = 0.02;
    /*OUT: []*/
    ce[0][8] = 0.01;
    /*OUT: []*/
    ce[0][9] = 0.03;
    /*OUT: []*/
    ce[0][10] = 0.5;
    /*OUT: []*/
    ce[0][11] = 0.4;
    /*OUT: []*/
    ce[0][12] = 0.3;
    /*OUT: []*/
    ce[1][0] = 1.0;
    /*OUT: []*/
    ce[1][1] = 0.0;
    /*OUT: []*/
    ce[1][2] = 0.0;
    /*OUT: []*/
    ce[1][3] = 0.0;
    /*OUT: []*/
    ce[1][4] = 1.0;
    /*OUT: []*/
    ce[1][5] = 2.0;
    /*OUT: []*/
    ce[1][6] = 3.0;
    /*OUT: []*/
    ce[1][7] = 0.01;
    /*OUT: []*/
    ce[1][8] = 0.03;
    /*OUT: []*/
    ce[1][9] = 0.02;
    /*OUT: []*/
    ce[1][10] = 0.4;
    /*OUT: []*/
    ce[1][11] = 0.3;
    /*OUT: []*/
    ce[1][12] = 0.5;
    /*OUT: []*/
    ce[2][0] = 2.0;
    /*OUT: []*/
    ce[2][1] = 2.0;
    /*OUT: []*/
    ce[2][2] = 0.0;
    /*OUT: []*/
    ce[2][3] = 0.0;
    /*OUT: []*/
    ce[2][4] = 0.0;
    /*OUT: []*/
    ce[2][5] = 2.0;
    /*OUT: []*/
    ce[2][6] = 3.0;
    /*OUT: []*/
    ce[2][7] = 0.04;
    /*OUT: []*/
    ce[2][8] = 0.03;
    /*OUT: []*/
    ce[2][9] = 0.05;
    /*OUT: []*/
    ce[2][10] = 0.3;
    /*OUT: []*/
    ce[2][11] = 0.5;
    /*OUT: []*/
    ce[2][12] = 0.4;
    /*OUT: []*/
    ce[3][0] = 2.0;
    /*OUT: []*/
    ce[3][1] = 2.0;
    /*OUT: []*/
    ce[3][2] = 0.0;
    /*OUT: []*/
    ce[3][3] = 0.0;
    /*OUT: []*/
    ce[3][4] = 0.0;
    /*OUT: []*/
    ce[3][5] = 2.0;
    /*OUT: []*/
    ce[3][6] = 3.0;
    /*OUT: []*/
    ce[3][7] = 0.03;
    /*OUT: []*/
    ce[3][8] = 0.05;
    /*OUT: []*/
    ce[3][9] = 0.04;
    /*OUT: []*/
    ce[3][10] = 0.2;
    /*OUT: []*/
    ce[3][11] = 0.1;
    /*OUT: []*/
    ce[3][12] = 0.3;
    /*OUT: []*/
    ce[4][0] = 5.0;
    /*OUT: []*/
    ce[4][1] = 4.0;
    /*OUT: []*/
    ce[4][2] = 3.0;
    /*OUT: []*/
    ce[4][3] = 2.0;
    /*OUT: []*/
    ce[4][4] = 0.1;
    /*OUT: []*/
    ce[4][5] = 0.4;
    /*OUT: []*/
    ce[4][6] = 0.3;
    /*OUT: []*/
    ce[4][7] = 0.05;
    /*OUT: []*/
    ce[4][8] = 0.04;
    /*OUT: []*/
    ce[4][9] = 0.03;
    /*OUT: []*/
    ce[4][10] = 0.1;
    /*OUT: []*/
    ce[4][11] = 0.3;
    /*OUT: []*/
    ce[4][12] = 0.2;
    /*OUT: []*/
    c1 = 1.4;
    /*OUT: []*/
    c2 = 0.4;
    /*OUT: []*/
    c3 = 0.1;
    /*OUT: []*/
    c4 = 1.0;
    /*OUT: []*/
    c5 = 1.4;
    /*OUT: []*/
    dnxm1 = 1.0 / (double) (grid_points[0] - 1);
    /*OUT: []*/
    dnym1 = 1.0 / (double) (grid_points[1] - 1);
    /*OUT: []*/
    dnzm1 = 1.0 / (double) (grid_points[2] - 1);
    /*OUT: []*/
    c1c2 = c1 * c2;
    /*OUT: []*/
    c1c5 = c1 * c5;
    /*OUT: []*/
    c3c4 = c3 * c4;
    /*OUT: []*/
    c1345 = c1c5 * c3c4;
    /*OUT: []*/
    conz1 = (1.0 - c1c5);
    /*OUT: []*/
    tx1 = 1.0 / (dnxm1 * dnxm1);
    /*OUT: []*/
    tx2 = 1.0 / (2.0 * dnxm1);
    /*OUT: []*/
    tx3 = 1.0 / dnxm1;
    /*OUT: []*/
    ty1 = 1.0 / (dnym1 * dnym1);
    /*OUT: []*/
    ty2 = 1.0 / (2.0 * dnym1);
    /*OUT: []*/
    ty3 = 1.0 / dnym1;
    /*OUT: []*/
    tz1 = 1.0 / (dnzm1 * dnzm1);
    /*OUT: []*/
    tz2 = 1.0 / (2.0 * dnzm1);
    /*OUT: []*/
    tz3 = 1.0 / dnzm1;
    /*OUT: []*/
    dx1 = 0.75;
    /*OUT: []*/
    dx2 = 0.75;
    /*OUT: []*/
    dx3 = 0.75;
    /*OUT: []*/
    dx4 = 0.75;
    /*OUT: []*/
    dx5 = 0.75;
    /*OUT: []*/
    dy1 = 0.75;
    /*OUT: []*/
    dy2 = 0.75;
    /*OUT: []*/
    dy3 = 0.75;
    /*OUT: []*/
    dy4 = 0.75;
    /*OUT: []*/
    dy5 = 0.75;
    /*OUT: []*/
    dz1 = 1.0;
    /*OUT: []*/
    dz2 = 1.0;
    /*OUT: []*/
    dz3 = 1.0;
    /*OUT: []*/
    dz4 = 1.0;
    /*OUT: []*/
    dz5 = 1.0;
    /*OUT: []*/
    int _imopVarPre199;
    /*OUT: []*/
    double _imopVarPre200;
    /*OUT: []*/
    _imopVarPre199 = (dx3 > dx4);
    /*OUT: []*/
    if (_imopVarPre199) {
        /*OUT: []*/
        _imopVarPre200 = dx3;
    } else {
        /*OUT: []*/
        _imopVarPre200 = dx4;
    }
    /*OUT: []*/
    dxmax = _imopVarPre200;
    /*OUT: []*/
    int _imopVarPre203;
    /*OUT: []*/
    double _imopVarPre204;
    /*OUT: []*/
    _imopVarPre203 = (dy2 > dy4);
    /*OUT: []*/
    if (_imopVarPre203) {
        /*OUT: []*/
        _imopVarPre204 = dy2;
    } else {
        /*OUT: []*/
        _imopVarPre204 = dy4;
    }
    /*OUT: []*/
    dymax = _imopVarPre204;
    /*OUT: []*/
    int _imopVarPre207;
    /*OUT: []*/
    double _imopVarPre208;
    /*OUT: []*/
    _imopVarPre207 = (dz2 > dz3);
    /*OUT: []*/
    if (_imopVarPre207) {
        /*OUT: []*/
        _imopVarPre208 = dz2;
    } else {
        /*OUT: []*/
        _imopVarPre208 = dz3;
    }
    /*OUT: []*/
    dzmax = _imopVarPre208;
    /*OUT: []*/
    int _imopVarPre249;
    /*OUT: []*/
    double _imopVarPre250;
    /*OUT: []*/
    int _imopVarPre251;
    /*OUT: []*/
    double _imopVarPre252;
    /*OUT: []*/
    int _imopVarPre259;
    /*OUT: []*/
    double _imopVarPre260;
    /*OUT: []*/
    _imopVarPre249 = (dy1 > dz1);
    /*OUT: []*/
    if (_imopVarPre249) {
        /*OUT: []*/
        _imopVarPre250 = dy1;
    } else {
        /*OUT: []*/
        _imopVarPre250 = dz1;
    }
    /*OUT: []*/
    _imopVarPre251 = (dx1 > _imopVarPre250);
    /*OUT: []*/
    if (_imopVarPre251) {
        /*OUT: []*/
        _imopVarPre252 = dx1;
    } else {
        /*OUT: []*/
        _imopVarPre259 = (dy1 > dz1);
        /*OUT: []*/
        if (_imopVarPre259) {
            /*OUT: []*/
            _imopVarPre260 = dy1;
        } else {
            /*OUT: []*/
            _imopVarPre260 = dz1;
        }
        /*OUT: []*/
        _imopVarPre252 = _imopVarPre260;
    }
    /*OUT: []*/
    dssp = 0.25 * _imopVarPre252;
    /*OUT: []*/
    c4dssp = 4.0 * dssp;
    /*OUT: []*/
    c5dssp = 5.0 * dssp;
    /*OUT: []*/
    dttx1 = dt * tx1;
    /*OUT: []*/
    dttx2 = dt * tx2;
    /*OUT: []*/
    dtty1 = dt * ty1;
    /*OUT: []*/
    dtty2 = dt * ty2;
    /*OUT: []*/
    dttz1 = dt * tz1;
    /*OUT: []*/
    dttz2 = dt * tz2;
    /*OUT: []*/
    c2dttx1 = 2.0 * dttx1;
    /*OUT: []*/
    c2dtty1 = 2.0 * dtty1;
    /*OUT: []*/
    c2dttz1 = 2.0 * dttz1;
    /*OUT: []*/
    dtdssp = dt * dssp;
    /*OUT: []*/
    comz1 = dtdssp;
    /*OUT: []*/
    comz4 = 4.0 * dtdssp;
    /*OUT: []*/
    comz5 = 5.0 * dtdssp;
    /*OUT: []*/
    comz6 = 6.0 * dtdssp;
    /*OUT: []*/
    c3c4tx3 = c3c4 * tx3;
    /*OUT: []*/
    c3c4ty3 = c3c4 * ty3;
    /*OUT: []*/
    c3c4tz3 = c3c4 * tz3;
    /*OUT: []*/
    dx1tx1 = dx1 * tx1;
    /*OUT: []*/
    dx2tx1 = dx2 * tx1;
    /*OUT: []*/
    dx3tx1 = dx3 * tx1;
    /*OUT: []*/
    dx4tx1 = dx4 * tx1;
    /*OUT: []*/
    dx5tx1 = dx5 * tx1;
    /*OUT: []*/
    dy1ty1 = dy1 * ty1;
    /*OUT: []*/
    dy2ty1 = dy2 * ty1;
    /*OUT: []*/
    dy3ty1 = dy3 * ty1;
    /*OUT: []*/
    dy4ty1 = dy4 * ty1;
    /*OUT: []*/
    dy5ty1 = dy5 * ty1;
    /*OUT: []*/
    dz1tz1 = dz1 * tz1;
    /*OUT: []*/
    dz2tz1 = dz2 * tz1;
    /*OUT: []*/
    dz3tz1 = dz3 * tz1;
    /*OUT: []*/
    dz4tz1 = dz4 * tz1;
    /*OUT: []*/
    dz5tz1 = dz5 * tz1;
    /*OUT: []*/
    c2iv = 2.5;
    /*OUT: []*/
    con43 = 4.0 / 3.0;
    /*OUT: []*/
    con16 = 1.0 / 6.0;
    /*OUT: []*/
    xxcon1 = c3c4tx3 * con43 * tx3;
    /*OUT: []*/
    xxcon2 = c3c4tx3 * tx3;
    /*OUT: []*/
    xxcon3 = c3c4tx3 * conz1 * tx3;
    /*OUT: []*/
    xxcon4 = c3c4tx3 * con16 * tx3;
    /*OUT: []*/
    xxcon5 = c3c4tx3 * c1c5 * tx3;
    /*OUT: []*/
    yycon1 = c3c4ty3 * con43 * ty3;
    /*OUT: []*/
    yycon2 = c3c4ty3 * ty3;
    /*OUT: []*/
    yycon3 = c3c4ty3 * conz1 * ty3;
    /*OUT: []*/
    yycon4 = c3c4ty3 * con16 * ty3;
    /*OUT: []*/
    yycon5 = c3c4ty3 * c1c5 * ty3;
    /*OUT: []*/
    zzcon1 = c3c4tz3 * con43 * tz3;
    /*OUT: []*/
    zzcon2 = c3c4tz3 * tz3;
    /*OUT: []*/
    zzcon3 = c3c4tz3 * conz1 * tz3;
    /*OUT: []*/
    zzcon4 = c3c4tz3 * con16 * tz3;
    /*OUT: []*/
    zzcon5 = c3c4tz3 * c1c5 * tz3;
}
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
]*/
/*OUT: [ptsTo(class) := [class];
ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
]*/
/*OUT: [ptsTo(class) := [class];
ptsTo(verified) := [verified];
ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
]*/
static void verify(int no_time_steps, char *class , boolean *verified) {
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double xcrref[5];
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double xceref[5];
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double xcrdif[5];
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double xcedif[5];
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double epsilon;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double xce[5];
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double xcr[5];
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    double dtref;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int m;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    epsilon = 1.0e-08;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    error_norm(xce);
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    compute_rhs();
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    rhs_norm(xcr);
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xcr[m] = xcr[m] / dt;
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    *class = 'U';
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    *verified = 1;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xcrref[m] = 1.0;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xceref[m] = 1.0;
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int _imopVarPre264;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int _imopVarPre265;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int _imopVarPre266;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    _imopVarPre264 = grid_points[0] == 12;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    if (_imopVarPre264) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre265 = grid_points[1] == 12;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        if (_imopVarPre265) {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre266 = grid_points[2] == 12;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            if (_imopVarPre266) {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre266 = no_time_steps == 60;
            }
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre265 = _imopVarPre266;
        }
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre264 = _imopVarPre265;
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    if (_imopVarPre264) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        *class = 'S';
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        dtref = 1.0e-2;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xcrref[0] = 1.7034283709541311e-01;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xcrref[1] = 1.2975252070034097e-02;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xcrref[2] = 3.2527926989486055e-02;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xcrref[3] = 2.6436421275166801e-02;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xcrref[4] = 1.9211784131744430e-01;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xceref[0] = 4.9976913345811579e-04;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xceref[1] = 4.5195666782961927e-05;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xceref[2] = 7.3973765172921357e-05;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xceref[3] = 7.3821238632439731e-05;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xceref[4] = 8.9269630987491446e-04;
    } else {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int _imopVarPre270;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int _imopVarPre271;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        int _imopVarPre272;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre270 = grid_points[0] == 24;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        if (_imopVarPre270) {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre271 = grid_points[1] == 24;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            if (_imopVarPre271) {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre272 = grid_points[2] == 24;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                if (_imopVarPre272) {
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    _imopVarPre272 = no_time_steps == 200;
                }
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre271 = _imopVarPre272;
            }
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre270 = _imopVarPre271;
        }
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        if (_imopVarPre270) {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            *class = 'W';
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            dtref = 0.8e-3;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xcrref[0] = 0.1125590409344e+03;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xcrref[1] = 0.1180007595731e+02;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xcrref[2] = 0.2710329767846e+02;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xcrref[3] = 0.2469174937669e+02;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xcrref[4] = 0.2638427874317e+03;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xceref[0] = 0.4419655736008e+01;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xceref[1] = 0.4638531260002e+00;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xceref[2] = 0.1011551749967e+01;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xceref[3] = 0.9235878729944e+00;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            xceref[4] = 0.1018045837718e+02;
        } else {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            int _imopVarPre276;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            int _imopVarPre277;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            int _imopVarPre278;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre276 = grid_points[0] == 64;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            if (_imopVarPre276) {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre277 = grid_points[1] == 64;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                if (_imopVarPre277) {
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    _imopVarPre278 = grid_points[2] == 64;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    if (_imopVarPre278) {
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        _imopVarPre278 = no_time_steps == 200;
                    }
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    _imopVarPre277 = _imopVarPre278;
                }
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre276 = _imopVarPre277;
            }
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            if (_imopVarPre276) {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                *class = 'A';
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                dtref = 0.8e-3;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                xcrref[0] = 1.0806346714637264e+02;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                xcrref[1] = 1.1319730901220813e+01;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                xcrref[2] = 2.5974354511582465e+01;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                xcrref[3] = 2.3665622544678910e+01;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                xcrref[4] = 2.5278963211748344e+02;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                xceref[0] = 4.2348416040525025e+00;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                xceref[1] = 4.4390282496995698e-01;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                xceref[2] = 9.6692480136345650e-01;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                xceref[3] = 8.8302063039765474e-01;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                xceref[4] = 9.7379901770829278e+00;
            } else {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                int _imopVarPre282;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                int _imopVarPre283;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                int _imopVarPre284;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre282 = grid_points[0] == 102;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                if (_imopVarPre282) {
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    _imopVarPre283 = grid_points[1] == 102;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    if (_imopVarPre283) {
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        _imopVarPre284 = grid_points[2] == 102;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        if (_imopVarPre284) {
                            /*OUT: [ptsTo(class) := [class];
                            ptsTo(verified) := [verified];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ]*/
                            _imopVarPre284 = no_time_steps == 200;
                        }
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        _imopVarPre283 = _imopVarPre284;
                    }
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    _imopVarPre282 = _imopVarPre283;
                }
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                if (_imopVarPre282) {
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    *class = 'B';
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    dtref = 3.0e-4;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    xcrref[0] = 1.4233597229287254e+03;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    xcrref[1] = 9.9330522590150238e+01;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    xcrref[2] = 3.5646025644535285e+02;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    xcrref[3] = 3.2485447959084092e+02;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    xcrref[4] = 3.2707541254659363e+03;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    xceref[0] = 5.2969847140936856e+01;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    xceref[1] = 4.4632896115670668e+00;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    xceref[2] = 1.3122573342210174e+01;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    xceref[3] = 1.2006925323559144e+01;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    xceref[4] = 1.2459576151035986e+02;
                } else {
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    int _imopVarPre288;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    int _imopVarPre289;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    int _imopVarPre290;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    _imopVarPre288 = grid_points[0] == 162;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    if (_imopVarPre288) {
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        _imopVarPre289 = grid_points[1] == 162;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        if (_imopVarPre289) {
                            /*OUT: [ptsTo(class) := [class];
                            ptsTo(verified) := [verified];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ]*/
                            _imopVarPre290 = grid_points[2] == 162;
                            /*OUT: [ptsTo(class) := [class];
                            ptsTo(verified) := [verified];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ]*/
                            if (_imopVarPre290) {
                                /*OUT: [ptsTo(class) := [class];
                                ptsTo(verified) := [verified];
                                ptsTo(rhs.f) := [forcing.f];
                                ptsTo(u.f) := [temp.f];
                                ptsTo(ue.f) := [dtemp.f];
                                ]*/
                                _imopVarPre290 = no_time_steps == 200;
                            }
                            /*OUT: [ptsTo(class) := [class];
                            ptsTo(verified) := [verified];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ]*/
                            _imopVarPre289 = _imopVarPre290;
                        }
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        _imopVarPre288 = _imopVarPre289;
                    }
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    if (_imopVarPre288) {
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        *class = 'C';
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        dtref = 1.0e-4;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        xcrref[0] = 0.62398116551764615e+04;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        xcrref[1] = 0.50793239190423964e+03;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        xcrref[2] = 0.15423530093013596e+04;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        xcrref[3] = 0.13302387929291190e+04;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        xcrref[4] = 0.11604087428436455e+05;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        xceref[0] = 0.16462008369091265e+03;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        xceref[1] = 0.11497107903824313e+02;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        xceref[2] = 0.41207446207461508e+02;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        xceref[3] = 0.37087651059694167e+02;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        xceref[4] = 0.36211053051841265e+03;
                    } else {
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        *verified = 0;
                    }
                }
            }
        }
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double _imopVarPre292;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double _imopVarPre293;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre292 = (xcr[m] - xcrref[m]) / xcrref[m];
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre293 = fabs(_imopVarPre292);
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xcrdif[m] = _imopVarPre293;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double _imopVarPre295;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double _imopVarPre296;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre295 = (xce[m] - xceref[m]) / xceref[m];
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre296 = fabs(_imopVarPre295);
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        xcedif[m] = _imopVarPre296;
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    if (*class != 'U') {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        char _imopVarPre298;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre298 = *class;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        printf(" Verification being performed for class %1c\n", _imopVarPre298);
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        printf(" accuracy setting for epsilon = %20.13e\n", epsilon);
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double _imopVarPre301;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        double _imopVarPre302;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre301 = dt - dtref;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        _imopVarPre302 = fabs(_imopVarPre301);
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        if (_imopVarPre302 > epsilon) {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            *verified = 0;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            *class = 'U';
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            printf(" DT does not match the reference value of %15.8e\n", dtref);
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
        }
    } else {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        printf(" Unknown class\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    if (*class != 'U') {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        printf(" Comparison of RMS-norms of residual\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
    } else {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        printf(" RMS-norms of residual\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        if (*class == 'U') {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double _imopVarPre304;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre304 = xcr[m];
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            printf("          %2d%20.13e\n", m, _imopVarPre304);
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
        } else {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            if (xcrdif[m] > epsilon) {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                *verified = 0;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double _imopVarPre308;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double _imopVarPre309;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double _imopVarPre310;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre308 = xcrdif[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre309 = xcrref[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre310 = xcr[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre310, _imopVarPre309, _imopVarPre308);
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
            } else {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double _imopVarPre314;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double _imopVarPre315;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double _imopVarPre316;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre314 = xcrdif[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre315 = xcrref[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre316 = xcr[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre316, _imopVarPre315, _imopVarPre314);
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
            }
        }
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    if (*class != 'U') {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        printf(" Comparison of RMS-norms of solution error\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
    } else {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        printf(" RMS-norms of solution error\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        if (*class == 'U') {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double _imopVarPre318;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre318 = xce[m];
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            printf("          %2d%20.13e\n", m, _imopVarPre318);
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
        } else {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            if (xcedif[m] > epsilon) {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                *verified = 0;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double _imopVarPre322;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double _imopVarPre323;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double _imopVarPre324;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre322 = xcedif[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre323 = xceref[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre324 = xce[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre324, _imopVarPre323, _imopVarPre322);
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
            } else {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double _imopVarPre328;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double _imopVarPre329;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double _imopVarPre330;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre328 = xcedif[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre329 = xceref[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre330 = xce[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre330, _imopVarPre329, _imopVarPre328);
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
            }
        }
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    if (*class == 'U') {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        printf(" No reference values provided\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        printf(" No verification performed\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
    } else {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        if (*verified == 1) {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            printf(" Verification Successful\n");
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
        } else {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            printf(" Verification failed\n");
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
        }
    }
}
static void x_solve() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    lhsx();
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    x_solve_cell();
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    x_backsubstitute();
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
}
static void x_backsubstitute() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int k;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int m;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int n;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = grid_points[0] - 2; i >= 0; i--) {
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (n = 0; n < 5; n++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - lhs[i][j][k][2][m][n] * rhs[i + 1][j][k][n];
                    }
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
    }
}
static void x_solve_cell() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int k;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int isize;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    isize = grid_points[0] - 1;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(_imopVarPre334) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double *_imopVarPre334;
            /*OUT: [ptsTo(_imopVarPre334) := [nullCell];
            ptsTo(_imopVarPre335) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre335 )[5];
            /*OUT: [ptsTo(_imopVarPre334) := [nullCell];
            ptsTo(_imopVarPre335) := [nullCell];
            ptsTo(_imopVarPre336) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre336 )[5];
            /*OUT: [ptsTo(_imopVarPre334) := [rhs.f];
            ptsTo(_imopVarPre335) := [nullCell];
            ptsTo(_imopVarPre336) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre334 = rhs[0][j][k];
            /*OUT: [ptsTo(_imopVarPre334) := [rhs.f];
            ptsTo(_imopVarPre335) := [lhs.f];
            ptsTo(_imopVarPre336) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre335 = lhs[0][j][k][2];
            /*OUT: [ptsTo(_imopVarPre334) := [rhs.f];
            ptsTo(_imopVarPre335) := [lhs.f];
            ptsTo(_imopVarPre336) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre336 = lhs[0][j][k][1];
            /*OUT: [ptsTo(_imopVarPre334) := [rhs.f];
            ptsTo(_imopVarPre335) := [lhs.f];
            ptsTo(_imopVarPre336) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            binvcrhs(_imopVarPre336, _imopVarPre335, _imopVarPre334);
            /*OUT: [ptsTo(_imopVarPre334) := [rhs.f];
            ptsTo(_imopVarPre335) := [lhs.f];
            ptsTo(_imopVarPre336) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < isize; i++) {
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(_imopVarPre340) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double *_imopVarPre340;
                /*OUT: [ptsTo(_imopVarPre340) := [nullCell];
                ptsTo(_imopVarPre341) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double *_imopVarPre341;
                /*OUT: [ptsTo(_imopVarPre340) := [nullCell];
                ptsTo(_imopVarPre341) := [nullCell];
                ptsTo(_imopVarPre342) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre342 )[5];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [nullCell];
                ptsTo(_imopVarPre342) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre340 = rhs[i][j][k];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre341 = rhs[i - 1][j][k];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre342 = lhs[i][j][k][0];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                matvec_sub(_imopVarPre342, _imopVarPre341, _imopVarPre340);
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre346 )[5];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [nullCell];
                ptsTo(_imopVarPre347) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre347 )[5];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [nullCell];
                ptsTo(_imopVarPre347) := [nullCell];
                ptsTo(_imopVarPre348) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre348 )[5];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [lhs.f];
                ptsTo(_imopVarPre347) := [nullCell];
                ptsTo(_imopVarPre348) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre346 = lhs[i][j][k][1];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [lhs.f];
                ptsTo(_imopVarPre347) := [lhs.f];
                ptsTo(_imopVarPre348) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre347 = lhs[i - 1][j][k][2];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [lhs.f];
                ptsTo(_imopVarPre347) := [lhs.f];
                ptsTo(_imopVarPre348) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre348 = lhs[i][j][k][0];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [lhs.f];
                ptsTo(_imopVarPre347) := [lhs.f];
                ptsTo(_imopVarPre348) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                matmul_sub(_imopVarPre348, _imopVarPre347, _imopVarPre346);
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [lhs.f];
                ptsTo(_imopVarPre347) := [lhs.f];
                ptsTo(_imopVarPre348) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [lhs.f];
                ptsTo(_imopVarPre347) := [lhs.f];
                ptsTo(_imopVarPre348) := [lhs.f];
                ptsTo(_imopVarPre352) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double *_imopVarPre352;
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [lhs.f];
                ptsTo(_imopVarPre347) := [lhs.f];
                ptsTo(_imopVarPre348) := [lhs.f];
                ptsTo(_imopVarPre352) := [nullCell];
                ptsTo(_imopVarPre353) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre353 )[5];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [lhs.f];
                ptsTo(_imopVarPre347) := [lhs.f];
                ptsTo(_imopVarPre348) := [lhs.f];
                ptsTo(_imopVarPre352) := [nullCell];
                ptsTo(_imopVarPre353) := [nullCell];
                ptsTo(_imopVarPre354) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre354 )[5];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [lhs.f];
                ptsTo(_imopVarPre347) := [lhs.f];
                ptsTo(_imopVarPre348) := [lhs.f];
                ptsTo(_imopVarPre352) := [rhs.f];
                ptsTo(_imopVarPre353) := [nullCell];
                ptsTo(_imopVarPre354) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre352 = rhs[i][j][k];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [lhs.f];
                ptsTo(_imopVarPre347) := [lhs.f];
                ptsTo(_imopVarPre348) := [lhs.f];
                ptsTo(_imopVarPre352) := [rhs.f];
                ptsTo(_imopVarPre353) := [lhs.f];
                ptsTo(_imopVarPre354) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre353 = lhs[i][j][k][2];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [lhs.f];
                ptsTo(_imopVarPre347) := [lhs.f];
                ptsTo(_imopVarPre348) := [lhs.f];
                ptsTo(_imopVarPre352) := [rhs.f];
                ptsTo(_imopVarPre353) := [lhs.f];
                ptsTo(_imopVarPre354) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre354 = lhs[i][j][k][1];
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [lhs.f];
                ptsTo(_imopVarPre347) := [lhs.f];
                ptsTo(_imopVarPre348) := [lhs.f];
                ptsTo(_imopVarPre352) := [rhs.f];
                ptsTo(_imopVarPre353) := [lhs.f];
                ptsTo(_imopVarPre354) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                binvcrhs(_imopVarPre354, _imopVarPre353, _imopVarPre352);
                /*OUT: [ptsTo(_imopVarPre340) := [rhs.f];
                ptsTo(_imopVarPre341) := [rhs.f];
                ptsTo(_imopVarPre342) := [lhs.f];
                ptsTo(_imopVarPre346) := [lhs.f];
                ptsTo(_imopVarPre347) := [lhs.f];
                ptsTo(_imopVarPre348) := [lhs.f];
                ptsTo(_imopVarPre352) := [rhs.f];
                ptsTo(_imopVarPre353) := [lhs.f];
                ptsTo(_imopVarPre354) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
    }
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (j = 1; j < grid_points[1] - 1; j++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(_imopVarPre358) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double *_imopVarPre358;
            /*OUT: [ptsTo(_imopVarPre358) := [nullCell];
            ptsTo(_imopVarPre359) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double *_imopVarPre359;
            /*OUT: [ptsTo(_imopVarPre358) := [nullCell];
            ptsTo(_imopVarPre359) := [nullCell];
            ptsTo(_imopVarPre360) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre360 )[5];
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [nullCell];
            ptsTo(_imopVarPre360) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre358 = rhs[isize][j][k];
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre359 = rhs[isize - 1][j][k];
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre360 = lhs[isize][j][k][0];
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            matvec_sub(_imopVarPre360, _imopVarPre359, _imopVarPre358);
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre364 )[5];
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [nullCell];
            ptsTo(_imopVarPre365) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre365 )[5];
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [nullCell];
            ptsTo(_imopVarPre365) := [nullCell];
            ptsTo(_imopVarPre366) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre366 )[5];
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [lhs.f];
            ptsTo(_imopVarPre365) := [nullCell];
            ptsTo(_imopVarPre366) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre364 = lhs[isize][j][k][1];
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [lhs.f];
            ptsTo(_imopVarPre365) := [lhs.f];
            ptsTo(_imopVarPre366) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre365 = lhs[isize - 1][j][k][2];
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [lhs.f];
            ptsTo(_imopVarPre365) := [lhs.f];
            ptsTo(_imopVarPre366) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre366 = lhs[isize][j][k][0];
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [lhs.f];
            ptsTo(_imopVarPre365) := [lhs.f];
            ptsTo(_imopVarPre366) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            matmul_sub(_imopVarPre366, _imopVarPre365, _imopVarPre364);
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [lhs.f];
            ptsTo(_imopVarPre365) := [lhs.f];
            ptsTo(_imopVarPre366) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [lhs.f];
            ptsTo(_imopVarPre365) := [lhs.f];
            ptsTo(_imopVarPre366) := [lhs.f];
            ptsTo(_imopVarPre369) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double *_imopVarPre369;
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [lhs.f];
            ptsTo(_imopVarPre365) := [lhs.f];
            ptsTo(_imopVarPre366) := [lhs.f];
            ptsTo(_imopVarPre369) := [nullCell];
            ptsTo(_imopVarPre370) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre370 )[5];
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [lhs.f];
            ptsTo(_imopVarPre365) := [lhs.f];
            ptsTo(_imopVarPre366) := [lhs.f];
            ptsTo(_imopVarPre369) := [rhs.f];
            ptsTo(_imopVarPre370) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre369 = rhs[i][j][k];
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [lhs.f];
            ptsTo(_imopVarPre365) := [lhs.f];
            ptsTo(_imopVarPre366) := [lhs.f];
            ptsTo(_imopVarPre369) := [rhs.f];
            ptsTo(_imopVarPre370) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre370 = lhs[i][j][k][1];
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [lhs.f];
            ptsTo(_imopVarPre365) := [lhs.f];
            ptsTo(_imopVarPre366) := [lhs.f];
            ptsTo(_imopVarPre369) := [rhs.f];
            ptsTo(_imopVarPre370) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            binvrhs(_imopVarPre370, _imopVarPre369);
            /*OUT: [ptsTo(_imopVarPre358) := [rhs.f];
            ptsTo(_imopVarPre359) := [rhs.f];
            ptsTo(_imopVarPre360) := [lhs.f];
            ptsTo(_imopVarPre364) := [lhs.f];
            ptsTo(_imopVarPre365) := [lhs.f];
            ptsTo(_imopVarPre366) := [lhs.f];
            ptsTo(_imopVarPre369) := [rhs.f];
            ptsTo(_imopVarPre370) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
}
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(ablock) := [lhs.f];
]*/
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(ablock) := [lhs.f];
ptsTo(avec) := [rhs.f];
]*/
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(bvec) := [rhs.f];
ptsTo(ablock) := [lhs.f];
ptsTo(avec) := [rhs.f];
]*/
static void matvec_sub(double ablock[5][5], double avec[5] , double bvec[5]) {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(bvec) := [rhs.f];
    ptsTo(ablock) := [lhs.f];
    ptsTo(avec) := [rhs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(bvec) := [rhs.f];
    ptsTo(ablock) := [lhs.f];
    ptsTo(avec) := [rhs.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(bvec) := [rhs.f];
    ptsTo(ablock) := [lhs.f];
    ptsTo(avec) := [rhs.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(bvec) := [rhs.f];
    ptsTo(ablock) := [lhs.f];
    ptsTo(avec) := [rhs.f];
    ]*/
    for (i = 0; i < 5; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(bvec) := [rhs.f];
        ptsTo(ablock) := [lhs.f];
        ptsTo(avec) := [rhs.f];
        ]*/
        bvec[i] = bvec[i] - ablock[i][0] * avec[0] - ablock[i][1] * avec[1] - ablock[i][2] * avec[2] - ablock[i][3] * avec[3] - ablock[i][4] * avec[4];
    }
}
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(ablock) := [lhs.f];
]*/
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(ablock) := [lhs.f];
ptsTo(bblock) := [lhs.f];
]*/
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(ablock) := [lhs.f];
ptsTo(cblock) := [lhs.f];
ptsTo(bblock) := [lhs.f];
]*/
static void matmul_sub(double ablock[5][5], double bblock[5][5] , double cblock[5][5]) {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(ablock) := [lhs.f];
    ptsTo(cblock) := [lhs.f];
    ptsTo(bblock) := [lhs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(ablock) := [lhs.f];
    ptsTo(cblock) := [lhs.f];
    ptsTo(bblock) := [lhs.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(ablock) := [lhs.f];
    ptsTo(cblock) := [lhs.f];
    ptsTo(bblock) := [lhs.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(ablock) := [lhs.f];
    ptsTo(cblock) := [lhs.f];
    ptsTo(bblock) := [lhs.f];
    ]*/
    for (j = 0; j < 5; j++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(ablock) := [lhs.f];
        ptsTo(cblock) := [lhs.f];
        ptsTo(bblock) := [lhs.f];
        ]*/
        cblock[0][j] = cblock[0][j] - ablock[0][0] * bblock[0][j] - ablock[0][1] * bblock[1][j] - ablock[0][2] * bblock[2][j] - ablock[0][3] * bblock[3][j] - ablock[0][4] * bblock[4][j];
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(ablock) := [lhs.f];
        ptsTo(cblock) := [lhs.f];
        ptsTo(bblock) := [lhs.f];
        ]*/
        cblock[1][j] = cblock[1][j] - ablock[1][0] * bblock[0][j] - ablock[1][1] * bblock[1][j] - ablock[1][2] * bblock[2][j] - ablock[1][3] * bblock[3][j] - ablock[1][4] * bblock[4][j];
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(ablock) := [lhs.f];
        ptsTo(cblock) := [lhs.f];
        ptsTo(bblock) := [lhs.f];
        ]*/
        cblock[2][j] = cblock[2][j] - ablock[2][0] * bblock[0][j] - ablock[2][1] * bblock[1][j] - ablock[2][2] * bblock[2][j] - ablock[2][3] * bblock[3][j] - ablock[2][4] * bblock[4][j];
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(ablock) := [lhs.f];
        ptsTo(cblock) := [lhs.f];
        ptsTo(bblock) := [lhs.f];
        ]*/
        cblock[3][j] = cblock[3][j] - ablock[3][0] * bblock[0][j] - ablock[3][1] * bblock[1][j] - ablock[3][2] * bblock[2][j] - ablock[3][3] * bblock[3][j] - ablock[3][4] * bblock[4][j];
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(ablock) := [lhs.f];
        ptsTo(cblock) := [lhs.f];
        ptsTo(bblock) := [lhs.f];
        ]*/
        cblock[4][j] = cblock[4][j] - ablock[4][0] * bblock[0][j] - ablock[4][1] * bblock[1][j] - ablock[4][2] * bblock[2][j] - ablock[4][3] * bblock[3][j] - ablock[4][4] * bblock[4][j];
    }
}
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(lhs) := [lhs.f];
]*/
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(c) := [lhs.f];
ptsTo(lhs) := [lhs.f];
]*/
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(c) := [lhs.f];
ptsTo(lhs) := [lhs.f];
ptsTo(r) := [rhs.f];
]*/
static void binvcrhs(double lhs[5][5], double c[5][5] , double r[5]) {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    double pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    double coeff;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    pivot = 1.00 / lhs[0][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[0][1] = lhs[0][1] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[0][2] = lhs[0][2] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[0][3] = lhs[0][3] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[0][4] = lhs[0][4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][0] = c[0][0] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][1] = c[0][1] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][2] = c[0][2] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][3] = c[0][3] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][4] = c[0][4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[0] = r[0] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[1][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[1][1] = lhs[1][1] - coeff * lhs[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[1][2] = lhs[1][2] - coeff * lhs[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][0] = c[1][0] - coeff * c[0][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][1] = c[1][1] - coeff * c[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][2] = c[1][2] - coeff * c[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][3] = c[1][3] - coeff * c[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][4] = c[1][4] - coeff * c[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[1] = r[1] - coeff * r[0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[2][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[2][1] = lhs[2][1] - coeff * lhs[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][0] = c[2][0] - coeff * c[0][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][1] = c[2][1] - coeff * c[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][2] = c[2][2] - coeff * c[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][3] = c[2][3] - coeff * c[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][4] = c[2][4] - coeff * c[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[2] = r[2] - coeff * r[0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[3][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[3][1] = lhs[3][1] - coeff * lhs[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][0] = c[3][0] - coeff * c[0][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][1] = c[3][1] - coeff * c[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][2] = c[3][2] - coeff * c[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][3] = c[3][3] - coeff * c[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][4] = c[3][4] - coeff * c[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[3] = r[3] - coeff * r[0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[4][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[4][1] = lhs[4][1] - coeff * lhs[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][0] = c[4][0] - coeff * c[0][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][1] = c[4][1] - coeff * c[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][2] = c[4][2] - coeff * c[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][3] = c[4][3] - coeff * c[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][4] = c[4][4] - coeff * c[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[4] = r[4] - coeff * r[0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    pivot = 1.00 / lhs[1][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[1][2] = lhs[1][2] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[1][3] = lhs[1][3] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[1][4] = lhs[1][4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][0] = c[1][0] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][1] = c[1][1] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][2] = c[1][2] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][3] = c[1][3] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][4] = c[1][4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[1] = r[1] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[0][2] = lhs[0][2] - coeff * lhs[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][0] = c[0][0] - coeff * c[1][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][1] = c[0][1] - coeff * c[1][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][2] = c[0][2] - coeff * c[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][3] = c[0][3] - coeff * c[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][4] = c[0][4] - coeff * c[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[0] = r[0] - coeff * r[1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[2][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][0] = c[2][0] - coeff * c[1][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][1] = c[2][1] - coeff * c[1][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][2] = c[2][2] - coeff * c[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][3] = c[2][3] - coeff * c[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][4] = c[2][4] - coeff * c[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[2] = r[2] - coeff * r[1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[3][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][0] = c[3][0] - coeff * c[1][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][1] = c[3][1] - coeff * c[1][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][2] = c[3][2] - coeff * c[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][3] = c[3][3] - coeff * c[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][4] = c[3][4] - coeff * c[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[3] = r[3] - coeff * r[1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[4][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][0] = c[4][0] - coeff * c[1][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][1] = c[4][1] - coeff * c[1][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][2] = c[4][2] - coeff * c[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][3] = c[4][3] - coeff * c[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][4] = c[4][4] - coeff * c[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[4] = r[4] - coeff * r[1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    pivot = 1.00 / lhs[2][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[2][3] = lhs[2][3] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[2][4] = lhs[2][4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][0] = c[2][0] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][1] = c[2][1] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][2] = c[2][2] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][3] = c[2][3] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][4] = c[2][4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[2] = r[2] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][0] = c[0][0] - coeff * c[2][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][1] = c[0][1] - coeff * c[2][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][2] = c[0][2] - coeff * c[2][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][3] = c[0][3] - coeff * c[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][4] = c[0][4] - coeff * c[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[0] = r[0] - coeff * r[2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][0] = c[1][0] - coeff * c[2][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][1] = c[1][1] - coeff * c[2][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][2] = c[1][2] - coeff * c[2][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][3] = c[1][3] - coeff * c[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][4] = c[1][4] - coeff * c[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[1] = r[1] - coeff * r[2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[3][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][0] = c[3][0] - coeff * c[2][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][1] = c[3][1] - coeff * c[2][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][2] = c[3][2] - coeff * c[2][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][3] = c[3][3] - coeff * c[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][4] = c[3][4] - coeff * c[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[3] = r[3] - coeff * r[2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[4][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][0] = c[4][0] - coeff * c[2][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][1] = c[4][1] - coeff * c[2][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][2] = c[4][2] - coeff * c[2][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][3] = c[4][3] - coeff * c[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][4] = c[4][4] - coeff * c[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[4] = r[4] - coeff * r[2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    pivot = 1.00 / lhs[3][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[3][4] = lhs[3][4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][0] = c[3][0] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][1] = c[3][1] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][2] = c[3][2] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][3] = c[3][3] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][4] = c[3][4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[3] = r[3] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][0] = c[0][0] - coeff * c[3][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][1] = c[0][1] - coeff * c[3][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][2] = c[0][2] - coeff * c[3][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][3] = c[0][3] - coeff * c[3][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][4] = c[0][4] - coeff * c[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[0] = r[0] - coeff * r[3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][0] = c[1][0] - coeff * c[3][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][1] = c[1][1] - coeff * c[3][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][2] = c[1][2] - coeff * c[3][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][3] = c[1][3] - coeff * c[3][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][4] = c[1][4] - coeff * c[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[1] = r[1] - coeff * r[3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][0] = c[2][0] - coeff * c[3][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][1] = c[2][1] - coeff * c[3][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][2] = c[2][2] - coeff * c[3][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][3] = c[2][3] - coeff * c[3][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][4] = c[2][4] - coeff * c[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[2] = r[2] - coeff * r[3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[4][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][0] = c[4][0] - coeff * c[3][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][1] = c[4][1] - coeff * c[3][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][2] = c[4][2] - coeff * c[3][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][3] = c[4][3] - coeff * c[3][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][4] = c[4][4] - coeff * c[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[4] = r[4] - coeff * r[3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    pivot = 1.00 / lhs[4][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][0] = c[4][0] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][1] = c[4][1] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][2] = c[4][2] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][3] = c[4][3] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[4][4] = c[4][4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[4] = r[4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][0] = c[0][0] - coeff * c[4][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][1] = c[0][1] - coeff * c[4][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][2] = c[0][2] - coeff * c[4][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][3] = c[0][3] - coeff * c[4][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[0][4] = c[0][4] - coeff * c[4][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[0] = r[0] - coeff * r[4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][0] = c[1][0] - coeff * c[4][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][1] = c[1][1] - coeff * c[4][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][2] = c[1][2] - coeff * c[4][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][3] = c[1][3] - coeff * c[4][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[1][4] = c[1][4] - coeff * c[4][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[1] = r[1] - coeff * r[4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][0] = c[2][0] - coeff * c[4][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][1] = c[2][1] - coeff * c[4][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][2] = c[2][2] - coeff * c[4][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][3] = c[2][3] - coeff * c[4][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[2][4] = c[2][4] - coeff * c[4][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[2] = r[2] - coeff * r[4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    coeff = lhs[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][0] = c[3][0] - coeff * c[4][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][1] = c[3][1] - coeff * c[4][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][2] = c[3][2] - coeff * c[4][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][3] = c[3][3] - coeff * c[4][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    c[3][4] = c[3][4] - coeff * c[4][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(c) := [lhs.f];
    ptsTo(lhs) := [lhs.f];
    ptsTo(r) := [rhs.f];
    ]*/
    r[3] = r[3] - coeff * r[4];
}
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(lhs) := [lhs.f];
]*/
/*OUT: [ptsTo(rhs.f) := [forcing.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(r) := [rhs.f];
ptsTo(lhs) := [lhs.f];
]*/
static void binvrhs(double lhs[5][5], double r[5]) {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    double pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    double coeff;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    pivot = 1.00 / lhs[0][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[0][1] = lhs[0][1] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[0][2] = lhs[0][2] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[0][3] = lhs[0][3] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[0][4] = lhs[0][4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[0] = r[0] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[1][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[1][1] = lhs[1][1] - coeff * lhs[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[1][2] = lhs[1][2] - coeff * lhs[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[1] = r[1] - coeff * r[0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[2][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[2][1] = lhs[2][1] - coeff * lhs[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[2] = r[2] - coeff * r[0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[3][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[3][1] = lhs[3][1] - coeff * lhs[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[3] = r[3] - coeff * r[0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[4][0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[4][1] = lhs[4][1] - coeff * lhs[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[4] = r[4] - coeff * r[0];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    pivot = 1.00 / lhs[1][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[1][2] = lhs[1][2] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[1][3] = lhs[1][3] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[1][4] = lhs[1][4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[1] = r[1] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[0][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[0][2] = lhs[0][2] - coeff * lhs[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[0] = r[0] - coeff * r[1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[2][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[2] = r[2] - coeff * r[1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[3][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[3] = r[3] - coeff * r[1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[4][1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[4] = r[4] - coeff * r[1];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    pivot = 1.00 / lhs[2][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[2][3] = lhs[2][3] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[2][4] = lhs[2][4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[2] = r[2] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[0][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[0] = r[0] - coeff * r[2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[1][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[1] = r[1] - coeff * r[2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[3][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[3] = r[3] - coeff * r[2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[4][2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[4] = r[4] - coeff * r[2];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    pivot = 1.00 / lhs[3][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[3][4] = lhs[3][4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[3] = r[3] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[0][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[0] = r[0] - coeff * r[3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[1][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[1] = r[1] - coeff * r[3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[2][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[2] = r[2] - coeff * r[3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[4][3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[4] = r[4] - coeff * r[3];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    pivot = 1.00 / lhs[4][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[4] = r[4] * pivot;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[0][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[0] = r[0] - coeff * r[4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[1][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[1] = r[1] - coeff * r[4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[2][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[2] = r[2] - coeff * r[4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    coeff = lhs[3][4];
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(r) := [rhs.f];
    ptsTo(lhs) := [lhs.f];
    ]*/
    r[3] = r[3] - coeff * r[4];
}
static void y_solve() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    lhsy();
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    y_solve_cell();
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    y_backsubstitute();
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
}
static void y_backsubstitute() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int k;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int m;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int n;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (j = grid_points[1] - 2; j >= 0; j--) {
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 1; i < grid_points[0] - 1; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (n = 0; n < 5; n++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - lhs[i][j][k][2][m][n] * rhs[i][j + 1][k][n];
                    }
                }
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
    }
}
static void y_solve_cell() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int k;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int jsize;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    jsize = grid_points[1] - 1;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(_imopVarPre374) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double *_imopVarPre374;
            /*OUT: [ptsTo(_imopVarPre374) := [nullCell];
            ptsTo(_imopVarPre375) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre375 )[5];
            /*OUT: [ptsTo(_imopVarPre374) := [nullCell];
            ptsTo(_imopVarPre375) := [nullCell];
            ptsTo(_imopVarPre376) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre376 )[5];
            /*OUT: [ptsTo(_imopVarPre374) := [rhs.f];
            ptsTo(_imopVarPre375) := [nullCell];
            ptsTo(_imopVarPre376) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre374 = rhs[i][0][k];
            /*OUT: [ptsTo(_imopVarPre374) := [rhs.f];
            ptsTo(_imopVarPre375) := [lhs.f];
            ptsTo(_imopVarPre376) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre375 = lhs[i][0][k][2];
            /*OUT: [ptsTo(_imopVarPre374) := [rhs.f];
            ptsTo(_imopVarPre375) := [lhs.f];
            ptsTo(_imopVarPre376) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre376 = lhs[i][0][k][1];
            /*OUT: [ptsTo(_imopVarPre374) := [rhs.f];
            ptsTo(_imopVarPre375) := [lhs.f];
            ptsTo(_imopVarPre376) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            binvcrhs(_imopVarPre376, _imopVarPre375, _imopVarPre374);
            /*OUT: [ptsTo(_imopVarPre374) := [rhs.f];
            ptsTo(_imopVarPre375) := [lhs.f];
            ptsTo(_imopVarPre376) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (j = 1; j < jsize; j++) {
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 1; i < grid_points[0] - 1; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(_imopVarPre380) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double *_imopVarPre380;
                /*OUT: [ptsTo(_imopVarPre380) := [nullCell];
                ptsTo(_imopVarPre381) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double *_imopVarPre381;
                /*OUT: [ptsTo(_imopVarPre380) := [nullCell];
                ptsTo(_imopVarPre381) := [nullCell];
                ptsTo(_imopVarPre382) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre382 )[5];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [nullCell];
                ptsTo(_imopVarPre382) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre380 = rhs[i][j][k];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre381 = rhs[i][j - 1][k];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre382 = lhs[i][j][k][0];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                matvec_sub(_imopVarPre382, _imopVarPre381, _imopVarPre380);
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre386 )[5];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [nullCell];
                ptsTo(_imopVarPre387) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre387 )[5];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [nullCell];
                ptsTo(_imopVarPre387) := [nullCell];
                ptsTo(_imopVarPre388) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre388 )[5];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [lhs.f];
                ptsTo(_imopVarPre387) := [nullCell];
                ptsTo(_imopVarPre388) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre386 = lhs[i][j][k][1];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [lhs.f];
                ptsTo(_imopVarPre387) := [lhs.f];
                ptsTo(_imopVarPre388) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre387 = lhs[i][j - 1][k][2];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [lhs.f];
                ptsTo(_imopVarPre387) := [lhs.f];
                ptsTo(_imopVarPre388) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre388 = lhs[i][j][k][0];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [lhs.f];
                ptsTo(_imopVarPre387) := [lhs.f];
                ptsTo(_imopVarPre388) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                matmul_sub(_imopVarPre388, _imopVarPre387, _imopVarPre386);
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [lhs.f];
                ptsTo(_imopVarPre387) := [lhs.f];
                ptsTo(_imopVarPre388) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [lhs.f];
                ptsTo(_imopVarPre387) := [lhs.f];
                ptsTo(_imopVarPre388) := [lhs.f];
                ptsTo(_imopVarPre392) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double *_imopVarPre392;
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [lhs.f];
                ptsTo(_imopVarPre387) := [lhs.f];
                ptsTo(_imopVarPre388) := [lhs.f];
                ptsTo(_imopVarPre392) := [nullCell];
                ptsTo(_imopVarPre393) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre393 )[5];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [lhs.f];
                ptsTo(_imopVarPre387) := [lhs.f];
                ptsTo(_imopVarPre388) := [lhs.f];
                ptsTo(_imopVarPre392) := [nullCell];
                ptsTo(_imopVarPre393) := [nullCell];
                ptsTo(_imopVarPre394) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre394 )[5];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [lhs.f];
                ptsTo(_imopVarPre387) := [lhs.f];
                ptsTo(_imopVarPre388) := [lhs.f];
                ptsTo(_imopVarPre392) := [rhs.f];
                ptsTo(_imopVarPre393) := [nullCell];
                ptsTo(_imopVarPre394) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre392 = rhs[i][j][k];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [lhs.f];
                ptsTo(_imopVarPre387) := [lhs.f];
                ptsTo(_imopVarPre388) := [lhs.f];
                ptsTo(_imopVarPre392) := [rhs.f];
                ptsTo(_imopVarPre393) := [lhs.f];
                ptsTo(_imopVarPre394) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre393 = lhs[i][j][k][2];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [lhs.f];
                ptsTo(_imopVarPre387) := [lhs.f];
                ptsTo(_imopVarPre388) := [lhs.f];
                ptsTo(_imopVarPre392) := [rhs.f];
                ptsTo(_imopVarPre393) := [lhs.f];
                ptsTo(_imopVarPre394) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre394 = lhs[i][j][k][1];
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [lhs.f];
                ptsTo(_imopVarPre387) := [lhs.f];
                ptsTo(_imopVarPre388) := [lhs.f];
                ptsTo(_imopVarPre392) := [rhs.f];
                ptsTo(_imopVarPre393) := [lhs.f];
                ptsTo(_imopVarPre394) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                binvcrhs(_imopVarPre394, _imopVarPre393, _imopVarPre392);
                /*OUT: [ptsTo(_imopVarPre380) := [rhs.f];
                ptsTo(_imopVarPre381) := [rhs.f];
                ptsTo(_imopVarPre382) := [lhs.f];
                ptsTo(_imopVarPre386) := [lhs.f];
                ptsTo(_imopVarPre387) := [lhs.f];
                ptsTo(_imopVarPre388) := [lhs.f];
                ptsTo(_imopVarPre392) := [rhs.f];
                ptsTo(_imopVarPre393) := [lhs.f];
                ptsTo(_imopVarPre394) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
    }
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
            /*OUT: [ptsTo(_imopVarPre398) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double *_imopVarPre398;
            /*OUT: [ptsTo(_imopVarPre398) := [nullCell];
            ptsTo(_imopVarPre399) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double *_imopVarPre399;
            /*OUT: [ptsTo(_imopVarPre398) := [nullCell];
            ptsTo(_imopVarPre399) := [nullCell];
            ptsTo(_imopVarPre400) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre400 )[5];
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [nullCell];
            ptsTo(_imopVarPre400) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre398 = rhs[i][jsize][k];
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre399 = rhs[i][jsize - 1][k];
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre400 = lhs[i][jsize][k][0];
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            matvec_sub(_imopVarPre400, _imopVarPre399, _imopVarPre398);
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre404 )[5];
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [nullCell];
            ptsTo(_imopVarPre405) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre405 )[5];
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [nullCell];
            ptsTo(_imopVarPre405) := [nullCell];
            ptsTo(_imopVarPre406) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre406 )[5];
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [lhs.f];
            ptsTo(_imopVarPre405) := [nullCell];
            ptsTo(_imopVarPre406) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre404 = lhs[i][jsize][k][1];
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [lhs.f];
            ptsTo(_imopVarPre405) := [lhs.f];
            ptsTo(_imopVarPre406) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre405 = lhs[i][jsize - 1][k][2];
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [lhs.f];
            ptsTo(_imopVarPre405) := [lhs.f];
            ptsTo(_imopVarPre406) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre406 = lhs[i][jsize][k][0];
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [lhs.f];
            ptsTo(_imopVarPre405) := [lhs.f];
            ptsTo(_imopVarPre406) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            matmul_sub(_imopVarPre406, _imopVarPre405, _imopVarPre404);
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [lhs.f];
            ptsTo(_imopVarPre405) := [lhs.f];
            ptsTo(_imopVarPre406) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [lhs.f];
            ptsTo(_imopVarPre405) := [lhs.f];
            ptsTo(_imopVarPre406) := [lhs.f];
            ptsTo(_imopVarPre409) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double *_imopVarPre409;
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [lhs.f];
            ptsTo(_imopVarPre405) := [lhs.f];
            ptsTo(_imopVarPre406) := [lhs.f];
            ptsTo(_imopVarPre409) := [nullCell];
            ptsTo(_imopVarPre410) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre410 )[5];
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [lhs.f];
            ptsTo(_imopVarPre405) := [lhs.f];
            ptsTo(_imopVarPre406) := [lhs.f];
            ptsTo(_imopVarPre409) := [rhs.f];
            ptsTo(_imopVarPre410) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre409 = rhs[i][jsize][k];
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [lhs.f];
            ptsTo(_imopVarPre405) := [lhs.f];
            ptsTo(_imopVarPre406) := [lhs.f];
            ptsTo(_imopVarPre409) := [rhs.f];
            ptsTo(_imopVarPre410) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre410 = lhs[i][jsize][k][1];
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [lhs.f];
            ptsTo(_imopVarPre405) := [lhs.f];
            ptsTo(_imopVarPre406) := [lhs.f];
            ptsTo(_imopVarPre409) := [rhs.f];
            ptsTo(_imopVarPre410) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            binvrhs(_imopVarPre410, _imopVarPre409);
            /*OUT: [ptsTo(_imopVarPre398) := [rhs.f];
            ptsTo(_imopVarPre399) := [rhs.f];
            ptsTo(_imopVarPre400) := [lhs.f];
            ptsTo(_imopVarPre404) := [lhs.f];
            ptsTo(_imopVarPre405) := [lhs.f];
            ptsTo(_imopVarPre406) := [lhs.f];
            ptsTo(_imopVarPre409) := [rhs.f];
            ptsTo(_imopVarPre410) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
}
static void z_solve() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    lhsz();
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    z_solve_cell();
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    z_backsubstitute();
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
}
static void z_backsubstitute() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int k;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int m;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int n;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (k = grid_points[2] - 2; k >= 0; k--) {
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    /*OUT: [ptsTo(rhs.f) := [forcing.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ]*/
                    for (n = 0; n < 5; n++) {
                        /*OUT: [ptsTo(rhs.f) := [forcing.f];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - lhs[i][j][k][2][m][n] * rhs[i][j][k + 1][n];
                    }
                }
            }
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
}
static void z_solve_cell() {
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int k;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    int ksize;
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    ksize = grid_points[2] - 1;
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(_imopVarPre414) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double *_imopVarPre414;
            /*OUT: [ptsTo(_imopVarPre414) := [nullCell];
            ptsTo(_imopVarPre415) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre415 )[5];
            /*OUT: [ptsTo(_imopVarPre414) := [nullCell];
            ptsTo(_imopVarPre415) := [nullCell];
            ptsTo(_imopVarPre416) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre416 )[5];
            /*OUT: [ptsTo(_imopVarPre414) := [rhs.f];
            ptsTo(_imopVarPre415) := [nullCell];
            ptsTo(_imopVarPre416) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre414 = rhs[i][j][0];
            /*OUT: [ptsTo(_imopVarPre414) := [rhs.f];
            ptsTo(_imopVarPre415) := [lhs.f];
            ptsTo(_imopVarPre416) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre415 = lhs[i][j][0][2];
            /*OUT: [ptsTo(_imopVarPre414) := [rhs.f];
            ptsTo(_imopVarPre415) := [lhs.f];
            ptsTo(_imopVarPre416) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre416 = lhs[i][j][0][1];
            /*OUT: [ptsTo(_imopVarPre414) := [rhs.f];
            ptsTo(_imopVarPre415) := [lhs.f];
            ptsTo(_imopVarPre416) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            binvcrhs(_imopVarPre416, _imopVarPre415, _imopVarPre414);
            /*OUT: [ptsTo(_imopVarPre414) := [rhs.f];
            ptsTo(_imopVarPre415) := [lhs.f];
            ptsTo(_imopVarPre416) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (k = 1; k < ksize; k++) {
#pragma omp for nowait
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (i = 1; i < grid_points[0] - 1; i++) {
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
                /*OUT: [ptsTo(_imopVarPre420) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double *_imopVarPre420;
                /*OUT: [ptsTo(_imopVarPre420) := [nullCell];
                ptsTo(_imopVarPre421) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double *_imopVarPre421;
                /*OUT: [ptsTo(_imopVarPre420) := [nullCell];
                ptsTo(_imopVarPre421) := [nullCell];
                ptsTo(_imopVarPre422) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre422 )[5];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [nullCell];
                ptsTo(_imopVarPre422) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre420 = rhs[i][j][k];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre421 = rhs[i][j][k - 1];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre422 = lhs[i][j][k][0];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                matvec_sub(_imopVarPre422, _imopVarPre421, _imopVarPre420);
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre426 )[5];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [nullCell];
                ptsTo(_imopVarPre427) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre427 )[5];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [nullCell];
                ptsTo(_imopVarPre427) := [nullCell];
                ptsTo(_imopVarPre428) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre428 )[5];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [lhs.f];
                ptsTo(_imopVarPre427) := [nullCell];
                ptsTo(_imopVarPre428) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre426 = lhs[i][j][k][1];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [lhs.f];
                ptsTo(_imopVarPre427) := [lhs.f];
                ptsTo(_imopVarPre428) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre427 = lhs[i][j][k - 1][2];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [lhs.f];
                ptsTo(_imopVarPre427) := [lhs.f];
                ptsTo(_imopVarPre428) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre428 = lhs[i][j][k][0];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [lhs.f];
                ptsTo(_imopVarPre427) := [lhs.f];
                ptsTo(_imopVarPre428) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                matmul_sub(_imopVarPre428, _imopVarPre427, _imopVarPre426);
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [lhs.f];
                ptsTo(_imopVarPre427) := [lhs.f];
                ptsTo(_imopVarPre428) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [lhs.f];
                ptsTo(_imopVarPre427) := [lhs.f];
                ptsTo(_imopVarPre428) := [lhs.f];
                ptsTo(_imopVarPre432) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double *_imopVarPre432;
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [lhs.f];
                ptsTo(_imopVarPre427) := [lhs.f];
                ptsTo(_imopVarPre428) := [lhs.f];
                ptsTo(_imopVarPre432) := [nullCell];
                ptsTo(_imopVarPre433) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre433 )[5];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [lhs.f];
                ptsTo(_imopVarPre427) := [lhs.f];
                ptsTo(_imopVarPre428) := [lhs.f];
                ptsTo(_imopVarPre432) := [nullCell];
                ptsTo(_imopVarPre433) := [nullCell];
                ptsTo(_imopVarPre434) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                double ( *_imopVarPre434 )[5];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [lhs.f];
                ptsTo(_imopVarPre427) := [lhs.f];
                ptsTo(_imopVarPre428) := [lhs.f];
                ptsTo(_imopVarPre432) := [rhs.f];
                ptsTo(_imopVarPre433) := [nullCell];
                ptsTo(_imopVarPre434) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre432 = rhs[i][j][k];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [lhs.f];
                ptsTo(_imopVarPre427) := [lhs.f];
                ptsTo(_imopVarPre428) := [lhs.f];
                ptsTo(_imopVarPre432) := [rhs.f];
                ptsTo(_imopVarPre433) := [lhs.f];
                ptsTo(_imopVarPre434) := [nullCell];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre433 = lhs[i][j][k][2];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [lhs.f];
                ptsTo(_imopVarPre427) := [lhs.f];
                ptsTo(_imopVarPre428) := [lhs.f];
                ptsTo(_imopVarPre432) := [rhs.f];
                ptsTo(_imopVarPre433) := [lhs.f];
                ptsTo(_imopVarPre434) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                _imopVarPre434 = lhs[i][j][k][1];
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [lhs.f];
                ptsTo(_imopVarPre427) := [lhs.f];
                ptsTo(_imopVarPre428) := [lhs.f];
                ptsTo(_imopVarPre432) := [rhs.f];
                ptsTo(_imopVarPre433) := [lhs.f];
                ptsTo(_imopVarPre434) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
                binvcrhs(_imopVarPre434, _imopVarPre433, _imopVarPre432);
                /*OUT: [ptsTo(_imopVarPre420) := [rhs.f];
                ptsTo(_imopVarPre421) := [rhs.f];
                ptsTo(_imopVarPre422) := [lhs.f];
                ptsTo(_imopVarPre426) := [lhs.f];
                ptsTo(_imopVarPre427) := [lhs.f];
                ptsTo(_imopVarPre428) := [lhs.f];
                ptsTo(_imopVarPre432) := [rhs.f];
                ptsTo(_imopVarPre433) := [lhs.f];
                ptsTo(_imopVarPre434) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ]*/
            }
        }
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
#pragma omp barrier
    }
#pragma omp for nowait
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        /*OUT: [ptsTo(rhs.f) := [forcing.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(_imopVarPre438) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double *_imopVarPre438;
            /*OUT: [ptsTo(_imopVarPre438) := [nullCell];
            ptsTo(_imopVarPre439) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double *_imopVarPre439;
            /*OUT: [ptsTo(_imopVarPre438) := [nullCell];
            ptsTo(_imopVarPre439) := [nullCell];
            ptsTo(_imopVarPre440) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre440 )[5];
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [nullCell];
            ptsTo(_imopVarPre440) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre438 = rhs[i][j][ksize];
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre439 = rhs[i][j][ksize - 1];
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre440 = lhs[i][j][ksize][0];
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            matvec_sub(_imopVarPre440, _imopVarPre439, _imopVarPre438);
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre444 )[5];
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [nullCell];
            ptsTo(_imopVarPre445) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre445 )[5];
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [nullCell];
            ptsTo(_imopVarPre445) := [nullCell];
            ptsTo(_imopVarPre446) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre446 )[5];
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [lhs.f];
            ptsTo(_imopVarPre445) := [nullCell];
            ptsTo(_imopVarPre446) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre444 = lhs[i][j][ksize][1];
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [lhs.f];
            ptsTo(_imopVarPre445) := [lhs.f];
            ptsTo(_imopVarPre446) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre445 = lhs[i][j][ksize - 1][2];
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [lhs.f];
            ptsTo(_imopVarPre445) := [lhs.f];
            ptsTo(_imopVarPre446) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre446 = lhs[i][j][ksize][0];
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [lhs.f];
            ptsTo(_imopVarPre445) := [lhs.f];
            ptsTo(_imopVarPre446) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            matmul_sub(_imopVarPre446, _imopVarPre445, _imopVarPre444);
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [lhs.f];
            ptsTo(_imopVarPre445) := [lhs.f];
            ptsTo(_imopVarPre446) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [lhs.f];
            ptsTo(_imopVarPre445) := [lhs.f];
            ptsTo(_imopVarPre446) := [lhs.f];
            ptsTo(_imopVarPre449) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double *_imopVarPre449;
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [lhs.f];
            ptsTo(_imopVarPre445) := [lhs.f];
            ptsTo(_imopVarPre446) := [lhs.f];
            ptsTo(_imopVarPre449) := [nullCell];
            ptsTo(_imopVarPre450) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            double ( *_imopVarPre450 )[5];
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [lhs.f];
            ptsTo(_imopVarPre445) := [lhs.f];
            ptsTo(_imopVarPre446) := [lhs.f];
            ptsTo(_imopVarPre449) := [rhs.f];
            ptsTo(_imopVarPre450) := [nullCell];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre449 = rhs[i][j][ksize];
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [lhs.f];
            ptsTo(_imopVarPre445) := [lhs.f];
            ptsTo(_imopVarPre446) := [lhs.f];
            ptsTo(_imopVarPre449) := [rhs.f];
            ptsTo(_imopVarPre450) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            _imopVarPre450 = lhs[i][j][ksize][1];
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [lhs.f];
            ptsTo(_imopVarPre445) := [lhs.f];
            ptsTo(_imopVarPre446) := [lhs.f];
            ptsTo(_imopVarPre449) := [rhs.f];
            ptsTo(_imopVarPre450) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
            binvrhs(_imopVarPre450, _imopVarPre449);
            /*OUT: [ptsTo(_imopVarPre438) := [rhs.f];
            ptsTo(_imopVarPre439) := [rhs.f];
            ptsTo(_imopVarPre440) := [lhs.f];
            ptsTo(_imopVarPre444) := [lhs.f];
            ptsTo(_imopVarPre445) := [lhs.f];
            ptsTo(_imopVarPre446) := [lhs.f];
            ptsTo(_imopVarPre449) := [rhs.f];
            ptsTo(_imopVarPre450) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ]*/
        }
    }
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(rhs.f) := [forcing.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ]*/
#pragma omp barrier
}
