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
    double mflops;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double tmax;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int nthreads = 1;
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
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - SP Benchmark\n\n");
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    fp = fopen("inputsp.data", "r");
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
        printf(" Reading from input file inputsp.data\n");
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
        fscanf(fp, "%lf", _imopVarPre145);
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
        printf(" No input file inputsp.data. Using compiled defaults");
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        niter = 100;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        dt = 0.015;
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
    _imopVarPre160 = (grid_points[0] > 12);
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    if (!_imopVarPre160) {
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre161 = (grid_points[1] > 12);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        if (!_imopVarPre161) {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ]*/
            _imopVarPre161 = (grid_points[2] > 12);
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
        printf("%d, %d, %d\n", _imopVarPre167, _imopVarPre166, _imopVarPre165);
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
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    lhsinit();
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    exact_rhs();
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    adi();
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    initialize();
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    timer_clear(1);
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    timer_start(1);
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (step = 1; step <= niter; step++) {
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        int _imopVarPre168;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre168 = step % 20 == 0;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        if (!_imopVarPre168) {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            _imopVarPre168 = step == 1;
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        if (_imopVarPre168) {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            printf(" Time step %4d\n", step);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        adi();
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
    }
#pragma omp parallel
    {
    }
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    timer_stop(1);
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    tmax = timer_read(1);
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int *_imopVarPre171;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre172) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    char *_imopVarPre172;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    _imopVarPre171 = &verified;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    _imopVarPre172 = &class;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    verify(niter, _imopVarPre172, _imopVarPre171);
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    if (tmax != 0) {
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre171) := [verified];
        ptsTo(_imopVarPre172) := [class];
        ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double _imopVarPre179;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre171) := [verified];
        ptsTo(_imopVarPre172) := [class];
        ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double _imopVarPre180;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre171) := [verified];
        ptsTo(_imopVarPre172) := [class];
        ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre179 = (double) 12;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre171) := [verified];
        ptsTo(_imopVarPre172) := [class];
        ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre180 = pow(_imopVarPre179, 3.0);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre171) := [verified];
        ptsTo(_imopVarPre172) := [class];
        ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre171) := [verified];
        ptsTo(_imopVarPre172) := [class];
        ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        mflops = (881.174 * _imopVarPre180 - 4683.91 * (((double) 12) * ((double) 12)) + 11484.5 * (double) 12 - 19272.4) * (double) niter / (tmax * 1000000.0);
    } else {
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre171) := [verified];
        ptsTo(_imopVarPre172) := [class];
        ptsTo(argv) := [heapCell#0];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        mflops = 0.0;
    }
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int _imopVarPre184;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int _imopVarPre185;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int _imopVarPre186;
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    _imopVarPre184 = grid_points[2];
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    _imopVarPre185 = grid_points[1];
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    _imopVarPre186 = grid_points[0];
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    c_print_results("SP", class, _imopVarPre186, _imopVarPre185, _imopVarPre184, niter, nthreads, tmax, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "(none)");
    /*OUT: [ptsTo(fp) := [nullCell];
    ptsTo(_imopVarPre171) := [verified];
    ptsTo(_imopVarPre172) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
}
static void add() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int m;
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    u[m][i][j][k] = u[m][i][j][k] + rhs[m][i][j][k];
                }
            }
        }
    }
}
static void adi() {
#pragma omp parallel
    {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        compute_rhs();
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    txinvr();
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp parallel
    {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        x_solve();
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        y_solve();
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    z_solve();
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    add();
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
}
/*OUT: [ptsTo(rms) := [xce.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(lhs.f) := [lhs.f];
ptsTo(rhs.f) := [forcing.f];
ptsTo(cv.f) := [us.f, ws.f, vs.f];
]*/
static void error_norm(double rms[5]) {
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int m;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int d;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double xi;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double eta;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double zeta;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double u_exact[5];
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double add;
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        rms[m] = 0.0;
    }
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 0; i <= grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xi = (double) i * dnxm1;
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 0; j <= grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(rms) := [xce.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            eta = (double) j * dnym1;
            /*OUT: [ptsTo(rms) := [xce.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(rms) := [xce.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(rms) := [xce.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(rms) := [xce.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                zeta = (double) k * dnzm1;
                /*OUT: [ptsTo(rms) := [xce.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                exact_solution(xi, eta, zeta, u_exact);
                /*OUT: [ptsTo(rms) := [xce.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(rms) := [xce.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(rms) := [xce.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(rms) := [xce.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rms) := [xce.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    add = u[m][i][j][k] - u_exact[m];
                    /*OUT: [ptsTo(rms) := [xce.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rms[m] = rms[m] + add * add;
                }
            }
        }
    }
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xce.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (d = 0; d < 3; d++) {
            /*OUT: [ptsTo(rms) := [xce.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double _imopVarPre188;
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double _imopVarPre189;
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre188 = rms[m];
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre189 = sqrt(_imopVarPre188);
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xce.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        rms[m] = _imopVarPre189;
    }
}
/*OUT: [ptsTo(rms) := [xcr.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(lhs.f) := [lhs.f];
ptsTo(rhs.f) := [forcing.f];
ptsTo(cv.f) := [us.f, ws.f, vs.f];
]*/
static void rhs_norm(double rms[5]) {
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int d;
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int m;
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double add;
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        rms[m] = 0.0;
    }
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 0; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 0; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(rms) := [xcr.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(rms) := [xcr.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(rms) := [xcr.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 0; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(rms) := [xcr.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(rms) := [xcr.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(rms) := [xcr.f];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(rms) := [xcr.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    add = rhs[m][i][j][k];
                    /*OUT: [ptsTo(rms) := [xcr.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rms[m] = rms[m] + add * add;
                }
            }
        }
    }
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(rms) := [xcr.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (d = 0; d < 3; d++) {
            /*OUT: [ptsTo(rms) := [xcr.f];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double _imopVarPre191;
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double _imopVarPre192;
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre191 = rms[m];
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre192 = sqrt(_imopVarPre191);
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(rms) := [xcr.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        rms[m] = _imopVarPre192;
    }
}
static void exact_rhs() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double dtemp[5];
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double xi;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double eta;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double zeta;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double dtpp;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int m;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int ip1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int im1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int jp1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int jm1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int km1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int kp1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 0; i <= grid_points[0] - 1; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 0; k <= grid_points[2] - 1; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    forcing[m][i][j][k] = 0.0;
                }
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (k = 1; k <= grid_points[2] - 2; k++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        zeta = (double) k * dnzm1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            eta = (double) j * dnym1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                xi = (double) i * dnxm1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                exact_solution(xi, eta, zeta, dtemp);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    ue[m][i] = dtemp[m];
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                dtpp = 1.0 / dtemp[0];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 1; m < 5; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    buf[m][i] = dtpp * dtemp[m];
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                cuf[i] = buf[1][i] * buf[1][i];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                buf[0][i] = cuf[i] + buf[2][i] * buf[2][i] + buf[3][i] * buf[3][i];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                q[i] = 0.5 * (buf[1][i] * ue[1][i] + buf[2][i] * ue[2][i] + buf[3][i] * ue[3][i]);
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                im1 = i - 1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                ip1 = i + 1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[0][i][j][k] = forcing[0][i][j][k] - tx2 * (ue[1][ip1] - ue[1][im1]) + dx1tx1 * (ue[0][ip1] - 2.0 * ue[0][i] + ue[0][im1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[1][i][j][k] = forcing[1][i][j][k] - tx2 * ((ue[1][ip1] * buf[1][ip1] + c2 * (ue[4][ip1] - q[ip1])) - (ue[1][im1] * buf[1][im1] + c2 * (ue[4][im1] - q[im1]))) + xxcon1 * (buf[1][ip1] - 2.0 * buf[1][i] + buf[1][im1]) + dx2tx1 * (ue[1][ip1] - 2.0 * ue[1][i] + ue[1][im1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[2][i][j][k] = forcing[2][i][j][k] - tx2 * (ue[2][ip1] * buf[1][ip1] - ue[2][im1] * buf[1][im1]) + xxcon2 * (buf[2][ip1] - 2.0 * buf[2][i] + buf[2][im1]) + dx3tx1 * (ue[2][ip1] - 2.0 * ue[2][i] + ue[2][im1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[3][i][j][k] = forcing[3][i][j][k] - tx2 * (ue[3][ip1] * buf[1][ip1] - ue[3][im1] * buf[1][im1]) + xxcon2 * (buf[3][ip1] - 2.0 * buf[3][i] + buf[3][im1]) + dx4tx1 * (ue[3][ip1] - 2.0 * ue[3][i] + ue[3][im1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[4][i][j][k] = forcing[4][i][j][k] - tx2 * (buf[1][ip1] * (c1 * ue[4][ip1] - c2 * q[ip1]) - buf[1][im1] * (c1 * ue[4][im1] - c2 * q[im1])) + 0.5 * xxcon3 * (buf[0][ip1] - 2.0 * buf[0][i] + buf[0][im1]) + xxcon4 * (cuf[ip1] - 2.0 * cuf[i] + cuf[im1]) + xxcon5 * (buf[4][ip1] - 2.0 * buf[4][i] + buf[4][im1]) + dx5tx1 * (ue[4][ip1] - 2.0 * ue[4][i] + ue[4][im1]);
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                i = 1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (5.0 * ue[m][i] - 4.0 * ue[m][i + 1] + ue[m][i + 2]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                i = 2;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (-4.0 * ue[m][i - 1] + 6.0 * ue[m][i] - 4.0 * ue[m][i + 1] + ue[m][i + 2]);
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (i = 3; i <= grid_points[0] - 4; i++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][i - 2] - 4.0 * ue[m][i - 1] + 6.0 * ue[m][i] - 4.0 * ue[m][i + 1] + ue[m][i + 2]);
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                i = grid_points[0] - 3;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][i - 2] - 4.0 * ue[m][i - 1] + 6.0 * ue[m][i] - 4.0 * ue[m][i + 1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                i = grid_points[0] - 2;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][i - 2] - 4.0 * ue[m][i - 1] + 5.0 * ue[m][i]);
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (k = 1; k <= grid_points[2] - 2; k++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        zeta = (double) k * dnzm1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            xi = (double) i * dnxm1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                eta = (double) j * dnym1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                exact_solution(xi, eta, zeta, dtemp);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    ue[m][j] = dtemp[m];
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                dtpp = 1.0 / dtemp[0];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 1; m < 5; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    buf[m][j] = dtpp * dtemp[m];
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                cuf[j] = buf[2][j] * buf[2][j];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                buf[0][j] = cuf[j] + buf[1][j] * buf[1][j] + buf[3][j] * buf[3][j];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                q[j] = 0.5 * (buf[1][j] * ue[1][j] + buf[2][j] * ue[2][j] + buf[3][j] * ue[3][j]);
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                jm1 = j - 1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                jp1 = j + 1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[0][i][j][k] = forcing[0][i][j][k] - ty2 * (ue[2][jp1] - ue[2][jm1]) + dy1ty1 * (ue[0][jp1] - 2.0 * ue[0][j] + ue[0][jm1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[1][i][j][k] = forcing[1][i][j][k] - ty2 * (ue[1][jp1] * buf[2][jp1] - ue[1][jm1] * buf[2][jm1]) + yycon2 * (buf[1][jp1] - 2.0 * buf[1][j] + buf[1][jm1]) + dy2ty1 * (ue[1][jp1] - 2.0 * ue[1][j] + ue[1][jm1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[2][i][j][k] = forcing[2][i][j][k] - ty2 * ((ue[2][jp1] * buf[2][jp1] + c2 * (ue[4][jp1] - q[jp1])) - (ue[2][jm1] * buf[2][jm1] + c2 * (ue[4][jm1] - q[jm1]))) + yycon1 * (buf[2][jp1] - 2.0 * buf[2][j] + buf[2][jm1]) + dy3ty1 * (ue[2][jp1] - 2.0 * ue[2][j] + ue[2][jm1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[3][i][j][k] = forcing[3][i][j][k] - ty2 * (ue[3][jp1] * buf[2][jp1] - ue[3][jm1] * buf[2][jm1]) + yycon2 * (buf[3][jp1] - 2.0 * buf[3][j] + buf[3][jm1]) + dy4ty1 * (ue[3][jp1] - 2.0 * ue[3][j] + ue[3][jm1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[4][i][j][k] = forcing[4][i][j][k] - ty2 * (buf[2][jp1] * (c1 * ue[4][jp1] - c2 * q[jp1]) - buf[2][jm1] * (c1 * ue[4][jm1] - c2 * q[jm1])) + 0.5 * yycon3 * (buf[0][jp1] - 2.0 * buf[0][j] + buf[0][jm1]) + yycon4 * (cuf[jp1] - 2.0 * cuf[j] + cuf[jm1]) + yycon5 * (buf[4][jp1] - 2.0 * buf[4][j] + buf[4][jm1]) + dy5ty1 * (ue[4][jp1] - 2.0 * ue[4][j] + ue[4][jm1]);
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                j = 1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (5.0 * ue[m][j] - 4.0 * ue[m][j + 1] + ue[m][j + 2]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                j = 2;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (-4.0 * ue[m][j - 1] + 6.0 * ue[m][j] - 4.0 * ue[m][j + 1] + ue[m][j + 2]);
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (j = 3; j <= grid_points[1] - 4; j++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][j - 2] - 4.0 * ue[m][j - 1] + 6.0 * ue[m][j] - 4.0 * ue[m][j + 1] + ue[m][j + 2]);
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                j = grid_points[1] - 3;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][j - 2] - 4.0 * ue[m][j - 1] + 6.0 * ue[m][j] - 4.0 * ue[m][j + 1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                j = grid_points[1] - 2;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][j - 2] - 4.0 * ue[m][j - 1] + 5.0 * ue[m][j]);
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        eta = (double) j * dnym1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            xi = (double) i * dnxm1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                zeta = (double) k * dnzm1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                exact_solution(xi, eta, zeta, dtemp);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    ue[m][k] = dtemp[m];
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                dtpp = 1.0 / dtemp[0];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 1; m < 5; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    buf[m][k] = dtpp * dtemp[m];
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                cuf[k] = buf[3][k] * buf[3][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                buf[0][k] = cuf[k] + buf[1][k] * buf[1][k] + buf[2][k] * buf[2][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                q[k] = 0.5 * (buf[1][k] * ue[1][k] + buf[2][k] * ue[2][k] + buf[3][k] * ue[3][k]);
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                km1 = k - 1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                kp1 = k + 1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[0][i][j][k] = forcing[0][i][j][k] - tz2 * (ue[3][kp1] - ue[3][km1]) + dz1tz1 * (ue[0][kp1] - 2.0 * ue[0][k] + ue[0][km1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[1][i][j][k] = forcing[1][i][j][k] - tz2 * (ue[1][kp1] * buf[3][kp1] - ue[1][km1] * buf[3][km1]) + zzcon2 * (buf[1][kp1] - 2.0 * buf[1][k] + buf[1][km1]) + dz2tz1 * (ue[1][kp1] - 2.0 * ue[1][k] + ue[1][km1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[2][i][j][k] = forcing[2][i][j][k] - tz2 * (ue[2][kp1] * buf[3][kp1] - ue[2][km1] * buf[3][km1]) + zzcon2 * (buf[2][kp1] - 2.0 * buf[2][k] + buf[2][km1]) + dz3tz1 * (ue[2][kp1] - 2.0 * ue[2][k] + ue[2][km1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[3][i][j][k] = forcing[3][i][j][k] - tz2 * ((ue[3][kp1] * buf[3][kp1] + c2 * (ue[4][kp1] - q[kp1])) - (ue[3][km1] * buf[3][km1] + c2 * (ue[4][km1] - q[km1]))) + zzcon1 * (buf[3][kp1] - 2.0 * buf[3][k] + buf[3][km1]) + dz4tz1 * (ue[3][kp1] - 2.0 * ue[3][k] + ue[3][km1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[4][i][j][k] = forcing[4][i][j][k] - tz2 * (buf[3][kp1] * (c1 * ue[4][kp1] - c2 * q[kp1]) - buf[3][km1] * (c1 * ue[4][km1] - c2 * q[km1])) + 0.5 * zzcon3 * (buf[0][kp1] - 2.0 * buf[0][k] + buf[0][km1]) + zzcon4 * (cuf[kp1] - 2.0 * cuf[k] + cuf[km1]) + zzcon5 * (buf[4][kp1] - 2.0 * buf[4][k] + buf[4][km1]) + dz5tz1 * (ue[4][kp1] - 2.0 * ue[4][k] + ue[4][km1]);
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                k = 1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (5.0 * ue[m][k] - 4.0 * ue[m][k + 1] + ue[m][k + 2]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                k = 2;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (-4.0 * ue[m][k - 1] + 6.0 * ue[m][k] - 4.0 * ue[m][k + 1] + ue[m][k + 2]);
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 3; k <= grid_points[2] - 4; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][k - 2] - 4.0 * ue[m][k - 1] + 6.0 * ue[m][k] - 4.0 * ue[m][k + 1] + ue[m][k + 2]);
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                k = grid_points[2] - 3;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][k - 2] - 4.0 * ue[m][k - 1] + 6.0 * ue[m][k] - 4.0 * ue[m][k + 1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                k = grid_points[2] - 2;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][k - 2] - 4.0 * ue[m][k - 1] + 5.0 * ue[m][k]);
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    forcing[m][i][j][k] = -1.0 * forcing[m][i][j][k];
                }
            }
        }
    }
}
/*OUT: [ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(lhs.f) := [lhs.f];
ptsTo(rhs.f) := [forcing.f];
ptsTo(cv.f) := [us.f, ws.f, vs.f];
]*/
/*OUT: [ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(lhs.f) := [lhs.f];
ptsTo(rhs.f) := [forcing.f];
ptsTo(cv.f) := [us.f, ws.f, vs.f];
]*/
/*OUT: [ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(lhs.f) := [lhs.f];
ptsTo(rhs.f) := [forcing.f];
ptsTo(cv.f) := [us.f, ws.f, vs.f];
]*/
/*OUT: [ptsTo(dtemp) := [temp.f, dtemp.f, Pface.f, u_exact.f];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(lhs.f) := [lhs.f];
ptsTo(rhs.f) := [forcing.f];
ptsTo(cv.f) := [us.f, ws.f, vs.f];
]*/
static void exact_solution(double xi, double eta , double zeta , double dtemp[5]) {
    /*OUT: [ptsTo(dtemp) := [temp.f, dtemp.f, Pface.f, u_exact.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int m;
    /*OUT: [ptsTo(dtemp) := [temp.f, dtemp.f, Pface.f, u_exact.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(dtemp) := [temp.f, dtemp.f, Pface.f, u_exact.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(dtemp) := [temp.f, dtemp.f, Pface.f, u_exact.f];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(dtemp) := [temp.f, dtemp.f, Pface.f, u_exact.f];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        dtemp[m] = ce[0][m] + xi * (ce[1][m] + xi * (ce[4][m] + xi * (ce[7][m] + xi * ce[10][m]))) + eta * (ce[2][m] + eta * (ce[5][m] + eta * (ce[8][m] + eta * ce[11][m]))) + zeta * (ce[3][m] + zeta * (ce[6][m] + zeta * (ce[9][m] + zeta * ce[12][m])));
    }
}
static void initialize() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int m;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int ix;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int iy;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int iz;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double xi;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double eta;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double zeta;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double Pface[2][3][5];
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double Pxi;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double Peta;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double Pzeta;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double temp[5];
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 0; i <= 12 - 1; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 0; j <= 12 - 1; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 0; k <= 12 - 1; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                u[0][i][j][k] = 1.0;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                u[1][i][j][k] = 0.0;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                u[2][i][j][k] = 0.0;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                u[3][i][j][k] = 0.0;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                u[4][i][j][k] = 1.0;
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 0; i <= grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xi = (double) i * dnxm1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 0; j <= grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            eta = (double) j * dnym1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                zeta = (double) k * dnzm1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (ix = 0; ix < 2; ix++) {
                    /*OUT: [ptsTo(_imopVarPre195) := [nullCell];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    double *_imopVarPre195;
                    /*OUT: [ptsTo(_imopVarPre195) := [nullCell];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    double _imopVarPre196;
                    /*OUT: [ptsTo(_imopVarPre195) := [Pface.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    _imopVarPre195 = &Pface[ix][0][0];
                    /*OUT: [ptsTo(_imopVarPre195) := [Pface.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    _imopVarPre196 = (double) ix;
                    /*OUT: [ptsTo(_imopVarPre195) := [Pface.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    exact_solution(_imopVarPre196, eta, zeta, _imopVarPre195);
                    /*OUT: [ptsTo(_imopVarPre195) := [Pface.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (iy = 0; iy < 2; iy++) {
                    /*OUT: [ptsTo(_imopVarPre199) := [nullCell];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    double *_imopVarPre199;
                    /*OUT: [ptsTo(_imopVarPre199) := [nullCell];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    double _imopVarPre200;
                    /*OUT: [ptsTo(_imopVarPre199) := [Pface.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    _imopVarPre199 = &Pface[iy][1][0];
                    /*OUT: [ptsTo(_imopVarPre199) := [Pface.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    _imopVarPre200 = (double) iy;
                    /*OUT: [ptsTo(_imopVarPre199) := [Pface.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    exact_solution(xi, _imopVarPre200, zeta, _imopVarPre199);
                    /*OUT: [ptsTo(_imopVarPre199) := [Pface.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (iz = 0; iz < 2; iz++) {
                    /*OUT: [ptsTo(_imopVarPre203) := [nullCell];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    double *_imopVarPre203;
                    /*OUT: [ptsTo(_imopVarPre203) := [nullCell];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    double _imopVarPre204;
                    /*OUT: [ptsTo(_imopVarPre203) := [Pface.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    _imopVarPre203 = &Pface[iz][2][0];
                    /*OUT: [ptsTo(_imopVarPre203) := [Pface.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    _imopVarPre204 = (double) iz;
                    /*OUT: [ptsTo(_imopVarPre203) := [Pface.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    exact_solution(xi, eta, _imopVarPre204, _imopVarPre203);
                    /*OUT: [ptsTo(_imopVarPre203) := [Pface.f];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    Pxi = xi * Pface[1][0][m] + (1.0 - xi) * Pface[0][0][m];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    Peta = eta * Pface[1][1][m] + (1.0 - eta) * Pface[0][1][m];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    Pzeta = zeta * Pface[1][2][m] + (1.0 - zeta) * Pface[0][2][m];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    u[m][i][j][k] = Pxi + Peta + Pzeta - Pxi * Peta - Pxi * Pzeta - Peta * Pzeta + Pxi * Peta * Pzeta;
                }
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    xi = 0.0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    i = 0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (j = 0; j < grid_points[1]; j++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        eta = (double) j * dnym1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (k = 0; k < grid_points[2]; k++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            zeta = (double) k * dnzm1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            exact_solution(xi, eta, zeta, temp);
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    xi = 1.0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    i = grid_points[0] - 1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (j = 0; j < grid_points[1]; j++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        eta = (double) j * dnym1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (k = 0; k < grid_points[2]; k++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            zeta = (double) k * dnzm1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            exact_solution(xi, eta, zeta, temp);
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    eta = 0.0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    j = 0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xi = (double) i * dnxm1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (k = 0; k < grid_points[2]; k++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            zeta = (double) k * dnzm1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            exact_solution(xi, eta, zeta, temp);
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    eta = 1.0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    j = grid_points[1] - 1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xi = (double) i * dnxm1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (k = 0; k < grid_points[2]; k++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            zeta = (double) k * dnzm1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            exact_solution(xi, eta, zeta, temp);
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    zeta = 0.0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    k = 0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xi = (double) i * dnxm1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            eta = (double) j * dnym1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            exact_solution(xi, eta, zeta, temp);
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    zeta = 1.0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    k = grid_points[2] - 1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 0; i < grid_points[0]; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xi = (double) i * dnxm1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 0; j < grid_points[1]; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            eta = (double) j * dnym1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            exact_solution(xi, eta, zeta, temp);
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
}
static void lhsinit() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int n;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (n = 0; n < 15; n++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n][i][j][k] = 0.0;
                }
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (n = 0; n < 3; n++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 0; i < grid_points[0]; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 0; j < grid_points[1]; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 0; k < grid_points[2]; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[5 * n + 2][i][j][k] = 1.0;
                }
            }
        }
    }
}
static void lhsx() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double ru1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f];
            ]*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                cv[i] = us[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                int _imopVarPre715;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                double _imopVarPre716;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                int _imopVarPre717;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                double _imopVarPre718;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                int _imopVarPre725;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                double _imopVarPre726;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                int _imopVarPre727;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                double _imopVarPre728;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                int _imopVarPre821;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                double _imopVarPre822;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                int _imopVarPre823;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                double _imopVarPre824;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                int _imopVarPre831;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                double _imopVarPre832;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                _imopVarPre715 = ((dxmax + ru1) > dx1);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                if (_imopVarPre715) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f];
                    ]*/
                    _imopVarPre716 = (dxmax + ru1);
                } else {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f];
                    ]*/
                    _imopVarPre716 = dx1;
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                _imopVarPre717 = ((dx5 + c1c5 * ru1) > _imopVarPre716);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                if (_imopVarPre717) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f];
                    ]*/
                    _imopVarPre718 = (dx5 + c1c5 * ru1);
                } else {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f];
                    ]*/
                    _imopVarPre725 = ((dxmax + ru1) > dx1);
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f];
                    ]*/
                    if (_imopVarPre725) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f];
                        ]*/
                        _imopVarPre726 = (dxmax + ru1);
                    } else {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f];
                        ]*/
                        _imopVarPre726 = dx1;
                    }
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f];
                    ]*/
                    _imopVarPre718 = _imopVarPre726;
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                _imopVarPre727 = ((dx2 + con43 * ru1) > _imopVarPre718);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                if (_imopVarPre727) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f];
                    ]*/
                    _imopVarPre728 = (dx2 + con43 * ru1);
                } else {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f];
                    ]*/
                    _imopVarPre821 = ((dxmax + ru1) > dx1);
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f];
                    ]*/
                    if (_imopVarPre821) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f];
                        ]*/
                        _imopVarPre822 = (dxmax + ru1);
                    } else {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f];
                        ]*/
                        _imopVarPre822 = dx1;
                    }
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f];
                    ]*/
                    _imopVarPre823 = ((dx5 + c1c5 * ru1) > _imopVarPre822);
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f];
                    ]*/
                    if (_imopVarPre823) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f];
                        ]*/
                        _imopVarPre824 = (dx5 + c1c5 * ru1);
                    } else {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f];
                        ]*/
                        _imopVarPre831 = ((dxmax + ru1) > dx1);
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f];
                        ]*/
                        if (_imopVarPre831) {
                            /*OUT: [ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ptsTo(lhs.f) := [lhs.f];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(cv.f) := [us.f];
                            ]*/
                            _imopVarPre832 = (dxmax + ru1);
                        } else {
                            /*OUT: [ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ptsTo(lhs.f) := [lhs.f];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(cv.f) := [us.f];
                            ]*/
                            _imopVarPre832 = dx1;
                        }
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f];
                        ]*/
                        _imopVarPre824 = _imopVarPre832;
                    }
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f];
                    ]*/
                    _imopVarPre728 = _imopVarPre824;
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f];
                ]*/
                rhon[i] = _imopVarPre728;
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[0][i][j][k] = 0.0;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[1][i][j][k] = -dttx2 * cv[i - 1] - dttx1 * rhon[i - 1];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[2][i][j][k] = 1.0 + c2dttx1 * rhon[i];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[3][i][j][k] = dttx2 * cv[i + 1] - dttx1 * rhon[i + 1];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[4][i][j][k] = 0.0;
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    i = 1;
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[1][i + 1][j][k] = lhs[1][i + 1][j][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[2][i + 1][j][k] = lhs[2][i + 1][j][k] + comz6;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[3][i + 1][j][k] = lhs[3][i + 1][j][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[4][i + 1][j][k] = lhs[4][i + 1][j][k] + comz1;
        }
    }
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 3; i <= grid_points[0] - 4; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    i = grid_points[0] - 3;
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[0][i + 1][j][k] = lhs[0][i + 1][j][k] + comz1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[1][i + 1][j][k] = lhs[1][i + 1][j][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[2][i + 1][j][k] = lhs[2][i + 1][j][k] + comz5;
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dttx2 * speed[i - 1][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dttx2 * speed[i + 1][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dttx2 * speed[i - 1][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dttx2 * speed[i + 1][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
}
static void lhsy() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double ru1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [vs.f];
            ]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                cv[j] = vs[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                int _imopVarPre1343;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                double _imopVarPre1344;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                int _imopVarPre1345;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                double _imopVarPre1346;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                int _imopVarPre1353;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                double _imopVarPre1354;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                int _imopVarPre1355;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                double _imopVarPre1356;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                int _imopVarPre1449;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                double _imopVarPre1450;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                int _imopVarPre1451;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                double _imopVarPre1452;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                int _imopVarPre1459;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                double _imopVarPre1460;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                _imopVarPre1343 = ((dymax + ru1) > dy1);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                if (_imopVarPre1343) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [vs.f];
                    ]*/
                    _imopVarPre1344 = (dymax + ru1);
                } else {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [vs.f];
                    ]*/
                    _imopVarPre1344 = dy1;
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                _imopVarPre1345 = ((dy5 + c1c5 * ru1) > _imopVarPre1344);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                if (_imopVarPre1345) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [vs.f];
                    ]*/
                    _imopVarPre1346 = (dy5 + c1c5 * ru1);
                } else {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [vs.f];
                    ]*/
                    _imopVarPre1353 = ((dymax + ru1) > dy1);
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [vs.f];
                    ]*/
                    if (_imopVarPre1353) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [vs.f];
                        ]*/
                        _imopVarPre1354 = (dymax + ru1);
                    } else {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [vs.f];
                        ]*/
                        _imopVarPre1354 = dy1;
                    }
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [vs.f];
                    ]*/
                    _imopVarPre1346 = _imopVarPre1354;
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                _imopVarPre1355 = ((dy3 + con43 * ru1) > _imopVarPre1346);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                if (_imopVarPre1355) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [vs.f];
                    ]*/
                    _imopVarPre1356 = (dy3 + con43 * ru1);
                } else {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [vs.f];
                    ]*/
                    _imopVarPre1449 = ((dymax + ru1) > dy1);
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [vs.f];
                    ]*/
                    if (_imopVarPre1449) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [vs.f];
                        ]*/
                        _imopVarPre1450 = (dymax + ru1);
                    } else {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [vs.f];
                        ]*/
                        _imopVarPre1450 = dy1;
                    }
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [vs.f];
                    ]*/
                    _imopVarPre1451 = ((dy5 + c1c5 * ru1) > _imopVarPre1450);
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [vs.f];
                    ]*/
                    if (_imopVarPre1451) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [vs.f];
                        ]*/
                        _imopVarPre1452 = (dy5 + c1c5 * ru1);
                    } else {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [vs.f];
                        ]*/
                        _imopVarPre1459 = ((dymax + ru1) > dy1);
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [vs.f];
                        ]*/
                        if (_imopVarPre1459) {
                            /*OUT: [ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ptsTo(lhs.f) := [lhs.f];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(cv.f) := [vs.f];
                            ]*/
                            _imopVarPre1460 = (dymax + ru1);
                        } else {
                            /*OUT: [ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ptsTo(lhs.f) := [lhs.f];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(cv.f) := [vs.f];
                            ]*/
                            _imopVarPre1460 = dy1;
                        }
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [vs.f];
                        ]*/
                        _imopVarPre1452 = _imopVarPre1460;
                    }
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [vs.f];
                    ]*/
                    _imopVarPre1356 = _imopVarPre1452;
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [vs.f];
                ]*/
                rhoq[j] = _imopVarPre1356;
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[0][i][j][k] = 0.0;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[1][i][j][k] = -dtty2 * cv[j - 1] - dtty1 * rhoq[j - 1];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[2][i][j][k] = 1.0 + c2dtty1 * rhoq[j];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[3][i][j][k] = dtty2 * cv[j + 1] - dtty1 * rhoq[j + 1];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[4][i][j][k] = 0.0;
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    j = 1;
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[1][i][j + 1][k] = lhs[1][i][j + 1][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[2][i][j + 1][k] = lhs[2][i][j + 1][k] + comz6;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[3][i][j + 1][k] = lhs[3][i][j + 1][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[4][i][j + 1][k] = lhs[4][i][j + 1][k] + comz1;
        }
    }
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 3; j <= grid_points[1] - 4; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    j = grid_points[1] - 3;
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[0][i][j + 1][k] = lhs[0][i][j + 1][k] + comz1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[1][i][j + 1][k] = lhs[1][i][j + 1][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[2][i][j + 1][k] = lhs[2][i][j + 1][k] + comz5;
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dtty2 * speed[i][j - 1][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dtty2 * speed[i][j + 1][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dtty2 * speed[i][j - 1][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dtty2 * speed[i][j + 1][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
}
static void lhsz() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double ru1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [ws.f];
            ]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                cv[k] = ws[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                int _imopVarPre1971;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                double _imopVarPre1972;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                int _imopVarPre1973;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                double _imopVarPre1974;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                int _imopVarPre1981;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                double _imopVarPre1982;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                int _imopVarPre1983;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                double _imopVarPre1984;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                int _imopVarPre2077;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                double _imopVarPre2078;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                int _imopVarPre2079;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                double _imopVarPre2080;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                int _imopVarPre2087;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                double _imopVarPre2088;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                _imopVarPre1971 = ((dzmax + ru1) > dz1);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                if (_imopVarPre1971) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [ws.f];
                    ]*/
                    _imopVarPre1972 = (dzmax + ru1);
                } else {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [ws.f];
                    ]*/
                    _imopVarPre1972 = dz1;
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                _imopVarPre1973 = ((dz5 + c1c5 * ru1) > _imopVarPre1972);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                if (_imopVarPre1973) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [ws.f];
                    ]*/
                    _imopVarPre1974 = (dz5 + c1c5 * ru1);
                } else {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [ws.f];
                    ]*/
                    _imopVarPre1981 = ((dzmax + ru1) > dz1);
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [ws.f];
                    ]*/
                    if (_imopVarPre1981) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [ws.f];
                        ]*/
                        _imopVarPre1982 = (dzmax + ru1);
                    } else {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [ws.f];
                        ]*/
                        _imopVarPre1982 = dz1;
                    }
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [ws.f];
                    ]*/
                    _imopVarPre1974 = _imopVarPre1982;
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                _imopVarPre1983 = ((dz4 + con43 * ru1) > _imopVarPre1974);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                if (_imopVarPre1983) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [ws.f];
                    ]*/
                    _imopVarPre1984 = (dz4 + con43 * ru1);
                } else {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [ws.f];
                    ]*/
                    _imopVarPre2077 = ((dzmax + ru1) > dz1);
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [ws.f];
                    ]*/
                    if (_imopVarPre2077) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [ws.f];
                        ]*/
                        _imopVarPre2078 = (dzmax + ru1);
                    } else {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [ws.f];
                        ]*/
                        _imopVarPre2078 = dz1;
                    }
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [ws.f];
                    ]*/
                    _imopVarPre2079 = ((dz5 + c1c5 * ru1) > _imopVarPre2078);
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [ws.f];
                    ]*/
                    if (_imopVarPre2079) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [ws.f];
                        ]*/
                        _imopVarPre2080 = (dz5 + c1c5 * ru1);
                    } else {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [ws.f];
                        ]*/
                        _imopVarPre2087 = ((dzmax + ru1) > dz1);
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [ws.f];
                        ]*/
                        if (_imopVarPre2087) {
                            /*OUT: [ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ptsTo(lhs.f) := [lhs.f];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(cv.f) := [ws.f];
                            ]*/
                            _imopVarPre2088 = (dzmax + ru1);
                        } else {
                            /*OUT: [ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ptsTo(lhs.f) := [lhs.f];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(cv.f) := [ws.f];
                            ]*/
                            _imopVarPre2088 = dz1;
                        }
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [ws.f];
                        ]*/
                        _imopVarPre2080 = _imopVarPre2088;
                    }
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [ws.f];
                    ]*/
                    _imopVarPre1984 = _imopVarPre2080;
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [ws.f];
                ]*/
                rhos[k] = _imopVarPre1984;
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[0][i][j][k] = 0.0;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[1][i][j][k] = -dttz2 * cv[k - 1] - dttz1 * rhos[k - 1];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[2][i][j][k] = 1.0 + c2dttz1 * rhos[k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[3][i][j][k] = dttz2 * cv[k + 1] - dttz1 * rhos[k + 1];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[4][i][j][k] = 0.0;
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    k = 1;
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[1][i][j][k + 1] = lhs[1][i][j][k + 1] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[2][i][j][k + 1] = lhs[2][i][j][k + 1] + comz6;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[3][i][j][k + 1] = lhs[3][i][j][k + 1] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[4][i][j][k + 1] = lhs[4][i][j][k + 1] + comz1;
        }
    }
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 3; k <= grid_points[2] - 4; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    k = grid_points[2] - 3;
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[0][i][j][k + 1] = lhs[0][i][j][k + 1] + comz1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[1][i][j][k + 1] = lhs[1][i][j][k + 1] - comz4;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[2][i][j][k + 1] = lhs[2][i][j][k + 1] + comz5;
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dttz2 * speed[i][j][k - 1];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dttz2 * speed[i][j][k + 1];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dttz2 * speed[i][j][k - 1];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dttz2 * speed[i][j][k + 1];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
}
static void ninvr() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r3;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r4;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r5;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double t1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double t2;
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r1 = rhs[0][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r2 = rhs[1][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r3 = rhs[2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r4 = rhs[3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r5 = rhs[4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                t1 = bt * r3;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                t2 = 0.5 * (r4 + r5);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[0][i][j][k] = -r2;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[1][i][j][k] = r1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[2][i][j][k] = bt * (r4 - r5);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[3][i][j][k] = -t1 + t2;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[4][i][j][k] = t1 + t2;
            }
        }
    }
}
static void pinvr() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r3;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r4;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r5;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double t1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double t2;
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r1 = rhs[0][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r2 = rhs[1][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r3 = rhs[2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r4 = rhs[3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r5 = rhs[4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                t1 = bt * r1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                t2 = 0.5 * (r4 + r5);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[0][i][j][k] = bt * (r4 - r5);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[1][i][j][k] = -r3;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[2][i][j][k] = r2;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[3][i][j][k] = -t1 + t2;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[4][i][j][k] = t1 + t2;
            }
        }
    }
}
static void compute_rhs() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int m;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double aux;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double rho_inv;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double uijk;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double up1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double um1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double vijk;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double vp1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double vm1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double wijk;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double wp1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double wm1;
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 0; i <= grid_points[0] - 1; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 0; j <= grid_points[1] - 1; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rho_inv = 1.0 / u[0][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rho_i[i][j][k] = rho_inv;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                us[i][j][k] = u[1][i][j][k] * rho_inv;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                vs[i][j][k] = u[2][i][j][k] * rho_inv;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                ws[i][j][k] = u[3][i][j][k] * rho_inv;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                square[i][j][k] = 0.5 * (u[1][i][j][k] * u[1][i][j][k] + u[2][i][j][k] * u[2][i][j][k] + u[3][i][j][k] * u[3][i][j][k]) * rho_inv;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                qs[i][j][k] = square[i][j][k] * rho_inv;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                aux = c1c2 * rho_inv * (u[4][i][j][k] - square[i][j][k]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                aux = sqrt(aux);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                speed[i][j][k] = aux;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                ainv[i][j][k] = 1.0 / aux;
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 0; i <= grid_points[0] - 1; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 0; k <= grid_points[2] - 1; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = forcing[m][i][j][k];
                }
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                uijk = us[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                up1 = us[i + 1][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                um1 = us[i - 1][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[0][i][j][k] = rhs[0][i][j][k] + dx1tx1 * (u[0][i + 1][j][k] - 2.0 * u[0][i][j][k] + u[0][i - 1][j][k]) - tx2 * (u[1][i + 1][j][k] - u[1][i - 1][j][k]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[1][i][j][k] = rhs[1][i][j][k] + dx2tx1 * (u[1][i + 1][j][k] - 2.0 * u[1][i][j][k] + u[1][i - 1][j][k]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[1][i + 1][j][k] * up1 - u[1][i - 1][j][k] * um1 + (u[4][i + 1][j][k] - square[i + 1][j][k] - u[4][i - 1][j][k] + square[i - 1][j][k]) * c2);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[2][i][j][k] = rhs[2][i][j][k] + dx3tx1 * (u[2][i + 1][j][k] - 2.0 * u[2][i][j][k] + u[2][i - 1][j][k]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[2][i + 1][j][k] * up1 - u[2][i - 1][j][k] * um1);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[3][i][j][k] = rhs[3][i][j][k] + dx4tx1 * (u[3][i + 1][j][k] - 2.0 * u[3][i][j][k] + u[3][i - 1][j][k]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[3][i + 1][j][k] * up1 - u[3][i - 1][j][k] * um1);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[4][i][j][k] = rhs[4][i][j][k] + dx5tx1 * (u[4][i + 1][j][k] - 2.0 * u[4][i][j][k] + u[4][i - 1][j][k]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[4][i + 1][j][k] * rho_i[i + 1][j][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i - 1][j][k] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[4][i + 1][j][k] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[4][i - 1][j][k] - c2 * square[i - 1][j][k]) * um1);
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    i = 1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    i = 2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 3 * 1; i <= grid_points[0] - 3 * 1 - 1; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
                }
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    i = grid_points[0] - 3;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k]);
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    i = grid_points[0] - 2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 5.0 * u[m][i][j][k]);
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                vijk = vs[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                vp1 = vs[i][j + 1][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                vm1 = vs[i][j - 1][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[0][i][j][k] = rhs[0][i][j][k] + dy1ty1 * (u[0][i][j + 1][k] - 2.0 * u[0][i][j][k] + u[0][i][j - 1][k]) - ty2 * (u[2][i][j + 1][k] - u[2][i][j - 1][k]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[1][i][j][k] = rhs[1][i][j][k] + dy2ty1 * (u[1][i][j + 1][k] - 2.0 * u[1][i][j][k] + u[1][i][j - 1][k]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[1][i][j + 1][k] * vp1 - u[1][i][j - 1][k] * vm1);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[2][i][j][k] = rhs[2][i][j][k] + dy3ty1 * (u[2][i][j + 1][k] - 2.0 * u[2][i][j][k] + u[2][i][j - 1][k]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[2][i][j + 1][k] * vp1 - u[2][i][j - 1][k] * vm1 + (u[4][i][j + 1][k] - square[i][j + 1][k] - u[4][i][j - 1][k] + square[i][j - 1][k]) * c2);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[3][i][j][k] = rhs[3][i][j][k] + dy4ty1 * (u[3][i][j + 1][k] - 2.0 * u[3][i][j][k] + u[3][i][j - 1][k]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[3][i][j + 1][k] * vp1 - u[3][i][j - 1][k] * vm1);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[4][i][j][k] = rhs[4][i][j][k] + dy5ty1 * (u[4][i][j + 1][k] - 2.0 * u[4][i][j][k] + u[4][i][j - 1][k]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[4][i][j + 1][k] * rho_i[i][j + 1][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j - 1][k] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[4][i][j + 1][k] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[4][i][j - 1][k] - c2 * square[i][j - 1][k]) * vm1);
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    j = 1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    j = 2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 3 * 1; j <= grid_points[1] - 3 * 1 - 1; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
                }
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    j = grid_points[1] - 3;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k]);
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    j = grid_points[1] - 2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 5.0 * u[m][i][j][k]);
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                wijk = ws[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                wp1 = ws[i][j][k + 1];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                wm1 = ws[i][j][k - 1];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[0][i][j][k] = rhs[0][i][j][k] + dz1tz1 * (u[0][i][j][k + 1] - 2.0 * u[0][i][j][k] + u[0][i][j][k - 1]) - tz2 * (u[3][i][j][k + 1] - u[3][i][j][k - 1]);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[1][i][j][k] = rhs[1][i][j][k] + dz2tz1 * (u[1][i][j][k + 1] - 2.0 * u[1][i][j][k] + u[1][i][j][k - 1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[1][i][j][k + 1] * wp1 - u[1][i][j][k - 1] * wm1);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[2][i][j][k] = rhs[2][i][j][k] + dz3tz1 * (u[2][i][j][k + 1] - 2.0 * u[2][i][j][k] + u[2][i][j][k - 1]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[2][i][j][k + 1] * wp1 - u[2][i][j][k - 1] * wm1);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[3][i][j][k] = rhs[3][i][j][k] + dz4tz1 * (u[3][i][j][k + 1] - 2.0 * u[3][i][j][k] + u[3][i][j][k - 1]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[3][i][j][k + 1] * wp1 - u[3][i][j][k - 1] * wm1 + (u[4][i][j][k + 1] - square[i][j][k + 1] - u[4][i][j][k - 1] + square[i][j][k - 1]) * c2);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[4][i][j][k] = rhs[4][i][j][k] + dz5tz1 * (u[4][i][j][k + 1] - 2.0 * u[4][i][j][k] + u[4][i][j][k - 1]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[4][i][j][k + 1] * rho_i[i][j][k + 1] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j][k - 1] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[4][i][j][k + 1] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[4][i][j][k - 1] - c2 * square[i][j][k - 1]) * wm1);
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    k = 1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    k = 2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 3 * 1; k <= grid_points[2] - 3 * 1 - 1; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
                }
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    k = grid_points[2] - 3;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1]);
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    k = grid_points[2] - 2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 5.0 * u[m][i][j][k]);
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] * dt;
                }
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
}
static void set_constants() {
    /*OUT: []*/
    ce[0][0] = 2.0;
    /*OUT: []*/
    ce[1][0] = 0.0;
    /*OUT: []*/
    ce[2][0] = 0.0;
    /*OUT: []*/
    ce[3][0] = 4.0;
    /*OUT: []*/
    ce[4][0] = 5.0;
    /*OUT: []*/
    ce[5][0] = 3.0;
    /*OUT: []*/
    ce[6][0] = 0.5;
    /*OUT: []*/
    ce[7][0] = 0.02;
    /*OUT: []*/
    ce[8][0] = 0.01;
    /*OUT: []*/
    ce[9][0] = 0.03;
    /*OUT: []*/
    ce[10][0] = 0.5;
    /*OUT: []*/
    ce[11][0] = 0.4;
    /*OUT: []*/
    ce[12][0] = 0.3;
    /*OUT: []*/
    ce[0][1] = 1.0;
    /*OUT: []*/
    ce[1][1] = 0.0;
    /*OUT: []*/
    ce[2][1] = 0.0;
    /*OUT: []*/
    ce[3][1] = 0.0;
    /*OUT: []*/
    ce[4][1] = 1.0;
    /*OUT: []*/
    ce[5][1] = 2.0;
    /*OUT: []*/
    ce[6][1] = 3.0;
    /*OUT: []*/
    ce[7][1] = 0.01;
    /*OUT: []*/
    ce[8][1] = 0.03;
    /*OUT: []*/
    ce[9][1] = 0.02;
    /*OUT: []*/
    ce[10][1] = 0.4;
    /*OUT: []*/
    ce[11][1] = 0.3;
    /*OUT: []*/
    ce[12][1] = 0.5;
    /*OUT: []*/
    ce[0][2] = 2.0;
    /*OUT: []*/
    ce[1][2] = 2.0;
    /*OUT: []*/
    ce[2][2] = 0.0;
    /*OUT: []*/
    ce[3][2] = 0.0;
    /*OUT: []*/
    ce[4][2] = 0.0;
    /*OUT: []*/
    ce[5][2] = 2.0;
    /*OUT: []*/
    ce[6][2] = 3.0;
    /*OUT: []*/
    ce[7][2] = 0.04;
    /*OUT: []*/
    ce[8][2] = 0.03;
    /*OUT: []*/
    ce[9][2] = 0.05;
    /*OUT: []*/
    ce[10][2] = 0.3;
    /*OUT: []*/
    ce[11][2] = 0.5;
    /*OUT: []*/
    ce[12][2] = 0.4;
    /*OUT: []*/
    ce[0][3] = 2.0;
    /*OUT: []*/
    ce[1][3] = 2.0;
    /*OUT: []*/
    ce[2][3] = 0.0;
    /*OUT: []*/
    ce[3][3] = 0.0;
    /*OUT: []*/
    ce[4][3] = 0.0;
    /*OUT: []*/
    ce[5][3] = 2.0;
    /*OUT: []*/
    ce[6][3] = 3.0;
    /*OUT: []*/
    ce[7][3] = 0.03;
    /*OUT: []*/
    ce[8][3] = 0.05;
    /*OUT: []*/
    ce[9][3] = 0.04;
    /*OUT: []*/
    ce[10][3] = 0.2;
    /*OUT: []*/
    ce[11][3] = 0.1;
    /*OUT: []*/
    ce[12][3] = 0.3;
    /*OUT: []*/
    ce[0][4] = 5.0;
    /*OUT: []*/
    ce[1][4] = 4.0;
    /*OUT: []*/
    ce[2][4] = 3.0;
    /*OUT: []*/
    ce[3][4] = 2.0;
    /*OUT: []*/
    ce[4][4] = 0.1;
    /*OUT: []*/
    ce[5][4] = 0.4;
    /*OUT: []*/
    ce[6][4] = 0.3;
    /*OUT: []*/
    ce[7][4] = 0.05;
    /*OUT: []*/
    ce[8][4] = 0.04;
    /*OUT: []*/
    ce[9][4] = 0.03;
    /*OUT: []*/
    ce[10][4] = 0.1;
    /*OUT: []*/
    ce[11][4] = 0.3;
    /*OUT: []*/
    ce[12][4] = 0.2;
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
    bt = sqrt(0.5);
    /*OUT: []*/
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
    int _imopVarPre2091;
    /*OUT: []*/
    double _imopVarPre2092;
    /*OUT: []*/
    _imopVarPre2091 = (dx3 > dx4);
    /*OUT: []*/
    if (_imopVarPre2091) {
        /*OUT: []*/
        _imopVarPre2092 = dx3;
    } else {
        /*OUT: []*/
        _imopVarPre2092 = dx4;
    }
    /*OUT: []*/
    dxmax = _imopVarPre2092;
    /*OUT: []*/
    int _imopVarPre2095;
    /*OUT: []*/
    double _imopVarPre2096;
    /*OUT: []*/
    _imopVarPre2095 = (dy2 > dy4);
    /*OUT: []*/
    if (_imopVarPre2095) {
        /*OUT: []*/
        _imopVarPre2096 = dy2;
    } else {
        /*OUT: []*/
        _imopVarPre2096 = dy4;
    }
    /*OUT: []*/
    dymax = _imopVarPre2096;
    /*OUT: []*/
    int _imopVarPre2099;
    /*OUT: []*/
    double _imopVarPre2100;
    /*OUT: []*/
    _imopVarPre2099 = (dz2 > dz3);
    /*OUT: []*/
    if (_imopVarPre2099) {
        /*OUT: []*/
        _imopVarPre2100 = dz2;
    } else {
        /*OUT: []*/
        _imopVarPre2100 = dz3;
    }
    /*OUT: []*/
    dzmax = _imopVarPre2100;
    /*OUT: []*/
    int _imopVarPre2141;
    /*OUT: []*/
    double _imopVarPre2142;
    /*OUT: []*/
    int _imopVarPre2143;
    /*OUT: []*/
    double _imopVarPre2144;
    /*OUT: []*/
    int _imopVarPre2151;
    /*OUT: []*/
    double _imopVarPre2152;
    /*OUT: []*/
    _imopVarPre2141 = (dy1 > dz1);
    /*OUT: []*/
    if (_imopVarPre2141) {
        /*OUT: []*/
        _imopVarPre2142 = dy1;
    } else {
        /*OUT: []*/
        _imopVarPre2142 = dz1;
    }
    /*OUT: []*/
    _imopVarPre2143 = (dx1 > _imopVarPre2142);
    /*OUT: []*/
    if (_imopVarPre2143) {
        /*OUT: []*/
        _imopVarPre2144 = dx1;
    } else {
        /*OUT: []*/
        _imopVarPre2151 = (dy1 > dz1);
        /*OUT: []*/
        if (_imopVarPre2151) {
            /*OUT: []*/
            _imopVarPre2152 = dy1;
        } else {
            /*OUT: []*/
            _imopVarPre2152 = dz1;
        }
        /*OUT: []*/
        _imopVarPre2144 = _imopVarPre2152;
    }
    /*OUT: []*/
    dssp = 0.25 * _imopVarPre2144;
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
static void txinvr() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double t1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double t2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double t3;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double ac;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double ru1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double uu;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double vv;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double ww;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r3;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r4;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r5;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double ac2inv;
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                ru1 = rho_i[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                uu = us[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                vv = vs[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                ww = ws[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                ac = speed[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                ac2inv = ainv[i][j][k] * ainv[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r1 = rhs[0][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r2 = rhs[1][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r3 = rhs[2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r4 = rhs[3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r5 = rhs[4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                t1 = c2 * ac2inv * (qs[i][j][k] * r1 - uu * r2 - vv * r3 - ww * r4 + r5);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                t2 = bt * ru1 * (uu * r1 - r2);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                t3 = (bt * ru1 * ac) * t1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[0][i][j][k] = r1 - t1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[1][i][j][k] = -ru1 * (ww * r1 - r4);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[2][i][j][k] = ru1 * (vv * r1 - r3);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[3][i][j][k] = -t2 + t3;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[4][i][j][k] = t2 + t3;
            }
        }
    }
}
static void tzetar() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double t1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double t2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double t3;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double ac;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double xvel;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double yvel;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double zvel;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r3;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r4;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double r5;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double btuz;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double acinv;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double ac2u;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double uzik1;
#pragma omp for private(i, j, k, t1, t2, t3, ac, xvel, yvel, zvel, r1, r2, r3, r4, r5, btuz, ac2u, uzik1) nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                xvel = us[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                yvel = vs[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                zvel = ws[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                ac = speed[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                acinv = ainv[i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                ac2u = ac * ac;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r1 = rhs[0][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r2 = rhs[1][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r3 = rhs[2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r4 = rhs[3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                r5 = rhs[4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                uzik1 = u[0][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                btuz = bt * uzik1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                t1 = btuz * acinv * (r4 + r5);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                t2 = r3 + t1;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                t3 = btuz * (r4 - r5);
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[0][i][j][k] = t2;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[1][i][j][k] = -uzik1 * r2 + xvel * t2;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[2][i][j][k] = uzik1 * r1 + yvel * t2;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[3][i][j][k] = zvel * t2 + t3;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[4][i][j][k] = uzik1 * (-xvel * r2 + yvel * r1) + qs[i][j][k] * t2 + c2iv * ac2u * t1 + zvel * t3;
            }
        }
    }
}
/*OUT: [ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(lhs.f) := [lhs.f];
ptsTo(rhs.f) := [forcing.f];
ptsTo(cv.f) := [us.f, ws.f, vs.f];
]*/
/*OUT: [ptsTo(class) := [class];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(lhs.f) := [lhs.f];
ptsTo(rhs.f) := [forcing.f];
ptsTo(cv.f) := [us.f, ws.f, vs.f];
]*/
/*OUT: [ptsTo(class) := [class];
ptsTo(verified) := [verified];
ptsTo(u.f) := [temp.f];
ptsTo(ue.f) := [dtemp.f];
ptsTo(lhs.f) := [lhs.f];
ptsTo(rhs.f) := [forcing.f];
ptsTo(cv.f) := [us.f, ws.f, vs.f];
]*/
static void verify(int no_time_steps, char *class , boolean *verified) {
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double xcrref[5];
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double xceref[5];
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double xcrdif[5];
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double xcedif[5];
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double epsilon;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double xce[5];
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double xcr[5];
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double dtref;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int m;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    epsilon = 1.0e-08;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    error_norm(xce);
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp parallel
    {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        compute_rhs();
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    rhs_norm(xcr);
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xcr[m] = xcr[m] / dt;
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    *class = 'U';
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    *verified = 1;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xcrref[m] = 1.0;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xceref[m] = 1.0;
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int _imopVarPre2156;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int _imopVarPre2157;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int _imopVarPre2158;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    _imopVarPre2156 = grid_points[0] == 12;
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    if (_imopVarPre2156) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre2157 = grid_points[1] == 12;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        if (_imopVarPre2157) {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            _imopVarPre2158 = grid_points[2] == 12;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            if (_imopVarPre2158) {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2158 = no_time_steps == 100;
            }
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            _imopVarPre2157 = _imopVarPre2158;
        }
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre2156 = _imopVarPre2157;
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    if (_imopVarPre2156) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        *class = 'S';
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        dtref = 1.5e-2;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xcrref[0] = 2.7470315451339479e-02;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xcrref[1] = 1.0360746705285417e-02;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xcrref[2] = 1.6235745065095532e-02;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xcrref[3] = 1.5840557224455615e-02;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xcrref[4] = 3.4849040609362460e-02;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xceref[0] = 2.7289258557377227e-05;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xceref[1] = 1.0364446640837285e-05;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xceref[2] = 1.6154798287166471e-05;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xceref[3] = 1.5750704994480102e-05;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xceref[4] = 3.4177666183390531e-05;
    } else {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        int _imopVarPre2162;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        int _imopVarPre2163;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        int _imopVarPre2164;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre2162 = grid_points[0] == 36;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        if (_imopVarPre2162) {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            _imopVarPre2163 = grid_points[1] == 36;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            if (_imopVarPre2163) {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2164 = grid_points[2] == 36;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                if (_imopVarPre2164) {
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    _imopVarPre2164 = no_time_steps == 400;
                }
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2163 = _imopVarPre2164;
            }
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            _imopVarPre2162 = _imopVarPre2163;
        }
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        if (_imopVarPre2162) {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            *class = 'W';
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            dtref = 1.5e-3;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            xcrref[0] = 0.1893253733584e-02;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            xcrref[1] = 0.1717075447775e-03;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            xcrref[2] = 0.2778153350936e-03;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            xcrref[3] = 0.2887475409984e-03;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            xcrref[4] = 0.3143611161242e-02;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            xceref[0] = 0.7542088599534e-04;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            xceref[1] = 0.6512852253086e-05;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            xceref[2] = 0.1049092285688e-04;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            xceref[3] = 0.1128838671535e-04;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            xceref[4] = 0.1212845639773e-03;
        } else {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            int _imopVarPre2168;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            int _imopVarPre2169;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            int _imopVarPre2170;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            _imopVarPre2168 = grid_points[0] == 64;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            if (_imopVarPre2168) {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2169 = grid_points[1] == 64;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                if (_imopVarPre2169) {
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    _imopVarPre2170 = grid_points[2] == 64;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    if (_imopVarPre2170) {
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        _imopVarPre2170 = no_time_steps == 400;
                    }
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    _imopVarPre2169 = _imopVarPre2170;
                }
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2168 = _imopVarPre2169;
            }
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            if (_imopVarPre2168) {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                *class = 'A';
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                dtref = 1.5e-3;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                xcrref[0] = 2.4799822399300195;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                xcrref[1] = 1.1276337964368832;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                xcrref[2] = 1.5028977888770491;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                xcrref[3] = 1.4217816211695179;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                xcrref[4] = 2.1292113035138280;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                xceref[0] = 1.0900140297820550e-04;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                xceref[1] = 3.7343951769282091e-05;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                xceref[2] = 5.0092785406541633e-05;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                xceref[3] = 4.7671093939528255e-05;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                xceref[4] = 1.3621613399213001e-04;
            } else {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                int _imopVarPre2174;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                int _imopVarPre2175;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                int _imopVarPre2176;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2174 = grid_points[0] == 102;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                if (_imopVarPre2174) {
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    _imopVarPre2175 = grid_points[1] == 102;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    if (_imopVarPre2175) {
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        _imopVarPre2176 = grid_points[2] == 102;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        if (_imopVarPre2176) {
                            /*OUT: [ptsTo(class) := [class];
                            ptsTo(verified) := [verified];
                            ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ptsTo(lhs.f) := [lhs.f];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(cv.f) := [us.f, ws.f, vs.f];
                            ]*/
                            _imopVarPre2176 = no_time_steps == 400;
                        }
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        _imopVarPre2175 = _imopVarPre2176;
                    }
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    _imopVarPre2174 = _imopVarPre2175;
                }
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                if (_imopVarPre2174) {
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    *class = 'B';
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    dtref = 1.0e-3;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    xcrref[0] = 0.6903293579998e+02;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    xcrref[1] = 0.3095134488084e+02;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    xcrref[2] = 0.4103336647017e+02;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    xcrref[3] = 0.3864769009604e+02;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    xcrref[4] = 0.5643482272596e+02;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    xceref[0] = 0.9810006190188e-02;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    xceref[1] = 0.1022827905670e-02;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    xceref[2] = 0.1720597911692e-02;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    xceref[3] = 0.1694479428231e-02;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    xceref[4] = 0.1847456263981e-01;
                } else {
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    int _imopVarPre2180;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    int _imopVarPre2181;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    int _imopVarPre2182;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    _imopVarPre2180 = grid_points[0] == 162;
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    if (_imopVarPre2180) {
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        _imopVarPre2181 = grid_points[1] == 162;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        if (_imopVarPre2181) {
                            /*OUT: [ptsTo(class) := [class];
                            ptsTo(verified) := [verified];
                            ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ptsTo(lhs.f) := [lhs.f];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(cv.f) := [us.f, ws.f, vs.f];
                            ]*/
                            _imopVarPre2182 = grid_points[2] == 162;
                            /*OUT: [ptsTo(class) := [class];
                            ptsTo(verified) := [verified];
                            ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ptsTo(lhs.f) := [lhs.f];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(cv.f) := [us.f, ws.f, vs.f];
                            ]*/
                            if (_imopVarPre2182) {
                                /*OUT: [ptsTo(class) := [class];
                                ptsTo(verified) := [verified];
                                ptsTo(u.f) := [temp.f];
                                ptsTo(ue.f) := [dtemp.f];
                                ptsTo(lhs.f) := [lhs.f];
                                ptsTo(rhs.f) := [forcing.f];
                                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                                ]*/
                                _imopVarPre2182 = no_time_steps == 400;
                            }
                            /*OUT: [ptsTo(class) := [class];
                            ptsTo(verified) := [verified];
                            ptsTo(u.f) := [temp.f];
                            ptsTo(ue.f) := [dtemp.f];
                            ptsTo(lhs.f) := [lhs.f];
                            ptsTo(rhs.f) := [forcing.f];
                            ptsTo(cv.f) := [us.f, ws.f, vs.f];
                            ]*/
                            _imopVarPre2181 = _imopVarPre2182;
                        }
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        _imopVarPre2180 = _imopVarPre2181;
                    }
                    /*OUT: [ptsTo(class) := [class];
                    ptsTo(verified) := [verified];
                    ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    if (_imopVarPre2180) {
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        *class = 'C';
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        dtref = 0.67e-3;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        xcrref[0] = 0.5881691581829e+03;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        xcrref[1] = 0.2454417603569e+03;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        xcrref[2] = 0.3293829191851e+03;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        xcrref[3] = 0.3081924971891e+03;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        xcrref[4] = 0.4597223799176e+03;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        xceref[0] = 0.2598120500183e+00;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        xceref[1] = 0.2590888922315e-01;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        xceref[2] = 0.5132886416320e-01;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        xceref[3] = 0.4806073419454e-01;
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        xceref[4] = 0.5483377491301e+00;
                    } else {
                        /*OUT: [ptsTo(class) := [class];
                        ptsTo(verified) := [verified];
                        ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        *verified = 0;
                    }
                }
            }
        }
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double _imopVarPre2184;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double _imopVarPre2185;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre2184 = (xcr[m] - xcrref[m]) / xcrref[m];
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre2185 = fabs(_imopVarPre2184);
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xcrdif[m] = _imopVarPre2185;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double _imopVarPre2187;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double _imopVarPre2188;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre2187 = (xce[m] - xceref[m]) / xceref[m];
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre2188 = fabs(_imopVarPre2187);
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        xcedif[m] = _imopVarPre2188;
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    if (*class != 'U') {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        char _imopVarPre2190;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre2190 = *class;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        printf(" Verification being performed for class %1c\n", _imopVarPre2190);
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        printf(" accuracy setting for epsilon = %20.13e\n", epsilon);
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double _imopVarPre2193;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double _imopVarPre2194;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre2193 = dt - dtref;
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        _imopVarPre2194 = fabs(_imopVarPre2193);
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        if (_imopVarPre2194 > epsilon) {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            *verified = 0;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            *class = 'U';
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            printf(" DT does not match the reference value of %15.8e\n", dtref);
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
        }
    } else {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        printf(" Unknown class\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    if (*class != 'U') {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        printf(" Comparison of RMS-norms of residual\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
    } else {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        printf(" RMS-norms of residual\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        if (*class == 'U') {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            double _imopVarPre2196;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            _imopVarPre2196 = xcr[m];
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            printf("          %2d%20.13e\n", m, _imopVarPre2196);
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
        } else {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            if (xcrdif[m] > epsilon) {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                *verified = 0;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                double _imopVarPre2200;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                double _imopVarPre2201;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                double _imopVarPre2202;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2200 = xcrdif[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2201 = xcrref[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2202 = xcr[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2202, _imopVarPre2201, _imopVarPre2200);
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
            } else {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                double _imopVarPre2206;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                double _imopVarPre2207;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                double _imopVarPre2208;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2206 = xcrdif[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2207 = xcrref[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2208 = xcr[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2208, _imopVarPre2207, _imopVarPre2206);
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
            }
        }
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    if (*class != 'U') {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        printf(" Comparison of RMS-norms of solution error\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
    } else {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        printf(" RMS-norms of solution error\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        if (*class == 'U') {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            double _imopVarPre2210;
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            _imopVarPre2210 = xce[m];
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            printf("          %2d%20.13e\n", m, _imopVarPre2210);
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
        } else {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            if (xcedif[m] > epsilon) {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                *verified = 0;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                double _imopVarPre2214;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                double _imopVarPre2215;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                double _imopVarPre2216;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2214 = xcedif[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2215 = xceref[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2216 = xce[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2216, _imopVarPre2215, _imopVarPre2214);
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
            } else {
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                double _imopVarPre2220;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                double _imopVarPre2221;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                double _imopVarPre2222;
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2220 = xcedif[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2221 = xceref[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                _imopVarPre2222 = xce[m];
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2222, _imopVarPre2221, _imopVarPre2220);
                /*OUT: [ptsTo(class) := [class];
                ptsTo(verified) := [verified];
                ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
            }
        }
    }
    /*OUT: [ptsTo(class) := [class];
    ptsTo(verified) := [verified];
    ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    if (*class == 'U') {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        printf(" No reference values provided\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        printf(" No verification performed\n");
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
    } else {
        /*OUT: [ptsTo(class) := [class];
        ptsTo(verified) := [verified];
        ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        if (*verified) {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            printf(" Verification Successful\n");
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
        } else {
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            printf(" Verification failed\n");
            /*OUT: [ptsTo(class) := [class];
            ptsTo(verified) := [verified];
            ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
        }
    }
}
static void x_solve() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int n;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int m;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double fac1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double fac2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    lhsx();
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    n = 0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 0; i <= grid_points[0] - 3; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        i1 = i + 1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        i2 = i + 2;
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 3; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 3; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 3; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                }
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    i = grid_points[0] - 2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    i1 = grid_points[0] - 1;
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            fac1 = 1.0 / lhs[n + 2][i][j][k];
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 3; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 3; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            fac2 = 1. / lhs[n + 2][i1][j][k];
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 3; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 3; m < 5; m++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        n = (m - 3 + 1) * 5;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 0; i <= grid_points[0] - 3; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            i1 = i + 1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            i2 = i + 2;
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        i = grid_points[0] - 2;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        i1 = grid_points[0] - 1;
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                fac2 = 1. / lhs[n + 2][i1][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    i = grid_points[0] - 2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    i1 = grid_points[0] - 1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    n = 0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 3; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 3; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                n = (m - 3 + 1) * 5;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    n = 0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = grid_points[0] - 3; i >= 0; i--) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        i1 = i + 1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        i2 = i + 2;
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (m = 0; m < 3; m++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                }
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 3; m < 5; m++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        n = (m - 3 + 1) * 5;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = grid_points[0] - 3; i >= 0; i--) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            i1 = i + 1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            i2 = i + 2;
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    ninvr();
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
}
static void y_solve() {
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int i;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int k;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int n;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int j2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    int m;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double fac1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    double fac2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    lhsy();
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    n = 0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (j = 0; j <= grid_points[1] - 3; j++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        j1 = j + 1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        j2 = j + 2;
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 3; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 3; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 1][i][j2][k] = lhs[n + 1][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 2][i][j2][k] = lhs[n + 2][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 3; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j2][k] = rhs[m][i][j2][k] - lhs[n + 0][i][j2][k] * rhs[m][i][j][k];
                }
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    j = grid_points[1] - 2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    j1 = grid_points[1] - 1;
#pragma omp for nowait
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            fac1 = 1. / lhs[n + 2][i][j][k];
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 3; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 3; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            fac2 = 1. / lhs[n + 2][i][j1][k];
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (m = 0; m < 3; m++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j1][k] = fac2 * rhs[m][i][j1][k];
            }
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 3; m < 5; m++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        n = (m - 3 + 1) * 5;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = 0; j <= grid_points[1] - 3; j++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            j1 = j + 1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            j2 = j + 2;
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 1][i][j2][k] = lhs[n + 1][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 3][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 2][i][j2][k] = lhs[n + 2][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 4][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j2][k] = rhs[m][i][j2][k] - lhs[n + 0][i][j2][k] * rhs[m][i][j][k];
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        j = grid_points[1] - 2;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        j1 = grid_points[1] - 1;
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                fac2 = 1. / lhs[n + 2][i][j1][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j1][k] = fac2 * rhs[m][i][j1][k];
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    j = grid_points[1] - 2;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    j1 = grid_points[1] - 1;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    n = 0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 3; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k];
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 3; m < 5; m++) {
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                n = (m - 3 + 1) * 5;
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k];
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    n = 0;
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 0; m < 3; m++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = grid_points[1] - 3; j >= 0; j--) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            j1 = j + 1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            j2 = j + 2;
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k] - lhs[n + 4][i][j][k] * rhs[m][i][j2][k];
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    for (m = 3; m < 5; m++) {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        n = (m - 3 + 1) * 5;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (j = grid_points[1] - 3; j >= 0; j--) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            j1 = j + 1;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            j2 = j1 + 1;
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k] - lhs[n + 4][i][j][k] * rhs[m][i][j2][k];
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    pinvr();
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
}
static void z_solve() {
#pragma omp parallel
    {
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        int i;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        int j;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        int k;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        int n;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        int k1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        int k2;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        int m;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double fac1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        double fac2;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        lhsz();
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        n = 0;
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (k = 0; k <= grid_points[2] - 3; k++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    k1 = k + 1;
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    k2 = k + 2;
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    for (m = 0; m < 3; m++) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    for (m = 0; m < 3; m++) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    }
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    for (m = 0; m < 3; m++) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                    }
                }
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        k = grid_points[2] - 2;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        k1 = grid_points[2] - 1;
#pragma omp for nowait
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 3; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 3; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                }
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                fac2 = 1. / lhs[n + 2][i][j][k1];
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (m = 0; m < 3; m++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
#pragma omp barrier
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (m = 3; m < 5; m++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            n = (m - 3 + 1) * 5;
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    for (k = 0; k <= grid_points[2] - 3; k++) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        k1 = k + 1;
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        k2 = k + 2;
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                    }
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            k = grid_points[2] - 2;
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            k1 = grid_points[2] - 1;
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    fac2 = 1. / lhs[n + 2][i][j][k1];
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        k = grid_points[2] - 2;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        k1 = grid_points[2] - 1;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        n = 0;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (m = 0; m < 3; m++) {
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (m = 3; m < 5; m++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            n = (m - 3 + 1) * 5;
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        n = 0;
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (m = 0; m < 3; m++) {
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        k1 = k + 1;
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        k2 = k + 2;
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                    }
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
        }
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        /*OUT: [ptsTo(u.f) := [temp.f];
        ptsTo(ue.f) := [dtemp.f];
        ptsTo(lhs.f) := [lhs.f];
        ptsTo(rhs.f) := [forcing.f];
        ptsTo(cv.f) := [us.f, ws.f, vs.f];
        ]*/
        for (m = 3; m < 5; m++) {
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            n = (m - 3 + 1) * 5;
#pragma omp for nowait
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                /*OUT: [ptsTo(u.f) := [temp.f];
                ptsTo(ue.f) := [dtemp.f];
                ptsTo(lhs.f) := [lhs.f];
                ptsTo(rhs.f) := [forcing.f];
                ptsTo(cv.f) := [us.f, ws.f, vs.f];
                ]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    /*OUT: [ptsTo(u.f) := [temp.f];
                    ptsTo(ue.f) := [dtemp.f];
                    ptsTo(lhs.f) := [lhs.f];
                    ptsTo(rhs.f) := [forcing.f];
                    ptsTo(cv.f) := [us.f, ws.f, vs.f];
                    ]*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        k1 = k + 1;
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        k2 = k + 2;
                        /*OUT: [ptsTo(u.f) := [temp.f];
                        ptsTo(ue.f) := [dtemp.f];
                        ptsTo(lhs.f) := [lhs.f];
                        ptsTo(rhs.f) := [forcing.f];
                        ptsTo(cv.f) := [us.f, ws.f, vs.f];
                        ]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
                    }
                }
            }
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(u.f) := [temp.f];
            ptsTo(ue.f) := [dtemp.f];
            ptsTo(lhs.f) := [lhs.f];
            ptsTo(rhs.f) := [forcing.f];
            ptsTo(cv.f) := [us.f, ws.f, vs.f];
            ]*/
#pragma omp barrier
        }
    }
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
    tzetar();
    /*OUT: [ptsTo(u.f) := [temp.f];
    ptsTo(ue.f) := [dtemp.f];
    ptsTo(lhs.f) := [lhs.f];
    ptsTo(rhs.f) := [forcing.f];
    ptsTo(cv.f) := [us.f, ws.f, vs.f];
    ]*/
}
