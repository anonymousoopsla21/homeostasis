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
extern int omp_get_num_threads(void );
typedef int boolean;
extern void timer_clear(int );
extern void timer_start(int );
extern void timer_stop(int );
extern double timer_read(int );
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
static int nx;
static int ny;
static int nz;
static int nx0;
static int ny0;
static int nz0;
static int ist;
static int iend;
static int jst;
static int jend;
static int ii1;
static int ii2;
static int ji1;
static int ji2;
static int ki1;
static int ki2;
static double dxi;
static double deta;
static double dzeta;
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
static double u[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
static double rsd[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
static double frct[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
static double flux[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
static int ipr;
static int inorm;
static int itmax;
static double dt;
static double omega;
static double tolrsd[5];
static double rsdnm[5];
static double errnm[5];
static double frc;
static double a[12][12][5][5];
static double b[12][12][5][5];
static double c[12][12][5][5];
static double d[12][12][5][5];
static double ce[5][13];
static double maxtime;
static boolean flag[12 / 2 * 2 + 1];
static void blts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double ldz[12][12][5][5] , double ldy[12][12][5][5] , double ldx[12][12][5][5] , double d[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0);
static void buts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double tv[12][12][5] , double d[12][12][5][5] , double udx[12][12][5][5] , double udy[12][12][5][5] , double udz[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0);
static void domain(void );
static void erhs(void );
static void error(void );
static void exact(int i, int j , int k , double u000ijk[5]);
static void jacld(int k);
static void jacu(int k);
static void l2norm(int nx0, int ny0 , int nz0 , int ist , int iend , int jst , int jend , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double sum[5]);
static void pintgr(void );
static void read_input(void );
static void rhs(void );
static void setbv(void );
static void setcoeff(void );
static void setiv(void );
static void ssor(void );
static void verify(double xcr[5], double xce[5] , double xci , char *class , boolean *verified);
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
/*OUT: [ptsTo(argv) := [heapCell#0];
]*/
int main(int argc, char **argv) {
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    char class;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    boolean verified;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    double mflops;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    int nthreads = 1;
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    read_input();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    domain();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    setcoeff();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ]*/
    setbv();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    setiv();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    erhs();
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
#pragma omp parallel
    {
#pragma omp master
        {
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            nthreads = omp_get_num_threads();
            /*OUT: [ptsTo(argv) := [heapCell#0];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
        }
    }
    /*OUT: [ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    ssor();
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    error();
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    pintgr();
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(_imopVarPre144) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int *_imopVarPre144;
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(_imopVarPre144) := [nullCell];
    ptsTo(_imopVarPre145) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    char *_imopVarPre145;
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(_imopVarPre144) := [verified];
    ptsTo(_imopVarPre145) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    _imopVarPre144 = &verified;
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(_imopVarPre144) := [verified];
    ptsTo(_imopVarPre145) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    _imopVarPre145 = &class;
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(_imopVarPre144) := [verified];
    ptsTo(_imopVarPre145) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    verify(rsdnm, errnm, frc, _imopVarPre145, _imopVarPre144);
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(_imopVarPre144) := [verified];
    ptsTo(_imopVarPre145) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(_imopVarPre144) := [verified];
    ptsTo(_imopVarPre145) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    mflops = (double) itmax * (1984.77 * (double) nx0 * (double) ny0 * (double) nz0 - 10923.3 * (((double) (nx0 + ny0 + nz0) / 3.0) * ((double) (nx0 + ny0 + nz0) / 3.0)) + 27770.9 * (double) (nx0 + ny0 + nz0) / 3.0 - 144010.0) / (maxtime * 1000000.0);
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(_imopVarPre144) := [verified];
    ptsTo(_imopVarPre145) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    c_print_results("LU", class, nx0, ny0, nz0, itmax, nthreads, maxtime, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "(none)");
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(_imopVarPre144) := [verified];
    ptsTo(_imopVarPre145) := [class];
    ptsTo(argv) := [heapCell#0];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
}
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(ldz) := [a.f];
ptsTo(ldx) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(ldy) := [b.f];
ptsTo(d) := [d.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
static void blts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double ldz[12][12][5][5] , double ldy[12][12][5][5] , double ldx[12][12][5][5] , double d[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0) {
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int i;
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int j;
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int m;
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmp;
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmp1;
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmat[5][5];
#pragma omp for nowait schedule(static)
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (i = ist; i <= iend; i++) {
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = jst; j <= jend; j++) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                v[i][j][k][m] = v[i][j][k][m] - omega * (ldz[i][j][m][0] * v[i][j][k - 1][0] + ldz[i][j][m][1] * v[i][j][k - 1][1] + ldz[i][j][m][2] * v[i][j][k - 1][2] + ldz[i][j][m][3] * v[i][j][k - 1][3] + ldz[i][j][m][4] * v[i][j][k - 1][4]);
            }
        }
    }
#pragma omp for nowait schedule(static)
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (i = ist; i <= iend; i++) {
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (i != ist) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            while (flag[i - 1] == 0) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                // #pragma omp dummyFlush FLUSH_START
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
#pragma omp flush(flag)
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                ;
            }
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (i != iend) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            while (flag[i] == 1) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                // #pragma omp dummyFlush FLUSH_START
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
#pragma omp flush(flag)
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                ;
            }
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = jst; j <= jend; j++) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                v[i][j][k][m] = v[i][j][k][m] - omega * (ldy[i][j][m][0] * v[i][j - 1][k][0] + ldx[i][j][m][0] * v[i - 1][j][k][0] + ldy[i][j][m][1] * v[i][j - 1][k][1] + ldx[i][j][m][1] * v[i - 1][j][k][1] + ldy[i][j][m][2] * v[i][j - 1][k][2] + ldx[i][j][m][2] * v[i - 1][j][k][2] + ldy[i][j][m][3] * v[i][j - 1][k][3] + ldx[i][j][m][3] * v[i - 1][j][k][3] + ldy[i][j][m][4] * v[i][j - 1][k][4] + ldx[i][j][m][4] * v[i - 1][j][k][4]);
            }
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                tmat[m][0] = d[i][j][m][0];
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                tmat[m][1] = d[i][j][m][1];
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                tmat[m][2] = d[i][j][m][2];
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                tmat[m][3] = d[i][j][m][3];
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                tmat[m][4] = d[i][j][m][4];
            }
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / tmat[0][0];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[1][0];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[1][1] = tmat[1][1] - tmp * tmat[0][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[1][2] = tmat[1][2] - tmp * tmat[0][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[1][3] = tmat[1][3] - tmp * tmat[0][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[1][4] = tmat[1][4] - tmp * tmat[0][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][1] = v[i][j][k][1] - v[i][j][k][0] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[2][0];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][1] = tmat[2][1] - tmp * tmat[0][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[0][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[0][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[0][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][2] = v[i][j][k][2] - v[i][j][k][0] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[3][0];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][1] = tmat[3][1] - tmp * tmat[0][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[0][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[0][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[0][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][0] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[4][0];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][1] = tmat[4][1] - tmp * tmat[0][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[0][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[0][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[0][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][0] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / tmat[1][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[2][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[1][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[1][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[1][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][2] = v[i][j][k][2] - v[i][j][k][1] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[3][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[1][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[1][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[1][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][1] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[4][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[1][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[1][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[1][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][1] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / tmat[2][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[3][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[2][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[2][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][2] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[4][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[2][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[2][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][2] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / tmat[3][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[4][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[3][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][3] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][4] = v[i][j][k][4] / tmat[4][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][3] = v[i][j][k][3] - tmat[3][4] * v[i][j][k][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][3] = v[i][j][k][3] / tmat[3][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][2] = v[i][j][k][2] - tmat[2][3] * v[i][j][k][3] - tmat[2][4] * v[i][j][k][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][2] = v[i][j][k][2] / tmat[2][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][1] = v[i][j][k][1] - tmat[1][2] * v[i][j][k][2] - tmat[1][3] * v[i][j][k][3] - tmat[1][4] * v[i][j][k][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][1] = v[i][j][k][1] / tmat[1][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][0] = v[i][j][k][0] - tmat[0][1] * v[i][j][k][1] - tmat[0][2] * v[i][j][k][2] - tmat[0][3] * v[i][j][k][3] - tmat[0][4] * v[i][j][k][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][0] = v[i][j][k][0] / tmat[0][0];
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (i != ist) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            flag[i - 1] = 0;
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (i != iend) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            flag[i] = 1;
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush FLUSH_START
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp flush(flag)
    }
}
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(udz) := [c.f];
ptsTo(v) := [rsd.f];
ptsTo(tv) := [tv.f];
ptsTo(d) := [d.f];
ptsTo(udx) := [a.f];
ptsTo(udy) := [b.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
static void buts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double tv[12][12][5] , double d[12][12][5][5] , double udx[12][12][5][5] , double udy[12][12][5][5] , double udz[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0) {
    /*OUT: [ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int i;
    /*OUT: [ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int j;
    /*OUT: [ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int m;
    /*OUT: [ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmp;
    /*OUT: [ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmp1;
    /*OUT: [ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmat[5][5];
#pragma omp for nowait schedule(static)
    /*OUT: [ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (i = iend; i >= ist; i--) {
        /*OUT: [ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = jend; j >= jst; j--) {
            /*OUT: [ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                tv[i][j][m] = omega * (udz[i][j][m][0] * v[i][j][k + 1][0] + udz[i][j][m][1] * v[i][j][k + 1][1] + udz[i][j][m][2] * v[i][j][k + 1][2] + udz[i][j][m][3] * v[i][j][k + 1][3] + udz[i][j][m][4] * v[i][j][k + 1][4]);
            }
        }
    }
#pragma omp for nowait schedule(static)
    /*OUT: [ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (i = iend; i >= ist; i--) {
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (i != iend) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            while (flag[i + 1] == 0) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                // #pragma omp dummyFlush FLUSH_START
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
#pragma omp flush(flag)
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                ;
            }
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (i != ist) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            while (flag[i] == 1) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                // #pragma omp dummyFlush FLUSH_START
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
#pragma omp flush(flag)
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                ;
            }
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = jend; j >= jst; j--) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                tv[i][j][m] = tv[i][j][m] + omega * (udy[i][j][m][0] * v[i][j + 1][k][0] + udx[i][j][m][0] * v[i + 1][j][k][0] + udy[i][j][m][1] * v[i][j + 1][k][1] + udx[i][j][m][1] * v[i + 1][j][k][1] + udy[i][j][m][2] * v[i][j + 1][k][2] + udx[i][j][m][2] * v[i + 1][j][k][2] + udy[i][j][m][3] * v[i][j + 1][k][3] + udx[i][j][m][3] * v[i + 1][j][k][3] + udy[i][j][m][4] * v[i][j + 1][k][4] + udx[i][j][m][4] * v[i + 1][j][k][4]);
            }
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                tmat[m][0] = d[i][j][m][0];
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                tmat[m][1] = d[i][j][m][1];
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                tmat[m][2] = d[i][j][m][2];
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                tmat[m][3] = d[i][j][m][3];
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                tmat[m][4] = d[i][j][m][4];
            }
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / tmat[0][0];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[1][0];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[1][1] = tmat[1][1] - tmp * tmat[0][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[1][2] = tmat[1][2] - tmp * tmat[0][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[1][3] = tmat[1][3] - tmp * tmat[0][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[1][4] = tmat[1][4] - tmp * tmat[0][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][1] = tv[i][j][1] - tv[i][j][0] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[2][0];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][1] = tmat[2][1] - tmp * tmat[0][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[0][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[0][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[0][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][2] = tv[i][j][2] - tv[i][j][0] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[3][0];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][1] = tmat[3][1] - tmp * tmat[0][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[0][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[0][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[0][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][3] = tv[i][j][3] - tv[i][j][0] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[4][0];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][1] = tmat[4][1] - tmp * tmat[0][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[0][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[0][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[0][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][0] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / tmat[1][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[2][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[1][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[1][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[1][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][2] = tv[i][j][2] - tv[i][j][1] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[3][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[1][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[1][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[1][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][3] = tv[i][j][3] - tv[i][j][1] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[4][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[1][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[1][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[1][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][1] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / tmat[2][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[3][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[2][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[2][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][3] = tv[i][j][3] - tv[i][j][2] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[4][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[2][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[2][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][2] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / tmat[3][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp = tmp1 * tmat[4][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[3][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][3] * tmp;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][4] = tv[i][j][4] / tmat[4][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][3] = tv[i][j][3] - tmat[3][4] * tv[i][j][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][3] = tv[i][j][3] / tmat[3][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][2] = tv[i][j][2] - tmat[2][3] * tv[i][j][3] - tmat[2][4] * tv[i][j][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][2] = tv[i][j][2] / tmat[2][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][1] = tv[i][j][1] - tmat[1][2] * tv[i][j][2] - tmat[1][3] * tv[i][j][3] - tmat[1][4] * tv[i][j][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][1] = tv[i][j][1] / tmat[1][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][0] = tv[i][j][0] - tmat[0][1] * tv[i][j][1] - tmat[0][2] * tv[i][j][2] - tmat[0][3] * tv[i][j][3] - tmat[0][4] * tv[i][j][4];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tv[i][j][0] = tv[i][j][0] / tmat[0][0];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][0] = v[i][j][k][0] - tv[i][j][0];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][1] = v[i][j][k][1] - tv[i][j][1];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][2] = v[i][j][k][2] - tv[i][j][2];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][3] = v[i][j][k][3] - tv[i][j][3];
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            v[i][j][k][4] = v[i][j][k][4] - tv[i][j][4];
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (i != iend) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            flag[i + 1] = 0;
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (i != ist) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            flag[i] = 1;
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush FLUSH_START
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp flush(flag)
    }
}
static void domain() {
    /*OUT: []*/
    nx = nx0;
    /*OUT: []*/
    ny = ny0;
    /*OUT: []*/
    nz = nz0;
    /*OUT: []*/
    int _imopVarPre146;
    /*OUT: []*/
    int _imopVarPre147;
    /*OUT: []*/
    _imopVarPre146 = nx < 4;
    /*OUT: []*/
    if (!_imopVarPre146) {
        /*OUT: []*/
        _imopVarPre147 = ny < 4;
        /*OUT: []*/
        if (!_imopVarPre147) {
            /*OUT: []*/
            _imopVarPre147 = nz < 4;
        }
        /*OUT: []*/
        _imopVarPre146 = _imopVarPre147;
    }
    /*OUT: []*/
    if (_imopVarPre146) {
        /*OUT: []*/
        printf("     SUBDOMAIN SIZE IS TOO SMALL - \n" "     ADJUST PROBLEM SIZE OR NUMBER OF PROCESSORS\n" "     SO THAT NX, NY AND NZ ARE GREATER THAN OR EQUAL\n" "     TO 4 THEY ARE CURRENTLY%3d%3d%3d\n", nx, ny, nz);
        /*OUT: []*/
        /*OUT: []*/
        exit(1);
        /*OUT: []*/
    }
    /*OUT: []*/
    int _imopVarPre148;
    /*OUT: []*/
    int _imopVarPre149;
    /*OUT: []*/
    _imopVarPre148 = nx > 12;
    /*OUT: []*/
    if (!_imopVarPre148) {
        /*OUT: []*/
        _imopVarPre149 = ny > 12;
        /*OUT: []*/
        if (!_imopVarPre149) {
            /*OUT: []*/
            _imopVarPre149 = nz > 12;
        }
        /*OUT: []*/
        _imopVarPre148 = _imopVarPre149;
    }
    /*OUT: []*/
    if (_imopVarPre148) {
        /*OUT: []*/
        printf("     SUBDOMAIN SIZE IS TOO LARGE - \n" "     ADJUST PROBLEM SIZE OR NUMBER OF PROCESSORS\n" "     SO THAT NX, NY AND NZ ARE LESS THAN OR EQUAL TO \n" "     ISIZ1, ISIZ2 AND ISIZ3 RESPECTIVELY.  THEY ARE\n" "     CURRENTLY%4d%4d%4d\n", nx, ny, nz);
        /*OUT: []*/
        /*OUT: []*/
        exit(1);
        /*OUT: []*/
    }
    /*OUT: []*/
    ist = 1;
    /*OUT: []*/
    iend = nx - 2;
    /*OUT: []*/
    jst = 1;
    /*OUT: []*/
    jend = ny - 2;
}
static void erhs() {
#pragma omp parallel
    {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int i;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int j;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int k;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int m;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int iglob;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int jglob;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int L1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int L2;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int ist1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int iend1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int jst1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int jend1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double dsspm;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double xi;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double eta;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double zeta;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double q;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double tmp;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21i;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31i;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41i;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u51i;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21j;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31j;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41j;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u51j;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21k;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31k;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41k;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u51k;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21im1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31im1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41im1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u51im1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21jm1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31jm1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41jm1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u51jm1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21km1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31km1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41km1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u51km1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        dsspm = dssp;
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = 0; i < nx; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (j = 0; j < ny; j++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 0; k < nz; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        frct[i][j][k][m] = 0.0;
                    }
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = 0; i < nx; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            iglob = i;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            xi = ((double) iglob) / (nx0 - 1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (j = 0; j < ny; j++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                jglob = j;
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                eta = ((double) jglob) / (ny0 - 1);
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 0; k < nz; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    zeta = ((double) k) / (nz - 1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        rsd[i][j][k][m] = ce[m][0] + ce[m][1] * xi + ce[m][2] * eta + ce[m][3] * zeta + ce[m][4] * xi * xi + ce[m][5] * eta * eta + ce[m][6] * zeta * zeta + ce[m][7] * xi * xi * xi + ce[m][8] * eta * eta * eta + ce[m][9] * zeta * zeta * zeta + ce[m][10] * xi * xi * xi * xi + ce[m][11] * eta * eta * eta * eta + ce[m][12] * zeta * zeta * zeta * zeta;
                    }
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        L1 = 0;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        L2 = nx - 1;
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = L1; i <= L2; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (j = jst; j <= jend; j++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 1; k < nz - 1; k++) {
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][0] = rsd[i][j][k][1];
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21 = rsd[i][j][k][1] / rsd[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][1] = rsd[i][j][k][1] * u21 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][2] = rsd[i][j][k][2] * u21;
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][3] = rsd[i][j][k][3] * u21;
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u21;
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = jst; j <= jend; j++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = 1; k <= nz - 2; k++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (i = ist; i <= iend; i++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - tx2 * (flux[i + 1][j][k][m] - flux[i - 1][j][k][m]);
                    }
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (i = ist; i <= L2; i++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    tmp = 1.0 / rsd[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21i = tmp * rsd[i][j][k][1];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31i = tmp * rsd[i][j][k][2];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41i = tmp * rsd[i][j][k][3];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u51i = tmp * rsd[i][j][k][4];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    tmp = 1.0 / rsd[i - 1][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21im1 = tmp * rsd[i - 1][j][k][1];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31im1 = tmp * rsd[i - 1][j][k][2];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41im1 = tmp * rsd[i - 1][j][k][3];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u51im1 = tmp * rsd[i - 1][j][k][4];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][1] = (4.0 / 3.0) * tx3 * (u21i - u21im1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][2] = tx3 * (u31i - u31im1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][3] = tx3 * (u41i - u41im1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tx3 * ((u21i * u21i + u31i * u31i + u41i * u41i) - (u21im1 * u21im1 + u31im1 * u31im1 + u41im1 * u41im1)) + (1.0 / 6.0) * tx3 * (u21i * u21i - u21im1 * u21im1) + 1.40e+00 * 1.40e+00 * tx3 * (u51i - u51im1);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (i = ist; i <= iend; i++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][0] = frct[i][j][k][0] + dx1 * tx1 * (rsd[i - 1][j][k][0] - 2.0 * rsd[i][j][k][0] + rsd[i + 1][j][k][0]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][1] = frct[i][j][k][1] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][1] - flux[i][j][k][1]) + dx2 * tx1 * (rsd[i - 1][j][k][1] - 2.0 * rsd[i][j][k][1] + rsd[i + 1][j][k][1]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][2] = frct[i][j][k][2] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][2] - flux[i][j][k][2]) + dx3 * tx1 * (rsd[i - 1][j][k][2] - 2.0 * rsd[i][j][k][2] + rsd[i + 1][j][k][2]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][3] = frct[i][j][k][3] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][3] - flux[i][j][k][3]) + dx4 * tx1 * (rsd[i - 1][j][k][3] - 2.0 * rsd[i][j][k][3] + rsd[i + 1][j][k][3]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][4] = frct[i][j][k][4] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][4] - flux[i][j][k][4]) + dx5 * tx1 * (rsd[i - 1][j][k][4] - 2.0 * rsd[i][j][k][4] + rsd[i + 1][j][k][4]);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[1][j][k][m] = frct[1][j][k][m] - dsspm * (+5.0 * rsd[1][j][k][m] - 4.0 * rsd[2][j][k][m] + rsd[3][j][k][m]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[2][j][k][m] = frct[2][j][k][m] - dsspm * (-4.0 * rsd[1][j][k][m] + 6.0 * rsd[2][j][k][m] - 4.0 * rsd[3][j][k][m] + rsd[4][j][k][m]);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                ist1 = 3;
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                iend1 = nx - 4;
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (i = ist1; i <= iend1; i++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i - 2][j][k][m] - 4.0 * rsd[i - 1][j][k][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i + 1][j][k][m] + rsd[i + 2][j][k][m]);
                    }
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[nx - 3][j][k][m] = frct[nx - 3][j][k][m] - dsspm * (rsd[nx - 5][j][k][m] - 4.0 * rsd[nx - 4][j][k][m] + 6.0 * rsd[nx - 3][j][k][m] - 4.0 * rsd[nx - 2][j][k][m]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[nx - 2][j][k][m] = frct[nx - 2][j][k][m] - dsspm * (rsd[nx - 4][j][k][m] - 4.0 * rsd[nx - 3][j][k][m] + 5.0 * rsd[nx - 2][j][k][m]);
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        L1 = 0;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        L2 = ny - 1;
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = ist; i <= iend; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (j = L1; j <= L2; j++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][0] = rsd[i][j][k][2];
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31 = rsd[i][j][k][2] / rsd[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][1] = rsd[i][j][k][1] * u31;
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][2] = rsd[i][j][k][2] * u31 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][3] = rsd[i][j][k][3] * u31;
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u31;
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = ist; i <= iend; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = 1; k <= nz - 2; k++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (j = jst; j <= jend; j++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - ty2 * (flux[i][j + 1][k][m] - flux[i][j - 1][k][m]);
                    }
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (j = jst; j <= L2; j++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    tmp = 1.0 / rsd[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21j = tmp * rsd[i][j][k][1];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31j = tmp * rsd[i][j][k][2];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41j = tmp * rsd[i][j][k][3];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u51j = tmp * rsd[i][j][k][4];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    tmp = 1.0 / rsd[i][j - 1][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21jm1 = tmp * rsd[i][j - 1][k][1];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31jm1 = tmp * rsd[i][j - 1][k][2];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41jm1 = tmp * rsd[i][j - 1][k][3];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u51jm1 = tmp * rsd[i][j - 1][k][4];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][1] = ty3 * (u21j - u21jm1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][2] = (4.0 / 3.0) * ty3 * (u31j - u31jm1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][3] = ty3 * (u41j - u41jm1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * ty3 * ((u21j * u21j + u31j * u31j + u41j * u41j) - (u21jm1 * u21jm1 + u31jm1 * u31jm1 + u41jm1 * u41jm1)) + (1.0 / 6.0) * ty3 * (u31j * u31j - u31jm1 * u31jm1) + 1.40e+00 * 1.40e+00 * ty3 * (u51j - u51jm1);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (j = jst; j <= jend; j++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][0] = frct[i][j][k][0] + dy1 * ty1 * (rsd[i][j - 1][k][0] - 2.0 * rsd[i][j][k][0] + rsd[i][j + 1][k][0]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][1] = frct[i][j][k][1] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][1] - flux[i][j][k][1]) + dy2 * ty1 * (rsd[i][j - 1][k][1] - 2.0 * rsd[i][j][k][1] + rsd[i][j + 1][k][1]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][2] = frct[i][j][k][2] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][2] - flux[i][j][k][2]) + dy3 * ty1 * (rsd[i][j - 1][k][2] - 2.0 * rsd[i][j][k][2] + rsd[i][j + 1][k][2]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][3] = frct[i][j][k][3] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][3] - flux[i][j][k][3]) + dy4 * ty1 * (rsd[i][j - 1][k][3] - 2.0 * rsd[i][j][k][3] + rsd[i][j + 1][k][3]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][4] = frct[i][j][k][4] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][4] - flux[i][j][k][4]) + dy5 * ty1 * (rsd[i][j - 1][k][4] - 2.0 * rsd[i][j][k][4] + rsd[i][j + 1][k][4]);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][1][k][m] = frct[i][1][k][m] - dsspm * (+5.0 * rsd[i][1][k][m] - 4.0 * rsd[i][2][k][m] + rsd[i][3][k][m]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][2][k][m] = frct[i][2][k][m] - dsspm * (-4.0 * rsd[i][1][k][m] + 6.0 * rsd[i][2][k][m] - 4.0 * rsd[i][3][k][m] + rsd[i][4][k][m]);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                jst1 = 3;
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                jend1 = ny - 4;
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (j = jst1; j <= jend1; j++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i][j - 2][k][m] - 4.0 * rsd[i][j - 1][k][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i][j + 1][k][m] + rsd[i][j + 2][k][m]);
                    }
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][ny - 3][k][m] = frct[i][ny - 3][k][m] - dsspm * (rsd[i][ny - 5][k][m] - 4.0 * rsd[i][ny - 4][k][m] + 6.0 * rsd[i][ny - 3][k][m] - 4.0 * rsd[i][ny - 2][k][m]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][ny - 2][k][m] = frct[i][ny - 2][k][m] - dsspm * (rsd[i][ny - 4][k][m] - 4.0 * rsd[i][ny - 3][k][m] + 5.0 * rsd[i][ny - 2][k][m]);
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = ist; i <= iend; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (j = jst; j <= jend; j++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 0; k <= nz - 1; k++) {
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][0] = rsd[i][j][k][3];
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41 = rsd[i][j][k][3] / rsd[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][1] = rsd[i][j][k][1] * u41;
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][2] = rsd[i][j][k][2] * u41;
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][3] = rsd[i][j][k][3] * u41 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    /*OUT: [ptsTo(flux.f) := [rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u41;
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - tz2 * (flux[i][j][k + 1][m] - flux[i][j][k - 1][m]);
                    }
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 1; k <= nz - 1; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    tmp = 1.0 / rsd[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21k = tmp * rsd[i][j][k][1];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31k = tmp * rsd[i][j][k][2];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41k = tmp * rsd[i][j][k][3];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u51k = tmp * rsd[i][j][k][4];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    tmp = 1.0 / rsd[i][j][k - 1][0];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21km1 = tmp * rsd[i][j][k - 1][1];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31km1 = tmp * rsd[i][j][k - 1][2];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41km1 = tmp * rsd[i][j][k - 1][3];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u51km1 = tmp * rsd[i][j][k - 1][4];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][1] = tz3 * (u21k - u21km1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][2] = tz3 * (u31k - u31km1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][3] = (4.0 / 3.0) * tz3 * (u41k - u41km1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tz3 * ((u21k * u21k + u31k * u31k + u41k * u41k) - (u21km1 * u21km1 + u31km1 * u31km1 + u41km1 * u41km1)) + (1.0 / 6.0) * tz3 * (u41k * u41k - u41km1 * u41km1) + 1.40e+00 * 1.40e+00 * tz3 * (u51k - u51km1);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][0] = frct[i][j][k][0] + dz1 * tz1 * (rsd[i][j][k + 1][0] - 2.0 * rsd[i][j][k][0] + rsd[i][j][k - 1][0]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][1] = frct[i][j][k][1] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][1] - flux[i][j][k][1]) + dz2 * tz1 * (rsd[i][j][k + 1][1] - 2.0 * rsd[i][j][k][1] + rsd[i][j][k - 1][1]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][2] = frct[i][j][k][2] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][2] - flux[i][j][k][2]) + dz3 * tz1 * (rsd[i][j][k + 1][2] - 2.0 * rsd[i][j][k][2] + rsd[i][j][k - 1][2]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][3] = frct[i][j][k][3] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][3] - flux[i][j][k][3]) + dz4 * tz1 * (rsd[i][j][k + 1][3] - 2.0 * rsd[i][j][k][3] + rsd[i][j][k - 1][3]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][k][4] = frct[i][j][k][4] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][4] - flux[i][j][k][4]) + dz5 * tz1 * (rsd[i][j][k + 1][4] - 2.0 * rsd[i][j][k][4] + rsd[i][j][k - 1][4]);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][1][m] = frct[i][j][1][m] - dsspm * (+5.0 * rsd[i][j][1][m] - 4.0 * rsd[i][j][2][m] + rsd[i][j][3][m]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][2][m] = frct[i][j][2][m] - dsspm * (-4.0 * rsd[i][j][1][m] + 6.0 * rsd[i][j][2][m] - 4.0 * rsd[i][j][3][m] + rsd[i][j][4][m]);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 3; k <= nz - 4; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i][j][k - 2][m] - 4.0 * rsd[i][j][k - 1][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i][j][k + 1][m] + rsd[i][j][k + 2][m]);
                    }
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][nz - 3][m] = frct[i][j][nz - 3][m] - dsspm * (rsd[i][j][nz - 5][m] - 4.0 * rsd[i][j][nz - 4][m] + 6.0 * rsd[i][j][nz - 3][m] - 4.0 * rsd[i][j][nz - 2][m]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    frct[i][j][nz - 2][m] = frct[i][j][nz - 2][m] - dsspm * (rsd[i][j][nz - 4][m] - 4.0 * rsd[i][j][nz - 3][m] + 5.0 * rsd[i][j][nz - 2][m]);
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
    }
}
static void error() {
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int i;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int j;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int k;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int m;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int iglob;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int jglob;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmp;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double u000ijk[5];
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        errnm[m] = 0.0;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (i = ist; i <= iend; i++) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        iglob = i;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = jst; j <= jend; j++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            jglob = j;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = 1; k <= nz - 2; k++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                exact(iglob, jglob, k, u000ijk);
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    tmp = (u000ijk[m] - u[i][j][k][m]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    errnm[m] = errnm[m] + tmp * tmp;
                }
            }
        }
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double _imopVarPre151;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double _imopVarPre152;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre151 = errnm[m] / ((nx0 - 2) * (ny0 - 2) * (nz0 - 2));
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre152 = sqrt(_imopVarPre151);
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        errnm[m] = _imopVarPre152;
    }
}
/*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(u000ijk) := [ue_nx0jk.f, u.f, ue_ij1.f, ue_ijnz.f, u000ijk.f, ue_i1k.f, ue_iny0k.f, ue_1jk.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
static void exact(int i, int j , int k , double u000ijk[5]) {
    /*OUT: [ptsTo(u000ijk) := [ue_nx0jk.f, u.f, ue_ij1.f, ue_ijnz.f, u000ijk.f, ue_i1k.f, ue_iny0k.f, ue_1jk.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int m;
    /*OUT: [ptsTo(u000ijk) := [ue_nx0jk.f, u.f, ue_ij1.f, ue_ijnz.f, u000ijk.f, ue_i1k.f, ue_iny0k.f, ue_1jk.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double xi;
    /*OUT: [ptsTo(u000ijk) := [ue_nx0jk.f, u.f, ue_ij1.f, ue_ijnz.f, u000ijk.f, ue_i1k.f, ue_iny0k.f, ue_1jk.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double eta;
    /*OUT: [ptsTo(u000ijk) := [ue_nx0jk.f, u.f, ue_ij1.f, ue_ijnz.f, u000ijk.f, ue_i1k.f, ue_iny0k.f, ue_1jk.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double zeta;
    /*OUT: [ptsTo(u000ijk) := [ue_nx0jk.f, u.f, ue_ij1.f, ue_ijnz.f, u000ijk.f, ue_i1k.f, ue_iny0k.f, ue_1jk.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    xi = ((double) i) / (nx0 - 1);
    /*OUT: [ptsTo(u000ijk) := [ue_nx0jk.f, u.f, ue_ij1.f, ue_ijnz.f, u000ijk.f, ue_i1k.f, ue_iny0k.f, ue_1jk.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    eta = ((double) j) / (ny0 - 1);
    /*OUT: [ptsTo(u000ijk) := [ue_nx0jk.f, u.f, ue_ij1.f, ue_ijnz.f, u000ijk.f, ue_i1k.f, ue_iny0k.f, ue_1jk.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    zeta = ((double) k) / (nz - 1);
    /*OUT: [ptsTo(u000ijk) := [ue_nx0jk.f, u.f, ue_ij1.f, ue_ijnz.f, u000ijk.f, ue_i1k.f, ue_iny0k.f, ue_1jk.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(u000ijk) := [ue_nx0jk.f, u.f, ue_ij1.f, ue_ijnz.f, u000ijk.f, ue_i1k.f, ue_iny0k.f, ue_1jk.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(u000ijk) := [ue_nx0jk.f, u.f, ue_ij1.f, ue_ijnz.f, u000ijk.f, ue_i1k.f, ue_iny0k.f, ue_1jk.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(u000ijk) := [ue_nx0jk.f, u.f, ue_ij1.f, ue_ijnz.f, u000ijk.f, ue_i1k.f, ue_iny0k.f, ue_1jk.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        u000ijk[m] = ce[m][0] + ce[m][1] * xi + ce[m][2] * eta + ce[m][3] * zeta + ce[m][4] * xi * xi + ce[m][5] * eta * eta + ce[m][6] * zeta * zeta + ce[m][7] * xi * xi * xi + ce[m][8] * eta * eta * eta + ce[m][9] * zeta * zeta * zeta + ce[m][10] * xi * xi * xi * xi + ce[m][11] * eta * eta * eta * eta + ce[m][12] * zeta * zeta * zeta * zeta;
    }
}
/*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
static void jacld(int k) {
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int i;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int j;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double r43;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double c1345;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double c34;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmp1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmp2;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmp3;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    r43 = (4.0 / 3.0);
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    c1345 = 1.40e+00 * 1.00e-01 * 1.00e+00 * 1.40e+00;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    c34 = 1.00e-01 * 1.00e+00;
#pragma omp for nowait schedule(static)
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (i = ist; i <= iend; i++) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = jst; j <= jend; j++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / u[i][j][k][0];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp2 = tmp1 * tmp1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp3 = tmp1 * tmp2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][0][0] = 1.0 + dt * 2.0 * (tx1 * dx1 + ty1 * dy1 + tz1 * dz1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][0][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][0][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][0][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][0][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][1][0] = dt * 2.0 * (tx1 * (-r43 * c34 * tmp2 * u[i][j][k][1]) + ty1 * (-c34 * tmp2 * u[i][j][k][1]) + tz1 * (-c34 * tmp2 * u[i][j][k][1]));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][1][1] = 1.0 + dt * 2.0 * (tx1 * r43 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx2 + ty1 * dy2 + tz1 * dz2);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][1][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][1][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][1][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][2][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][2]) + ty1 * (-r43 * c34 * tmp2 * u[i][j][k][2]) + tz1 * (-c34 * tmp2 * u[i][j][k][2]));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][2][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][2][2] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * r43 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx3 + ty1 * dy3 + tz1 * dz3);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][2][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][2][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][3][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][3]) + ty1 * (-c34 * tmp2 * u[i][j][k][3]) + tz1 * (-r43 * c34 * tmp2 * u[i][j][k][3]));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][3][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][3][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][3][3] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * r43 * c34 * tmp1) + dt * 2.0 * (tx1 * dx4 + ty1 * dy4 + tz1 * dz4);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][3][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][4][0] = dt * 2.0 * (tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][4][1] = dt * 2.0 * (tx1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][1] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][1] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][1]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][4][2] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][2] + ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][2] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][2]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][4][3] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][3]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][4][4] = 1.0 + dt * 2.0 * (tx1 * c1345 * tmp1 + ty1 * c1345 * tmp1 + tz1 * c1345 * tmp1) + dt * 2.0 * (tx1 * dx5 + ty1 * dy5 + tz1 * dz5);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / u[i][j][k - 1][0];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp2 = tmp1 * tmp1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp3 = tmp1 * tmp2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][0][0] = -dt * tz1 * dz1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][0][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][0][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][0][3] = -dt * tz2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][0][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][1][0] = -dt * tz2 * (-(u[i][j][k - 1][1] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k - 1][1]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][1][1] = -dt * tz2 * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * c34 * tmp1 - dt * tz1 * dz2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][1][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][1][3] = -dt * tz2 * (u[i][j][k - 1][1] * tmp1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][1][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][2][0] = -dt * tz2 * (-(u[i][j][k - 1][2] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k - 1][2]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][2][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][2][2] = -dt * tz2 * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * (c34 * tmp1) - dt * tz1 * dz3;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][2][3] = -dt * tz2 * (u[i][j][k - 1][2] * tmp1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][2][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][3][0] = -dt * tz2 * (-(u[i][j][k - 1][3] * tmp1) * (u[i][j][k - 1][3] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2)) - dt * tz1 * (-r43 * c34 * tmp2 * u[i][j][k - 1][3]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][3][1] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][1] * tmp1));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][3][2] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][2] * tmp1));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][3][3] = -dt * tz2 * (2.0 - 0.40e+00) * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * (r43 * c34 * tmp1) - dt * tz1 * dz4;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][3][4] = -dt * tz2 * 0.40e+00;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][4][0] = -dt * tz2 * ((0.40e+00 * (u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2 - 1.40e+00 * (u[i][j][k - 1][4] * tmp1)) * (u[i][j][k - 1][3] * tmp1)) - dt * tz1 * (-(c34 - c1345) * tmp3 * (u[i][j][k - 1][1] * u[i][j][k - 1][1]) - (c34 - c1345) * tmp3 * (u[i][j][k - 1][2] * u[i][j][k - 1][2]) - (r43 * c34 - c1345) * tmp3 * (u[i][j][k - 1][3] * u[i][j][k - 1][3]) - c1345 * tmp2 * u[i][j][k - 1][4]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][4][1] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][1] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k - 1][1];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][4][2] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][2] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k - 1][2];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][4][3] = -dt * tz2 * (1.40e+00 * (u[i][j][k - 1][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + 3.0 * u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2)) - dt * tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k - 1][3];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][4][4] = -dt * tz2 * (1.40e+00 * (u[i][j][k - 1][3] * tmp1)) - dt * tz1 * c1345 * tmp1 - dt * tz1 * dz5;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / u[i][j - 1][k][0];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp2 = tmp1 * tmp1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp3 = tmp1 * tmp2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][0][0] = -dt * ty1 * dy1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][0][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][0][2] = -dt * ty2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][0][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][0][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][1][0] = -dt * ty2 * (-(u[i][j - 1][k][1] * u[i][j - 1][k][2]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j - 1][k][1]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][1][1] = -dt * ty2 * (u[i][j - 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][1][2] = -dt * ty2 * (u[i][j - 1][k][1] * tmp1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][1][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][1][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][2][0] = -dt * ty2 * (-(u[i][j - 1][k][2] * tmp1) * (u[i][j - 1][k][2] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j - 1][k][1] * u[i][j - 1][k][1] + u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2)) - dt * ty1 * (-r43 * c34 * tmp2 * u[i][j - 1][k][2]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][2][1] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][1] * tmp1));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][2][2] = -dt * ty2 * ((2.0 - 0.40e+00) * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * (r43 * c34 * tmp1) - dt * ty1 * dy3;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][2][3] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][3] * tmp1));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][2][4] = -dt * ty2 * 0.40e+00;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][3][0] = -dt * ty2 * (-(u[i][j - 1][k][2] * u[i][j - 1][k][3]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j - 1][k][3]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][3][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][3][2] = -dt * ty2 * (u[i][j - 1][k][3] * tmp1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][3][3] = -dt * ty2 * (u[i][j - 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy4;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][3][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][4][0] = -dt * ty2 * ((0.40e+00 * (u[i][j - 1][k][1] * u[i][j - 1][k][1] + u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2 - 1.40e+00 * (u[i][j - 1][k][4] * tmp1)) * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j - 1][k][1]) * (u[i][j - 1][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j - 1][k][2]) * (u[i][j - 1][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j - 1][k][3]) * (u[i][j - 1][k][3]))) - c1345 * tmp2 * u[i][j - 1][k][4]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][4][1] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][1] * u[i][j - 1][k][2]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j - 1][k][1];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][4][2] = -dt * ty2 * (1.40e+00 * (u[i][j - 1][k][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j - 1][k][1] * u[i][j - 1][k][1] + 3.0 * u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2)) - dt * ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j - 1][k][2];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][4][3] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][2] * u[i][j - 1][k][3]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j - 1][k][3];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][4][4] = -dt * ty2 * (1.40e+00 * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * c1345 * tmp1 - dt * ty1 * dy5;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / u[i - 1][j][k][0];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp2 = tmp1 * tmp1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp3 = tmp1 * tmp2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][0][0] = -dt * tx1 * dx1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][0][1] = -dt * tx2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][0][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][0][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][0][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][1][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * tmp1) * (u[i - 1][j][k][1] * tmp1) + 0.40e+00 * 0.50 * (u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2) - dt * tx1 * (-r43 * c34 * tmp2 * u[i - 1][j][k][1]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][1][1] = -dt * tx2 * ((2.0 - 0.40e+00) * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * (r43 * c34 * tmp1) - dt * tx1 * dx2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][1][2] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][2] * tmp1));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][1][3] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][3] * tmp1));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][1][4] = -dt * tx2 * 0.40e+00;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][2][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * u[i - 1][j][k][2]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i - 1][j][k][2]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][2][1] = -dt * tx2 * (u[i - 1][j][k][2] * tmp1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][2][2] = -dt * tx2 * (u[i - 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx3;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][2][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][2][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][3][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * u[i - 1][j][k][3]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i - 1][j][k][3]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][3][1] = -dt * tx2 * (u[i - 1][j][k][3] * tmp1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][3][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][3][3] = -dt * tx2 * (u[i - 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx4;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][3][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][4][0] = -dt * tx2 * ((0.40e+00 * (u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2 - 1.40e+00 * (u[i - 1][j][k][4] * tmp1)) * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i - 1][j][k][1]) * (u[i - 1][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i - 1][j][k][2]) * (u[i - 1][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i - 1][j][k][3]) * (u[i - 1][j][k][3]))) - c1345 * tmp2 * u[i - 1][j][k][4]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][4][1] = -dt * tx2 * (1.40e+00 * (u[i - 1][j][k][4] * tmp1) - 0.50 * 0.40e+00 * ((3.0 * u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2)) - dt * tx1 * (r43 * c34 - c1345) * tmp2 * u[i - 1][j][k][1];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][4][2] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][2] * u[i - 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i - 1][j][k][2];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][4][3] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][3] * u[i - 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i - 1][j][k][3];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][4][4] = -dt * tx2 * (1.40e+00 * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * c1345 * tmp1 - dt * tx1 * dx5;
        }
    }
}
/*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
static void jacu(int k) {
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int i;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int j;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double r43;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double c1345;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double c34;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmp1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmp2;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmp3;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    r43 = (4.0 / 3.0);
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    c1345 = 1.40e+00 * 1.00e-01 * 1.00e+00 * 1.40e+00;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    c34 = 1.00e-01 * 1.00e+00;
#pragma omp for nowait schedule(static)
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (i = iend; i >= ist; i--) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = jend; j >= jst; j--) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / u[i][j][k][0];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp2 = tmp1 * tmp1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp3 = tmp1 * tmp2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][0][0] = 1.0 + dt * 2.0 * (tx1 * dx1 + ty1 * dy1 + tz1 * dz1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][0][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][0][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][0][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][0][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][1][0] = dt * 2.0 * (tx1 * (-r43 * c34 * tmp2 * u[i][j][k][1]) + ty1 * (-c34 * tmp2 * u[i][j][k][1]) + tz1 * (-c34 * tmp2 * u[i][j][k][1]));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][1][1] = 1.0 + dt * 2.0 * (tx1 * r43 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx2 + ty1 * dy2 + tz1 * dz2);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][1][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][1][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][1][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][2][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][2]) + ty1 * (-r43 * c34 * tmp2 * u[i][j][k][2]) + tz1 * (-c34 * tmp2 * u[i][j][k][2]));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][2][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][2][2] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * r43 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx3 + ty1 * dy3 + tz1 * dz3);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][2][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][2][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][3][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][3]) + ty1 * (-c34 * tmp2 * u[i][j][k][3]) + tz1 * (-r43 * c34 * tmp2 * u[i][j][k][3]));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][3][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][3][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][3][3] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * r43 * c34 * tmp1) + dt * 2.0 * (tx1 * dx4 + ty1 * dy4 + tz1 * dz4);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][3][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][4][0] = dt * 2.0 * (tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][4][1] = dt * 2.0 * (tx1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][1] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][1] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][1]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][4][2] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][2] + ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][2] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][2]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][4][3] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][3]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            d[i][j][4][4] = 1.0 + dt * 2.0 * (tx1 * c1345 * tmp1 + ty1 * c1345 * tmp1 + tz1 * c1345 * tmp1) + dt * 2.0 * (tx1 * dx5 + ty1 * dy5 + tz1 * dz5);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / u[i + 1][j][k][0];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp2 = tmp1 * tmp1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp3 = tmp1 * tmp2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][0][0] = -dt * tx1 * dx1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][0][1] = dt * tx2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][0][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][0][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][0][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][1][0] = dt * tx2 * (-(u[i + 1][j][k][1] * tmp1) * (u[i + 1][j][k][1] * tmp1) + 0.40e+00 * 0.50 * (u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2) - dt * tx1 * (-r43 * c34 * tmp2 * u[i + 1][j][k][1]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][1][1] = dt * tx2 * ((2.0 - 0.40e+00) * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * (r43 * c34 * tmp1) - dt * tx1 * dx2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][1][2] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][2] * tmp1));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][1][3] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][3] * tmp1));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][1][4] = dt * tx2 * 0.40e+00;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][2][0] = dt * tx2 * (-(u[i + 1][j][k][1] * u[i + 1][j][k][2]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i + 1][j][k][2]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][2][1] = dt * tx2 * (u[i + 1][j][k][2] * tmp1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][2][2] = dt * tx2 * (u[i + 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx3;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][2][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][2][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][3][0] = dt * tx2 * (-(u[i + 1][j][k][1] * u[i + 1][j][k][3]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i + 1][j][k][3]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][3][1] = dt * tx2 * (u[i + 1][j][k][3] * tmp1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][3][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][3][3] = dt * tx2 * (u[i + 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx4;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][3][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][4][0] = dt * tx2 * ((0.40e+00 * (u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2 - 1.40e+00 * (u[i + 1][j][k][4] * tmp1)) * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i + 1][j][k][1]) * (u[i + 1][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i + 1][j][k][2]) * (u[i + 1][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i + 1][j][k][3]) * (u[i + 1][j][k][3]))) - c1345 * tmp2 * u[i + 1][j][k][4]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][4][1] = dt * tx2 * (1.40e+00 * (u[i + 1][j][k][4] * tmp1) - 0.50 * 0.40e+00 * ((3.0 * u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2)) - dt * tx1 * (r43 * c34 - c1345) * tmp2 * u[i + 1][j][k][1];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][4][2] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][2] * u[i + 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i + 1][j][k][2];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][4][3] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][3] * u[i + 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i + 1][j][k][3];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            a[i][j][4][4] = dt * tx2 * (1.40e+00 * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * c1345 * tmp1 - dt * tx1 * dx5;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / u[i][j + 1][k][0];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp2 = tmp1 * tmp1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp3 = tmp1 * tmp2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][0][0] = -dt * ty1 * dy1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][0][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][0][2] = dt * ty2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][0][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][0][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][1][0] = dt * ty2 * (-(u[i][j + 1][k][1] * u[i][j + 1][k][2]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j + 1][k][1]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][1][1] = dt * ty2 * (u[i][j + 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][1][2] = dt * ty2 * (u[i][j + 1][k][1] * tmp1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][1][3] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][1][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][2][0] = dt * ty2 * (-(u[i][j + 1][k][2] * tmp1) * (u[i][j + 1][k][2] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j + 1][k][1] * u[i][j + 1][k][1] + u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2)) - dt * ty1 * (-r43 * c34 * tmp2 * u[i][j + 1][k][2]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][2][1] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][1] * tmp1));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][2][2] = dt * ty2 * ((2.0 - 0.40e+00) * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * (r43 * c34 * tmp1) - dt * ty1 * dy3;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][2][3] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][3] * tmp1));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][2][4] = dt * ty2 * 0.40e+00;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][3][0] = dt * ty2 * (-(u[i][j + 1][k][2] * u[i][j + 1][k][3]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j + 1][k][3]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][3][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][3][2] = dt * ty2 * (u[i][j + 1][k][3] * tmp1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][3][3] = dt * ty2 * (u[i][j + 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy4;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][3][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][4][0] = dt * ty2 * ((0.40e+00 * (u[i][j + 1][k][1] * u[i][j + 1][k][1] + u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2 - 1.40e+00 * (u[i][j + 1][k][4] * tmp1)) * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j + 1][k][1]) * (u[i][j + 1][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j + 1][k][2]) * (u[i][j + 1][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j + 1][k][3]) * (u[i][j + 1][k][3]))) - c1345 * tmp2 * u[i][j + 1][k][4]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][4][1] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][1] * u[i][j + 1][k][2]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j + 1][k][1];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][4][2] = dt * ty2 * (1.40e+00 * (u[i][j + 1][k][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j + 1][k][1] * u[i][j + 1][k][1] + 3.0 * u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2)) - dt * ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j + 1][k][2];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][4][3] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][2] * u[i][j + 1][k][3]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j + 1][k][3];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            b[i][j][4][4] = dt * ty2 * (1.40e+00 * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * c1345 * tmp1 - dt * ty1 * dy5;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp1 = 1.0 / u[i][j][k + 1][0];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp2 = tmp1 * tmp1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            tmp3 = tmp1 * tmp2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][0][0] = -dt * tz1 * dz1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][0][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][0][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][0][3] = dt * tz2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][0][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][1][0] = dt * tz2 * (-(u[i][j][k + 1][1] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k + 1][1]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][1][1] = dt * tz2 * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * c34 * tmp1 - dt * tz1 * dz2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][1][2] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][1][3] = dt * tz2 * (u[i][j][k + 1][1] * tmp1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][1][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][2][0] = dt * tz2 * (-(u[i][j][k + 1][2] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k + 1][2]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][2][1] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][2][2] = dt * tz2 * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * (c34 * tmp1) - dt * tz1 * dz3;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][2][3] = dt * tz2 * (u[i][j][k + 1][2] * tmp1);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][2][4] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][3][0] = dt * tz2 * (-(u[i][j][k + 1][3] * tmp1) * (u[i][j][k + 1][3] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2)) - dt * tz1 * (-r43 * c34 * tmp2 * u[i][j][k + 1][3]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][3][1] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][1] * tmp1));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][3][2] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][2] * tmp1));
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][3][3] = dt * tz2 * (2.0 - 0.40e+00) * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * (r43 * c34 * tmp1) - dt * tz1 * dz4;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][3][4] = dt * tz2 * 0.40e+00;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][4][0] = dt * tz2 * ((0.40e+00 * (u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2 - 1.40e+00 * (u[i][j][k + 1][4] * tmp1)) * (u[i][j][k + 1][3] * tmp1)) - dt * tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k + 1][1]) * (u[i][j][k + 1][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k + 1][2]) * (u[i][j][k + 1][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k + 1][3]) * (u[i][j][k + 1][3]))) - c1345 * tmp2 * u[i][j][k + 1][4]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][4][1] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][1] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k + 1][1];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][4][2] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][2] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k + 1][2];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][4][3] = dt * tz2 * (1.40e+00 * (u[i][j][k + 1][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + 3.0 * u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2)) - dt * tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k + 1][3];
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            c[i][j][4][4] = dt * tz2 * (1.40e+00 * (u[i][j][k + 1][3] * tmp1)) - dt * tz1 * c1345 * tmp1 - dt * tz1 * dz5;
        }
    }
}
/*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(v) := [rsd.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(v) := [rsd.f];
ptsTo(sum) := [delunm.f, rsdnm.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
static void l2norm(int nx0, int ny0 , int nz0 , int ist , int iend , int jst , int jend , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double sum[5]) {
#pragma omp parallel
    {
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int i;
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int j;
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int k;
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int m;
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double sum0 = 0.0;
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double sum1 = 0.0;
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double sum2 = 0.0;
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double sum3 = 0.0;
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double sum4 = 0.0;
#pragma omp single nowait
        {
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(v) := [rsd.f];
                ptsTo(sum) := [delunm.f, rsdnm.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                sum[m] = 0.0;
            }
        }
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = ist; i <= iend; i++) {
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (j = jst; j <= jend; j++) {
                /*OUT: [ptsTo(v) := [rsd.f];
                ptsTo(sum) := [delunm.f, rsdnm.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(v) := [rsd.f];
                ptsTo(sum) := [delunm.f, rsdnm.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(v) := [rsd.f];
                ptsTo(sum) := [delunm.f, rsdnm.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 1; k <= nz0 - 2; k++) {
                    /*OUT: [ptsTo(v) := [rsd.f];
                    ptsTo(sum) := [delunm.f, rsdnm.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    sum0 = sum0 + v[i][j][k][0] * v[i][j][k][0];
                    /*OUT: [ptsTo(v) := [rsd.f];
                    ptsTo(sum) := [delunm.f, rsdnm.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    sum1 = sum1 + v[i][j][k][1] * v[i][j][k][1];
                    /*OUT: [ptsTo(v) := [rsd.f];
                    ptsTo(sum) := [delunm.f, rsdnm.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    sum2 = sum2 + v[i][j][k][2] * v[i][j][k][2];
                    /*OUT: [ptsTo(v) := [rsd.f];
                    ptsTo(sum) := [delunm.f, rsdnm.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    sum3 = sum3 + v[i][j][k][3] * v[i][j][k][3];
                    /*OUT: [ptsTo(v) := [rsd.f];
                    ptsTo(sum) := [delunm.f, rsdnm.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    sum4 = sum4 + v[i][j][k][4] * v[i][j][k][4];
                }
            }
        }
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
        {
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            sum[0] += sum0;
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            sum[1] += sum1;
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            sum[2] += sum2;
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            sum[3] += sum3;
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            sum[4] += sum4;
        }
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush CRITICAL_END
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
#pragma omp single nowait
        {
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(v) := [rsd.f];
            ptsTo(sum) := [delunm.f, rsdnm.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (m = 0; m < 5; m++) {
                /*OUT: [ptsTo(v) := [rsd.f];
                ptsTo(sum) := [delunm.f, rsdnm.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre154;
                /*OUT: [ptsTo(v) := [rsd.f];
                ptsTo(sum) := [delunm.f, rsdnm.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre155;
                /*OUT: [ptsTo(v) := [rsd.f];
                ptsTo(sum) := [delunm.f, rsdnm.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre154 = sum[m] / ((nx0 - 2) * (ny0 - 2) * (nz0 - 2));
                /*OUT: [ptsTo(v) := [rsd.f];
                ptsTo(sum) := [delunm.f, rsdnm.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre155 = sqrt(_imopVarPre154);
                /*OUT: [ptsTo(v) := [rsd.f];
                ptsTo(sum) := [delunm.f, rsdnm.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(v) := [rsd.f];
                ptsTo(sum) := [delunm.f, rsdnm.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                sum[m] = _imopVarPre155;
            }
        }
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(v) := [rsd.f];
        ptsTo(sum) := [delunm.f, rsdnm.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
    }
}
static void pintgr() {
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int i;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int j;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int k;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int ibeg;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int ifin;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int ifin1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int jbeg;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int jfin;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int jfin1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int iglob;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int iglob1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int iglob2;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int jglob;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int jglob1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int jglob2;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double phi1[12 + 2][12 + 2];
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double phi2[12 + 2][12 + 2];
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double frc1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double frc2;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double frc3;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    ibeg = nx;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    ifin = 0;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    iglob1 = -1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    iglob2 = nx - 1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int _imopVarPre157;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    _imopVarPre157 = iglob1 >= ii1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre157) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre157 = iglob2 < ii2 + nx;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre157) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        ibeg = 0;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int _imopVarPre159;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    _imopVarPre159 = iglob1 >= ii1 - nx;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre159) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre159 = iglob2 <= ii2;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre159) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        ifin = nx;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int _imopVarPre161;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    _imopVarPre161 = ii1 >= iglob1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre161) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre161 = ii1 <= iglob2;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre161) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        ibeg = ii1;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int _imopVarPre163;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    _imopVarPre163 = ii2 >= iglob1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre163) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre163 = ii2 <= iglob2;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre163) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        ifin = ii2;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    jbeg = ny;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    jfin = -1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    jglob1 = 0;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    jglob2 = ny - 1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int _imopVarPre165;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    _imopVarPre165 = jglob1 >= ji1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre165) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre165 = jglob2 < ji2 + ny;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre165) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        jbeg = 0;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int _imopVarPre167;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    _imopVarPre167 = jglob1 > ji1 - ny;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre167) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre167 = jglob2 <= ji2;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre167) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        jfin = ny;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int _imopVarPre169;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    _imopVarPre169 = ji1 >= jglob1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre169) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre169 = ji1 <= jglob2;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre169) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        jbeg = ji1;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int _imopVarPre171;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    _imopVarPre171 = ji2 >= jglob1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre171) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre171 = ji2 <= jglob2;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre171) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        jfin = ji2;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    ifin1 = ifin;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    jfin1 = jfin;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (ifin1 == ii2) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        ifin1 = ifin - 1;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (jfin1 == ji2) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        jfin1 = jfin - 1;
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (i = 0; i <= 12 + 1; i++) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (k = 0; k <= 12 + 1; k++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            phi1[i][k] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            phi2[i][k] = 0.0;
        }
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (i = ibeg; i <= ifin; i++) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        iglob = i;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = jbeg; j <= jfin; j++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            jglob = j;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            k = ki1;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            phi1[i][j] = 0.40e+00 * (u[i][j][k][4] - 0.50 * (((u[i][j][k][1]) * (u[i][j][k][1])) + ((u[i][j][k][2]) * (u[i][j][k][2])) + ((u[i][j][k][3]) * (u[i][j][k][3]))) / u[i][j][k][0]);
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            k = ki2;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            phi2[i][j] = 0.40e+00 * (u[i][j][k][4] - 0.50 * (((u[i][j][k][1]) * (u[i][j][k][1])) + ((u[i][j][k][2]) * (u[i][j][k][2])) + ((u[i][j][k][3]) * (u[i][j][k][3]))) / u[i][j][k][0]);
        }
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    frc1 = 0.0;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (i = ibeg; i <= ifin1; i++) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = jbeg; j <= jfin1; j++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            frc1 = frc1 + (phi1[i][j] + phi1[i + 1][j] + phi1[i][j + 1] + phi1[i + 1][j + 1] + phi2[i][j] + phi2[i + 1][j] + phi2[i][j + 1] + phi2[i + 1][j + 1]);
        }
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    frc1 = dxi * deta * frc1;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (i = 0; i <= 12 + 1; i++) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (k = 0; k <= 12 + 1; k++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            phi1[i][k] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            phi2[i][k] = 0.0;
        }
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    jglob = jbeg;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (jglob == ji1) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = ibeg; i <= ifin; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            iglob = i;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = ki1; k <= ki2; k++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                phi1[i][k] = 0.40e+00 * (u[i][jbeg][k][4] - 0.50 * (((u[i][jbeg][k][1]) * (u[i][jbeg][k][1])) + ((u[i][jbeg][k][2]) * (u[i][jbeg][k][2])) + ((u[i][jbeg][k][3]) * (u[i][jbeg][k][3]))) / u[i][jbeg][k][0]);
            }
        }
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    jglob = jfin;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (jglob == ji2) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = ibeg; i <= ifin; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            iglob = i;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = ki1; k <= ki2; k++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                phi2[i][k] = 0.40e+00 * (u[i][jfin][k][4] - 0.50 * (((u[i][jfin][k][1]) * (u[i][jfin][k][1])) + ((u[i][jfin][k][2]) * (u[i][jfin][k][2])) + ((u[i][jfin][k][3]) * (u[i][jfin][k][3]))) / u[i][jfin][k][0]);
            }
        }
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    frc2 = 0.0;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (i = ibeg; i <= ifin1; i++) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (k = ki1; k <= ki2 - 1; k++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            frc2 = frc2 + (phi1[i][k] + phi1[i + 1][k] + phi1[i][k + 1] + phi1[i + 1][k + 1] + phi2[i][k] + phi2[i + 1][k] + phi2[i][k + 1] + phi2[i + 1][k + 1]);
        }
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    frc2 = dxi * dzeta * frc2;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (i = 0; i <= 12 + 1; i++) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (k = 0; k <= 12 + 1; k++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            phi1[i][k] = 0.0;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            phi2[i][k] = 0.0;
        }
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    iglob = ibeg;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (iglob == ii1) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = jbeg; j <= jfin; j++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            jglob = j;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = ki1; k <= ki2; k++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                phi1[j][k] = 0.40e+00 * (u[ibeg][j][k][4] - 0.50 * (((u[ibeg][j][k][1]) * (u[ibeg][j][k][1])) + ((u[ibeg][j][k][2]) * (u[ibeg][j][k][2])) + ((u[ibeg][j][k][3]) * (u[ibeg][j][k][3]))) / u[ibeg][j][k][0]);
            }
        }
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    iglob = ifin;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (iglob == ii2) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = jbeg; j <= jfin; j++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            jglob = j;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = ki1; k <= ki2; k++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                phi2[j][k] = 0.40e+00 * (u[ifin][j][k][4] - 0.50 * (((u[ifin][j][k][1]) * (u[ifin][j][k][1])) + ((u[ifin][j][k][2]) * (u[ifin][j][k][2])) + ((u[ifin][j][k][3]) * (u[ifin][j][k][3]))) / u[ifin][j][k][0]);
            }
        }
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    frc3 = 0.0;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (j = jbeg; j <= jfin1; j++) {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (k = ki1; k <= ki2 - 1; k++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            frc3 = frc3 + (phi1[j][k] + phi1[j + 1][k] + phi1[j][k + 1] + phi1[j + 1][k + 1] + phi2[j][k] + phi2[j + 1][k] + phi2[j][k + 1] + phi2[j + 1][k + 1]);
        }
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    frc3 = deta * dzeta * frc3;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    frc = 0.25 * (frc1 + frc2 + frc3);
}
static void read_input() {
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    FILE *fp;
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - LU Benchmark\n\n");
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    fp = fopen("inputlu.data", "r");
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    if (fp != ((void *) 0)) {
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        printf(" Reading from input file inputlu.data\n");
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        int _imopVarPre173;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        _imopVarPre173 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        while (_imopVarPre173 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ]*/
            _imopVarPre173 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        int _imopVarPre175;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        _imopVarPre175 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        while (_imopVarPre175 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ]*/
            _imopVarPre175 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [nullCell];
        ]*/
        int *_imopVarPre178;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [nullCell];
        ptsTo(_imopVarPre179) := [nullCell];
        ]*/
        int *_imopVarPre179;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [nullCell];
        ]*/
        _imopVarPre178 = &inorm;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        _imopVarPre179 = &ipr;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        fscanf(fp, "%d%d", _imopVarPre179, _imopVarPre178);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        int _imopVarPre181;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        _imopVarPre181 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        while (_imopVarPre181 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ]*/
            _imopVarPre181 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        int _imopVarPre183;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        _imopVarPre183 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        while (_imopVarPre183 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ]*/
            _imopVarPre183 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        int _imopVarPre185;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        _imopVarPre185 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ]*/
        while (_imopVarPre185 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ]*/
            _imopVarPre185 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [nullCell];
        ]*/
        int *_imopVarPre187;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        _imopVarPre187 = &itmax;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        fscanf(fp, "%d", _imopVarPre187);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        int _imopVarPre189;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        _imopVarPre189 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        while (_imopVarPre189 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ]*/
            _imopVarPre189 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        int _imopVarPre191;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        _imopVarPre191 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        while (_imopVarPre191 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ]*/
            _imopVarPre191 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        int _imopVarPre193;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        _imopVarPre193 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ]*/
        while (_imopVarPre193 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ]*/
            _imopVarPre193 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [nullCell];
        ]*/
        double *_imopVarPre195;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        _imopVarPre195 = &dt;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        fscanf(fp, "%lf", _imopVarPre195);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        int _imopVarPre197;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        _imopVarPre197 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        while (_imopVarPre197 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ]*/
            _imopVarPre197 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        int _imopVarPre199;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        _imopVarPre199 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        while (_imopVarPre199 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ]*/
            _imopVarPre199 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        int _imopVarPre201;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        _imopVarPre201 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ]*/
        while (_imopVarPre201 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ]*/
            _imopVarPre201 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [nullCell];
        ]*/
        double *_imopVarPre203;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        _imopVarPre203 = &omega;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        fscanf(fp, "%lf", _imopVarPre203);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        int _imopVarPre205;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        _imopVarPre205 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        while (_imopVarPre205 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ]*/
            _imopVarPre205 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        int _imopVarPre207;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        _imopVarPre207 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        while (_imopVarPre207 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ]*/
            _imopVarPre207 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        int _imopVarPre209;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        _imopVarPre209 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ]*/
        while (_imopVarPre209 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ]*/
            _imopVarPre209 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [nullCell];
        ]*/
        double *_imopVarPre215;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [nullCell];
        ptsTo(_imopVarPre216) := [nullCell];
        ]*/
        double *_imopVarPre216;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [nullCell];
        ptsTo(_imopVarPre216) := [nullCell];
        ptsTo(_imopVarPre217) := [nullCell];
        ]*/
        double *_imopVarPre217;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [nullCell];
        ptsTo(_imopVarPre216) := [nullCell];
        ptsTo(_imopVarPre217) := [nullCell];
        ptsTo(_imopVarPre218) := [nullCell];
        ]*/
        double *_imopVarPre218;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [nullCell];
        ptsTo(_imopVarPre216) := [nullCell];
        ptsTo(_imopVarPre217) := [nullCell];
        ptsTo(_imopVarPre218) := [nullCell];
        ptsTo(_imopVarPre219) := [nullCell];
        ]*/
        double *_imopVarPre219;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [nullCell];
        ptsTo(_imopVarPre217) := [nullCell];
        ptsTo(_imopVarPre218) := [nullCell];
        ptsTo(_imopVarPre219) := [nullCell];
        ]*/
        _imopVarPre215 = &tolrsd[4];
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [nullCell];
        ptsTo(_imopVarPre218) := [nullCell];
        ptsTo(_imopVarPre219) := [nullCell];
        ]*/
        _imopVarPre216 = &tolrsd[3];
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [nullCell];
        ptsTo(_imopVarPre219) := [nullCell];
        ]*/
        _imopVarPre217 = &tolrsd[2];
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [nullCell];
        ]*/
        _imopVarPre218 = &tolrsd[1];
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        _imopVarPre219 = &tolrsd[0];
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        fscanf(fp, "%lf%lf%lf%lf%lf", _imopVarPre219, _imopVarPre218, _imopVarPre217, _imopVarPre216, _imopVarPre215);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        int _imopVarPre221;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        _imopVarPre221 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        while (_imopVarPre221 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ptsTo(_imopVarPre215) := [tolrsd.f];
            ptsTo(_imopVarPre216) := [tolrsd.f];
            ptsTo(_imopVarPre217) := [tolrsd.f];
            ptsTo(_imopVarPre218) := [tolrsd.f];
            ptsTo(_imopVarPre219) := [tolrsd.f];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ptsTo(_imopVarPre215) := [tolrsd.f];
            ptsTo(_imopVarPre216) := [tolrsd.f];
            ptsTo(_imopVarPre217) := [tolrsd.f];
            ptsTo(_imopVarPre218) := [tolrsd.f];
            ptsTo(_imopVarPre219) := [tolrsd.f];
            ]*/
            _imopVarPre221 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ptsTo(_imopVarPre215) := [tolrsd.f];
            ptsTo(_imopVarPre216) := [tolrsd.f];
            ptsTo(_imopVarPre217) := [tolrsd.f];
            ptsTo(_imopVarPre218) := [tolrsd.f];
            ptsTo(_imopVarPre219) := [tolrsd.f];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        int _imopVarPre223;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        _imopVarPre223 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        while (_imopVarPre223 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ptsTo(_imopVarPre215) := [tolrsd.f];
            ptsTo(_imopVarPre216) := [tolrsd.f];
            ptsTo(_imopVarPre217) := [tolrsd.f];
            ptsTo(_imopVarPre218) := [tolrsd.f];
            ptsTo(_imopVarPre219) := [tolrsd.f];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ptsTo(_imopVarPre215) := [tolrsd.f];
            ptsTo(_imopVarPre216) := [tolrsd.f];
            ptsTo(_imopVarPre217) := [tolrsd.f];
            ptsTo(_imopVarPre218) := [tolrsd.f];
            ptsTo(_imopVarPre219) := [tolrsd.f];
            ]*/
            _imopVarPre223 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ptsTo(_imopVarPre215) := [tolrsd.f];
            ptsTo(_imopVarPre216) := [tolrsd.f];
            ptsTo(_imopVarPre217) := [tolrsd.f];
            ptsTo(_imopVarPre218) := [tolrsd.f];
            ptsTo(_imopVarPre219) := [tolrsd.f];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        int _imopVarPre225;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        _imopVarPre225 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ]*/
        while (_imopVarPre225 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ptsTo(_imopVarPre215) := [tolrsd.f];
            ptsTo(_imopVarPre216) := [tolrsd.f];
            ptsTo(_imopVarPre217) := [tolrsd.f];
            ptsTo(_imopVarPre218) := [tolrsd.f];
            ptsTo(_imopVarPre219) := [tolrsd.f];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ptsTo(_imopVarPre215) := [tolrsd.f];
            ptsTo(_imopVarPre216) := [tolrsd.f];
            ptsTo(_imopVarPre217) := [tolrsd.f];
            ptsTo(_imopVarPre218) := [tolrsd.f];
            ptsTo(_imopVarPre219) := [tolrsd.f];
            ]*/
            _imopVarPre225 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ptsTo(_imopVarPre215) := [tolrsd.f];
            ptsTo(_imopVarPre216) := [tolrsd.f];
            ptsTo(_imopVarPre217) := [tolrsd.f];
            ptsTo(_imopVarPre218) := [tolrsd.f];
            ptsTo(_imopVarPre219) := [tolrsd.f];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nullCell];
        ]*/
        int *_imopVarPre229;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nullCell];
        ptsTo(_imopVarPre230) := [nullCell];
        ]*/
        int *_imopVarPre230;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nullCell];
        ptsTo(_imopVarPre230) := [nullCell];
        ptsTo(_imopVarPre231) := [nullCell];
        ]*/
        int *_imopVarPre231;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nz0];
        ptsTo(_imopVarPre230) := [nullCell];
        ptsTo(_imopVarPre231) := [nullCell];
        ]*/
        _imopVarPre229 = &nz0;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nz0];
        ptsTo(_imopVarPre230) := [ny0];
        ptsTo(_imopVarPre231) := [nullCell];
        ]*/
        _imopVarPre230 = &ny0;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nz0];
        ptsTo(_imopVarPre230) := [ny0];
        ptsTo(_imopVarPre231) := [nx0];
        ]*/
        _imopVarPre231 = &nx0;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nz0];
        ptsTo(_imopVarPre230) := [ny0];
        ptsTo(_imopVarPre231) := [nx0];
        ]*/
        fscanf(fp, "%d%d%d", _imopVarPre231, _imopVarPre230, _imopVarPre229);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nz0];
        ptsTo(_imopVarPre230) := [ny0];
        ptsTo(_imopVarPre231) := [nx0];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nz0];
        ptsTo(_imopVarPre230) := [ny0];
        ptsTo(_imopVarPre231) := [nx0];
        ]*/
        int _imopVarPre233;
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nz0];
        ptsTo(_imopVarPre230) := [ny0];
        ptsTo(_imopVarPre231) := [nx0];
        ]*/
        _imopVarPre233 = fgetc(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nz0];
        ptsTo(_imopVarPre230) := [ny0];
        ptsTo(_imopVarPre231) := [nx0];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nz0];
        ptsTo(_imopVarPre230) := [ny0];
        ptsTo(_imopVarPre231) := [nx0];
        ]*/
        while (_imopVarPre233 != '\n') {
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ptsTo(_imopVarPre215) := [tolrsd.f];
            ptsTo(_imopVarPre216) := [tolrsd.f];
            ptsTo(_imopVarPre217) := [tolrsd.f];
            ptsTo(_imopVarPre218) := [tolrsd.f];
            ptsTo(_imopVarPre219) := [tolrsd.f];
            ptsTo(_imopVarPre229) := [nz0];
            ptsTo(_imopVarPre230) := [ny0];
            ptsTo(_imopVarPre231) := [nx0];
            ]*/
            ;
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ptsTo(_imopVarPre215) := [tolrsd.f];
            ptsTo(_imopVarPre216) := [tolrsd.f];
            ptsTo(_imopVarPre217) := [tolrsd.f];
            ptsTo(_imopVarPre218) := [tolrsd.f];
            ptsTo(_imopVarPre219) := [tolrsd.f];
            ptsTo(_imopVarPre229) := [nz0];
            ptsTo(_imopVarPre230) := [ny0];
            ptsTo(_imopVarPre231) := [nx0];
            ]*/
            _imopVarPre233 = fgetc(fp);
            /*OUT: [ptsTo(fp) := [nullCell];
            ptsTo(_imopVarPre178) := [inorm];
            ptsTo(_imopVarPre179) := [ipr];
            ptsTo(_imopVarPre187) := [itmax];
            ptsTo(_imopVarPre195) := [dt];
            ptsTo(_imopVarPre203) := [omega];
            ptsTo(_imopVarPre215) := [tolrsd.f];
            ptsTo(_imopVarPre216) := [tolrsd.f];
            ptsTo(_imopVarPre217) := [tolrsd.f];
            ptsTo(_imopVarPre218) := [tolrsd.f];
            ptsTo(_imopVarPre219) := [tolrsd.f];
            ptsTo(_imopVarPre229) := [nz0];
            ptsTo(_imopVarPre230) := [ny0];
            ptsTo(_imopVarPre231) := [nx0];
            ]*/
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nz0];
        ptsTo(_imopVarPre230) := [ny0];
        ptsTo(_imopVarPre231) := [nx0];
        ]*/
        fclose(fp);
        /*OUT: [ptsTo(fp) := [nullCell];
        ptsTo(_imopVarPre178) := [inorm];
        ptsTo(_imopVarPre179) := [ipr];
        ptsTo(_imopVarPre187) := [itmax];
        ptsTo(_imopVarPre195) := [dt];
        ptsTo(_imopVarPre203) := [omega];
        ptsTo(_imopVarPre215) := [tolrsd.f];
        ptsTo(_imopVarPre216) := [tolrsd.f];
        ptsTo(_imopVarPre217) := [tolrsd.f];
        ptsTo(_imopVarPre218) := [tolrsd.f];
        ptsTo(_imopVarPre219) := [tolrsd.f];
        ptsTo(_imopVarPre229) := [nz0];
        ptsTo(_imopVarPre230) := [ny0];
        ptsTo(_imopVarPre231) := [nx0];
        ]*/
    } else {
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        ipr = 1;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        inorm = 50;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        itmax = 50;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        dt = 0.5;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        omega = 1.2;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        tolrsd[0] = 1.0e-8;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        tolrsd[1] = 1.0e-8;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        tolrsd[2] = 1.0e-8;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        tolrsd[3] = 1.0e-8;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        tolrsd[4] = 1.0e-8;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        nx0 = 12;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        ny0 = 12;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        nz0 = 12;
    }
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    int _imopVarPre234;
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    int _imopVarPre235;
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    _imopVarPre234 = nx0 < 4;
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    if (!_imopVarPre234) {
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        _imopVarPre235 = ny0 < 4;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        if (!_imopVarPre235) {
            /*OUT: [ptsTo(fp) := [nullCell];
            ]*/
            _imopVarPre235 = nz0 < 4;
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        _imopVarPre234 = _imopVarPre235;
    }
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    if (_imopVarPre234) {
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        printf("     PROBLEM SIZE IS TOO SMALL - \n" "     SET EACH OF NX, NY AND NZ AT LEAST EQUAL TO 5\n");
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        exit(1);
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
    }
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    int _imopVarPre236;
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    int _imopVarPre237;
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    _imopVarPre236 = nx0 > 12;
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    if (!_imopVarPre236) {
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        _imopVarPre237 = ny0 > 12;
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        if (!_imopVarPre237) {
            /*OUT: [ptsTo(fp) := [nullCell];
            ]*/
            _imopVarPre237 = nz0 > 12;
        }
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        _imopVarPre236 = _imopVarPre237;
    }
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    if (_imopVarPre236) {
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        printf("     PROBLEM SIZE IS TOO LARGE - \n" "     NX, NY AND NZ SHOULD BE EQUAL TO \n" "     ISIZ1, ISIZ2 AND ISIZ3 RESPECTIVELY\n");
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
        exit(1);
        /*OUT: [ptsTo(fp) := [nullCell];
        ]*/
    }
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    printf(" Size: %3dx%3dx%3d\n", nx0, ny0, nz0);
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
    printf(" Iterations: %3d\n", itmax);
    /*OUT: [ptsTo(fp) := [nullCell];
    ]*/
}
static void rhs() {
#pragma omp parallel
    {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int i;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int j;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int k;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int m;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int L1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int L2;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int ist1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int iend1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int jst1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int jend1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double q;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double tmp;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21i;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31i;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41i;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u51i;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21j;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31j;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41j;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u51j;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21k;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31k;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41k;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u51k;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21im1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31im1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41im1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u51im1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21jm1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31jm1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41jm1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u51jm1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u21km1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u31km1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u41km1;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double u51km1;
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = 0; i <= nx - 1; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (j = 0; j <= ny - 1; j++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 0; k <= nz - 1; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        rsd[i][j][k][m] = -frct[i][j][k][m];
                    }
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        L1 = 0;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        L2 = nx - 1;
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = L1; i <= L2; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (j = jst; j <= jend; j++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][0] = u[i][j][k][1];
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21 = u[i][j][k][1] / u[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    q = 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) / u[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][1] = u[i][j][k][1] * u21 + 0.40e+00 * (u[i][j][k][4] - q);
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][2] = u[i][j][k][2] * u21;
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][3] = u[i][j][k][3] * u21;
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][4] = (1.40e+00 * u[i][j][k][4] - 0.40e+00 * q) * u21;
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = jst; j <= jend; j++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = 1; k <= nz - 2; k++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (i = ist; i <= iend; i++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - tx2 * (flux[i + 1][j][k][m] - flux[i - 1][j][k][m]);
                    }
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                L2 = nx - 1;
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (i = ist; i <= L2; i++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    tmp = 1.0 / u[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21i = tmp * u[i][j][k][1];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31i = tmp * u[i][j][k][2];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41i = tmp * u[i][j][k][3];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u51i = tmp * u[i][j][k][4];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    tmp = 1.0 / u[i - 1][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21im1 = tmp * u[i - 1][j][k][1];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31im1 = tmp * u[i - 1][j][k][2];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41im1 = tmp * u[i - 1][j][k][3];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u51im1 = tmp * u[i - 1][j][k][4];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][1] = (4.0 / 3.0) * tx3 * (u21i - u21im1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][2] = tx3 * (u31i - u31im1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][3] = tx3 * (u41i - u41im1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tx3 * (((u21i * u21i) + (u31i * u31i) + (u41i * u41i)) - ((u21im1 * u21im1) + (u31im1 * u31im1) + (u41im1 * u41im1))) + (1.0 / 6.0) * tx3 * ((u21i * u21i) - (u21im1 * u21im1)) + 1.40e+00 * 1.40e+00 * tx3 * (u51i - u51im1);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (i = ist; i <= iend; i++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][0] = rsd[i][j][k][0] + dx1 * tx1 * (u[i - 1][j][k][0] - 2.0 * u[i][j][k][0] + u[i + 1][j][k][0]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][1] = rsd[i][j][k][1] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][1] - flux[i][j][k][1]) + dx2 * tx1 * (u[i - 1][j][k][1] - 2.0 * u[i][j][k][1] + u[i + 1][j][k][1]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][2] = rsd[i][j][k][2] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][2] - flux[i][j][k][2]) + dx3 * tx1 * (u[i - 1][j][k][2] - 2.0 * u[i][j][k][2] + u[i + 1][j][k][2]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][3] = rsd[i][j][k][3] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][3] - flux[i][j][k][3]) + dx4 * tx1 * (u[i - 1][j][k][3] - 2.0 * u[i][j][k][3] + u[i + 1][j][k][3]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][4] = rsd[i][j][k][4] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][4] - flux[i][j][k][4]) + dx5 * tx1 * (u[i - 1][j][k][4] - 2.0 * u[i][j][k][4] + u[i + 1][j][k][4]);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[1][j][k][m] = rsd[1][j][k][m] - dssp * (+5.0 * u[1][j][k][m] - 4.0 * u[2][j][k][m] + u[3][j][k][m]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[2][j][k][m] = rsd[2][j][k][m] - dssp * (-4.0 * u[1][j][k][m] + 6.0 * u[2][j][k][m] - 4.0 * u[3][j][k][m] + u[4][j][k][m]);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                ist1 = 3;
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                iend1 = nx - 4;
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (i = ist1; i <= iend1; i++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
                    }
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[nx - 3][j][k][m] = rsd[nx - 3][j][k][m] - dssp * (u[nx - 5][j][k][m] - 4.0 * u[nx - 4][j][k][m] + 6.0 * u[nx - 3][j][k][m] - 4.0 * u[nx - 2][j][k][m]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[nx - 2][j][k][m] = rsd[nx - 2][j][k][m] - dssp * (u[nx - 4][j][k][m] - 4.0 * u[nx - 3][j][k][m] + 5.0 * u[nx - 2][j][k][m]);
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        L1 = 0;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        L2 = ny - 1;
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = ist; i <= iend; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (j = L1; j <= L2; j++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][0] = u[i][j][k][2];
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31 = u[i][j][k][2] / u[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    q = 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) / u[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][1] = u[i][j][k][1] * u31;
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][2] = u[i][j][k][2] * u31 + 0.40e+00 * (u[i][j][k][4] - q);
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][3] = u[i][j][k][3] * u31;
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][4] = (1.40e+00 * u[i][j][k][4] - 0.40e+00 * q) * u31;
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = ist; i <= iend; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = 1; k <= nz - 2; k++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (j = jst; j <= jend; j++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - ty2 * (flux[i][j + 1][k][m] - flux[i][j - 1][k][m]);
                    }
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                L2 = ny - 1;
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (j = jst; j <= L2; j++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    tmp = 1.0 / u[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21j = tmp * u[i][j][k][1];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31j = tmp * u[i][j][k][2];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41j = tmp * u[i][j][k][3];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u51j = tmp * u[i][j][k][4];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    tmp = 1.0 / u[i][j - 1][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21jm1 = tmp * u[i][j - 1][k][1];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31jm1 = tmp * u[i][j - 1][k][2];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41jm1 = tmp * u[i][j - 1][k][3];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u51jm1 = tmp * u[i][j - 1][k][4];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][1] = ty3 * (u21j - u21jm1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][2] = (4.0 / 3.0) * ty3 * (u31j - u31jm1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][3] = ty3 * (u41j - u41jm1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * ty3 * (((u21j * u21j) + (u31j * u31j) + (u41j * u41j)) - ((u21jm1 * u21jm1) + (u31jm1 * u31jm1) + (u41jm1 * u41jm1))) + (1.0 / 6.0) * ty3 * ((u31j * u31j) - (u31jm1 * u31jm1)) + 1.40e+00 * 1.40e+00 * ty3 * (u51j - u51jm1);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (j = jst; j <= jend; j++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][0] = rsd[i][j][k][0] + dy1 * ty1 * (u[i][j - 1][k][0] - 2.0 * u[i][j][k][0] + u[i][j + 1][k][0]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][1] = rsd[i][j][k][1] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][1] - flux[i][j][k][1]) + dy2 * ty1 * (u[i][j - 1][k][1] - 2.0 * u[i][j][k][1] + u[i][j + 1][k][1]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][2] = rsd[i][j][k][2] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][2] - flux[i][j][k][2]) + dy3 * ty1 * (u[i][j - 1][k][2] - 2.0 * u[i][j][k][2] + u[i][j + 1][k][2]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][3] = rsd[i][j][k][3] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][3] - flux[i][j][k][3]) + dy4 * ty1 * (u[i][j - 1][k][3] - 2.0 * u[i][j][k][3] + u[i][j + 1][k][3]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][4] = rsd[i][j][k][4] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][4] - flux[i][j][k][4]) + dy5 * ty1 * (u[i][j - 1][k][4] - 2.0 * u[i][j][k][4] + u[i][j + 1][k][4]);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][1][k][m] = rsd[i][1][k][m] - dssp * (+5.0 * u[i][1][k][m] - 4.0 * u[i][2][k][m] + u[i][3][k][m]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][2][k][m] = rsd[i][2][k][m] - dssp * (-4.0 * u[i][1][k][m] + 6.0 * u[i][2][k][m] - 4.0 * u[i][3][k][m] + u[i][4][k][m]);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                jst1 = 3;
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                jend1 = ny - 4;
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (j = jst1; j <= jend1; j++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
                    }
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][ny - 3][k][m] = rsd[i][ny - 3][k][m] - dssp * (u[i][ny - 5][k][m] - 4.0 * u[i][ny - 4][k][m] + 6.0 * u[i][ny - 3][k][m] - 4.0 * u[i][ny - 2][k][m]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][ny - 2][k][m] = rsd[i][ny - 2][k][m] - dssp * (u[i][ny - 4][k][m] - 4.0 * u[i][ny - 3][k][m] + 5.0 * u[i][ny - 2][k][m]);
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = ist; i <= iend; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (j = jst; j <= jend; j++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 0; k <= nz - 1; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][0] = u[i][j][k][3];
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41 = u[i][j][k][3] / u[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    q = 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) / u[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][1] = u[i][j][k][1] * u41;
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][2] = u[i][j][k][2] * u41;
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][3] = u[i][j][k][3] * u41 + 0.40e+00 * (u[i][j][k][4] - q);
                    /*OUT: [ptsTo(flux.f) := [u.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][4] = (1.40e+00 * u[i][j][k][4] - 0.40e+00 * q) * u41;
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - tz2 * (flux[i][j][k + 1][m] - flux[i][j][k - 1][m]);
                    }
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 1; k <= nz - 1; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    tmp = 1.0 / u[i][j][k][0];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21k = tmp * u[i][j][k][1];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31k = tmp * u[i][j][k][2];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41k = tmp * u[i][j][k][3];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u51k = tmp * u[i][j][k][4];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    tmp = 1.0 / u[i][j][k - 1][0];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u21km1 = tmp * u[i][j][k - 1][1];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u31km1 = tmp * u[i][j][k - 1][2];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u41km1 = tmp * u[i][j][k - 1][3];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    u51km1 = tmp * u[i][j][k - 1][4];
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][1] = tz3 * (u21k - u21km1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][2] = tz3 * (u31k - u31km1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][3] = (4.0 / 3.0) * tz3 * (u41k - u41km1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tz3 * (((u21k * u21k) + (u31k * u31k) + (u41k * u41k)) - ((u21km1 * u21km1) + (u31km1 * u31km1) + (u41km1 * u41km1))) + (1.0 / 6.0) * tz3 * ((u41k * u41k) - (u41km1 * u41km1)) + 1.40e+00 * 1.40e+00 * tz3 * (u51k - u51km1);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][0] = rsd[i][j][k][0] + dz1 * tz1 * (u[i][j][k - 1][0] - 2.0 * u[i][j][k][0] + u[i][j][k + 1][0]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][1] = rsd[i][j][k][1] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][1] - flux[i][j][k][1]) + dz2 * tz1 * (u[i][j][k - 1][1] - 2.0 * u[i][j][k][1] + u[i][j][k + 1][1]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][2] = rsd[i][j][k][2] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][2] - flux[i][j][k][2]) + dz3 * tz1 * (u[i][j][k - 1][2] - 2.0 * u[i][j][k][2] + u[i][j][k + 1][2]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][3] = rsd[i][j][k][3] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][3] - flux[i][j][k][3]) + dz4 * tz1 * (u[i][j][k - 1][3] - 2.0 * u[i][j][k][3] + u[i][j][k + 1][3]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][k][4] = rsd[i][j][k][4] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][4] - flux[i][j][k][4]) + dz5 * tz1 * (u[i][j][k - 1][4] - 2.0 * u[i][j][k][4] + u[i][j][k + 1][4]);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][1][m] = rsd[i][j][1][m] - dssp * (+5.0 * u[i][j][1][m] - 4.0 * u[i][j][2][m] + u[i][j][3][m]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][2][m] = rsd[i][j][2][m] - dssp * (-4.0 * u[i][j][1][m] + 6.0 * u[i][j][2][m] - 4.0 * u[i][j][3][m] + u[i][j][4][m]);
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 3; k <= nz - 4; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
                    }
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (m = 0; m < 5; m++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][nz - 3][m] = rsd[i][j][nz - 3][m] - dssp * (u[i][j][nz - 5][m] - 4.0 * u[i][j][nz - 4][m] + 6.0 * u[i][j][nz - 3][m] - 4.0 * u[i][j][nz - 2][m]);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    rsd[i][j][nz - 2][m] = rsd[i][j][nz - 2][m] - dssp * (u[i][j][nz - 4][m] - 4.0 * u[i][j][nz - 3][m] + 5.0 * u[i][j][nz - 2][m]);
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
    }
}
static void setbv() {
#pragma omp parallel
    {
        /*OUT: []*/
        int i;
        /*OUT: []*/
        int j;
        /*OUT: []*/
        int k;
        /*OUT: []*/
        int iglob;
        /*OUT: []*/
        int jglob;
#pragma omp for nowait
        /*OUT: []*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = 0; i < nx; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            iglob = i;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (j = 0; j < ny; j++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                jglob = j;
                /*OUT: [ptsTo(_imopVarPre239) := [nullCell];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double *_imopVarPre239;
                /*OUT: [ptsTo(_imopVarPre239) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre239 = &u[i][j][0][0];
                /*OUT: [ptsTo(_imopVarPre239) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                exact(iglob, jglob, 0, _imopVarPre239);
                /*OUT: [ptsTo(_imopVarPre239) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(_imopVarPre239) := [u.f];
                ptsTo(_imopVarPre242) := [nullCell];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double *_imopVarPre242;
                /*OUT: [ptsTo(_imopVarPre239) := [u.f];
                ptsTo(_imopVarPre242) := [nullCell];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                int _imopVarPre243;
                /*OUT: [ptsTo(_imopVarPre239) := [u.f];
                ptsTo(_imopVarPre242) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre242 = &u[i][j][nz - 1][0];
                /*OUT: [ptsTo(_imopVarPre239) := [u.f];
                ptsTo(_imopVarPre242) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre243 = nz - 1;
                /*OUT: [ptsTo(_imopVarPre239) := [u.f];
                ptsTo(_imopVarPre242) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                exact(iglob, jglob, _imopVarPre243, _imopVarPre242);
                /*OUT: [ptsTo(_imopVarPre239) := [u.f];
                ptsTo(_imopVarPre242) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = 0; i < nx; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            iglob = i;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = 0; k < nz; k++) {
                /*OUT: [ptsTo(_imopVarPre245) := [nullCell];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double *_imopVarPre245;
                /*OUT: [ptsTo(_imopVarPre245) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre245 = &u[i][0][k][0];
                /*OUT: [ptsTo(_imopVarPre245) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                exact(iglob, 0, k, _imopVarPre245);
                /*OUT: [ptsTo(_imopVarPre245) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = 0; i < nx; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            iglob = i;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = 0; k < nz; k++) {
                /*OUT: [ptsTo(_imopVarPre248) := [nullCell];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double *_imopVarPre248;
                /*OUT: [ptsTo(_imopVarPre248) := [nullCell];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                int _imopVarPre249;
                /*OUT: [ptsTo(_imopVarPre248) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre248 = &u[i][ny - 1][k][0];
                /*OUT: [ptsTo(_imopVarPre248) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre249 = ny0 - 1;
                /*OUT: [ptsTo(_imopVarPre248) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                exact(iglob, _imopVarPre249, k, _imopVarPre248);
                /*OUT: [ptsTo(_imopVarPre248) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = 0; j < ny; j++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            jglob = j;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = 0; k < nz; k++) {
                /*OUT: [ptsTo(_imopVarPre251) := [nullCell];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double *_imopVarPre251;
                /*OUT: [ptsTo(_imopVarPre251) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre251 = &u[0][j][k][0];
                /*OUT: [ptsTo(_imopVarPre251) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                exact(0, jglob, k, _imopVarPre251);
                /*OUT: [ptsTo(_imopVarPre251) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = 0; j < ny; j++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            jglob = j;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = 0; k < nz; k++) {
                /*OUT: [ptsTo(_imopVarPre254) := [nullCell];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double *_imopVarPre254;
                /*OUT: [ptsTo(_imopVarPre254) := [nullCell];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                int _imopVarPre255;
                /*OUT: [ptsTo(_imopVarPre254) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre254 = &u[nx - 1][j][k][0];
                /*OUT: [ptsTo(_imopVarPre254) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre255 = nx0 - 1;
                /*OUT: [ptsTo(_imopVarPre254) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                exact(_imopVarPre255, jglob, k, _imopVarPre254);
                /*OUT: [ptsTo(_imopVarPre254) := [u.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
    }
}
static void setcoeff() {
    /*OUT: []*/
    dxi = 1.0 / (nx0 - 1);
    /*OUT: []*/
    deta = 1.0 / (ny0 - 1);
    /*OUT: []*/
    dzeta = 1.0 / (nz0 - 1);
    /*OUT: []*/
    tx1 = 1.0 / (dxi * dxi);
    /*OUT: []*/
    tx2 = 1.0 / (2.0 * dxi);
    /*OUT: []*/
    tx3 = 1.0 / dxi;
    /*OUT: []*/
    ty1 = 1.0 / (deta * deta);
    /*OUT: []*/
    ty2 = 1.0 / (2.0 * deta);
    /*OUT: []*/
    ty3 = 1.0 / deta;
    /*OUT: []*/
    tz1 = 1.0 / (dzeta * dzeta);
    /*OUT: []*/
    tz2 = 1.0 / (2.0 * dzeta);
    /*OUT: []*/
    tz3 = 1.0 / dzeta;
    /*OUT: []*/
    ii1 = 1;
    /*OUT: []*/
    ii2 = nx0 - 2;
    /*OUT: []*/
    ji1 = 1;
    /*OUT: []*/
    ji2 = ny0 - 3;
    /*OUT: []*/
    ki1 = 2;
    /*OUT: []*/
    ki2 = nz0 - 2;
    /*OUT: []*/
    dx1 = 0.75;
    /*OUT: []*/
    dx2 = dx1;
    /*OUT: []*/
    dx3 = dx1;
    /*OUT: []*/
    dx4 = dx1;
    /*OUT: []*/
    dx5 = dx1;
    /*OUT: []*/
    dy1 = 0.75;
    /*OUT: []*/
    dy2 = dy1;
    /*OUT: []*/
    dy3 = dy1;
    /*OUT: []*/
    dy4 = dy1;
    /*OUT: []*/
    dy5 = dy1;
    /*OUT: []*/
    dz1 = 1.00;
    /*OUT: []*/
    dz2 = dz1;
    /*OUT: []*/
    dz3 = dz1;
    /*OUT: []*/
    dz4 = dz1;
    /*OUT: []*/
    dz5 = dz1;
    /*OUT: []*/
    int _imopVarPre348;
    /*OUT: []*/
    double _imopVarPre349;
    /*OUT: []*/
    int _imopVarPre350;
    /*OUT: []*/
    double _imopVarPre351;
    /*OUT: []*/
    int _imopVarPre358;
    /*OUT: []*/
    double _imopVarPre359;
    /*OUT: []*/
    _imopVarPre348 = (dy1 > dz1);
    /*OUT: []*/
    if (_imopVarPre348) {
        /*OUT: []*/
        _imopVarPre349 = dy1;
    } else {
        /*OUT: []*/
        _imopVarPre349 = dz1;
    }
    /*OUT: []*/
    _imopVarPre350 = (dx1 > _imopVarPre349);
    /*OUT: []*/
    if (_imopVarPre350) {
        /*OUT: []*/
        _imopVarPre351 = dx1;
    } else {
        /*OUT: []*/
        _imopVarPre358 = (dy1 > dz1);
        /*OUT: []*/
        if (_imopVarPre358) {
            /*OUT: []*/
            _imopVarPre359 = dy1;
        } else {
            /*OUT: []*/
            _imopVarPre359 = dz1;
        }
        /*OUT: []*/
        _imopVarPre351 = _imopVarPre359;
    }
    /*OUT: []*/
    dssp = _imopVarPre351 / 4.0;
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
    ce[0][6] = 5.0e-01;
    /*OUT: []*/
    ce[0][7] = 2.0e-02;
    /*OUT: []*/
    ce[0][8] = 1.0e-02;
    /*OUT: []*/
    ce[0][9] = 3.0e-02;
    /*OUT: []*/
    ce[0][10] = 5.0e-01;
    /*OUT: []*/
    ce[0][11] = 4.0e-01;
    /*OUT: []*/
    ce[0][12] = 3.0e-01;
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
    ce[1][7] = 1.0e-02;
    /*OUT: []*/
    ce[1][8] = 3.0e-02;
    /*OUT: []*/
    ce[1][9] = 2.0e-02;
    /*OUT: []*/
    ce[1][10] = 4.0e-01;
    /*OUT: []*/
    ce[1][11] = 3.0e-01;
    /*OUT: []*/
    ce[1][12] = 5.0e-01;
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
    ce[2][7] = 4.0e-02;
    /*OUT: []*/
    ce[2][8] = 3.0e-02;
    /*OUT: []*/
    ce[2][9] = 5.0e-02;
    /*OUT: []*/
    ce[2][10] = 3.0e-01;
    /*OUT: []*/
    ce[2][11] = 5.0e-01;
    /*OUT: []*/
    ce[2][12] = 4.0e-01;
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
    ce[3][7] = 3.0e-02;
    /*OUT: []*/
    ce[3][8] = 5.0e-02;
    /*OUT: []*/
    ce[3][9] = 4.0e-02;
    /*OUT: []*/
    ce[3][10] = 2.0e-01;
    /*OUT: []*/
    ce[3][11] = 1.0e-01;
    /*OUT: []*/
    ce[3][12] = 3.0e-01;
    /*OUT: []*/
    ce[4][0] = 5.0;
    /*OUT: []*/
    ce[4][1] = 4.0;
    /*OUT: []*/
    ce[4][2] = 3.0;
    /*OUT: []*/
    ce[4][3] = 2.0;
    /*OUT: []*/
    ce[4][4] = 1.0e-01;
    /*OUT: []*/
    ce[4][5] = 4.0e-01;
    /*OUT: []*/
    ce[4][6] = 3.0e-01;
    /*OUT: []*/
    ce[4][7] = 5.0e-02;
    /*OUT: []*/
    ce[4][8] = 4.0e-02;
    /*OUT: []*/
    ce[4][9] = 3.0e-02;
    /*OUT: []*/
    ce[4][10] = 1.0e-01;
    /*OUT: []*/
    ce[4][11] = 3.0e-01;
    /*OUT: []*/
    ce[4][12] = 2.0e-01;
}
static void setiv() {
#pragma omp parallel
    {
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int i;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int j;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int k;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int m;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int iglob;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int jglob;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double xi;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double eta;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double zeta;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double pxi;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double peta;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double pzeta;
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double ue_1jk[5];
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double ue_nx0jk[5];
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double ue_i1k[5];
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double ue_iny0k[5];
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double ue_ij1[5];
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double ue_ijnz[5];
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (j = 0; j < ny; j++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            jglob = j;
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = 1; k < nz - 1; k++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                zeta = ((double) k) / (nz - 1);
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                int _imopVarPre361;
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre361 = jglob != 0;
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                if (_imopVarPre361) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    _imopVarPre361 = jglob != ny0 - 1;
                }
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                if (_imopVarPre361) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    eta = ((double) jglob) / (ny0 - 1);
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (i = 0; i < nx; i++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        iglob = i;
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        int _imopVarPre363;
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        _imopVarPre363 = iglob != 0;
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        if (_imopVarPre363) {
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            _imopVarPre363 = iglob != nx0 - 1;
                        }
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        if (_imopVarPre363) {
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            xi = ((double) iglob) / (nx0 - 1);
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            exact(0, jglob, k, ue_1jk);
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            int _imopVarPre365;
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            _imopVarPre365 = nx0 - 1;
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            exact(_imopVarPre365, jglob, k, ue_nx0jk);
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            exact(iglob, 0, k, ue_i1k);
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            int _imopVarPre367;
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            _imopVarPre367 = ny0 - 1;
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            exact(iglob, _imopVarPre367, k, ue_iny0k);
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            exact(iglob, jglob, 0, ue_ij1);
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            int _imopVarPre369;
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            _imopVarPre369 = nz - 1;
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            exact(iglob, jglob, _imopVarPre369, ue_ijnz);
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            for (m = 0; m < 5; m++) {
                                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                                ptsTo(tmat.f) := [d.f];
                                ptsTo(flag.f) := [nullCell];
                                ptsTo(tmat.f) := [d.f];
                                ]*/
                                pxi = (1.0 - xi) * ue_1jk[m] + xi * ue_nx0jk[m];
                                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                                ptsTo(tmat.f) := [d.f];
                                ptsTo(flag.f) := [nullCell];
                                ptsTo(tmat.f) := [d.f];
                                ]*/
                                peta = (1.0 - eta) * ue_i1k[m] + eta * ue_iny0k[m];
                                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                                ptsTo(tmat.f) := [d.f];
                                ptsTo(flag.f) := [nullCell];
                                ptsTo(tmat.f) := [d.f];
                                ]*/
                                pzeta = (1.0 - zeta) * ue_ij1[m] + zeta * ue_ijnz[m];
                                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                                ptsTo(tmat.f) := [d.f];
                                ptsTo(flag.f) := [nullCell];
                                ptsTo(tmat.f) := [d.f];
                                ]*/
                                u[i][j][k][m] = pxi + peta + pzeta - pxi * peta - peta * pzeta - pzeta * pxi + pxi * peta * pzeta;
                            }
                        }
                    }
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
    }
}
static void ssor() {
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int i;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int j;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int k;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int m;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int istep;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tmp;
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double delunm[5];
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double tv[12][12][5];
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    tmp = 1.0 / (omega * (2.0 - omega));
#pragma omp parallel private(i, j, k, m)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        for (i = 0; i < 12; i++) {
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (j = 0; j < 12; j++) {
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (k = 0; k < 5; k++) {
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        a[i][j][k][m] = 0.0;
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        b[i][j][k][m] = 0.0;
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        c[i][j][k][m] = 0.0;
                        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        d[i][j][k][m] = 0.0;
                    }
                }
            }
        }
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    rhs();
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    l2norm(nx0, ny0, nz0, ist, iend, jst, jend, rsd, rsdnm);
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    timer_clear(1);
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    timer_start(1);
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (istep = 1; istep <= itmax; istep++) {
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int _imopVarPre370;
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int _imopVarPre371;
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre370 = istep % 20 == 0;
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (!_imopVarPre370) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            _imopVarPre371 = istep == itmax;
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            if (!_imopVarPre371) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre371 = istep == 1;
            }
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            _imopVarPre370 = _imopVarPre371;
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (_imopVarPre370) {
#pragma omp master
            {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                printf(" Time step %4d\n", istep);
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
            }
        }
#pragma omp parallel private(istep, i, j, k, m)
        {
#pragma omp for nowait
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (i = ist; i <= iend; i++) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (j = jst; j <= jend; j++) {
                    /*OUT: [ptsTo(ldz) := [a.f];
                    ptsTo(ldx) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(ldy) := [b.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udz) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(tv) := [tv.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udx) := [a.f];
                    ptsTo(udy) := [b.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(ldz) := [a.f];
                    ptsTo(ldx) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(ldy) := [b.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udz) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(tv) := [tv.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udx) := [a.f];
                    ptsTo(udy) := [b.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(ldz) := [a.f];
                    ptsTo(ldx) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(ldy) := [b.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udz) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(tv) := [tv.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udx) := [a.f];
                    ptsTo(udy) := [b.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (k = 1; k <= nz - 2; k++) {
                        /*OUT: [ptsTo(ldz) := [a.f];
                        ptsTo(ldx) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(ldy) := [b.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udz) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(tv) := [tv.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udx) := [a.f];
                        ptsTo(udy) := [b.f];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        /*OUT: [ptsTo(ldz) := [a.f];
                        ptsTo(ldx) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(ldy) := [b.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udz) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(tv) := [tv.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udx) := [a.f];
                        ptsTo(udy) := [b.f];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        /*OUT: [ptsTo(ldz) := [a.f];
                        ptsTo(ldx) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(ldy) := [b.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udz) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(tv) := [tv.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udx) := [a.f];
                        ptsTo(udy) := [b.f];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        for (m = 0; m < 5; m++) {
                            /*OUT: [ptsTo(ldz) := [a.f];
                            ptsTo(ldx) := [c.f];
                            ptsTo(v) := [rsd.f];
                            ptsTo(ldy) := [b.f];
                            ptsTo(d) := [d.f];
                            ptsTo(udz) := [c.f];
                            ptsTo(v) := [rsd.f];
                            ptsTo(tv) := [tv.f];
                            ptsTo(d) := [d.f];
                            ptsTo(udx) := [a.f];
                            ptsTo(udy) := [b.f];
                            ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            rsd[i][j][k][m] = dt * rsd[i][j][k][m];
                        }
                    }
                }
            }
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = 1; k <= nz - 2; k++) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                jacld(k);
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                blts(nx, ny, nz, k, omega, rsd, a, b, c, d, ist, iend, jst, jend, nx0, ny0);
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
            }
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (k = nz - 2; k >= 1; k--) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                jacu(k);
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                buts(nx, ny, nz, k, omega, rsd, tv, d, a, b, c, ist, iend, jst, jend, nx0, ny0);
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
            }
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            for (i = ist; i <= iend; i++) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                for (j = jst; j <= jend; j++) {
                    /*OUT: [ptsTo(ldz) := [a.f];
                    ptsTo(ldx) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(ldy) := [b.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udz) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(tv) := [tv.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udx) := [a.f];
                    ptsTo(udy) := [b.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(ldz) := [a.f];
                    ptsTo(ldx) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(ldy) := [b.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udz) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(tv) := [tv.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udx) := [a.f];
                    ptsTo(udy) := [b.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    /*OUT: [ptsTo(ldz) := [a.f];
                    ptsTo(ldx) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(ldy) := [b.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udz) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(tv) := [tv.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udx) := [a.f];
                    ptsTo(udy) := [b.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    for (k = 1; k <= nz - 2; k++) {
                        /*OUT: [ptsTo(ldz) := [a.f];
                        ptsTo(ldx) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(ldy) := [b.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udz) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(tv) := [tv.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udx) := [a.f];
                        ptsTo(udy) := [b.f];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        /*OUT: [ptsTo(ldz) := [a.f];
                        ptsTo(ldx) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(ldy) := [b.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udz) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(tv) := [tv.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udx) := [a.f];
                        ptsTo(udy) := [b.f];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        /*OUT: [ptsTo(ldz) := [a.f];
                        ptsTo(ldx) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(ldy) := [b.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udz) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(tv) := [tv.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udx) := [a.f];
                        ptsTo(udy) := [b.f];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        for (m = 0; m < 5; m++) {
                            /*OUT: [ptsTo(ldz) := [a.f];
                            ptsTo(ldx) := [c.f];
                            ptsTo(v) := [rsd.f];
                            ptsTo(ldy) := [b.f];
                            ptsTo(d) := [d.f];
                            ptsTo(udz) := [c.f];
                            ptsTo(v) := [rsd.f];
                            ptsTo(tv) := [tv.f];
                            ptsTo(d) := [d.f];
                            ptsTo(udx) := [a.f];
                            ptsTo(udy) := [b.f];
                            ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            u[i][j][k][m] = u[i][j][k][m] + tmp * rsd[i][j][k][m];
                        }
                    }
                }
            }
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
#pragma omp barrier
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (istep % inorm == 0) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            l2norm(nx0, ny0, nz0, ist, iend, jst, jend, rsd, delunm);
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        rhs();
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int _imopVarPre372;
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre372 = (istep % inorm == 0);
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (!_imopVarPre372) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            _imopVarPre372 = (istep == itmax);
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (_imopVarPre372) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            l2norm(nx0, ny0, nz0, ist, iend, jst, jend, rsd, rsdnm);
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int _imopVarPre377;
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int _imopVarPre378;
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int _imopVarPre379;
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int _imopVarPre380;
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre377 = (rsdnm[0] < tolrsd[0]);
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (_imopVarPre377) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            _imopVarPre378 = (rsdnm[1] < tolrsd[1]);
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            if (_imopVarPre378) {
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre379 = (rsdnm[2] < tolrsd[2]);
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                if (_imopVarPre379) {
                    /*OUT: [ptsTo(ldz) := [a.f];
                    ptsTo(ldx) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(ldy) := [b.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udz) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(tv) := [tv.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udx) := [a.f];
                    ptsTo(udy) := [b.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    _imopVarPre380 = (rsdnm[3] < tolrsd[3]);
                    /*OUT: [ptsTo(ldz) := [a.f];
                    ptsTo(ldx) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(ldy) := [b.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udz) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(tv) := [tv.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udx) := [a.f];
                    ptsTo(udy) := [b.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    if (_imopVarPre380) {
                        /*OUT: [ptsTo(ldz) := [a.f];
                        ptsTo(ldx) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(ldy) := [b.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udz) := [c.f];
                        ptsTo(v) := [rsd.f];
                        ptsTo(tv) := [tv.f];
                        ptsTo(d) := [d.f];
                        ptsTo(udx) := [a.f];
                        ptsTo(udy) := [b.f];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        _imopVarPre380 = (rsdnm[4] < tolrsd[4]);
                    }
                    /*OUT: [ptsTo(ldz) := [a.f];
                    ptsTo(ldx) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(ldy) := [b.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udz) := [c.f];
                    ptsTo(v) := [rsd.f];
                    ptsTo(tv) := [tv.f];
                    ptsTo(d) := [d.f];
                    ptsTo(udx) := [a.f];
                    ptsTo(udy) := [b.f];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    _imopVarPre379 = _imopVarPre380;
                }
                /*OUT: [ptsTo(ldz) := [a.f];
                ptsTo(ldx) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(ldy) := [b.f];
                ptsTo(d) := [d.f];
                ptsTo(udz) := [c.f];
                ptsTo(v) := [rsd.f];
                ptsTo(tv) := [tv.f];
                ptsTo(d) := [d.f];
                ptsTo(udx) := [a.f];
                ptsTo(udy) := [b.f];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre378 = _imopVarPre379;
            }
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            _imopVarPre377 = _imopVarPre378;
        }
        /*OUT: [ptsTo(ldz) := [a.f];
        ptsTo(ldx) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(ldy) := [b.f];
        ptsTo(d) := [d.f];
        ptsTo(udz) := [c.f];
        ptsTo(v) := [rsd.f];
        ptsTo(tv) := [tv.f];
        ptsTo(d) := [d.f];
        ptsTo(udx) := [a.f];
        ptsTo(udy) := [b.f];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (_imopVarPre377) {
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            exit(1);
            /*OUT: [ptsTo(ldz) := [a.f];
            ptsTo(ldx) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(ldy) := [b.f];
            ptsTo(d) := [d.f];
            ptsTo(udz) := [c.f];
            ptsTo(v) := [rsd.f];
            ptsTo(tv) := [tv.f];
            ptsTo(d) := [d.f];
            ptsTo(udx) := [a.f];
            ptsTo(udy) := [b.f];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
        }
    }
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    timer_stop(1);
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    maxtime = timer_read(1);
    /*OUT: [ptsTo(ldz) := [a.f];
    ptsTo(ldx) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(ldy) := [b.f];
    ptsTo(d) := [d.f];
    ptsTo(udz) := [c.f];
    ptsTo(v) := [rsd.f];
    ptsTo(tv) := [tv.f];
    ptsTo(d) := [d.f];
    ptsTo(udx) := [a.f];
    ptsTo(udy) := [b.f];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
}
/*OUT: [ptsTo(xcr) := [rsdnm.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(xcr) := [rsdnm.f];
ptsTo(xce) := [errnm.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(xcr) := [rsdnm.f];
ptsTo(xce) := [errnm.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(xcr) := [rsdnm.f];
ptsTo(class) := [class];
ptsTo(xce) := [errnm.f];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
/*OUT: [ptsTo(xcr) := [rsdnm.f];
ptsTo(class) := [class];
ptsTo(xce) := [errnm.f];
ptsTo(verified) := [verified];
ptsTo(flux.f) := [u.f, rsd.f];
ptsTo(tmat.f) := [d.f];
ptsTo(flag.f) := [nullCell];
ptsTo(tmat.f) := [d.f];
]*/
static void verify(double xcr[5], double xce[5] , double xci , char *class , boolean *verified) {
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double xcrref[5];
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double xceref[5];
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double xciref;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double xcrdif[5];
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double xcedif[5];
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double xcidif;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double epsilon;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double dtref;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int m;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    epsilon = 1.0e-08;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    *class = 'U';
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    *verified = 1;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xcrref[m] = 1.0;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xceref[m] = 1.0;
    }
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    xciref = 1.0;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int _imopVarPre384;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int _imopVarPre385;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    int _imopVarPre386;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    _imopVarPre384 = nx0 == 12;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre384) {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre385 = ny0 == 12;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (_imopVarPre385) {
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            _imopVarPre386 = nz0 == 12;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            if (_imopVarPre386) {
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre386 = itmax == 50;
            }
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            _imopVarPre385 = _imopVarPre386;
        }
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre384 = _imopVarPre385;
    }
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (_imopVarPre384) {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        *class = 'S';
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        dtref = 5.0e-1;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xcrref[0] = 1.6196343210976702e-02;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xcrref[1] = 2.1976745164821318e-03;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xcrref[2] = 1.5179927653399185e-03;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xcrref[3] = 1.5029584435994323e-03;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xcrref[4] = 3.4264073155896461e-02;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xceref[0] = 6.4223319957960924e-04;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xceref[1] = 8.4144342047347926e-05;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xceref[2] = 5.8588269616485186e-05;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xceref[3] = 5.8474222595157350e-05;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xceref[4] = 1.3103347914111294e-03;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xciref = 7.8418928865937083;
    } else {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int _imopVarPre390;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int _imopVarPre391;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        int _imopVarPre392;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre390 = nx0 == 33;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (_imopVarPre390) {
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            _imopVarPre391 = ny0 == 33;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            if (_imopVarPre391) {
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre392 = nz0 == 33;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                if (_imopVarPre392) {
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    _imopVarPre392 = itmax == 300;
                }
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre391 = _imopVarPre392;
            }
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            _imopVarPre390 = _imopVarPre391;
        }
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (_imopVarPre390) {
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            *class = 'W';
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            dtref = 1.5e-3;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            xcrref[0] = 0.1236511638192e+02;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            xcrref[1] = 0.1317228477799e+01;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            xcrref[2] = 0.2550120713095e+01;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            xcrref[3] = 0.2326187750252e+01;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            xcrref[4] = 0.2826799444189e+02;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            xceref[0] = 0.4867877144216;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            xceref[1] = 0.5064652880982e-01;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            xceref[2] = 0.9281818101960e-01;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            xceref[3] = 0.8570126542733e-01;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            xceref[4] = 0.1084277417792e+01;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            xciref = 0.1161399311023e+02;
        } else {
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            int _imopVarPre396;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            int _imopVarPre397;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            int _imopVarPre398;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            _imopVarPre396 = nx0 == 64;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            if (_imopVarPre396) {
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre397 = ny0 == 64;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                if (_imopVarPre397) {
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    _imopVarPre398 = nz0 == 64;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    if (_imopVarPre398) {
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        _imopVarPre398 = itmax == 250;
                    }
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    _imopVarPre397 = _imopVarPre398;
                }
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre396 = _imopVarPre397;
            }
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            if (_imopVarPre396) {
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                *class = 'A';
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                dtref = 2.0e+0;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                xcrref[0] = 7.7902107606689367e+02;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                xcrref[1] = 6.3402765259692870e+01;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                xcrref[2] = 1.9499249727292479e+02;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                xcrref[3] = 1.7845301160418537e+02;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                xcrref[4] = 1.8384760349464247e+03;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                xceref[0] = 2.9964085685471943e+01;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                xceref[1] = 2.8194576365003349;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                xceref[2] = 7.3473412698774742;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                xceref[3] = 6.7139225687777051;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                xceref[4] = 7.0715315688392578e+01;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                xciref = 2.6030925604886277e+01;
            } else {
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                int _imopVarPre402;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                int _imopVarPre403;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                int _imopVarPre404;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre402 = nx0 == 102;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                if (_imopVarPre402) {
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    _imopVarPre403 = ny0 == 102;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    if (_imopVarPre403) {
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        _imopVarPre404 = nz0 == 102;
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        if (_imopVarPre404) {
                            /*OUT: [ptsTo(xcr) := [rsdnm.f];
                            ptsTo(class) := [class];
                            ptsTo(xce) := [errnm.f];
                            ptsTo(verified) := [verified];
                            ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            _imopVarPre404 = itmax == 250;
                        }
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        _imopVarPre403 = _imopVarPre404;
                    }
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    _imopVarPre402 = _imopVarPre403;
                }
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                if (_imopVarPre402) {
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    *class = 'B';
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    dtref = 2.0e+0;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    xcrref[0] = 3.5532672969982736e+03;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    xcrref[1] = 2.6214750795310692e+02;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    xcrref[2] = 8.8333721850952190e+02;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    xcrref[3] = 7.7812774739425265e+02;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    xcrref[4] = 7.3087969592545314e+03;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    xceref[0] = 1.1401176380212709e+02;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    xceref[1] = 8.1098963655421574;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    xceref[2] = 2.8480597317698308e+01;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    xceref[3] = 2.5905394567832939e+01;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    xceref[4] = 2.6054907504857413e+02;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    xciref = 4.7887162703308227e+01;
                } else {
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    int _imopVarPre408;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    int _imopVarPre409;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    int _imopVarPre410;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    _imopVarPre408 = nx0 == 162;
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    if (_imopVarPre408) {
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        _imopVarPre409 = ny0 == 162;
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        if (_imopVarPre409) {
                            /*OUT: [ptsTo(xcr) := [rsdnm.f];
                            ptsTo(class) := [class];
                            ptsTo(xce) := [errnm.f];
                            ptsTo(verified) := [verified];
                            ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            _imopVarPre410 = nz0 == 162;
                            /*OUT: [ptsTo(xcr) := [rsdnm.f];
                            ptsTo(class) := [class];
                            ptsTo(xce) := [errnm.f];
                            ptsTo(verified) := [verified];
                            ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            if (_imopVarPre410) {
                                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                                ptsTo(class) := [class];
                                ptsTo(xce) := [errnm.f];
                                ptsTo(verified) := [verified];
                                ptsTo(flux.f) := [u.f, rsd.f];
                                ptsTo(tmat.f) := [d.f];
                                ptsTo(flag.f) := [nullCell];
                                ptsTo(tmat.f) := [d.f];
                                ]*/
                                _imopVarPre410 = itmax == 250;
                            }
                            /*OUT: [ptsTo(xcr) := [rsdnm.f];
                            ptsTo(class) := [class];
                            ptsTo(xce) := [errnm.f];
                            ptsTo(verified) := [verified];
                            ptsTo(flux.f) := [u.f, rsd.f];
                            ptsTo(tmat.f) := [d.f];
                            ptsTo(flag.f) := [nullCell];
                            ptsTo(tmat.f) := [d.f];
                            ]*/
                            _imopVarPre409 = _imopVarPre410;
                        }
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        _imopVarPre408 = _imopVarPre409;
                    }
                    /*OUT: [ptsTo(xcr) := [rsdnm.f];
                    ptsTo(class) := [class];
                    ptsTo(xce) := [errnm.f];
                    ptsTo(verified) := [verified];
                    ptsTo(flux.f) := [u.f, rsd.f];
                    ptsTo(tmat.f) := [d.f];
                    ptsTo(flag.f) := [nullCell];
                    ptsTo(tmat.f) := [d.f];
                    ]*/
                    if (_imopVarPre408) {
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        *class = 'C';
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        dtref = 2.0e+0;
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        xcrref[0] = 1.03766980323537846e+04;
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        xcrref[1] = 8.92212458801008552e+02;
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        xcrref[2] = 2.56238814582660871e+03;
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        xcrref[3] = 2.19194343857831427e+03;
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        xcrref[4] = 1.78078057261061185e+04;
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        xceref[0] = 2.15986399716949279e+02;
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        xceref[1] = 1.55789559239863600e+01;
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        xceref[2] = 5.41318863077207766e+01;
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        xceref[3] = 4.82262643154045421e+01;
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        xceref[4] = 4.55902910043250358e+02;
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        xciref = 6.66404553572181300e+01;
                    } else {
                        /*OUT: [ptsTo(xcr) := [rsdnm.f];
                        ptsTo(class) := [class];
                        ptsTo(xce) := [errnm.f];
                        ptsTo(verified) := [verified];
                        ptsTo(flux.f) := [u.f, rsd.f];
                        ptsTo(tmat.f) := [d.f];
                        ptsTo(flag.f) := [nullCell];
                        ptsTo(tmat.f) := [d.f];
                        ]*/
                        *verified = 0;
                    }
                }
            }
        }
    }
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double _imopVarPre412;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double _imopVarPre413;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre412 = (xcr[m] - xcrref[m]) / xcrref[m];
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre413 = fabs(_imopVarPre412);
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xcrdif[m] = _imopVarPre413;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double _imopVarPre415;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double _imopVarPre416;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre415 = (xce[m] - xceref[m]) / xceref[m];
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre416 = fabs(_imopVarPre415);
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        xcedif[m] = _imopVarPre416;
    }
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double _imopVarPre418;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    double _imopVarPre419;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    _imopVarPre418 = (xci - xciref) / xciref;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    _imopVarPre419 = fabs(_imopVarPre418);
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    xcidif = _imopVarPre419;
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (*class != 'U') {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        char _imopVarPre421;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre421 = *class;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        printf("\n Verification being performed for class %1c\n", _imopVarPre421);
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        printf(" Accuracy setting for epsilon = %20.13e\n", epsilon);
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double _imopVarPre424;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        double _imopVarPre425;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre424 = dt - dtref;
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        _imopVarPre425 = fabs(_imopVarPre424);
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (_imopVarPre425 > epsilon) {
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            *verified = 0;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            *class = 'U';
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            printf(" DT does not match the reference value of %15.8e\n", dtref);
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
        }
    } else {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        printf(" Unknown class\n");
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
    }
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (*class != 'U') {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        printf(" Comparison of RMS-norms of residual\n");
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
    } else {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        printf(" RMS-norms of residual\n");
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
    }
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (*class == 'U') {
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            double _imopVarPre427;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            _imopVarPre427 = xcr[m];
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            printf("          %2d  %20.13e\n", m, _imopVarPre427);
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
        } else {
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            if (xcrdif[m] > epsilon) {
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                *verified = 0;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre431;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre432;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre433;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre431 = xcrdif[m];
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre432 = xcrref[m];
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre433 = xcr[m];
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                printf(" FAILURE: %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre433, _imopVarPre432, _imopVarPre431);
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
            } else {
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre437;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre438;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre439;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre437 = xcrdif[m];
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre438 = xcrref[m];
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre439 = xcr[m];
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                printf("          %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre439, _imopVarPre438, _imopVarPre437);
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
            }
        }
    }
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (*class != 'U') {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        printf(" Comparison of RMS-norms of solution error\n");
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
    } else {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        printf(" RMS-norms of solution error\n");
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
    }
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    for (m = 0; m < 5; m++) {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (*class == 'U') {
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            double _imopVarPre441;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            _imopVarPre441 = xce[m];
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            printf("          %2d  %20.13e\n", m, _imopVarPre441);
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
        } else {
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            if (xcedif[m] > epsilon) {
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                *verified = 0;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre445;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre446;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre447;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre445 = xcedif[m];
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre446 = xceref[m];
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre447 = xce[m];
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                printf(" FAILURE: %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre447, _imopVarPre446, _imopVarPre445);
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
            } else {
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre451;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre452;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                double _imopVarPre453;
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre451 = xcedif[m];
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre452 = xceref[m];
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                _imopVarPre453 = xce[m];
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
                printf("          %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre453, _imopVarPre452, _imopVarPre451);
                /*OUT: [ptsTo(xcr) := [rsdnm.f];
                ptsTo(class) := [class];
                ptsTo(xce) := [errnm.f];
                ptsTo(verified) := [verified];
                ptsTo(flux.f) := [u.f, rsd.f];
                ptsTo(tmat.f) := [d.f];
                ptsTo(flag.f) := [nullCell];
                ptsTo(tmat.f) := [d.f];
                ]*/
            }
        }
    }
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (*class != 'U') {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        printf(" Comparison of surface integral\n");
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
    } else {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        printf(" Surface integral\n");
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
    }
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (*class == 'U') {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        printf("              %20.13e\n", xci);
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
    } else {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (xcidif > epsilon) {
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            *verified = 0;
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            printf(" FAILURE:     %20.13e%20.13e%20.13e\n", xci, xciref, xcidif);
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
        } else {
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            printf("              %20.13e%20.13e%20.13e\n", xci, xciref, xcidif);
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
        }
    }
    /*OUT: [ptsTo(xcr) := [rsdnm.f];
    ptsTo(class) := [class];
    ptsTo(xce) := [errnm.f];
    ptsTo(verified) := [verified];
    ptsTo(flux.f) := [u.f, rsd.f];
    ptsTo(tmat.f) := [d.f];
    ptsTo(flag.f) := [nullCell];
    ptsTo(tmat.f) := [d.f];
    ]*/
    if (*class == 'U') {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        printf(" No reference values provided\n");
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        printf(" No verification performed\n");
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
    } else {
        /*OUT: [ptsTo(xcr) := [rsdnm.f];
        ptsTo(class) := [class];
        ptsTo(xce) := [errnm.f];
        ptsTo(verified) := [verified];
        ptsTo(flux.f) := [u.f, rsd.f];
        ptsTo(tmat.f) := [d.f];
        ptsTo(flag.f) := [nullCell];
        ptsTo(tmat.f) := [d.f];
        ]*/
        if (*verified) {
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            printf(" Verification Successful\n");
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
        } else {
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
            printf(" Verification failed\n");
            /*OUT: [ptsTo(xcr) := [rsdnm.f];
            ptsTo(class) := [class];
            ptsTo(xce) := [errnm.f];
            ptsTo(verified) := [verified];
            ptsTo(flux.f) := [u.f, rsd.f];
            ptsTo(tmat.f) := [d.f];
            ptsTo(flag.f) := [nullCell];
            ptsTo(tmat.f) := [d.f];
            ]*/
        }
    }
}
