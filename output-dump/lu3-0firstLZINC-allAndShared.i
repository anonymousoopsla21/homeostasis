
/*READ_S: []
WRITE_S: []*/
typedef long long __int64_t;
/*READ_S: []
WRITE_S: []*/
typedef __int64_t __darwin_off_t;
/*READ_S: []
WRITE_S: []*/
typedef __darwin_off_t fpos_t;
/*READ_S: []
WRITE_S: []*/
struct __sbuf {
    unsigned char *_base;
    int _size;
} ;
/*READ_S: []
WRITE_S: []*/
struct __sFILEX ;
/*READ_S: []
WRITE_S: []*/
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
/*READ_S: []
WRITE_S: []*/
typedef struct __sFILE FILE;
/*READ_S: []
WRITE_S: [fclose]*/
int fclose(FILE *);
/*READ_S: []
WRITE_S: [fgetc]*/
int fgetc(FILE *);
/*READ_S: []
WRITE_S: [fopen]*/
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
/*READ_S: []
WRITE_S: [fscanf]*/
int fscanf(FILE *restrict , const char *restrict , ...);
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *restrict , ...);
/*READ_S: []
WRITE_S: [exit]*/
void exit(int );
/*READ_S: []
WRITE_S: [fabs]*/
extern double fabs(double );
/*READ_S: []
WRITE_S: [sqrt]*/
extern double sqrt(double );
/*READ_S: []
WRITE_S: [omp_get_num_threads]*/
extern int omp_get_num_threads(void );
/*READ_S: []
WRITE_S: []*/
typedef int boolean;
/*READ_S: []
WRITE_S: [timer_clear]*/
extern void timer_clear(int );
/*READ_S: []
WRITE_S: [timer_start]*/
extern void timer_start(int );
/*READ_S: []
WRITE_S: [timer_stop]*/
extern void timer_stop(int );
/*READ_S: []
WRITE_S: [timer_read]*/
extern double timer_read(int );
/*READ_S: []
WRITE_S: [c_print_results]*/
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
/*READ_S: []
WRITE_S: [nx]*/
static int nx;
/*READ_S: []
WRITE_S: [ny]*/
static int ny;
/*READ_S: []
WRITE_S: [nz]*/
static int nz;
/*READ_S: []
WRITE_S: [nx0]*/
static int nx0;
/*READ_S: []
WRITE_S: [ny0]*/
static int ny0;
/*READ_S: []
WRITE_S: [nz0]*/
static int nz0;
/*READ_S: []
WRITE_S: [ist]*/
static int ist;
/*READ_S: []
WRITE_S: [iend]*/
static int iend;
/*READ_S: []
WRITE_S: [jst]*/
static int jst;
/*READ_S: []
WRITE_S: [jend]*/
static int jend;
/*READ_S: []
WRITE_S: [ii1]*/
static int ii1;
/*READ_S: []
WRITE_S: [ii2]*/
static int ii2;
/*READ_S: []
WRITE_S: [ji1]*/
static int ji1;
/*READ_S: []
WRITE_S: [ji2]*/
static int ji2;
/*READ_S: []
WRITE_S: [ki1]*/
static int ki1;
/*READ_S: []
WRITE_S: [ki2]*/
static int ki2;
/*READ_S: []
WRITE_S: [dxi]*/
static double dxi;
/*READ_S: []
WRITE_S: [deta]*/
static double deta;
/*READ_S: []
WRITE_S: [dzeta]*/
static double dzeta;
/*READ_S: []
WRITE_S: [tx1]*/
static double tx1;
/*READ_S: []
WRITE_S: [tx2]*/
static double tx2;
/*READ_S: []
WRITE_S: [tx3]*/
static double tx3;
/*READ_S: []
WRITE_S: [ty1]*/
static double ty1;
/*READ_S: []
WRITE_S: [ty2]*/
static double ty2;
/*READ_S: []
WRITE_S: [ty3]*/
static double ty3;
/*READ_S: []
WRITE_S: [tz1]*/
static double tz1;
/*READ_S: []
WRITE_S: [tz2]*/
static double tz2;
/*READ_S: []
WRITE_S: [tz3]*/
static double tz3;
/*READ_S: []
WRITE_S: [dx1]*/
static double dx1;
/*READ_S: []
WRITE_S: [dx2]*/
static double dx2;
/*READ_S: []
WRITE_S: [dx3]*/
static double dx3;
/*READ_S: []
WRITE_S: [dx4]*/
static double dx4;
/*READ_S: []
WRITE_S: [dx5]*/
static double dx5;
/*READ_S: []
WRITE_S: [dy1]*/
static double dy1;
/*READ_S: []
WRITE_S: [dy2]*/
static double dy2;
/*READ_S: []
WRITE_S: [dy3]*/
static double dy3;
/*READ_S: []
WRITE_S: [dy4]*/
static double dy4;
/*READ_S: []
WRITE_S: [dy5]*/
static double dy5;
/*READ_S: []
WRITE_S: [dz1]*/
static double dz1;
/*READ_S: []
WRITE_S: [dz2]*/
static double dz2;
/*READ_S: []
WRITE_S: [dz3]*/
static double dz3;
/*READ_S: []
WRITE_S: [dz4]*/
static double dz4;
/*READ_S: []
WRITE_S: [dz5]*/
static double dz5;
/*READ_S: []
WRITE_S: [dssp]*/
static double dssp;
/*READ_S: []
WRITE_S: [u, u.f]*/
static double u[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
/*READ_S: []
WRITE_S: [rsd, rsd.f]*/
static double rsd[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
/*READ_S: []
WRITE_S: [frct.f, frct]*/
static double frct[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
/*READ_S: []
WRITE_S: [flux.f, flux]*/
static double flux[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
/*READ_S: []
WRITE_S: [ipr]*/
static int ipr;
/*READ_S: []
WRITE_S: [inorm]*/
static int inorm;
/*READ_S: []
WRITE_S: [itmax]*/
static int itmax;
/*READ_S: []
WRITE_S: [dt]*/
static double dt;
/*READ_S: []
WRITE_S: [omega]*/
static double omega;
/*READ_S: []
WRITE_S: [tolrsd.f, tolrsd]*/
static double tolrsd[5];
/*READ_S: []
WRITE_S: [rsdnm, rsdnm.f]*/
static double rsdnm[5];
/*READ_S: []
WRITE_S: [errnm.f, errnm]*/
static double errnm[5];
/*READ_S: []
WRITE_S: [frc]*/
static double frc;
/*READ_S: []
WRITE_S: [a, a.f]*/
static double a[12][12][5][5];
/*READ_S: []
WRITE_S: [b.f, b]*/
static double b[12][12][5][5];
/*READ_S: []
WRITE_S: [c, c.f]*/
static double c[12][12][5][5];
/*READ_S: []
WRITE_S: [d, d.f]*/
static double d[12][12][5][5];
/*READ_S: []
WRITE_S: [ce, ce.f]*/
static double ce[5][13];
/*READ_S: []
WRITE_S: [maxtime]*/
static double maxtime;
/*READ_S: []
WRITE_S: [flag, flag.f]*/
static boolean flag[12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [blts]*/
static void blts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double ldz[12][12][5][5] , double ldy[12][12][5][5] , double ldx[12][12][5][5] , double d[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0);
/*READ_S: []
WRITE_S: [buts]*/
static void buts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double tv[12][12][5] , double d[12][12][5][5] , double udx[12][12][5][5] , double udy[12][12][5][5] , double udz[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0);
/*READ_S: []
WRITE_S: [domain]*/
static void domain(void );
/*READ_S: []
WRITE_S: [erhs]*/
static void erhs(void );
/*READ_S: []
WRITE_S: [error]*/
static void error(void );
/*READ_S: []
WRITE_S: [exact]*/
static void exact(int i, int j , int k , double u000ijk[5]);
/*READ_S: []
WRITE_S: [jacld]*/
static void jacld(int k);
/*READ_S: []
WRITE_S: [jacu]*/
static void jacu(int k);
/*READ_S: []
WRITE_S: [l2norm]*/
static void l2norm(int nx0, int ny0 , int nz0 , int ist , int iend , int jst , int jend , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double sum[5]);
/*READ_S: []
WRITE_S: [pintgr]*/
static void pintgr(void );
/*READ_S: []
WRITE_S: [read_input]*/
static void read_input(void );
/*READ_S: []
WRITE_S: [rhs]*/
static void rhs(void );
/*READ_S: []
WRITE_S: [setbv]*/
static void setbv(void );
/*READ_S: []
WRITE_S: [setcoeff]*/
static void setcoeff(void );
/*READ_S: []
WRITE_S: [setiv]*/
static void setiv(void );
/*READ_S: []
WRITE_S: [ssor]*/
static void ssor(void );
/*READ_S: []
WRITE_S: [verify]*/
static void verify(double xcr[5], double xce[5] , double xci , char *class , boolean *verified);
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [ji1, d.f, ty3, tx1, _imopVarPre379, ny0, blts, domain, flag, j, _imopVarPre397, timer_clear, _imopVarPre165, _imopVarPre148, u.f, &nz0, _imopVarPre391, omega, dy2, dz4, fgetc, _imopVarPre363, dxi, ty2, i, flux, _imopVarPre361, flag.f, sqrt, _imopVarPre348, _imopVarPre372, _imopVarPre398, _imopVarPre409, dt, fabs, nx, dy1, _imopVarPre392, dz3, c_print_results, rsd.f, tolrsd.f, tv, omp_get_num_threads, c, b.f, ty1, jst, ii2, _imopVarPre377, tz3, nx0, ce.f, timer_start, flux.f, rsdnm, printf, sum, maxtime, ipr, iend, _imopVarPre167, i, delunm.f, nx0, dz2, rsd, &omega, _imopVarPre171, fscanf, tz2, ii1, c.f, d, _imopVarPre378, _imopVarPre236, setcoeff, _imopVarPre370, rsdnm.f, iend, nullCell, jst, &inorm, u, &dt, dx5, dz1, j, _imopVarPre402, jacu, frct, tz1, _imopVarPre386, exact, ki2, dzeta, a, erhs, &itmax, _imopVarPre410, &ipr, i, setiv, _imopVarPre169, dx4, _imopVarPre157, ny0, j, &nx0, i, verify, _imopVarPre161, read_input, frct.f, _imopVarPre403, _imopVarPre385, timer_read, ce, dssp, exit, ki1, a.f, b, v, jacld, _imopVarPre234, _imopVarPre380, inorm, dx3, dy5, i, errnm, jend, frc, l2norm, _imopVarPre404, _imopVarPre384, nz0, ist, itmax, tx3, verified, rhs, _imopVarPre408, _imopVarPre146, dy4, nz0, &ny0, setbv, _imopVarPre159, errnm.f, dx2, tolrsd, i, ny, _imopVarPre163, timer_stop, fclose, tx2, ji2, _imopVarPre350, error, i, i, _imopVarPre396, buts, deta, ssor, _imopVarPre358, ist, i, j, pintgr, dz5, fopen, _imopVarPre390, tmp, dx1, dy3, jend, nz]
WRITE_S: [tz1, ji1, d.f, ty3, tx1, ki2, dzeta, ue_ij1.f, u.f, ue_ijnz.f, dx4, ny0, omega, dy2, dz4, frct.f, dssp, dxi, ty2, ki1, a.f, flag.f, dt, inorm, ue_nx0jk.f, dx3, dy5, dy1, nx, dz3, rsd.f, tolrsd.f, frc, jend, b.f, ty1, ii2, tz3, ce.f, flux.f, ist, itmax, maxtime, tx3, ipr, iend, dy4, nz0, delunm.f, nx0, errnm.f, dz2, dx2, ny, tz2, ii1, c.f, tx2, ue_iny0k.f, nthreads, ji2, ue_1jk.f, rsdnm.f, deta, nullCell, jst, ue_i1k.f, dz5, dx5, dz1, dx1, dy3, nz]*/
int main(int argc, char **argv) {
/*READ_S: [ji1, d.f, ty3, tx1, _imopVarPre379, ny0, blts, domain, flag, j, _imopVarPre397, timer_clear, _imopVarPre165, _imopVarPre148, u.f, &nz0, _imopVarPre391, omega, dy2, dz4, fgetc, _imopVarPre363, dxi, ty2, i, flux, _imopVarPre361, flag.f, sqrt, _imopVarPre348, _imopVarPre372, _imopVarPre398, _imopVarPre409, dt, fabs, nx, dy1, _imopVarPre392, dz3, c_print_results, rsd.f, tolrsd.f, tv, omp_get_num_threads, c, b.f, ty1, jst, ii2, _imopVarPre377, tz3, nx0, ce.f, timer_start, flux.f, rsdnm, printf, sum, maxtime, ipr, iend, _imopVarPre167, i, delunm.f, nx0, dz2, rsd, &omega, _imopVarPre171, fscanf, tz2, ii1, c.f, d, _imopVarPre378, _imopVarPre236, setcoeff, _imopVarPre370, rsdnm.f, iend, nullCell, jst, &inorm, u, &dt, dx5, dz1, j, _imopVarPre402, jacu, frct, tz1, _imopVarPre386, exact, ki2, dzeta, a, erhs, &itmax, _imopVarPre410, &ipr, i, setiv, _imopVarPre169, dx4, _imopVarPre157, ny0, j, &nx0, i, verify, _imopVarPre161, read_input, frct.f, _imopVarPre403, _imopVarPre385, timer_read, ce, dssp, exit, ki1, a.f, b, v, jacld, _imopVarPre234, _imopVarPre380, inorm, dx3, dy5, i, errnm, jend, frc, l2norm, _imopVarPre404, _imopVarPre384, nz0, ist, itmax, tx3, verified, rhs, _imopVarPre408, _imopVarPre146, dy4, nz0, &ny0, setbv, _imopVarPre159, errnm.f, dx2, tolrsd, i, ny, _imopVarPre163, timer_stop, fclose, tx2, ji2, _imopVarPre350, error, i, i, _imopVarPre396, buts, deta, ssor, _imopVarPre358, ist, i, j, pintgr, dz5, fopen, _imopVarPre390, tmp, dx1, dy3, jend, nz]
WRITE_S: [tz1, ji1, d.f, ty3, tx1, ki2, dzeta, ue_ij1.f, u.f, ue_ijnz.f, dx4, ny0, omega, dy2, dz4, frct.f, dssp, dxi, ty2, ki1, a.f, flag.f, dt, inorm, ue_nx0jk.f, dx3, dy5, dy1, nx, dz3, rsd.f, tolrsd.f, frc, jend, b.f, ty1, ii2, tz3, ce.f, flux.f, ist, itmax, maxtime, tx3, ipr, iend, dy4, nz0, delunm.f, nx0, errnm.f, dz2, dx2, ny, tz2, ii1, c.f, tx2, ue_iny0k.f, nthreads, ji2, ue_1jk.f, rsdnm.f, deta, nullCell, jst, ue_i1k.f, dz5, dx5, dz1, dx1, dy3, nz]*/
    /*READ_S: []
    WRITE_S: []*/
    char class;
    /*READ_S: []
    WRITE_S: []*/
    boolean verified;
    /*READ_S: []
    WRITE_S: []*/
    double mflops;
    /*READ_S: []
    WRITE_S: []*/
    int nthreads = 1;
    /*READ_S: [read_input]
    WRITE_S: []*/
    read_input();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [domain]
    WRITE_S: []*/
    domain();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [setcoeff]
    WRITE_S: []*/
    setcoeff();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [setbv]
    WRITE_S: []*/
    setbv();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [setiv]
    WRITE_S: []*/
    setiv();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [erhs]
    WRITE_S: []*/
    erhs();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [omp_get_num_threads]
    WRITE_S: [nthreads]*/
#pragma omp parallel
    {
    /*READ_S: [omp_get_num_threads]
    WRITE_S: [nthreads]*/
        /*READ_S: [omp_get_num_threads]
        WRITE_S: [nthreads]*/
#pragma omp master
        {
        /*READ_S: [omp_get_num_threads]
        WRITE_S: [nthreads]*/
            /*READ_S: [omp_get_num_threads]
            WRITE_S: []*/
            nthreads = omp_get_num_threads();
            /*READ_S: []
            WRITE_S: [nthreads]*/
        }
    }
    /*READ_S: [ssor]
    WRITE_S: []*/
    ssor();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [error]
    WRITE_S: []*/
    error();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [pintgr]
    WRITE_S: []*/
    pintgr();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre144;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre145;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre144 = &verified;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre145 = &class;
    /*READ_S: [verify, rsdnm, errnm, frc]
    WRITE_S: []*/
    verify(rsdnm, errnm, frc, _imopVarPre145, _imopVarPre144);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nz0, ny0, nx0, itmax, maxtime]
    WRITE_S: []*/
    mflops = (double) itmax * (1984.77 * (double) nx0 * (double) ny0 * (double) nz0 - 10923.3 * (((double) (nx0 + ny0 + nz0) / 3.0) * ((double) (nx0 + ny0 + nz0) / 3.0)) + 27770.9 * (double) (nx0 + ny0 + nz0) / 3.0 - 144010.0) / (maxtime * 1000000.0);
    /*READ_S: [nz0, ny0, nx0, c_print_results, itmax, maxtime]
    WRITE_S: []*/
    c_print_results("LU", class, nx0, ny0, nz0, itmax, nthreads, maxtime, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "(none)");
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [b.f, c.f, d.f, i, a.f, flag, flag.f, rsd.f]
WRITE_S: [flag.f, rsd.f]*/
static void blts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double ldz[12][12][5][5] , double ldy[12][12][5][5] , double ldx[12][12][5][5] , double d[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0) {
/*READ_S: [b.f, c.f, d.f, i, a.f, flag, flag.f, rsd.f]
WRITE_S: [flag.f, rsd.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int m;
    /*READ_S: []
    WRITE_S: []*/
    double tmp;
    /*READ_S: []
    WRITE_S: []*/
    double tmp1;
    /*READ_S: []
    WRITE_S: []*/
    double tmat[5][5];
    /*READ_S: [i, a.f, rsd.f]
    WRITE_S: [rsd.f]*/
#pragma omp for nowait schedule(static)
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = ist; i <= iend; i++) {
    /*READ_S: [a.f, rsd.f]
    WRITE_S: [rsd.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [a.f, rsd.f]
        WRITE_S: [rsd.f]*/
        for (j = jst; j <= jend; j++) {
        /*READ_S: [a.f, rsd.f]
        WRITE_S: [rsd.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [a.f, rsd.f]
            WRITE_S: [rsd.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [a.f, rsd.f]
            WRITE_S: [rsd.f]*/
                /*READ_S: [a.f, rsd.f]
                WRITE_S: [rsd.f]*/
                v[i][j][k][m] = v[i][j][k][m] - omega * (ldz[i][j][m][0] * v[i][j][k - 1][0] + ldz[i][j][m][1] * v[i][j][k - 1][1] + ldz[i][j][m][2] * v[i][j][k - 1][2] + ldz[i][j][m][3] * v[i][j][k - 1][3] + ldz[i][j][m][4] * v[i][j][k - 1][4]);
            }
        }
    }
    /*READ_S: [b.f, c.f, d.f, i, flag, flag.f, rsd.f]
    WRITE_S: [flag.f, rsd.f]*/
#pragma omp for nowait schedule(static)
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = ist; i <= iend; i++) {
    /*READ_S: [b.f, c.f, d.f, flag, flag.f, rsd.f]
    WRITE_S: [flag.f, rsd.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [flag, flag.f]
        WRITE_S: []*/
        if (i != ist) {
        /*READ_S: [flag, flag.f]
        WRITE_S: []*/
            /*READ_S: [flag, flag.f]
            WRITE_S: []*/
            /*READ_S: [flag, flag.f]
            WRITE_S: []*/
            while (flag[i - 1] == 0) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                // #pragma omp dummyFlush FLUSH_START
                /*READ_S: []
                WRITE_S: []*/
#pragma omp flush(flag)
                /*READ_S: []
                WRITE_S: []*/
                ;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [flag, flag.f]
        WRITE_S: []*/
        if (i != iend) {
        /*READ_S: [flag, flag.f]
        WRITE_S: []*/
            /*READ_S: [flag, flag.f]
            WRITE_S: []*/
            /*READ_S: [flag, flag.f]
            WRITE_S: []*/
            while (flag[i] == 1) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                // #pragma omp dummyFlush FLUSH_START
                /*READ_S: []
                WRITE_S: []*/
#pragma omp flush(flag)
                /*READ_S: []
                WRITE_S: []*/
                ;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [b.f, c.f, d.f, rsd.f]
        WRITE_S: [rsd.f]*/
        for (j = jst; j <= jend; j++) {
        /*READ_S: [b.f, c.f, d.f, rsd.f]
        WRITE_S: [rsd.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [b.f, c.f, rsd.f]
            WRITE_S: [rsd.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [b.f, c.f, rsd.f]
            WRITE_S: [rsd.f]*/
                /*READ_S: [b.f, c.f, rsd.f]
                WRITE_S: [rsd.f]*/
                v[i][j][k][m] = v[i][j][k][m] - omega * (ldy[i][j][m][0] * v[i][j - 1][k][0] + ldx[i][j][m][0] * v[i - 1][j][k][0] + ldy[i][j][m][1] * v[i][j - 1][k][1] + ldx[i][j][m][1] * v[i - 1][j][k][1] + ldy[i][j][m][2] * v[i][j - 1][k][2] + ldx[i][j][m][2] * v[i - 1][j][k][2] + ldy[i][j][m][3] * v[i][j - 1][k][3] + ldx[i][j][m][3] * v[i - 1][j][k][3] + ldy[i][j][m][4] * v[i][j - 1][k][4] + ldx[i][j][m][4] * v[i - 1][j][k][4]);
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [d.f]
            WRITE_S: []*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [d.f]
            WRITE_S: []*/
                /*READ_S: [d.f]
                WRITE_S: []*/
                tmat[m][0] = d[i][j][m][0];
                /*READ_S: [d.f]
                WRITE_S: []*/
                tmat[m][1] = d[i][j][m][1];
                /*READ_S: [d.f]
                WRITE_S: []*/
                tmat[m][2] = d[i][j][m][2];
                /*READ_S: [d.f]
                WRITE_S: []*/
                tmat[m][3] = d[i][j][m][3];
                /*READ_S: [d.f]
                WRITE_S: []*/
                tmat[m][4] = d[i][j][m][4];
            }
            /*READ_S: []
            WRITE_S: []*/
            tmp1 = 1.0 / tmat[0][0];
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[1][0];
            /*READ_S: []
            WRITE_S: []*/
            tmat[1][1] = tmat[1][1] - tmp * tmat[0][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[1][2] = tmat[1][2] - tmp * tmat[0][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[1][3] = tmat[1][3] - tmp * tmat[0][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[1][4] = tmat[1][4] - tmp * tmat[0][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][1] = v[i][j][k][1] - v[i][j][k][0] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[2][0];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][1] = tmat[2][1] - tmp * tmat[0][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[0][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[0][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[0][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][2] = v[i][j][k][2] - v[i][j][k][0] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[3][0];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][1] = tmat[3][1] - tmp * tmat[0][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[0][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[0][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[0][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][0] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[4][0];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][1] = tmat[4][1] - tmp * tmat[0][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[0][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[0][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[0][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][0] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp1 = 1.0 / tmat[1][1];
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[2][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[1][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[1][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[1][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][2] = v[i][j][k][2] - v[i][j][k][1] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[3][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[1][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[1][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[1][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][1] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[4][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[1][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[1][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[1][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][1] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp1 = 1.0 / tmat[2][2];
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[3][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[2][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[2][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][2] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[4][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[2][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[2][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][2] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp1 = 1.0 / tmat[3][3];
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[4][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[3][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][3] * tmp;
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][4] = v[i][j][k][4] / tmat[4][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][3] = v[i][j][k][3] - tmat[3][4] * v[i][j][k][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][3] = v[i][j][k][3] / tmat[3][3];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][2] = v[i][j][k][2] - tmat[2][3] * v[i][j][k][3] - tmat[2][4] * v[i][j][k][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][2] = v[i][j][k][2] / tmat[2][2];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][1] = v[i][j][k][1] - tmat[1][2] * v[i][j][k][2] - tmat[1][3] * v[i][j][k][3] - tmat[1][4] * v[i][j][k][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][1] = v[i][j][k][1] / tmat[1][1];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][0] = v[i][j][k][0] - tmat[0][1] * v[i][j][k][1] - tmat[0][2] * v[i][j][k][2] - tmat[0][3] * v[i][j][k][3] - tmat[0][4] * v[i][j][k][4];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][0] = v[i][j][k][0] / tmat[0][0];
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [flag]
        WRITE_S: [flag.f]*/
        if (i != ist) {
        /*READ_S: [flag]
        WRITE_S: [flag.f]*/
            /*READ_S: [flag]
            WRITE_S: [flag.f]*/
            flag[i - 1] = 0;
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [flag]
        WRITE_S: [flag.f]*/
        if (i != iend) {
        /*READ_S: [flag]
        WRITE_S: [flag.f]*/
            /*READ_S: [flag]
            WRITE_S: [flag.f]*/
            flag[i] = 1;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush FLUSH_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp flush(flag)
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [i, b.f, c.f, d.f, a.f, flag, flag.f, rsd.f]
WRITE_S: [flag.f, rsd.f]*/
static void buts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double tv[12][12][5] , double d[12][12][5][5] , double udx[12][12][5][5] , double udy[12][12][5][5] , double udz[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0) {
/*READ_S: [i, b.f, c.f, d.f, a.f, flag, flag.f, rsd.f]
WRITE_S: [flag.f, rsd.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int m;
    /*READ_S: []
    WRITE_S: []*/
    double tmp;
    /*READ_S: []
    WRITE_S: []*/
    double tmp1;
    /*READ_S: []
    WRITE_S: []*/
    double tmat[5][5];
    /*READ_S: [i, c.f, rsd.f]
    WRITE_S: []*/
#pragma omp for nowait schedule(static)
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = iend; i >= ist; i--) {
    /*READ_S: [c.f, rsd.f]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [c.f, rsd.f]
        WRITE_S: []*/
        for (j = jend; j >= jst; j--) {
        /*READ_S: [c.f, rsd.f]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [c.f, rsd.f]
            WRITE_S: []*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [c.f, rsd.f]
            WRITE_S: []*/
                /*READ_S: [c.f, rsd.f]
                WRITE_S: []*/
                tv[i][j][m] = omega * (udz[i][j][m][0] * v[i][j][k + 1][0] + udz[i][j][m][1] * v[i][j][k + 1][1] + udz[i][j][m][2] * v[i][j][k + 1][2] + udz[i][j][m][3] * v[i][j][k + 1][3] + udz[i][j][m][4] * v[i][j][k + 1][4]);
            }
        }
    }
    /*READ_S: [b.f, i, d.f, a.f, flag, flag.f, rsd.f]
    WRITE_S: [flag.f, rsd.f]*/
#pragma omp for nowait schedule(static)
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = iend; i >= ist; i--) {
    /*READ_S: [b.f, d.f, a.f, flag, flag.f, rsd.f]
    WRITE_S: [flag.f, rsd.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [flag, flag.f]
        WRITE_S: []*/
        if (i != iend) {
        /*READ_S: [flag, flag.f]
        WRITE_S: []*/
            /*READ_S: [flag, flag.f]
            WRITE_S: []*/
            /*READ_S: [flag, flag.f]
            WRITE_S: []*/
            while (flag[i + 1] == 0) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                // #pragma omp dummyFlush FLUSH_START
                /*READ_S: []
                WRITE_S: []*/
#pragma omp flush(flag)
                /*READ_S: []
                WRITE_S: []*/
                ;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [flag, flag.f]
        WRITE_S: []*/
        if (i != ist) {
        /*READ_S: [flag, flag.f]
        WRITE_S: []*/
            /*READ_S: [flag, flag.f]
            WRITE_S: []*/
            /*READ_S: [flag, flag.f]
            WRITE_S: []*/
            while (flag[i] == 1) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                // #pragma omp dummyFlush FLUSH_START
                /*READ_S: []
                WRITE_S: []*/
#pragma omp flush(flag)
                /*READ_S: []
                WRITE_S: []*/
                ;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [b.f, d.f, a.f, rsd.f]
        WRITE_S: [rsd.f]*/
        for (j = jend; j >= jst; j--) {
        /*READ_S: [b.f, d.f, a.f, rsd.f]
        WRITE_S: [rsd.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [b.f, a.f, rsd.f]
            WRITE_S: []*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [b.f, a.f, rsd.f]
            WRITE_S: []*/
                /*READ_S: [b.f, a.f, rsd.f]
                WRITE_S: []*/
                tv[i][j][m] = tv[i][j][m] + omega * (udy[i][j][m][0] * v[i][j + 1][k][0] + udx[i][j][m][0] * v[i + 1][j][k][0] + udy[i][j][m][1] * v[i][j + 1][k][1] + udx[i][j][m][1] * v[i + 1][j][k][1] + udy[i][j][m][2] * v[i][j + 1][k][2] + udx[i][j][m][2] * v[i + 1][j][k][2] + udy[i][j][m][3] * v[i][j + 1][k][3] + udx[i][j][m][3] * v[i + 1][j][k][3] + udy[i][j][m][4] * v[i][j + 1][k][4] + udx[i][j][m][4] * v[i + 1][j][k][4]);
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [d.f]
            WRITE_S: []*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [d.f]
            WRITE_S: []*/
                /*READ_S: [d.f]
                WRITE_S: []*/
                tmat[m][0] = d[i][j][m][0];
                /*READ_S: [d.f]
                WRITE_S: []*/
                tmat[m][1] = d[i][j][m][1];
                /*READ_S: [d.f]
                WRITE_S: []*/
                tmat[m][2] = d[i][j][m][2];
                /*READ_S: [d.f]
                WRITE_S: []*/
                tmat[m][3] = d[i][j][m][3];
                /*READ_S: [d.f]
                WRITE_S: []*/
                tmat[m][4] = d[i][j][m][4];
            }
            /*READ_S: []
            WRITE_S: []*/
            tmp1 = 1.0 / tmat[0][0];
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[1][0];
            /*READ_S: []
            WRITE_S: []*/
            tmat[1][1] = tmat[1][1] - tmp * tmat[0][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[1][2] = tmat[1][2] - tmp * tmat[0][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[1][3] = tmat[1][3] - tmp * tmat[0][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[1][4] = tmat[1][4] - tmp * tmat[0][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][1] = tv[i][j][1] - tv[i][j][0] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[2][0];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][1] = tmat[2][1] - tmp * tmat[0][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[0][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[0][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[0][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][2] = tv[i][j][2] - tv[i][j][0] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[3][0];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][1] = tmat[3][1] - tmp * tmat[0][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[0][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[0][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[0][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][3] = tv[i][j][3] - tv[i][j][0] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[4][0];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][1] = tmat[4][1] - tmp * tmat[0][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[0][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[0][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[0][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][0] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp1 = 1.0 / tmat[1][1];
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[2][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[1][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[1][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[1][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][2] = tv[i][j][2] - tv[i][j][1] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[3][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[1][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[1][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[1][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][3] = tv[i][j][3] - tv[i][j][1] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[4][1];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[1][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[1][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[1][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][1] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp1 = 1.0 / tmat[2][2];
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[3][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[2][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[2][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][3] = tv[i][j][3] - tv[i][j][2] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[4][2];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[2][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[2][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][2] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tmp1 = 1.0 / tmat[3][3];
            /*READ_S: []
            WRITE_S: []*/
            tmp = tmp1 * tmat[4][3];
            /*READ_S: []
            WRITE_S: []*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[3][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][3] * tmp;
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][4] = tv[i][j][4] / tmat[4][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][3] = tv[i][j][3] - tmat[3][4] * tv[i][j][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][3] = tv[i][j][3] / tmat[3][3];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][2] = tv[i][j][2] - tmat[2][3] * tv[i][j][3] - tmat[2][4] * tv[i][j][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][2] = tv[i][j][2] / tmat[2][2];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][1] = tv[i][j][1] - tmat[1][2] * tv[i][j][2] - tmat[1][3] * tv[i][j][3] - tmat[1][4] * tv[i][j][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][1] = tv[i][j][1] / tmat[1][1];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][0] = tv[i][j][0] - tmat[0][1] * tv[i][j][1] - tmat[0][2] * tv[i][j][2] - tmat[0][3] * tv[i][j][3] - tmat[0][4] * tv[i][j][4];
            /*READ_S: []
            WRITE_S: []*/
            tv[i][j][0] = tv[i][j][0] / tmat[0][0];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][0] = v[i][j][k][0] - tv[i][j][0];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][1] = v[i][j][k][1] - tv[i][j][1];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][2] = v[i][j][k][2] - tv[i][j][2];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][3] = v[i][j][k][3] - tv[i][j][3];
            /*READ_S: [rsd.f]
            WRITE_S: [rsd.f]*/
            v[i][j][k][4] = v[i][j][k][4] - tv[i][j][4];
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [flag]
        WRITE_S: [flag.f]*/
        if (i != iend) {
        /*READ_S: [flag]
        WRITE_S: [flag.f]*/
            /*READ_S: [flag]
            WRITE_S: [flag.f]*/
            flag[i + 1] = 0;
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [flag]
        WRITE_S: [flag.f]*/
        if (i != ist) {
        /*READ_S: [flag]
        WRITE_S: [flag.f]*/
            /*READ_S: [flag]
            WRITE_S: [flag.f]*/
            flag[i] = 1;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush FLUSH_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp flush(flag)
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [_imopVarPre148, exit, _imopVarPre146, nz0, ny0, nx0, nx, printf, ny, nz]
WRITE_S: [nx, ist, jend, ny, jst, nz, iend]*/
static void domain(void ) {
/*READ_S: [_imopVarPre148, exit, _imopVarPre146, nz0, ny0, nx0, nx, printf, ny, nz]
WRITE_S: [nx, ist, jend, ny, jst, nz, iend]*/
    /*READ_S: [nx0]
    WRITE_S: [nx]*/
    nx = nx0;
    /*READ_S: [ny0]
    WRITE_S: [ny]*/
    ny = ny0;
    /*READ_S: [nz0]
    WRITE_S: [nz]*/
    nz = nz0;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre146;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre147;
    /*READ_S: [nx]
    WRITE_S: []*/
    _imopVarPre146 = nx < 4;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ny, nz]
    WRITE_S: []*/
    if (!_imopVarPre146) {
    /*READ_S: [ny, nz]
    WRITE_S: []*/
        /*READ_S: [ny]
        WRITE_S: []*/
        _imopVarPre147 = ny < 4;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nz]
        WRITE_S: []*/
        if (!_imopVarPre147) {
        /*READ_S: [nz]
        WRITE_S: []*/
            /*READ_S: [nz]
            WRITE_S: []*/
            _imopVarPre147 = nz < 4;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre146 = _imopVarPre147;
    }
    /*READ_S: [_imopVarPre146]
    WRITE_S: []*/
    /*READ_S: [exit, _imopVarPre146, nx, printf, ny, nz]
    WRITE_S: []*/
    if (_imopVarPre146) {
    /*READ_S: [exit, nx, printf, ny, nz]
    WRITE_S: []*/
        /*READ_S: [nx, printf, ny, nz]
        WRITE_S: []*/
        printf("     SUBDOMAIN SIZE IS TOO SMALL - \n" "     ADJUST PROBLEM SIZE OR NUMBER OF PROCESSORS\n" "     SO THAT NX, NY AND NZ ARE GREATER THAN OR EQUAL\n" "     TO 4 THEY ARE CURRENTLY%3d%3d%3d\n", nx, ny, nz);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre148;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre149;
    /*READ_S: [nx]
    WRITE_S: []*/
    _imopVarPre148 = nx > 12;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ny, nz]
    WRITE_S: []*/
    if (!_imopVarPre148) {
    /*READ_S: [ny, nz]
    WRITE_S: []*/
        /*READ_S: [ny]
        WRITE_S: []*/
        _imopVarPre149 = ny > 12;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nz]
        WRITE_S: []*/
        if (!_imopVarPre149) {
        /*READ_S: [nz]
        WRITE_S: []*/
            /*READ_S: [nz]
            WRITE_S: []*/
            _imopVarPre149 = nz > 12;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre148 = _imopVarPre149;
    }
    /*READ_S: [_imopVarPre148]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre148, exit, nx, printf, ny, nz]
    WRITE_S: []*/
    if (_imopVarPre148) {
    /*READ_S: [exit, nx, printf, ny, nz]
    WRITE_S: []*/
        /*READ_S: [nx, printf, ny, nz]
        WRITE_S: []*/
        printf("     SUBDOMAIN SIZE IS TOO LARGE - \n" "     ADJUST PROBLEM SIZE OR NUMBER OF PROCESSORS\n" "     SO THAT NX, NY AND NZ ARE LESS THAN OR EQUAL TO \n" "     ISIZ1, ISIZ2 AND ISIZ3 RESPECTIVELY.  THEY ARE\n" "     CURRENTLY%4d%4d%4d\n", nx, ny, nz);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: [ist]*/
    ist = 1;
    /*READ_S: [nx]
    WRITE_S: [iend]*/
    iend = nx - 2;
    /*READ_S: []
    WRITE_S: [jst]*/
    jst = 1;
    /*READ_S: [ny]
    WRITE_S: [jend]*/
    jend = ny - 2;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [ty1, tz1, ty3, tz3, tx1, ce.f, flux.f, ist, j, tx3, iend, dy4, dx4, ny0, nx0, dz2, rsd, dy2, dx2, dz4, frct.f, ny, tz2, ce, dssp, tx2, ty2, flux, i, jst, dx3, dz5, dy5, dx5, dz1, nx, dy1, dx1, dz3, rsd.f, dy3, jend, nz, frct]
WRITE_S: [flux.f, rsd.f, frct.f]*/
static void erhs(void ) {
/*READ_S: [ty1, tz1, ty3, tz3, tx1, ce.f, flux.f, ist, j, tx3, iend, dy4, dx4, ny0, nx0, dz2, rsd, dy2, dx2, dz4, frct.f, ny, tz2, ce, dssp, tx2, ty2, flux, i, jst, dx3, dz5, dy5, dx5, dz1, nx, dy1, dx1, dz3, rsd.f, dy3, jend, nz, frct]
WRITE_S: [flux.f, rsd.f, frct.f]*/
    /*READ_S: [ty1, tz1, ty3, tz3, tx1, ce.f, flux.f, ist, j, tx3, iend, dy4, dx4, ny0, nx0, dz2, rsd, dy2, dx2, dz4, frct.f, ny, tz2, ce, dssp, tx2, ty2, flux, i, jst, dx3, dz5, dy5, dx5, dz1, nx, dy1, dx1, dz3, rsd.f, dy3, jend, nz, frct]
    WRITE_S: [flux.f, rsd.f, frct.f]*/
#pragma omp parallel
    {
    /*READ_S: [ty1, tz1, ty3, tz3, tx1, ce.f, flux.f, ist, j, tx3, iend, dy4, dx4, ny0, nx0, dz2, rsd, dy2, dx2, dz4, frct.f, ny, tz2, ce, dssp, tx2, ty2, flux, i, jst, dx3, dz5, dy5, dx5, dz1, nx, dy1, dx1, dz3, rsd.f, dy3, jend, nz, frct]
    WRITE_S: [flux.f, rsd.f, frct.f]*/
        /*READ_S: []
        WRITE_S: []*/
        int i;
        /*READ_S: []
        WRITE_S: []*/
        int j;
        /*READ_S: []
        WRITE_S: []*/
        int k;
        /*READ_S: []
        WRITE_S: []*/
        int m;
        /*READ_S: []
        WRITE_S: []*/
        int iglob;
        /*READ_S: []
        WRITE_S: []*/
        int jglob;
        /*READ_S: []
        WRITE_S: []*/
        int L1;
        /*READ_S: []
        WRITE_S: []*/
        int L2;
        /*READ_S: []
        WRITE_S: []*/
        int ist1;
        /*READ_S: []
        WRITE_S: []*/
        int iend1;
        /*READ_S: []
        WRITE_S: []*/
        int jst1;
        /*READ_S: []
        WRITE_S: []*/
        int jend1;
        /*READ_S: []
        WRITE_S: []*/
        double dsspm;
        /*READ_S: []
        WRITE_S: []*/
        double xi;
        /*READ_S: []
        WRITE_S: []*/
        double eta;
        /*READ_S: []
        WRITE_S: []*/
        double zeta;
        /*READ_S: []
        WRITE_S: []*/
        double q;
        /*READ_S: []
        WRITE_S: []*/
        double u21;
        /*READ_S: []
        WRITE_S: []*/
        double u31;
        /*READ_S: []
        WRITE_S: []*/
        double u41;
        /*READ_S: []
        WRITE_S: []*/
        double tmp;
        /*READ_S: []
        WRITE_S: []*/
        double u21i;
        /*READ_S: []
        WRITE_S: []*/
        double u31i;
        /*READ_S: []
        WRITE_S: []*/
        double u41i;
        /*READ_S: []
        WRITE_S: []*/
        double u51i;
        /*READ_S: []
        WRITE_S: []*/
        double u21j;
        /*READ_S: []
        WRITE_S: []*/
        double u31j;
        /*READ_S: []
        WRITE_S: []*/
        double u41j;
        /*READ_S: []
        WRITE_S: []*/
        double u51j;
        /*READ_S: []
        WRITE_S: []*/
        double u21k;
        /*READ_S: []
        WRITE_S: []*/
        double u31k;
        /*READ_S: []
        WRITE_S: []*/
        double u41k;
        /*READ_S: []
        WRITE_S: []*/
        double u51k;
        /*READ_S: []
        WRITE_S: []*/
        double u21im1;
        /*READ_S: []
        WRITE_S: []*/
        double u31im1;
        /*READ_S: []
        WRITE_S: []*/
        double u41im1;
        /*READ_S: []
        WRITE_S: []*/
        double u51im1;
        /*READ_S: []
        WRITE_S: []*/
        double u21jm1;
        /*READ_S: []
        WRITE_S: []*/
        double u31jm1;
        /*READ_S: []
        WRITE_S: []*/
        double u41jm1;
        /*READ_S: []
        WRITE_S: []*/
        double u51jm1;
        /*READ_S: []
        WRITE_S: []*/
        double u21km1;
        /*READ_S: []
        WRITE_S: []*/
        double u31km1;
        /*READ_S: []
        WRITE_S: []*/
        double u41km1;
        /*READ_S: []
        WRITE_S: []*/
        double u51km1;
        /*READ_S: [dssp]
        WRITE_S: []*/
        dsspm = dssp;
        /*READ_S: [nx, i, frct.f, ny, nz, frct]
        WRITE_S: [frct.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [nx]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < nx; i++) {
        /*READ_S: [ny, frct.f, nz, frct]
        WRITE_S: [frct.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ny]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ny, frct.f, nz, frct]
            WRITE_S: [frct.f]*/
            for (j = 0; j < ny; j++) {
            /*READ_S: [frct.f, nz, frct]
            WRITE_S: [frct.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [frct.f, nz, frct]
                WRITE_S: [frct.f]*/
                for (k = 0; k < nz; k++) {
                /*READ_S: [frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [frct.f, frct]
                    WRITE_S: [frct.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [frct.f, frct]
                    WRITE_S: [frct.f]*/
                        /*READ_S: [frct.f, frct]
                        WRITE_S: [frct.f]*/
                        frct[i][j][k][m] = 0.0;
                    }
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [ce, ce.f, ny0, nx0, nx, rsd, i, rsd.f, ny, nz]
        WRITE_S: [rsd.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [nx]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < nx; i++) {
        /*READ_S: [ce, ce.f, ny0, nx0, rsd, rsd.f, ny, nz]
        WRITE_S: [rsd.f]*/
            /*READ_S: []
            WRITE_S: []*/
            iglob = i;
            /*READ_S: [nx0]
            WRITE_S: []*/
            xi = ((double) iglob) / (nx0 - 1);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ny]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ce, ce.f, ny0, rsd, rsd.f, ny, nz]
            WRITE_S: [rsd.f]*/
            for (j = 0; j < ny; j++) {
            /*READ_S: [ce, ce.f, ny0, rsd, rsd.f, nz]
            WRITE_S: [rsd.f]*/
                /*READ_S: []
                WRITE_S: []*/
                jglob = j;
                /*READ_S: [ny0]
                WRITE_S: []*/
                eta = ((double) jglob) / (ny0 - 1);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ce, ce.f, rsd, rsd.f, nz]
                WRITE_S: [rsd.f]*/
                for (k = 0; k < nz; k++) {
                /*READ_S: [ce, ce.f, rsd, rsd.f, nz]
                WRITE_S: [rsd.f]*/
                    /*READ_S: [nz]
                    WRITE_S: []*/
                    zeta = ((double) k) / (nz - 1);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [ce, ce.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [ce, ce.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                        /*READ_S: [ce, ce.f, rsd, rsd.f]
                        WRITE_S: [rsd.f]*/
                        rsd[i][j][k][m] = ce[m][0] + ce[m][1] * xi + ce[m][2] * eta + ce[m][3] * zeta + ce[m][4] * xi * xi + ce[m][5] * eta * eta + ce[m][6] * zeta * zeta + ce[m][7] * xi * xi * xi + ce[m][8] * eta * eta * eta + ce[m][9] * zeta * zeta * zeta + ce[m][10] * xi * xi * xi * xi + ce[m][11] * eta * eta * eta * eta + ce[m][12] * zeta * zeta * zeta * zeta;
                    }
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: []
        WRITE_S: []*/
        L1 = 0;
        /*READ_S: [nx]
        WRITE_S: []*/
        L2 = nx - 1;
        /*READ_S: [flux.f, flux, rsd, i, rsd.f, jend, jst, nz]
        WRITE_S: [flux.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = L1; i <= L2; i++) {
        /*READ_S: [flux.f, flux, rsd, rsd.f, jend, jst, nz]
        WRITE_S: [flux.f]*/
            /*READ_S: [jst]
            WRITE_S: []*/
            /*READ_S: [jend]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [flux.f, flux, rsd, rsd.f, jend, jst, nz]
            WRITE_S: [flux.f]*/
            for (j = jst; j <= jend; j++) {
            /*READ_S: [flux.f, flux, rsd, rsd.f, nz]
            WRITE_S: [flux.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [flux.f, flux, rsd, rsd.f, nz]
                WRITE_S: [flux.f]*/
                for (k = 1; k < nz - 1; k++) {
                /*READ_S: [flux.f, flux, rsd, rsd.f]
                WRITE_S: [flux.f]*/
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][0] = rsd[i][j][k][1];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u21 = rsd[i][j][k][1] / rsd[i][j][k][0];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][1] = rsd[i][j][k][1] * u21 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][2] = rsd[i][j][k][2] * u21;
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][3] = rsd[i][j][k][3] * u21;
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u21;
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [tx2, tx1, flux.f, flux, ist, j, tx3, jst, iend, dx3, dx4, dx5, nx, rsd, dx1, rsd.f, dx2, jend, frct.f, frct, nz]
        WRITE_S: [flux.f, frct.f]*/
#pragma omp for nowait
        /*READ_S: [j, jst]
        WRITE_S: []*/
        /*READ_S: [jend]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = jst; j <= jend; j++) {
        /*READ_S: [tx2, tx1, flux.f, flux, ist, tx3, iend, dx3, dx4, dx5, nx, rsd, dx1, rsd.f, dx2, frct.f, frct, nz]
        WRITE_S: [flux.f, frct.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nz]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [tx2, tx1, flux.f, flux, ist, tx3, iend, dx3, dx4, dx5, nx, rsd, dx1, rsd.f, dx2, frct.f, frct, nz]
            WRITE_S: [flux.f, frct.f]*/
            for (k = 1; k <= nz - 2; k++) {
            /*READ_S: [tx2, tx1, flux.f, flux, ist, tx3, iend, dx3, dx4, dx5, nx, rsd, dx1, rsd.f, dx2, frct.f, frct]
            WRITE_S: [flux.f, frct.f]*/
                /*READ_S: [ist]
                WRITE_S: []*/
                /*READ_S: [iend]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [tx2, flux.f, flux, ist, frct.f, iend, frct]
                WRITE_S: [frct.f]*/
                for (i = ist; i <= iend; i++) {
                /*READ_S: [tx2, flux.f, flux, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [tx2, flux.f, flux, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [tx2, flux.f, flux, frct.f, frct]
                    WRITE_S: [frct.f]*/
                        /*READ_S: [tx2, flux.f, flux, frct.f, frct]
                        WRITE_S: [frct.f]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - tx2 * (flux[i + 1][j][k][m] - flux[i - 1][j][k][m]);
                    }
                }
                /*READ_S: [ist]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [flux.f, flux, ist, rsd, rsd.f, tx3]
                WRITE_S: [flux.f]*/
                for (i = ist; i <= L2; i++) {
                /*READ_S: [flux.f, flux, rsd, rsd.f, tx3]
                WRITE_S: [flux.f]*/
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    tmp = 1.0 / rsd[i][j][k][0];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u21i = tmp * rsd[i][j][k][1];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u31i = tmp * rsd[i][j][k][2];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u41i = tmp * rsd[i][j][k][3];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u51i = tmp * rsd[i][j][k][4];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    tmp = 1.0 / rsd[i - 1][j][k][0];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u21im1 = tmp * rsd[i - 1][j][k][1];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u31im1 = tmp * rsd[i - 1][j][k][2];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u41im1 = tmp * rsd[i - 1][j][k][3];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u51im1 = tmp * rsd[i - 1][j][k][4];
                    /*READ_S: [flux.f, flux, tx3]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][1] = (4.0 / 3.0) * tx3 * (u21i - u21im1);
                    /*READ_S: [flux.f, flux, tx3]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][2] = tx3 * (u31i - u31im1);
                    /*READ_S: [flux.f, flux, tx3]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][3] = tx3 * (u41i - u41im1);
                    /*READ_S: [flux.f, flux, tx3]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tx3 * ((u21i * u21i + u31i * u31i + u41i * u41i) - (u21im1 * u21im1 + u31im1 * u31im1 + u41im1 * u41im1)) + (1.0 / 6.0) * tx3 * (u21i * u21i - u21im1 * u21im1) + 1.40e+00 * 1.40e+00 * tx3 * (u51i - u51im1);
                }
                /*READ_S: [ist]
                WRITE_S: []*/
                /*READ_S: [iend]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [tx1, flux.f, flux, ist, tx3, iend, dx3, dx4, dx5, rsd, dx1, rsd.f, dx2, frct.f, frct]
                WRITE_S: [frct.f]*/
                for (i = ist; i <= iend; i++) {
                /*READ_S: [tx1, flux.f, flux, tx3, dx3, dx4, dx5, rsd, dx1, rsd.f, dx2, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: [tx1, dx1, rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][0] = frct[i][j][k][0] + dx1 * tx1 * (rsd[i - 1][j][k][0] - 2.0 * rsd[i][j][k][0] + rsd[i + 1][j][k][0]);
                    /*READ_S: [tx1, flux.f, flux, rsd, dx2, rsd.f, tx3, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][1] = frct[i][j][k][1] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][1] - flux[i][j][k][1]) + dx2 * tx1 * (rsd[i - 1][j][k][1] - 2.0 * rsd[i][j][k][1] + rsd[i + 1][j][k][1]);
                    /*READ_S: [tx1, dx3, flux.f, flux, rsd, rsd.f, tx3, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][2] = frct[i][j][k][2] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][2] - flux[i][j][k][2]) + dx3 * tx1 * (rsd[i - 1][j][k][2] - 2.0 * rsd[i][j][k][2] + rsd[i + 1][j][k][2]);
                    /*READ_S: [tx1, dx4, flux.f, flux, rsd, rsd.f, tx3, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][3] = frct[i][j][k][3] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][3] - flux[i][j][k][3]) + dx4 * tx1 * (rsd[i - 1][j][k][3] - 2.0 * rsd[i][j][k][3] + rsd[i + 1][j][k][3]);
                    /*READ_S: [tx1, dx5, flux.f, flux, rsd, rsd.f, tx3, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][4] = frct[i][j][k][4] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][4] - flux[i][j][k][4]) + dx5 * tx1 * (rsd[i - 1][j][k][4] - 2.0 * rsd[i][j][k][4] + rsd[i + 1][j][k][4]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rsd, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [rsd, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[1][j][k][m] = frct[1][j][k][m] - dsspm * (+5.0 * rsd[1][j][k][m] - 4.0 * rsd[2][j][k][m] + rsd[3][j][k][m]);
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[2][j][k][m] = frct[2][j][k][m] - dsspm * (-4.0 * rsd[1][j][k][m] + 6.0 * rsd[2][j][k][m] - 4.0 * rsd[3][j][k][m] + rsd[4][j][k][m]);
                }
                /*READ_S: []
                WRITE_S: []*/
                ist1 = 3;
                /*READ_S: [nx]
                WRITE_S: []*/
                iend1 = nx - 4;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rsd, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                for (i = ist1; i <= iend1; i++) {
                /*READ_S: [rsd, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                        /*READ_S: [rsd, rsd.f, frct.f, frct]
                        WRITE_S: [frct.f]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i - 2][j][k][m] - 4.0 * rsd[i - 1][j][k][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i + 1][j][k][m] + rsd[i + 2][j][k][m]);
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nx, rsd, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [nx, rsd, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: [nx, rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[nx - 3][j][k][m] = frct[nx - 3][j][k][m] - dsspm * (rsd[nx - 5][j][k][m] - 4.0 * rsd[nx - 4][j][k][m] + 6.0 * rsd[nx - 3][j][k][m] - 4.0 * rsd[nx - 2][j][k][m]);
                    /*READ_S: [nx, rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[nx - 2][j][k][m] = frct[nx - 2][j][k][m] - dsspm * (rsd[nx - 4][j][k][m] - 4.0 * rsd[nx - 3][j][k][m] + 5.0 * rsd[nx - 2][j][k][m]);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: []
        WRITE_S: []*/
        L1 = 0;
        /*READ_S: [ny]
        WRITE_S: []*/
        L2 = ny - 1;
        /*READ_S: [flux.f, flux, ist, rsd, i, rsd.f, iend, nz]
        WRITE_S: [flux.f]*/
#pragma omp for nowait
        /*READ_S: [ist, i]
        WRITE_S: []*/
        /*READ_S: [iend]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = ist; i <= iend; i++) {
        /*READ_S: [flux.f, flux, rsd, rsd.f, nz]
        WRITE_S: [flux.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [flux.f, flux, rsd, rsd.f, nz]
            WRITE_S: [flux.f]*/
            for (j = L1; j <= L2; j++) {
            /*READ_S: [flux.f, flux, rsd, rsd.f, nz]
            WRITE_S: [flux.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [flux.f, flux, rsd, rsd.f, nz]
                WRITE_S: [flux.f]*/
                for (k = 1; k <= nz - 2; k++) {
                /*READ_S: [flux.f, flux, rsd, rsd.f]
                WRITE_S: [flux.f]*/
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][0] = rsd[i][j][k][2];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u31 = rsd[i][j][k][2] / rsd[i][j][k][0];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][1] = rsd[i][j][k][1] * u31;
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][2] = rsd[i][j][k][2] * u31 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][3] = rsd[i][j][k][3] * u31;
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u31;
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [ty1, ty3, ty2, flux.f, flux, ist, i, jst, iend, dy4, dy5, dy1, rsd, dy2, rsd.f, dy3, jend, frct.f, ny, frct, nz]
        WRITE_S: [flux.f, frct.f]*/
#pragma omp for nowait
        /*READ_S: [ist, i]
        WRITE_S: []*/
        /*READ_S: [iend]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = ist; i <= iend; i++) {
        /*READ_S: [ty1, ty3, ty2, flux.f, flux, jst, dy4, dy5, dy1, rsd, dy2, rsd.f, dy3, jend, frct.f, ny, frct, nz]
        WRITE_S: [flux.f, frct.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nz]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ty1, ty3, ty2, flux.f, flux, jst, dy4, dy5, dy1, rsd, dy2, rsd.f, dy3, jend, frct.f, ny, frct, nz]
            WRITE_S: [flux.f, frct.f]*/
            for (k = 1; k <= nz - 2; k++) {
            /*READ_S: [ty1, ty3, ty2, flux.f, flux, jst, dy4, dy5, dy1, rsd, dy2, rsd.f, dy3, jend, frct.f, ny, frct]
            WRITE_S: [flux.f, frct.f]*/
                /*READ_S: [jst]
                WRITE_S: []*/
                /*READ_S: [jend]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ty2, flux.f, flux, jend, frct.f, jst, frct]
                WRITE_S: [frct.f]*/
                for (j = jst; j <= jend; j++) {
                /*READ_S: [ty2, flux.f, flux, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [ty2, flux.f, flux, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [ty2, flux.f, flux, frct.f, frct]
                    WRITE_S: [frct.f]*/
                        /*READ_S: [ty2, flux.f, flux, frct.f, frct]
                        WRITE_S: [frct.f]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - ty2 * (flux[i][j + 1][k][m] - flux[i][j - 1][k][m]);
                    }
                }
                /*READ_S: [jst]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ty3, flux.f, flux, rsd, rsd.f, jst]
                WRITE_S: [flux.f]*/
                for (j = jst; j <= L2; j++) {
                /*READ_S: [ty3, flux.f, flux, rsd, rsd.f]
                WRITE_S: [flux.f]*/
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    tmp = 1.0 / rsd[i][j][k][0];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u21j = tmp * rsd[i][j][k][1];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u31j = tmp * rsd[i][j][k][2];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u41j = tmp * rsd[i][j][k][3];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u51j = tmp * rsd[i][j][k][4];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    tmp = 1.0 / rsd[i][j - 1][k][0];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u21jm1 = tmp * rsd[i][j - 1][k][1];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u31jm1 = tmp * rsd[i][j - 1][k][2];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u41jm1 = tmp * rsd[i][j - 1][k][3];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u51jm1 = tmp * rsd[i][j - 1][k][4];
                    /*READ_S: [ty3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][1] = ty3 * (u21j - u21jm1);
                    /*READ_S: [ty3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][2] = (4.0 / 3.0) * ty3 * (u31j - u31jm1);
                    /*READ_S: [ty3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][3] = ty3 * (u41j - u41jm1);
                    /*READ_S: [ty3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * ty3 * ((u21j * u21j + u31j * u31j + u41j * u41j) - (u21jm1 * u21jm1 + u31jm1 * u31jm1 + u41jm1 * u41jm1)) + (1.0 / 6.0) * ty3 * (u31j * u31j - u31jm1 * u31jm1) + 1.40e+00 * 1.40e+00 * ty3 * (u51j - u51jm1);
                }
                /*READ_S: [jst]
                WRITE_S: []*/
                /*READ_S: [jend]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ty1, ty3, flux.f, flux, jst, dy4, dy5, dy1, rsd, dy2, dy3, rsd.f, jend, frct.f, frct]
                WRITE_S: [frct.f]*/
                for (j = jst; j <= jend; j++) {
                /*READ_S: [ty1, ty3, flux.f, flux, dy4, dy5, dy1, rsd, dy2, dy3, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: [ty1, dy1, rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][0] = frct[i][j][k][0] + dy1 * ty1 * (rsd[i][j - 1][k][0] - 2.0 * rsd[i][j][k][0] + rsd[i][j + 1][k][0]);
                    /*READ_S: [ty1, ty3, flux.f, flux, dy2, rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][1] = frct[i][j][k][1] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][1] - flux[i][j][k][1]) + dy2 * ty1 * (rsd[i][j - 1][k][1] - 2.0 * rsd[i][j][k][1] + rsd[i][j + 1][k][1]);
                    /*READ_S: [ty1, ty3, flux.f, flux, rsd, dy3, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][2] = frct[i][j][k][2] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][2] - flux[i][j][k][2]) + dy3 * ty1 * (rsd[i][j - 1][k][2] - 2.0 * rsd[i][j][k][2] + rsd[i][j + 1][k][2]);
                    /*READ_S: [ty1, ty3, dy4, flux.f, flux, rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][3] = frct[i][j][k][3] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][3] - flux[i][j][k][3]) + dy4 * ty1 * (rsd[i][j - 1][k][3] - 2.0 * rsd[i][j][k][3] + rsd[i][j + 1][k][3]);
                    /*READ_S: [ty1, ty3, dy5, flux.f, flux, rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][4] = frct[i][j][k][4] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][4] - flux[i][j][k][4]) + dy5 * ty1 * (rsd[i][j - 1][k][4] - 2.0 * rsd[i][j][k][4] + rsd[i][j + 1][k][4]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rsd, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [rsd, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][1][k][m] = frct[i][1][k][m] - dsspm * (+5.0 * rsd[i][1][k][m] - 4.0 * rsd[i][2][k][m] + rsd[i][3][k][m]);
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][2][k][m] = frct[i][2][k][m] - dsspm * (-4.0 * rsd[i][1][k][m] + 6.0 * rsd[i][2][k][m] - 4.0 * rsd[i][3][k][m] + rsd[i][4][k][m]);
                }
                /*READ_S: []
                WRITE_S: []*/
                jst1 = 3;
                /*READ_S: [ny]
                WRITE_S: []*/
                jend1 = ny - 4;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rsd, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                for (j = jst1; j <= jend1; j++) {
                /*READ_S: [rsd, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                        /*READ_S: [rsd, rsd.f, frct.f, frct]
                        WRITE_S: [frct.f]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i][j - 2][k][m] - 4.0 * rsd[i][j - 1][k][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i][j + 1][k][m] + rsd[i][j + 2][k][m]);
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rsd, rsd.f, ny, frct.f, frct]
                WRITE_S: [frct.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [rsd, rsd.f, ny, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: [rsd, rsd.f, ny, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][ny - 3][k][m] = frct[i][ny - 3][k][m] - dsspm * (rsd[i][ny - 5][k][m] - 4.0 * rsd[i][ny - 4][k][m] + 6.0 * rsd[i][ny - 3][k][m] - 4.0 * rsd[i][ny - 2][k][m]);
                    /*READ_S: [rsd, rsd.f, ny, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][ny - 2][k][m] = frct[i][ny - 2][k][m] - dsspm * (rsd[i][ny - 4][k][m] - 4.0 * rsd[i][ny - 3][k][m] + 5.0 * rsd[i][ny - 2][k][m]);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [tz2, tz1, tz3, flux.f, flux, ist, i, jst, iend, dz5, dz1, dz2, rsd, dz3, rsd.f, dz4, jend, frct.f, nz, frct]
        WRITE_S: [flux.f, frct.f]*/
#pragma omp for nowait
        /*READ_S: [ist, i]
        WRITE_S: []*/
        /*READ_S: [iend]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = ist; i <= iend; i++) {
        /*READ_S: [tz2, tz1, tz3, flux.f, flux, jst, dz5, dz1, dz2, rsd, dz3, rsd.f, dz4, jend, frct.f, nz, frct]
        WRITE_S: [flux.f, frct.f]*/
            /*READ_S: [jst]
            WRITE_S: []*/
            /*READ_S: [jend]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [tz2, tz1, tz3, flux.f, flux, jst, dz5, dz1, dz2, rsd, dz3, rsd.f, dz4, jend, frct.f, nz, frct]
            WRITE_S: [flux.f, frct.f]*/
            for (j = jst; j <= jend; j++) {
            /*READ_S: [tz2, tz1, tz3, flux.f, flux, dz5, dz1, dz2, rsd, dz3, rsd.f, dz4, frct.f, nz, frct]
            WRITE_S: [flux.f, frct.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [flux.f, flux, rsd, rsd.f, nz]
                WRITE_S: [flux.f]*/
                for (k = 0; k <= nz - 1; k++) {
                /*READ_S: [flux.f, flux, rsd, rsd.f]
                WRITE_S: [flux.f]*/
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][0] = rsd[i][j][k][3];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u41 = rsd[i][j][k][3] / rsd[i][j][k][0];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][1] = rsd[i][j][k][1] * u41;
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][2] = rsd[i][j][k][2] * u41;
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][3] = rsd[i][j][k][3] * u41 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    /*READ_S: [flux.f, flux, rsd, rsd.f]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u41;
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [tz2, flux.f, flux, frct.f, nz, frct]
                WRITE_S: [frct.f]*/
                for (k = 1; k <= nz - 2; k++) {
                /*READ_S: [tz2, flux.f, flux, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [tz2, flux.f, flux, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [tz2, flux.f, flux, frct.f, frct]
                    WRITE_S: [frct.f]*/
                        /*READ_S: [tz2, flux.f, flux, frct.f, frct]
                        WRITE_S: [frct.f]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - tz2 * (flux[i][j][k + 1][m] - flux[i][j][k - 1][m]);
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [tz3, flux.f, flux, rsd, rsd.f, nz]
                WRITE_S: [flux.f]*/
                for (k = 1; k <= nz - 1; k++) {
                /*READ_S: [tz3, flux.f, flux, rsd, rsd.f]
                WRITE_S: [flux.f]*/
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    tmp = 1.0 / rsd[i][j][k][0];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u21k = tmp * rsd[i][j][k][1];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u31k = tmp * rsd[i][j][k][2];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u41k = tmp * rsd[i][j][k][3];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u51k = tmp * rsd[i][j][k][4];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    tmp = 1.0 / rsd[i][j][k - 1][0];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u21km1 = tmp * rsd[i][j][k - 1][1];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u31km1 = tmp * rsd[i][j][k - 1][2];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u41km1 = tmp * rsd[i][j][k - 1][3];
                    /*READ_S: [rsd, rsd.f]
                    WRITE_S: []*/
                    u51km1 = tmp * rsd[i][j][k - 1][4];
                    /*READ_S: [tz3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][1] = tz3 * (u21k - u21km1);
                    /*READ_S: [tz3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][2] = tz3 * (u31k - u31km1);
                    /*READ_S: [tz3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][3] = (4.0 / 3.0) * tz3 * (u41k - u41km1);
                    /*READ_S: [tz3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tz3 * ((u21k * u21k + u31k * u31k + u41k * u41k) - (u21km1 * u21km1 + u31km1 * u31km1 + u41km1 * u41km1)) + (1.0 / 6.0) * tz3 * (u41k * u41k - u41km1 * u41km1) + 1.40e+00 * 1.40e+00 * tz3 * (u51k - u51km1);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [tz1, tz3, flux.f, flux, dz5, dz1, dz2, rsd, dz3, rsd.f, dz4, frct.f, frct, nz]
                WRITE_S: [frct.f]*/
                for (k = 1; k <= nz - 2; k++) {
                /*READ_S: [tz1, tz3, flux.f, flux, dz5, dz1, dz2, rsd, dz3, rsd.f, dz4, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: [tz1, dz1, rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][0] = frct[i][j][k][0] + dz1 * tz1 * (rsd[i][j][k + 1][0] - 2.0 * rsd[i][j][k][0] + rsd[i][j][k - 1][0]);
                    /*READ_S: [tz1, tz3, flux.f, flux, dz2, rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][1] = frct[i][j][k][1] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][1] - flux[i][j][k][1]) + dz2 * tz1 * (rsd[i][j][k + 1][1] - 2.0 * rsd[i][j][k][1] + rsd[i][j][k - 1][1]);
                    /*READ_S: [tz1, tz3, flux.f, flux, dz3, rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][2] = frct[i][j][k][2] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][2] - flux[i][j][k][2]) + dz3 * tz1 * (rsd[i][j][k + 1][2] - 2.0 * rsd[i][j][k][2] + rsd[i][j][k - 1][2]);
                    /*READ_S: [tz1, tz3, flux.f, flux, rsd, dz4, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][3] = frct[i][j][k][3] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][3] - flux[i][j][k][3]) + dz4 * tz1 * (rsd[i][j][k + 1][3] - 2.0 * rsd[i][j][k][3] + rsd[i][j][k - 1][3]);
                    /*READ_S: [tz1, tz3, dz5, flux.f, flux, rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][k][4] = frct[i][j][k][4] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][4] - flux[i][j][k][4]) + dz5 * tz1 * (rsd[i][j][k + 1][4] - 2.0 * rsd[i][j][k][4] + rsd[i][j][k - 1][4]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rsd, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [rsd, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][1][m] = frct[i][j][1][m] - dsspm * (+5.0 * rsd[i][j][1][m] - 4.0 * rsd[i][j][2][m] + rsd[i][j][3][m]);
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    frct[i][j][2][m] = frct[i][j][2][m] - dsspm * (-4.0 * rsd[i][j][1][m] + 6.0 * rsd[i][j][2][m] - 4.0 * rsd[i][j][3][m] + rsd[i][j][4][m]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rsd, rsd.f, frct.f, nz, frct]
                WRITE_S: [frct.f]*/
                for (k = 3; k <= nz - 4; k++) {
                /*READ_S: [rsd, rsd.f, frct.f, frct]
                WRITE_S: [frct.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [frct.f]*/
                        /*READ_S: [rsd, rsd.f, frct.f, frct]
                        WRITE_S: [frct.f]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i][j][k - 2][m] - 4.0 * rsd[i][j][k - 1][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i][j][k + 1][m] + rsd[i][j][k + 2][m]);
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rsd, rsd.f, frct.f, frct, nz]
                WRITE_S: [frct.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [rsd, rsd.f, frct.f, frct, nz]
                WRITE_S: [frct.f]*/
                    /*READ_S: [rsd, rsd.f, frct.f, frct, nz]
                    WRITE_S: [frct.f]*/
                    frct[i][j][nz - 3][m] = frct[i][j][nz - 3][m] - dsspm * (rsd[i][j][nz - 5][m] - 4.0 * rsd[i][j][nz - 4][m] + 6.0 * rsd[i][j][nz - 3][m] - 4.0 * rsd[i][j][nz - 2][m]);
                    /*READ_S: [rsd, rsd.f, frct.f, frct, nz]
                    WRITE_S: [frct.f]*/
                    frct[i][j][nz - 2][m] = frct[i][j][nz - 2][m] - dsspm * (rsd[i][j][nz - 4][m] - 4.0 * rsd[i][j][nz - 3][m] + 5.0 * rsd[i][j][nz - 2][m]);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [ce, exact, ce.f, ist, sqrt, jst, iend, u, u.f, nz0, ny0, nx0, errnm.f, errnm, jend, nz]
WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, errnm.f, ue_1jk.f]*/
static void error(void ) {
/*READ_S: [ce, exact, ce.f, ist, sqrt, jst, iend, u, u.f, nz0, ny0, nx0, errnm.f, errnm, jend, nz]
WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, errnm.f, ue_1jk.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int m;
    /*READ_S: []
    WRITE_S: []*/
    int iglob;
    /*READ_S: []
    WRITE_S: []*/
    int jglob;
    /*READ_S: []
    WRITE_S: []*/
    double tmp;
    /*READ_S: []
    WRITE_S: []*/
    double u000ijk[5];
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [errnm]
    WRITE_S: [errnm.f]*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [errnm]
    WRITE_S: [errnm.f]*/
        /*READ_S: [errnm]
        WRITE_S: [errnm.f]*/
        errnm[m] = 0.0;
    }
    /*READ_S: [ist]
    WRITE_S: []*/
    /*READ_S: [iend]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ce, exact, ce.f, ist, jst, iend, u, u.f, ny0, nx0, errnm.f, errnm, jend, nz]
    WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, errnm.f, ue_1jk.f]*/
    for (i = ist; i <= iend; i++) {
    /*READ_S: [ce, u, exact, u.f, ce.f, ny0, nx0, errnm.f, errnm, jend, jst, nz]
    WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, errnm.f, ue_1jk.f]*/
        /*READ_S: []
        WRITE_S: []*/
        iglob = i;
        /*READ_S: [jst]
        WRITE_S: []*/
        /*READ_S: [jend]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ce, u, exact, u.f, ce.f, ny0, nx0, errnm.f, errnm, jend, jst, nz]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, errnm.f, ue_1jk.f]*/
        for (j = jst; j <= jend; j++) {
        /*READ_S: [ce, u, exact, u.f, ny0, ce.f, nx0, errnm.f, errnm, nz]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, errnm.f, ue_1jk.f]*/
            /*READ_S: []
            WRITE_S: []*/
            jglob = j;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nz]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ce, u, exact, u.f, ny0, ce.f, nx0, errnm.f, errnm, nz]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, errnm.f, ue_1jk.f]*/
            for (k = 1; k <= nz - 2; k++) {
            /*READ_S: [ce, u, exact, u.f, ny0, ce.f, nx0, errnm.f, errnm, nz]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, errnm.f, ue_1jk.f]*/
                /*READ_S: [exact]
                WRITE_S: []*/
                exact(iglob, jglob, k, u000ijk);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u, u.f, errnm.f, errnm]
                WRITE_S: [errnm.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [u, u.f, errnm.f, errnm]
                WRITE_S: [errnm.f]*/
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    tmp = (u000ijk[m] - u[i][j][k][m]);
                    /*READ_S: [errnm.f, errnm]
                    WRITE_S: [errnm.f]*/
                    errnm[m] = errnm[m] + tmp * tmp;
                }
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nz0, ny0, nx0, errnm.f, sqrt, errnm]
    WRITE_S: [errnm.f]*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [nz0, ny0, nx0, errnm.f, sqrt, errnm]
    WRITE_S: [errnm.f]*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre151;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre152;
        /*READ_S: [nz0, ny0, nx0, errnm.f, errnm]
        WRITE_S: []*/
        _imopVarPre151 = errnm[m] / ((nx0 - 2) * (ny0 - 2) * (nz0 - 2));
        /*READ_S: [sqrt]
        WRITE_S: []*/
        _imopVarPre152 = sqrt(_imopVarPre151);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [errnm]
        WRITE_S: [errnm.f]*/
        errnm[m] = _imopVarPre152;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [ce, ny0, ce.f, nx0, nz]
WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
static void exact(int i, int j , int k , double u000ijk[5]) {
/*READ_S: [ce, ny0, ce.f, nx0, nz]
WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int m;
    /*READ_S: []
    WRITE_S: []*/
    double xi;
    /*READ_S: []
    WRITE_S: []*/
    double eta;
    /*READ_S: []
    WRITE_S: []*/
    double zeta;
    /*READ_S: [nx0]
    WRITE_S: []*/
    xi = ((double) i) / (nx0 - 1);
    /*READ_S: [ny0]
    WRITE_S: []*/
    eta = ((double) j) / (ny0 - 1);
    /*READ_S: [nz]
    WRITE_S: []*/
    zeta = ((double) k) / (nz - 1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ce, ce.f]
    WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [ce, ce.f]
    WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
        /*READ_S: [ce, ce.f]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
        u000ijk[m] = ce[m][0] + ce[m][1] * xi + ce[m][2] * eta + ce[m][3] * zeta + ce[m][4] * xi * xi + ce[m][5] * eta * eta + ce[m][6] * zeta * zeta + ce[m][7] * xi * xi * xi + ce[m][8] * eta * eta * eta + ce[m][9] * zeta * zeta * zeta + ce[m][10] * xi * xi * xi * xi + ce[m][11] * eta * eta * eta * eta + ce[m][12] * zeta * zeta * zeta * zeta;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [c, b.f, ty1, tz1, d.f, tx1, a, ist, iend, u.f, dy4, dx4, i, dz2, dy2, dx2, dz4, tz2, d, c.f, tx2, ty2, a.f, b, jst, u, dt, dz5, dx3, dy5, dx5, dz1, dy1, dx1, dz3, dy3, jend]
WRITE_S: [b.f, c.f, d.f, a.f]*/
static void jacld(int k) {
/*READ_S: [c, b.f, ty1, tz1, d.f, tx1, a, ist, iend, u.f, dy4, dx4, i, dz2, dy2, dx2, dz4, tz2, d, c.f, tx2, ty2, a.f, b, jst, u, dt, dz5, dx3, dy5, dx5, dz1, dy1, dx1, dz3, dy3, jend]
WRITE_S: [b.f, c.f, d.f, a.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    double r43;
    /*READ_S: []
    WRITE_S: []*/
    double c1345;
    /*READ_S: []
    WRITE_S: []*/
    double c34;
    /*READ_S: []
    WRITE_S: []*/
    double tmp1;
    /*READ_S: []
    WRITE_S: []*/
    double tmp2;
    /*READ_S: []
    WRITE_S: []*/
    double tmp3;
    /*READ_S: []
    WRITE_S: []*/
    r43 = (4.0 / 3.0);
    /*READ_S: []
    WRITE_S: []*/
    c1345 = 1.40e+00 * 1.00e-01 * 1.00e+00 * 1.40e+00;
    /*READ_S: []
    WRITE_S: []*/
    c34 = 1.00e-01 * 1.00e+00;
    /*READ_S: [c, b.f, ty1, tz1, d.f, tx1, a, ist, iend, u.f, dy4, dx4, i, dz2, dy2, dx2, dz4, tz2, d, c.f, tx2, ty2, a.f, b, jst, u, dt, dz5, dx3, dy5, dx5, dz1, dy1, dx1, dz3, dy3, jend]
    WRITE_S: [b.f, c.f, d.f, a.f]*/
#pragma omp for nowait schedule(static)
    /*READ_S: [i, ist]
    WRITE_S: []*/
    /*READ_S: [iend]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = ist; i <= iend; i++) {
    /*READ_S: [c, b.f, ty1, tz1, d.f, tx1, a, u.f, dy4, dx4, dz2, dy2, dx2, dz4, tz2, d, c.f, tx2, ty2, a.f, b, jst, u, dt, dz5, dx3, dy5, dx5, dz1, dy1, dx1, dz3, dy3, jend]
    WRITE_S: [b.f, c.f, d.f, a.f]*/
        /*READ_S: [jst]
        WRITE_S: []*/
        /*READ_S: [jend]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [c, b.f, ty1, tz1, d.f, tx1, a, u.f, dy4, dx4, dz2, dy2, dx2, dz4, tz2, d, c.f, tx2, ty2, a.f, b, jst, u, dt, dz5, dx3, dy5, dx5, dz1, dy1, dx1, dz3, dy3, jend]
        WRITE_S: [b.f, c.f, d.f, a.f]*/
        for (j = jst; j <= jend; j++) {
        /*READ_S: [c, b.f, ty1, tz1, d.f, tx1, a, u.f, dy4, dx4, dz2, dy2, dx2, dz4, tz2, d, c.f, tx2, ty2, a.f, b, u, dt, dz5, dx3, dy5, dx5, dz1, dy1, dx1, dz3, dy3]
        WRITE_S: [b.f, c.f, d.f, a.f]*/
            /*READ_S: [u, u.f]
            WRITE_S: []*/
            tmp1 = 1.0 / u[i][j][k][0];
            /*READ_S: []
            WRITE_S: []*/
            tmp2 = tmp1 * tmp1;
            /*READ_S: []
            WRITE_S: []*/
            tmp3 = tmp1 * tmp2;
            /*READ_S: [ty1, d, tz1, d.f, dt, tx1, dz1, dy1, dx1]
            WRITE_S: [d.f]*/
            d[i][j][0][0] = 1.0 + dt * 2.0 * (tx1 * dx1 + ty1 * dy1 + tz1 * dz1);
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][0][1] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][0][2] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][0][3] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][0][4] = 0.0;
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][1][0] = dt * 2.0 * (tx1 * (-r43 * c34 * tmp2 * u[i][j][k][1]) + ty1 * (-c34 * tmp2 * u[i][j][k][1]) + tz1 * (-c34 * tmp2 * u[i][j][k][1]));
            /*READ_S: [ty1, d, tz1, d.f, dt, tx1, dz2, dy2, dx2]
            WRITE_S: [d.f]*/
            d[i][j][1][1] = 1.0 + dt * 2.0 * (tx1 * r43 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx2 + ty1 * dy2 + tz1 * dz2);
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][1][2] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][1][3] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][1][4] = 0.0;
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][2][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][2]) + ty1 * (-r43 * c34 * tmp2 * u[i][j][k][2]) + tz1 * (-c34 * tmp2 * u[i][j][k][2]));
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][2][1] = 0.0;
            /*READ_S: [ty1, d, tz1, d.f, dt, tx1, dx3, dz3, dy3]
            WRITE_S: [d.f]*/
            d[i][j][2][2] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * r43 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx3 + ty1 * dy3 + tz1 * dz3);
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][2][3] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][2][4] = 0.0;
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][3][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][3]) + ty1 * (-c34 * tmp2 * u[i][j][k][3]) + tz1 * (-r43 * c34 * tmp2 * u[i][j][k][3]));
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][3][1] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][3][2] = 0.0;
            /*READ_S: [ty1, d, tz1, d.f, dt, tx1, dy4, dx4, dz4]
            WRITE_S: [d.f]*/
            d[i][j][3][3] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * r43 * c34 * tmp1) + dt * 2.0 * (tx1 * dx4 + ty1 * dy4 + tz1 * dz4);
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][3][4] = 0.0;
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][4][0] = dt * 2.0 * (tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]));
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][4][1] = dt * 2.0 * (tx1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][1] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][1] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][1]);
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][4][2] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][2] + ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][2] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][2]);
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][4][3] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][3]);
            /*READ_S: [ty1, d, tz1, d.f, dt, tx1, dz5, dy5, dx5]
            WRITE_S: [d.f]*/
            d[i][j][4][4] = 1.0 + dt * 2.0 * (tx1 * c1345 * tmp1 + ty1 * c1345 * tmp1 + tz1 * c1345 * tmp1) + dt * 2.0 * (tx1 * dx5 + ty1 * dy5 + tz1 * dz5);
            /*READ_S: [u, u.f]
            WRITE_S: []*/
            tmp1 = 1.0 / u[i][j][k - 1][0];
            /*READ_S: []
            WRITE_S: []*/
            tmp2 = tmp1 * tmp1;
            /*READ_S: []
            WRITE_S: []*/
            tmp3 = tmp1 * tmp2;
            /*READ_S: [tz1, dt, a, a.f, dz1]
            WRITE_S: [a.f]*/
            a[i][j][0][0] = -dt * tz1 * dz1;
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][0][1] = 0.0;
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][0][2] = 0.0;
            /*READ_S: [tz2, dt, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][0][3] = -dt * tz2;
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][0][4] = 0.0;
            /*READ_S: [tz2, tz1, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][1][0] = -dt * tz2 * (-(u[i][j][k - 1][1] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k - 1][1]);
            /*READ_S: [tz2, tz1, u, dt, u.f, a, a.f, dz2]
            WRITE_S: [a.f]*/
            a[i][j][1][1] = -dt * tz2 * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * c34 * tmp1 - dt * tz1 * dz2;
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][1][2] = 0.0;
            /*READ_S: [tz2, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][1][3] = -dt * tz2 * (u[i][j][k - 1][1] * tmp1);
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][1][4] = 0.0;
            /*READ_S: [tz2, tz1, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][2][0] = -dt * tz2 * (-(u[i][j][k - 1][2] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k - 1][2]);
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][2][1] = 0.0;
            /*READ_S: [tz2, tz1, u, dt, u.f, a, a.f, dz3]
            WRITE_S: [a.f]*/
            a[i][j][2][2] = -dt * tz2 * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * (c34 * tmp1) - dt * tz1 * dz3;
            /*READ_S: [tz2, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][2][3] = -dt * tz2 * (u[i][j][k - 1][2] * tmp1);
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][2][4] = 0.0;
            /*READ_S: [tz2, tz1, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][3][0] = -dt * tz2 * (-(u[i][j][k - 1][3] * tmp1) * (u[i][j][k - 1][3] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2)) - dt * tz1 * (-r43 * c34 * tmp2 * u[i][j][k - 1][3]);
            /*READ_S: [tz2, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][3][1] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][1] * tmp1));
            /*READ_S: [tz2, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][3][2] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][2] * tmp1));
            /*READ_S: [tz2, tz1, u, dt, u.f, a, a.f, dz4]
            WRITE_S: [a.f]*/
            a[i][j][3][3] = -dt * tz2 * (2.0 - 0.40e+00) * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * (r43 * c34 * tmp1) - dt * tz1 * dz4;
            /*READ_S: [tz2, dt, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][3][4] = -dt * tz2 * 0.40e+00;
            /*READ_S: [tz2, tz1, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][4][0] = -dt * tz2 * ((0.40e+00 * (u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2 - 1.40e+00 * (u[i][j][k - 1][4] * tmp1)) * (u[i][j][k - 1][3] * tmp1)) - dt * tz1 * (-(c34 - c1345) * tmp3 * (u[i][j][k - 1][1] * u[i][j][k - 1][1]) - (c34 - c1345) * tmp3 * (u[i][j][k - 1][2] * u[i][j][k - 1][2]) - (r43 * c34 - c1345) * tmp3 * (u[i][j][k - 1][3] * u[i][j][k - 1][3]) - c1345 * tmp2 * u[i][j][k - 1][4]);
            /*READ_S: [tz2, tz1, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][4][1] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][1] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k - 1][1];
            /*READ_S: [tz2, tz1, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][4][2] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][2] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k - 1][2];
            /*READ_S: [tz2, tz1, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][4][3] = -dt * tz2 * (1.40e+00 * (u[i][j][k - 1][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + 3.0 * u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2)) - dt * tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k - 1][3];
            /*READ_S: [tz2, tz1, u, dt, u.f, dz5, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][4][4] = -dt * tz2 * (1.40e+00 * (u[i][j][k - 1][3] * tmp1)) - dt * tz1 * c1345 * tmp1 - dt * tz1 * dz5;
            /*READ_S: [u, u.f]
            WRITE_S: []*/
            tmp1 = 1.0 / u[i][j - 1][k][0];
            /*READ_S: []
            WRITE_S: []*/
            tmp2 = tmp1 * tmp1;
            /*READ_S: []
            WRITE_S: []*/
            tmp3 = tmp1 * tmp2;
            /*READ_S: [b.f, ty1, dt, b, dy1]
            WRITE_S: [b.f]*/
            b[i][j][0][0] = -dt * ty1 * dy1;
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][0][1] = 0.0;
            /*READ_S: [b.f, dt, ty2, b]
            WRITE_S: [b.f]*/
            b[i][j][0][2] = -dt * ty2;
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][0][3] = 0.0;
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][0][4] = 0.0;
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][1][0] = -dt * ty2 * (-(u[i][j - 1][k][1] * u[i][j - 1][k][2]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j - 1][k][1]);
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b, dy2]
            WRITE_S: [b.f]*/
            b[i][j][1][1] = -dt * ty2 * (u[i][j - 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy2;
            /*READ_S: [b.f, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][1][2] = -dt * ty2 * (u[i][j - 1][k][1] * tmp1);
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][1][3] = 0.0;
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][1][4] = 0.0;
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][2][0] = -dt * ty2 * (-(u[i][j - 1][k][2] * tmp1) * (u[i][j - 1][k][2] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j - 1][k][1] * u[i][j - 1][k][1] + u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2)) - dt * ty1 * (-r43 * c34 * tmp2 * u[i][j - 1][k][2]);
            /*READ_S: [b.f, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][2][1] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][1] * tmp1));
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b, dy3]
            WRITE_S: [b.f]*/
            b[i][j][2][2] = -dt * ty2 * ((2.0 - 0.40e+00) * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * (r43 * c34 * tmp1) - dt * ty1 * dy3;
            /*READ_S: [b.f, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][2][3] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][3] * tmp1));
            /*READ_S: [b.f, dt, ty2, b]
            WRITE_S: [b.f]*/
            b[i][j][2][4] = -dt * ty2 * 0.40e+00;
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][3][0] = -dt * ty2 * (-(u[i][j - 1][k][2] * u[i][j - 1][k][3]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j - 1][k][3]);
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][3][1] = 0.0;
            /*READ_S: [b.f, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][3][2] = -dt * ty2 * (u[i][j - 1][k][3] * tmp1);
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, dy4, b]
            WRITE_S: [b.f]*/
            b[i][j][3][3] = -dt * ty2 * (u[i][j - 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy4;
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][3][4] = 0.0;
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][4][0] = -dt * ty2 * ((0.40e+00 * (u[i][j - 1][k][1] * u[i][j - 1][k][1] + u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2 - 1.40e+00 * (u[i][j - 1][k][4] * tmp1)) * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j - 1][k][1]) * (u[i][j - 1][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j - 1][k][2]) * (u[i][j - 1][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j - 1][k][3]) * (u[i][j - 1][k][3]))) - c1345 * tmp2 * u[i][j - 1][k][4]);
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][4][1] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][1] * u[i][j - 1][k][2]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j - 1][k][1];
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][4][2] = -dt * ty2 * (1.40e+00 * (u[i][j - 1][k][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j - 1][k][1] * u[i][j - 1][k][1] + 3.0 * u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2)) - dt * ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j - 1][k][2];
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][4][3] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][2] * u[i][j - 1][k][3]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j - 1][k][3];
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, dy5, b]
            WRITE_S: [b.f]*/
            b[i][j][4][4] = -dt * ty2 * (1.40e+00 * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * c1345 * tmp1 - dt * ty1 * dy5;
            /*READ_S: [u, u.f]
            WRITE_S: []*/
            tmp1 = 1.0 / u[i - 1][j][k][0];
            /*READ_S: []
            WRITE_S: []*/
            tmp2 = tmp1 * tmp1;
            /*READ_S: []
            WRITE_S: []*/
            tmp3 = tmp1 * tmp2;
            /*READ_S: [c, c.f, dt, tx1, dx1]
            WRITE_S: [c.f]*/
            c[i][j][0][0] = -dt * tx1 * dx1;
            /*READ_S: [c, c.f, tx2, dt]
            WRITE_S: [c.f]*/
            c[i][j][0][1] = -dt * tx2;
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][0][2] = 0.0;
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][0][3] = 0.0;
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][0][4] = 0.0;
            /*READ_S: [c, c.f, tx2, u, dt, u.f, tx1]
            WRITE_S: [c.f]*/
            c[i][j][1][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * tmp1) * (u[i - 1][j][k][1] * tmp1) + 0.40e+00 * 0.50 * (u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2) - dt * tx1 * (-r43 * c34 * tmp2 * u[i - 1][j][k][1]);
            /*READ_S: [c, c.f, tx2, u, dt, u.f, tx1, dx2]
            WRITE_S: [c.f]*/
            c[i][j][1][1] = -dt * tx2 * ((2.0 - 0.40e+00) * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * (r43 * c34 * tmp1) - dt * tx1 * dx2;
            /*READ_S: [c, c.f, tx2, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][1][2] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][2] * tmp1));
            /*READ_S: [c, c.f, tx2, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][1][3] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][3] * tmp1));
            /*READ_S: [c, c.f, tx2, dt]
            WRITE_S: [c.f]*/
            c[i][j][1][4] = -dt * tx2 * 0.40e+00;
            /*READ_S: [c, c.f, tx2, u, dt, u.f, tx1]
            WRITE_S: [c.f]*/
            c[i][j][2][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * u[i - 1][j][k][2]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i - 1][j][k][2]);
            /*READ_S: [c, c.f, tx2, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][2][1] = -dt * tx2 * (u[i - 1][j][k][2] * tmp1);
            /*READ_S: [c, c.f, tx2, u, dt, u.f, tx1, dx3]
            WRITE_S: [c.f]*/
            c[i][j][2][2] = -dt * tx2 * (u[i - 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx3;
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][2][3] = 0.0;
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][2][4] = 0.0;
            /*READ_S: [c, c.f, tx2, u, dt, u.f, tx1]
            WRITE_S: [c.f]*/
            c[i][j][3][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * u[i - 1][j][k][3]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i - 1][j][k][3]);
            /*READ_S: [c, c.f, tx2, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][3][1] = -dt * tx2 * (u[i - 1][j][k][3] * tmp1);
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][3][2] = 0.0;
            /*READ_S: [c, c.f, tx2, u, dt, u.f, tx1, dx4]
            WRITE_S: [c.f]*/
            c[i][j][3][3] = -dt * tx2 * (u[i - 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx4;
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][3][4] = 0.0;
            /*READ_S: [c, c.f, tx2, u, dt, u.f, tx1]
            WRITE_S: [c.f]*/
            c[i][j][4][0] = -dt * tx2 * ((0.40e+00 * (u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2 - 1.40e+00 * (u[i - 1][j][k][4] * tmp1)) * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i - 1][j][k][1]) * (u[i - 1][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i - 1][j][k][2]) * (u[i - 1][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i - 1][j][k][3]) * (u[i - 1][j][k][3]))) - c1345 * tmp2 * u[i - 1][j][k][4]);
            /*READ_S: [c, c.f, tx2, u, dt, u.f, tx1]
            WRITE_S: [c.f]*/
            c[i][j][4][1] = -dt * tx2 * (1.40e+00 * (u[i - 1][j][k][4] * tmp1) - 0.50 * 0.40e+00 * ((3.0 * u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2)) - dt * tx1 * (r43 * c34 - c1345) * tmp2 * u[i - 1][j][k][1];
            /*READ_S: [c, c.f, tx2, u, dt, u.f, tx1]
            WRITE_S: [c.f]*/
            c[i][j][4][2] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][2] * u[i - 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i - 1][j][k][2];
            /*READ_S: [c, c.f, tx2, u, dt, u.f, tx1]
            WRITE_S: [c.f]*/
            c[i][j][4][3] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][3] * u[i - 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i - 1][j][k][3];
            /*READ_S: [c, c.f, tx2, u, dt, u.f, tx1, dx5]
            WRITE_S: [c.f]*/
            c[i][j][4][4] = -dt * tx2 * (1.40e+00 * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * c1345 * tmp1 - dt * tx1 * dx5;
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [b.f, c, ty1, tz1, d.f, tx1, a, ist, iend, u.f, dy4, dx4, dz2, dy2, dz4, dx2, i, tz2, c.f, d, tx2, ty2, a.f, b, jst, u, dt, dx3, dz5, dy5, dx5, dz1, dy1, dz3, dx1, dy3, jend]
WRITE_S: [b.f, c.f, d.f, a.f]*/
static void jacu(int k) {
/*READ_S: [b.f, c, ty1, tz1, d.f, tx1, a, ist, iend, u.f, dy4, dx4, dz2, dy2, dz4, dx2, i, tz2, c.f, d, tx2, ty2, a.f, b, jst, u, dt, dx3, dz5, dy5, dx5, dz1, dy1, dz3, dx1, dy3, jend]
WRITE_S: [b.f, c.f, d.f, a.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    double r43;
    /*READ_S: []
    WRITE_S: []*/
    double c1345;
    /*READ_S: []
    WRITE_S: []*/
    double c34;
    /*READ_S: []
    WRITE_S: []*/
    double tmp1;
    /*READ_S: []
    WRITE_S: []*/
    double tmp2;
    /*READ_S: []
    WRITE_S: []*/
    double tmp3;
    /*READ_S: []
    WRITE_S: []*/
    r43 = (4.0 / 3.0);
    /*READ_S: []
    WRITE_S: []*/
    c1345 = 1.40e+00 * 1.00e-01 * 1.00e+00 * 1.40e+00;
    /*READ_S: []
    WRITE_S: []*/
    c34 = 1.00e-01 * 1.00e+00;
    /*READ_S: [b.f, c, ty1, tz1, d.f, tx1, a, ist, iend, u.f, dy4, dx4, dz2, dy2, dz4, dx2, i, tz2, c.f, d, tx2, ty2, a.f, b, jst, u, dt, dx3, dz5, dy5, dx5, dz1, dy1, dz3, dx1, dy3, jend]
    WRITE_S: [b.f, c.f, d.f, a.f]*/
#pragma omp for nowait schedule(static)
    /*READ_S: [i, iend]
    WRITE_S: []*/
    /*READ_S: [ist]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = iend; i >= ist; i--) {
    /*READ_S: [b.f, c, ty1, tz1, d.f, tx1, a, u.f, dy4, dx4, dz2, dy2, dz4, dx2, tz2, c.f, d, tx2, ty2, a.f, b, jst, u, dt, dx3, dz5, dy5, dx5, dz1, dy1, dz3, dx1, dy3, jend]
    WRITE_S: [b.f, c.f, d.f, a.f]*/
        /*READ_S: [jend]
        WRITE_S: []*/
        /*READ_S: [jst]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [b.f, c, ty1, tz1, d.f, tx1, a, u.f, dy4, dx4, dz2, dy2, dz4, dx2, tz2, c.f, d, tx2, ty2, a.f, b, jst, u, dt, dx3, dz5, dy5, dx5, dz1, dy1, dz3, dx1, dy3, jend]
        WRITE_S: [b.f, c.f, d.f, a.f]*/
        for (j = jend; j >= jst; j--) {
        /*READ_S: [b.f, c, ty1, tz1, d.f, tx1, a, u.f, dy4, dx4, dz2, dy2, dz4, dx2, tz2, c.f, d, tx2, ty2, a.f, b, u, dt, dx3, dz5, dy5, dx5, dz1, dy1, dz3, dx1, dy3]
        WRITE_S: [b.f, c.f, d.f, a.f]*/
            /*READ_S: [u, u.f]
            WRITE_S: []*/
            tmp1 = 1.0 / u[i][j][k][0];
            /*READ_S: []
            WRITE_S: []*/
            tmp2 = tmp1 * tmp1;
            /*READ_S: []
            WRITE_S: []*/
            tmp3 = tmp1 * tmp2;
            /*READ_S: [ty1, d, tz1, d.f, dt, tx1, dz1, dy1, dx1]
            WRITE_S: [d.f]*/
            d[i][j][0][0] = 1.0 + dt * 2.0 * (tx1 * dx1 + ty1 * dy1 + tz1 * dz1);
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][0][1] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][0][2] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][0][3] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][0][4] = 0.0;
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][1][0] = dt * 2.0 * (tx1 * (-r43 * c34 * tmp2 * u[i][j][k][1]) + ty1 * (-c34 * tmp2 * u[i][j][k][1]) + tz1 * (-c34 * tmp2 * u[i][j][k][1]));
            /*READ_S: [ty1, d, tz1, d.f, dt, tx1, dz2, dy2, dx2]
            WRITE_S: [d.f]*/
            d[i][j][1][1] = 1.0 + dt * 2.0 * (tx1 * r43 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx2 + ty1 * dy2 + tz1 * dz2);
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][1][2] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][1][3] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][1][4] = 0.0;
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][2][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][2]) + ty1 * (-r43 * c34 * tmp2 * u[i][j][k][2]) + tz1 * (-c34 * tmp2 * u[i][j][k][2]));
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][2][1] = 0.0;
            /*READ_S: [ty1, d, tz1, d.f, dt, tx1, dx3, dz3, dy3]
            WRITE_S: [d.f]*/
            d[i][j][2][2] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * r43 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx3 + ty1 * dy3 + tz1 * dz3);
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][2][3] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][2][4] = 0.0;
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][3][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][3]) + ty1 * (-c34 * tmp2 * u[i][j][k][3]) + tz1 * (-r43 * c34 * tmp2 * u[i][j][k][3]));
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][3][1] = 0.0;
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][3][2] = 0.0;
            /*READ_S: [ty1, d, tz1, d.f, dt, tx1, dy4, dx4, dz4]
            WRITE_S: [d.f]*/
            d[i][j][3][3] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * r43 * c34 * tmp1) + dt * 2.0 * (tx1 * dx4 + ty1 * dy4 + tz1 * dz4);
            /*READ_S: [d, d.f]
            WRITE_S: [d.f]*/
            d[i][j][3][4] = 0.0;
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][4][0] = dt * 2.0 * (tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]));
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][4][1] = dt * 2.0 * (tx1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][1] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][1] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][1]);
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][4][2] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][2] + ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][2] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][2]);
            /*READ_S: [ty1, d, tz1, d.f, u, dt, tx1, u.f]
            WRITE_S: [d.f]*/
            d[i][j][4][3] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][3]);
            /*READ_S: [ty1, d, tz1, d.f, dt, tx1, dz5, dy5, dx5]
            WRITE_S: [d.f]*/
            d[i][j][4][4] = 1.0 + dt * 2.0 * (tx1 * c1345 * tmp1 + ty1 * c1345 * tmp1 + tz1 * c1345 * tmp1) + dt * 2.0 * (tx1 * dx5 + ty1 * dy5 + tz1 * dz5);
            /*READ_S: [u, u.f]
            WRITE_S: []*/
            tmp1 = 1.0 / u[i + 1][j][k][0];
            /*READ_S: []
            WRITE_S: []*/
            tmp2 = tmp1 * tmp1;
            /*READ_S: []
            WRITE_S: []*/
            tmp3 = tmp1 * tmp2;
            /*READ_S: [dt, tx1, a, a.f, dx1]
            WRITE_S: [a.f]*/
            a[i][j][0][0] = -dt * tx1 * dx1;
            /*READ_S: [tx2, dt, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][0][1] = dt * tx2;
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][0][2] = 0.0;
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][0][3] = 0.0;
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][0][4] = 0.0;
            /*READ_S: [tx2, u, dt, u.f, tx1, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][1][0] = dt * tx2 * (-(u[i + 1][j][k][1] * tmp1) * (u[i + 1][j][k][1] * tmp1) + 0.40e+00 * 0.50 * (u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2) - dt * tx1 * (-r43 * c34 * tmp2 * u[i + 1][j][k][1]);
            /*READ_S: [tx2, u, dt, u.f, tx1, a, a.f, dx2]
            WRITE_S: [a.f]*/
            a[i][j][1][1] = dt * tx2 * ((2.0 - 0.40e+00) * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * (r43 * c34 * tmp1) - dt * tx1 * dx2;
            /*READ_S: [tx2, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][1][2] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][2] * tmp1));
            /*READ_S: [tx2, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][1][3] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][3] * tmp1));
            /*READ_S: [tx2, dt, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][1][4] = dt * tx2 * 0.40e+00;
            /*READ_S: [tx2, u, dt, u.f, tx1, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][2][0] = dt * tx2 * (-(u[i + 1][j][k][1] * u[i + 1][j][k][2]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i + 1][j][k][2]);
            /*READ_S: [tx2, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][2][1] = dt * tx2 * (u[i + 1][j][k][2] * tmp1);
            /*READ_S: [tx2, u, dt, u.f, tx1, dx3, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][2][2] = dt * tx2 * (u[i + 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx3;
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][2][3] = 0.0;
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][2][4] = 0.0;
            /*READ_S: [tx2, u, dt, u.f, tx1, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][3][0] = dt * tx2 * (-(u[i + 1][j][k][1] * u[i + 1][j][k][3]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i + 1][j][k][3]);
            /*READ_S: [tx2, u, dt, u.f, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][3][1] = dt * tx2 * (u[i + 1][j][k][3] * tmp1);
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][3][2] = 0.0;
            /*READ_S: [tx2, u, dt, u.f, tx1, dx4, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][3][3] = dt * tx2 * (u[i + 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx4;
            /*READ_S: [a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][3][4] = 0.0;
            /*READ_S: [tx2, u, dt, u.f, tx1, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][4][0] = dt * tx2 * ((0.40e+00 * (u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2 - 1.40e+00 * (u[i + 1][j][k][4] * tmp1)) * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i + 1][j][k][1]) * (u[i + 1][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i + 1][j][k][2]) * (u[i + 1][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i + 1][j][k][3]) * (u[i + 1][j][k][3]))) - c1345 * tmp2 * u[i + 1][j][k][4]);
            /*READ_S: [tx2, u, dt, u.f, tx1, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][4][1] = dt * tx2 * (1.40e+00 * (u[i + 1][j][k][4] * tmp1) - 0.50 * 0.40e+00 * ((3.0 * u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2)) - dt * tx1 * (r43 * c34 - c1345) * tmp2 * u[i + 1][j][k][1];
            /*READ_S: [tx2, u, dt, u.f, tx1, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][4][2] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][2] * u[i + 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i + 1][j][k][2];
            /*READ_S: [tx2, u, dt, u.f, tx1, a, a.f]
            WRITE_S: [a.f]*/
            a[i][j][4][3] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][3] * u[i + 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i + 1][j][k][3];
            /*READ_S: [tx2, u, dt, u.f, tx1, a, dx5, a.f]
            WRITE_S: [a.f]*/
            a[i][j][4][4] = dt * tx2 * (1.40e+00 * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * c1345 * tmp1 - dt * tx1 * dx5;
            /*READ_S: [u, u.f]
            WRITE_S: []*/
            tmp1 = 1.0 / u[i][j + 1][k][0];
            /*READ_S: []
            WRITE_S: []*/
            tmp2 = tmp1 * tmp1;
            /*READ_S: []
            WRITE_S: []*/
            tmp3 = tmp1 * tmp2;
            /*READ_S: [b.f, ty1, dt, b, dy1]
            WRITE_S: [b.f]*/
            b[i][j][0][0] = -dt * ty1 * dy1;
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][0][1] = 0.0;
            /*READ_S: [b.f, dt, ty2, b]
            WRITE_S: [b.f]*/
            b[i][j][0][2] = dt * ty2;
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][0][3] = 0.0;
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][0][4] = 0.0;
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][1][0] = dt * ty2 * (-(u[i][j + 1][k][1] * u[i][j + 1][k][2]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j + 1][k][1]);
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b, dy2]
            WRITE_S: [b.f]*/
            b[i][j][1][1] = dt * ty2 * (u[i][j + 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy2;
            /*READ_S: [b.f, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][1][2] = dt * ty2 * (u[i][j + 1][k][1] * tmp1);
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][1][3] = 0.0;
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][1][4] = 0.0;
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][2][0] = dt * ty2 * (-(u[i][j + 1][k][2] * tmp1) * (u[i][j + 1][k][2] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j + 1][k][1] * u[i][j + 1][k][1] + u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2)) - dt * ty1 * (-r43 * c34 * tmp2 * u[i][j + 1][k][2]);
            /*READ_S: [b.f, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][2][1] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][1] * tmp1));
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b, dy3]
            WRITE_S: [b.f]*/
            b[i][j][2][2] = dt * ty2 * ((2.0 - 0.40e+00) * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * (r43 * c34 * tmp1) - dt * ty1 * dy3;
            /*READ_S: [b.f, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][2][3] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][3] * tmp1));
            /*READ_S: [b.f, dt, ty2, b]
            WRITE_S: [b.f]*/
            b[i][j][2][4] = dt * ty2 * 0.40e+00;
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][3][0] = dt * ty2 * (-(u[i][j + 1][k][2] * u[i][j + 1][k][3]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j + 1][k][3]);
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][3][1] = 0.0;
            /*READ_S: [b.f, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][3][2] = dt * ty2 * (u[i][j + 1][k][3] * tmp1);
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, dy4, b]
            WRITE_S: [b.f]*/
            b[i][j][3][3] = dt * ty2 * (u[i][j + 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy4;
            /*READ_S: [b.f, b]
            WRITE_S: [b.f]*/
            b[i][j][3][4] = 0.0;
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][4][0] = dt * ty2 * ((0.40e+00 * (u[i][j + 1][k][1] * u[i][j + 1][k][1] + u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2 - 1.40e+00 * (u[i][j + 1][k][4] * tmp1)) * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j + 1][k][1]) * (u[i][j + 1][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j + 1][k][2]) * (u[i][j + 1][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j + 1][k][3]) * (u[i][j + 1][k][3]))) - c1345 * tmp2 * u[i][j + 1][k][4]);
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][4][1] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][1] * u[i][j + 1][k][2]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j + 1][k][1];
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][4][2] = dt * ty2 * (1.40e+00 * (u[i][j + 1][k][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j + 1][k][1] * u[i][j + 1][k][1] + 3.0 * u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2)) - dt * ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j + 1][k][2];
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, b]
            WRITE_S: [b.f]*/
            b[i][j][4][3] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][2] * u[i][j + 1][k][3]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j + 1][k][3];
            /*READ_S: [b.f, ty1, u, dt, ty2, u.f, dy5, b]
            WRITE_S: [b.f]*/
            b[i][j][4][4] = dt * ty2 * (1.40e+00 * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * c1345 * tmp1 - dt * ty1 * dy5;
            /*READ_S: [u, u.f]
            WRITE_S: []*/
            tmp1 = 1.0 / u[i][j][k + 1][0];
            /*READ_S: []
            WRITE_S: []*/
            tmp2 = tmp1 * tmp1;
            /*READ_S: []
            WRITE_S: []*/
            tmp3 = tmp1 * tmp2;
            /*READ_S: [c, c.f, tz1, dt, dz1]
            WRITE_S: [c.f]*/
            c[i][j][0][0] = -dt * tz1 * dz1;
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][0][1] = 0.0;
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][0][2] = 0.0;
            /*READ_S: [c, tz2, c.f, dt]
            WRITE_S: [c.f]*/
            c[i][j][0][3] = dt * tz2;
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][0][4] = 0.0;
            /*READ_S: [c, tz2, c.f, tz1, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][1][0] = dt * tz2 * (-(u[i][j][k + 1][1] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k + 1][1]);
            /*READ_S: [c, tz2, c.f, tz1, u, dt, u.f, dz2]
            WRITE_S: [c.f]*/
            c[i][j][1][1] = dt * tz2 * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * c34 * tmp1 - dt * tz1 * dz2;
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][1][2] = 0.0;
            /*READ_S: [c, tz2, c.f, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][1][3] = dt * tz2 * (u[i][j][k + 1][1] * tmp1);
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][1][4] = 0.0;
            /*READ_S: [c, tz2, c.f, tz1, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][2][0] = dt * tz2 * (-(u[i][j][k + 1][2] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k + 1][2]);
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][2][1] = 0.0;
            /*READ_S: [c, tz2, c.f, tz1, u, dt, u.f, dz3]
            WRITE_S: [c.f]*/
            c[i][j][2][2] = dt * tz2 * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * (c34 * tmp1) - dt * tz1 * dz3;
            /*READ_S: [c, tz2, c.f, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][2][3] = dt * tz2 * (u[i][j][k + 1][2] * tmp1);
            /*READ_S: [c, c.f]
            WRITE_S: [c.f]*/
            c[i][j][2][4] = 0.0;
            /*READ_S: [c, tz2, c.f, tz1, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][3][0] = dt * tz2 * (-(u[i][j][k + 1][3] * tmp1) * (u[i][j][k + 1][3] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2)) - dt * tz1 * (-r43 * c34 * tmp2 * u[i][j][k + 1][3]);
            /*READ_S: [c, tz2, c.f, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][3][1] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][1] * tmp1));
            /*READ_S: [c, tz2, c.f, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][3][2] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][2] * tmp1));
            /*READ_S: [c, tz2, c.f, tz1, u, dt, u.f, dz4]
            WRITE_S: [c.f]*/
            c[i][j][3][3] = dt * tz2 * (2.0 - 0.40e+00) * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * (r43 * c34 * tmp1) - dt * tz1 * dz4;
            /*READ_S: [c, tz2, c.f, dt]
            WRITE_S: [c.f]*/
            c[i][j][3][4] = dt * tz2 * 0.40e+00;
            /*READ_S: [c, tz2, c.f, tz1, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][4][0] = dt * tz2 * ((0.40e+00 * (u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2 - 1.40e+00 * (u[i][j][k + 1][4] * tmp1)) * (u[i][j][k + 1][3] * tmp1)) - dt * tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k + 1][1]) * (u[i][j][k + 1][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k + 1][2]) * (u[i][j][k + 1][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k + 1][3]) * (u[i][j][k + 1][3]))) - c1345 * tmp2 * u[i][j][k + 1][4]);
            /*READ_S: [c, tz2, c.f, tz1, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][4][1] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][1] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k + 1][1];
            /*READ_S: [c, tz2, c.f, tz1, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][4][2] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][2] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k + 1][2];
            /*READ_S: [c, tz2, c.f, tz1, u, dt, u.f]
            WRITE_S: [c.f]*/
            c[i][j][4][3] = dt * tz2 * (1.40e+00 * (u[i][j][k + 1][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + 3.0 * u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2)) - dt * tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k + 1][3];
            /*READ_S: [c, tz2, c.f, tz1, u, dt, u.f, dz5]
            WRITE_S: [c.f]*/
            c[i][j][4][4] = dt * tz2 * (1.40e+00 * (u[i][j][k + 1][3] * tmp1)) - dt * tz1 * c1345 * tmp1 - dt * tz1 * dz5;
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [jst, ny0, nx0, nz0, i, v, sqrt, sum, rsdnm.f, iend, ist, delunm.f, rsd.f, jend]
WRITE_S: [delunm.f, rsdnm.f]*/
static void l2norm(int nx0, int ny0 , int nz0 , int ist , int iend , int jst , int jend , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double sum[5]) {
/*READ_S: [jst, ny0, nx0, nz0, i, v, sqrt, sum, rsdnm.f, iend, ist, delunm.f, rsd.f, jend]
WRITE_S: [delunm.f, rsdnm.f]*/
    /*READ_S: [jst, ny0, nx0, nz0, i, v, sqrt, sum, rsdnm.f, iend, ist, delunm.f, rsd.f, jend]
    WRITE_S: [delunm.f, rsdnm.f]*/
#pragma omp parallel
    {
    /*READ_S: [jst, ny0, nx0, nz0, i, v, sqrt, sum, rsdnm.f, iend, ist, delunm.f, rsd.f, jend]
    WRITE_S: [delunm.f, rsdnm.f]*/
        /*READ_S: []
        WRITE_S: []*/
        int i;
        /*READ_S: []
        WRITE_S: []*/
        int j;
        /*READ_S: []
        WRITE_S: []*/
        int k;
        /*READ_S: []
        WRITE_S: []*/
        int m;
        /*READ_S: []
        WRITE_S: []*/
        double sum0 = 0.0;
        /*READ_S: []
        WRITE_S: []*/
        double sum1 = 0.0;
        /*READ_S: []
        WRITE_S: []*/
        double sum2 = 0.0;
        /*READ_S: []
        WRITE_S: []*/
        double sum3 = 0.0;
        /*READ_S: []
        WRITE_S: []*/
        double sum4 = 0.0;
        /*READ_S: [sum]
        WRITE_S: [delunm.f, rsdnm.f]*/
#pragma omp single nowait
        {
        /*READ_S: [sum]
        WRITE_S: [delunm.f, rsdnm.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [sum]
            WRITE_S: [delunm.f, rsdnm.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [sum]
            WRITE_S: [delunm.f, rsdnm.f]*/
                /*READ_S: [sum]
                WRITE_S: [delunm.f, rsdnm.f]*/
                sum[m] = 0.0;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [jst, nz0, i, v, rsd.f, jend, iend, ist]
        WRITE_S: []*/
#pragma omp for nowait
        /*READ_S: [i, ist]
        WRITE_S: []*/
        /*READ_S: [iend]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = ist; i <= iend; i++) {
        /*READ_S: [jst, nz0, v, rsd.f, jend]
        WRITE_S: []*/
            /*READ_S: [jst]
            WRITE_S: []*/
            /*READ_S: [jend]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [jst, nz0, v, rsd.f, jend]
            WRITE_S: []*/
            for (j = jst; j <= jend; j++) {
            /*READ_S: [nz0, v, rsd.f]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz0]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz0, v, rsd.f]
                WRITE_S: []*/
                for (k = 1; k <= nz0 - 2; k++) {
                /*READ_S: [v, rsd.f]
                WRITE_S: []*/
                    /*READ_S: [v, rsd.f]
                    WRITE_S: []*/
                    sum0 = sum0 + v[i][j][k][0] * v[i][j][k][0];
                    /*READ_S: [v, rsd.f]
                    WRITE_S: []*/
                    sum1 = sum1 + v[i][j][k][1] * v[i][j][k][1];
                    /*READ_S: [v, rsd.f]
                    WRITE_S: []*/
                    sum2 = sum2 + v[i][j][k][2] * v[i][j][k][2];
                    /*READ_S: [v, rsd.f]
                    WRITE_S: []*/
                    sum3 = sum3 + v[i][j][k][3] * v[i][j][k][3];
                    /*READ_S: [v, rsd.f]
                    WRITE_S: []*/
                    sum4 = sum4 + v[i][j][k][4] * v[i][j][k][4];
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush CRITICAL_START
        /*READ_S: [delunm.f, sum, rsdnm.f]
        WRITE_S: [delunm.f, rsdnm.f]*/
#pragma omp critical
        {
        /*READ_S: [delunm.f, sum, rsdnm.f]
        WRITE_S: [delunm.f, rsdnm.f]*/
            /*READ_S: [delunm.f, sum, rsdnm.f]
            WRITE_S: [delunm.f, rsdnm.f]*/
            sum[0] += sum0;
            /*READ_S: [delunm.f, sum, rsdnm.f]
            WRITE_S: [delunm.f, rsdnm.f]*/
            sum[1] += sum1;
            /*READ_S: [delunm.f, sum, rsdnm.f]
            WRITE_S: [delunm.f, rsdnm.f]*/
            sum[2] += sum2;
            /*READ_S: [delunm.f, sum, rsdnm.f]
            WRITE_S: [delunm.f, rsdnm.f]*/
            sum[3] += sum3;
            /*READ_S: [delunm.f, sum, rsdnm.f]
            WRITE_S: [delunm.f, rsdnm.f]*/
            sum[4] += sum4;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush CRITICAL_END
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [ny0, nx0, delunm.f, nz0, sqrt, sum, rsdnm.f]
        WRITE_S: [delunm.f, rsdnm.f]*/
#pragma omp single nowait
        {
        /*READ_S: [ny0, nx0, delunm.f, nz0, sqrt, sum, rsdnm.f]
        WRITE_S: [delunm.f, rsdnm.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ny0, nx0, delunm.f, nz0, sqrt, sum, rsdnm.f]
            WRITE_S: [delunm.f, rsdnm.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [ny0, nx0, delunm.f, nz0, sqrt, sum, rsdnm.f]
            WRITE_S: [delunm.f, rsdnm.f]*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre154;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre155;
                /*READ_S: [ny0, nx0, delunm.f, nz0, sum, rsdnm.f]
                WRITE_S: []*/
                _imopVarPre154 = sum[m] / ((nx0 - 2) * (ny0 - 2) * (nz0 - 2));
                /*READ_S: [sqrt]
                WRITE_S: []*/
                _imopVarPre155 = sqrt(_imopVarPre154);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [sum]
                WRITE_S: [delunm.f, rsdnm.f]*/
                sum[m] = _imopVarPre155;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [ii1, ji1, ii2, dxi, ki2, ki1, dzeta, ji2, deta, _imopVarPre165, _imopVarPre167, u, u.f, _imopVarPre169, _imopVarPre157, _imopVarPre159, nx, _imopVarPre161, _imopVarPre171, ny, _imopVarPre163]
WRITE_S: [frc]*/
static void pintgr(void ) {
/*READ_S: [ii1, ji1, ii2, dxi, ki2, ki1, dzeta, ji2, deta, _imopVarPre165, _imopVarPre167, u, u.f, _imopVarPre169, _imopVarPre157, _imopVarPre159, nx, _imopVarPre161, _imopVarPre171, ny, _imopVarPre163]
WRITE_S: [frc]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int ibeg;
    /*READ_S: []
    WRITE_S: []*/
    int ifin;
    /*READ_S: []
    WRITE_S: []*/
    int ifin1;
    /*READ_S: []
    WRITE_S: []*/
    int jbeg;
    /*READ_S: []
    WRITE_S: []*/
    int jfin;
    /*READ_S: []
    WRITE_S: []*/
    int jfin1;
    /*READ_S: []
    WRITE_S: []*/
    int iglob;
    /*READ_S: []
    WRITE_S: []*/
    int iglob1;
    /*READ_S: []
    WRITE_S: []*/
    int iglob2;
    /*READ_S: []
    WRITE_S: []*/
    int jglob;
    /*READ_S: []
    WRITE_S: []*/
    int jglob1;
    /*READ_S: []
    WRITE_S: []*/
    int jglob2;
    /*READ_S: []
    WRITE_S: []*/
    double phi1[12 + 2][12 + 2];
    /*READ_S: []
    WRITE_S: []*/
    double phi2[12 + 2][12 + 2];
    /*READ_S: []
    WRITE_S: []*/
    double frc1;
    /*READ_S: []
    WRITE_S: []*/
    double frc2;
    /*READ_S: []
    WRITE_S: []*/
    double frc3;
    /*READ_S: [nx]
    WRITE_S: []*/
    ibeg = nx;
    /*READ_S: []
    WRITE_S: []*/
    ifin = 0;
    /*READ_S: []
    WRITE_S: []*/
    iglob1 = -1;
    /*READ_S: [nx]
    WRITE_S: []*/
    iglob2 = nx - 1;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre157;
    /*READ_S: [ii1]
    WRITE_S: []*/
    _imopVarPre157 = iglob1 >= ii1;
    /*READ_S: [_imopVarPre157]
    WRITE_S: []*/
    /*READ_S: [ii2, _imopVarPre157, nx]
    WRITE_S: []*/
    if (_imopVarPre157) {
    /*READ_S: [ii2, nx]
    WRITE_S: []*/
        /*READ_S: [ii2, nx]
        WRITE_S: []*/
        _imopVarPre157 = iglob2 < ii2 + nx;
    }
    /*READ_S: [_imopVarPre157]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre157]
    WRITE_S: []*/
    if (_imopVarPre157) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        ibeg = 0;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre159;
    /*READ_S: [ii1, nx]
    WRITE_S: []*/
    _imopVarPre159 = iglob1 >= ii1 - nx;
    /*READ_S: [_imopVarPre159]
    WRITE_S: []*/
    /*READ_S: [ii2, _imopVarPre159]
    WRITE_S: []*/
    if (_imopVarPre159) {
    /*READ_S: [ii2]
    WRITE_S: []*/
        /*READ_S: [ii2]
        WRITE_S: []*/
        _imopVarPre159 = iglob2 <= ii2;
    }
    /*READ_S: [_imopVarPre159]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre159, nx]
    WRITE_S: []*/
    if (_imopVarPre159) {
    /*READ_S: [nx]
    WRITE_S: []*/
        /*READ_S: [nx]
        WRITE_S: []*/
        ifin = nx;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre161;
    /*READ_S: [ii1]
    WRITE_S: []*/
    _imopVarPre161 = ii1 >= iglob1;
    /*READ_S: [_imopVarPre161]
    WRITE_S: []*/
    /*READ_S: [ii1, _imopVarPre161]
    WRITE_S: []*/
    if (_imopVarPre161) {
    /*READ_S: [ii1]
    WRITE_S: []*/
        /*READ_S: [ii1]
        WRITE_S: []*/
        _imopVarPre161 = ii1 <= iglob2;
    }
    /*READ_S: [_imopVarPre161]
    WRITE_S: []*/
    /*READ_S: [ii1, _imopVarPre161]
    WRITE_S: []*/
    if (_imopVarPre161) {
    /*READ_S: [ii1]
    WRITE_S: []*/
        /*READ_S: [ii1]
        WRITE_S: []*/
        ibeg = ii1;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre163;
    /*READ_S: [ii2]
    WRITE_S: []*/
    _imopVarPre163 = ii2 >= iglob1;
    /*READ_S: [_imopVarPre163]
    WRITE_S: []*/
    /*READ_S: [ii2, _imopVarPre163]
    WRITE_S: []*/
    if (_imopVarPre163) {
    /*READ_S: [ii2]
    WRITE_S: []*/
        /*READ_S: [ii2]
        WRITE_S: []*/
        _imopVarPre163 = ii2 <= iglob2;
    }
    /*READ_S: [_imopVarPre163]
    WRITE_S: []*/
    /*READ_S: [ii2, _imopVarPre163]
    WRITE_S: []*/
    if (_imopVarPre163) {
    /*READ_S: [ii2]
    WRITE_S: []*/
        /*READ_S: [ii2]
        WRITE_S: []*/
        ifin = ii2;
    }
    /*READ_S: [ny]
    WRITE_S: []*/
    jbeg = ny;
    /*READ_S: []
    WRITE_S: []*/
    jfin = -1;
    /*READ_S: []
    WRITE_S: []*/
    jglob1 = 0;
    /*READ_S: [ny]
    WRITE_S: []*/
    jglob2 = ny - 1;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre165;
    /*READ_S: [ji1]
    WRITE_S: []*/
    _imopVarPre165 = jglob1 >= ji1;
    /*READ_S: [_imopVarPre165]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre165, ji2, ny]
    WRITE_S: []*/
    if (_imopVarPre165) {
    /*READ_S: [ji2, ny]
    WRITE_S: []*/
        /*READ_S: [ji2, ny]
        WRITE_S: []*/
        _imopVarPre165 = jglob2 < ji2 + ny;
    }
    /*READ_S: [_imopVarPre165]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre165]
    WRITE_S: []*/
    if (_imopVarPre165) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        jbeg = 0;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre167;
    /*READ_S: [ji1, ny]
    WRITE_S: []*/
    _imopVarPre167 = jglob1 > ji1 - ny;
    /*READ_S: [_imopVarPre167]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre167, ji2]
    WRITE_S: []*/
    if (_imopVarPre167) {
    /*READ_S: [ji2]
    WRITE_S: []*/
        /*READ_S: [ji2]
        WRITE_S: []*/
        _imopVarPre167 = jglob2 <= ji2;
    }
    /*READ_S: [_imopVarPre167]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre167, ny]
    WRITE_S: []*/
    if (_imopVarPre167) {
    /*READ_S: [ny]
    WRITE_S: []*/
        /*READ_S: [ny]
        WRITE_S: []*/
        jfin = ny;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre169;
    /*READ_S: [ji1]
    WRITE_S: []*/
    _imopVarPre169 = ji1 >= jglob1;
    /*READ_S: [_imopVarPre169]
    WRITE_S: []*/
    /*READ_S: [ji1, _imopVarPre169]
    WRITE_S: []*/
    if (_imopVarPre169) {
    /*READ_S: [ji1]
    WRITE_S: []*/
        /*READ_S: [ji1]
        WRITE_S: []*/
        _imopVarPre169 = ji1 <= jglob2;
    }
    /*READ_S: [_imopVarPre169]
    WRITE_S: []*/
    /*READ_S: [ji1, _imopVarPre169]
    WRITE_S: []*/
    if (_imopVarPre169) {
    /*READ_S: [ji1]
    WRITE_S: []*/
        /*READ_S: [ji1]
        WRITE_S: []*/
        jbeg = ji1;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre171;
    /*READ_S: [ji2]
    WRITE_S: []*/
    _imopVarPre171 = ji2 >= jglob1;
    /*READ_S: [_imopVarPre171]
    WRITE_S: []*/
    /*READ_S: [ji2, _imopVarPre171]
    WRITE_S: []*/
    if (_imopVarPre171) {
    /*READ_S: [ji2]
    WRITE_S: []*/
        /*READ_S: [ji2]
        WRITE_S: []*/
        _imopVarPre171 = ji2 <= jglob2;
    }
    /*READ_S: [_imopVarPre171]
    WRITE_S: []*/
    /*READ_S: [ji2, _imopVarPre171]
    WRITE_S: []*/
    if (_imopVarPre171) {
    /*READ_S: [ji2]
    WRITE_S: []*/
        /*READ_S: [ji2]
        WRITE_S: []*/
        jfin = ji2;
    }
    /*READ_S: []
    WRITE_S: []*/
    ifin1 = ifin;
    /*READ_S: []
    WRITE_S: []*/
    jfin1 = jfin;
    /*READ_S: [ii2]
    WRITE_S: []*/
    /*READ_S: [ii2]
    WRITE_S: []*/
    if (ifin1 == ii2) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        ifin1 = ifin - 1;
    }
    /*READ_S: [ji2]
    WRITE_S: []*/
    /*READ_S: [ji2]
    WRITE_S: []*/
    if (jfin1 == ji2) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        jfin1 = jfin - 1;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i <= 12 + 1; i++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (k = 0; k <= 12 + 1; k++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            phi1[i][k] = 0.0;
            /*READ_S: []
            WRITE_S: []*/
            phi2[i][k] = 0.0;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [u, u.f, ki2, ki1]
    WRITE_S: []*/
    for (i = ibeg; i <= ifin; i++) {
    /*READ_S: [u, u.f, ki2, ki1]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        iglob = i;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u, u.f, ki2, ki1]
        WRITE_S: []*/
        for (j = jbeg; j <= jfin; j++) {
        /*READ_S: [u, u.f, ki2, ki1]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            jglob = j;
            /*READ_S: [ki1]
            WRITE_S: []*/
            k = ki1;
            /*READ_S: [u, u.f]
            WRITE_S: []*/
            phi1[i][j] = 0.40e+00 * (u[i][j][k][4] - 0.50 * (((u[i][j][k][1]) * (u[i][j][k][1])) + ((u[i][j][k][2]) * (u[i][j][k][2])) + ((u[i][j][k][3]) * (u[i][j][k][3]))) / u[i][j][k][0]);
            /*READ_S: [ki2]
            WRITE_S: []*/
            k = ki2;
            /*READ_S: [u, u.f]
            WRITE_S: []*/
            phi2[i][j] = 0.40e+00 * (u[i][j][k][4] - 0.50 * (((u[i][j][k][1]) * (u[i][j][k][1])) + ((u[i][j][k][2]) * (u[i][j][k][2])) + ((u[i][j][k][3]) * (u[i][j][k][3]))) / u[i][j][k][0]);
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    frc1 = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = ibeg; i <= ifin1; i++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = jbeg; j <= jfin1; j++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            frc1 = frc1 + (phi1[i][j] + phi1[i + 1][j] + phi1[i][j + 1] + phi1[i + 1][j + 1] + phi2[i][j] + phi2[i + 1][j] + phi2[i][j + 1] + phi2[i + 1][j + 1]);
        }
    }
    /*READ_S: [dxi, deta]
    WRITE_S: []*/
    frc1 = dxi * deta * frc1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i <= 12 + 1; i++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (k = 0; k <= 12 + 1; k++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            phi1[i][k] = 0.0;
            /*READ_S: []
            WRITE_S: []*/
            phi2[i][k] = 0.0;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    jglob = jbeg;
    /*READ_S: [ji1]
    WRITE_S: []*/
    /*READ_S: [ji1, u, u.f, ki2, ki1]
    WRITE_S: []*/
    if (jglob == ji1) {
    /*READ_S: [u, u.f, ki2, ki1]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u, u.f, ki2, ki1]
        WRITE_S: []*/
        for (i = ibeg; i <= ifin; i++) {
        /*READ_S: [u, u.f, ki2, ki1]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            iglob = i;
            /*READ_S: [ki1]
            WRITE_S: []*/
            /*READ_S: [ki2]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u, u.f, ki2, ki1]
            WRITE_S: []*/
            for (k = ki1; k <= ki2; k++) {
            /*READ_S: [u, u.f]
            WRITE_S: []*/
                /*READ_S: [u, u.f]
                WRITE_S: []*/
                phi1[i][k] = 0.40e+00 * (u[i][jbeg][k][4] - 0.50 * (((u[i][jbeg][k][1]) * (u[i][jbeg][k][1])) + ((u[i][jbeg][k][2]) * (u[i][jbeg][k][2])) + ((u[i][jbeg][k][3]) * (u[i][jbeg][k][3]))) / u[i][jbeg][k][0]);
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    jglob = jfin;
    /*READ_S: [ji2]
    WRITE_S: []*/
    /*READ_S: [u, u.f, ki2, ki1, ji2]
    WRITE_S: []*/
    if (jglob == ji2) {
    /*READ_S: [u, u.f, ki2, ki1]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u, u.f, ki2, ki1]
        WRITE_S: []*/
        for (i = ibeg; i <= ifin; i++) {
        /*READ_S: [u, u.f, ki2, ki1]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            iglob = i;
            /*READ_S: [ki1]
            WRITE_S: []*/
            /*READ_S: [ki2]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u, u.f, ki2, ki1]
            WRITE_S: []*/
            for (k = ki1; k <= ki2; k++) {
            /*READ_S: [u, u.f]
            WRITE_S: []*/
                /*READ_S: [u, u.f]
                WRITE_S: []*/
                phi2[i][k] = 0.40e+00 * (u[i][jfin][k][4] - 0.50 * (((u[i][jfin][k][1]) * (u[i][jfin][k][1])) + ((u[i][jfin][k][2]) * (u[i][jfin][k][2])) + ((u[i][jfin][k][3]) * (u[i][jfin][k][3]))) / u[i][jfin][k][0]);
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    frc2 = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ki2, ki1]
    WRITE_S: []*/
    for (i = ibeg; i <= ifin1; i++) {
    /*READ_S: [ki2, ki1]
    WRITE_S: []*/
        /*READ_S: [ki1]
        WRITE_S: []*/
        /*READ_S: [ki2]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ki2, ki1]
        WRITE_S: []*/
        for (k = ki1; k <= ki2 - 1; k++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            frc2 = frc2 + (phi1[i][k] + phi1[i + 1][k] + phi1[i][k + 1] + phi1[i + 1][k + 1] + phi2[i][k] + phi2[i + 1][k] + phi2[i][k + 1] + phi2[i + 1][k + 1]);
        }
    }
    /*READ_S: [dxi, dzeta]
    WRITE_S: []*/
    frc2 = dxi * dzeta * frc2;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i <= 12 + 1; i++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (k = 0; k <= 12 + 1; k++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            phi1[i][k] = 0.0;
            /*READ_S: []
            WRITE_S: []*/
            phi2[i][k] = 0.0;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    iglob = ibeg;
    /*READ_S: [ii1]
    WRITE_S: []*/
    /*READ_S: [ii1, u, u.f, ki2, ki1]
    WRITE_S: []*/
    if (iglob == ii1) {
    /*READ_S: [u, u.f, ki2, ki1]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u, u.f, ki2, ki1]
        WRITE_S: []*/
        for (j = jbeg; j <= jfin; j++) {
        /*READ_S: [u, u.f, ki2, ki1]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            jglob = j;
            /*READ_S: [ki1]
            WRITE_S: []*/
            /*READ_S: [ki2]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u, u.f, ki2, ki1]
            WRITE_S: []*/
            for (k = ki1; k <= ki2; k++) {
            /*READ_S: [u, u.f]
            WRITE_S: []*/
                /*READ_S: [u, u.f]
                WRITE_S: []*/
                phi1[j][k] = 0.40e+00 * (u[ibeg][j][k][4] - 0.50 * (((u[ibeg][j][k][1]) * (u[ibeg][j][k][1])) + ((u[ibeg][j][k][2]) * (u[ibeg][j][k][2])) + ((u[ibeg][j][k][3]) * (u[ibeg][j][k][3]))) / u[ibeg][j][k][0]);
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    iglob = ifin;
    /*READ_S: [ii2]
    WRITE_S: []*/
    /*READ_S: [ii2, u, u.f, ki2, ki1]
    WRITE_S: []*/
    if (iglob == ii2) {
    /*READ_S: [u, u.f, ki2, ki1]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u, u.f, ki2, ki1]
        WRITE_S: []*/
        for (j = jbeg; j <= jfin; j++) {
        /*READ_S: [u, u.f, ki2, ki1]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            jglob = j;
            /*READ_S: [ki1]
            WRITE_S: []*/
            /*READ_S: [ki2]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u, u.f, ki2, ki1]
            WRITE_S: []*/
            for (k = ki1; k <= ki2; k++) {
            /*READ_S: [u, u.f]
            WRITE_S: []*/
                /*READ_S: [u, u.f]
                WRITE_S: []*/
                phi2[j][k] = 0.40e+00 * (u[ifin][j][k][4] - 0.50 * (((u[ifin][j][k][1]) * (u[ifin][j][k][1])) + ((u[ifin][j][k][2]) * (u[ifin][j][k][2])) + ((u[ifin][j][k][3]) * (u[ifin][j][k][3]))) / u[ifin][j][k][0]);
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    frc3 = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ki2, ki1]
    WRITE_S: []*/
    for (j = jbeg; j <= jfin1; j++) {
    /*READ_S: [ki2, ki1]
    WRITE_S: []*/
        /*READ_S: [ki1]
        WRITE_S: []*/
        /*READ_S: [ki2]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ki2, ki1]
        WRITE_S: []*/
        for (k = ki1; k <= ki2 - 1; k++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            frc3 = frc3 + (phi1[j][k] + phi1[j + 1][k] + phi1[j][k + 1] + phi1[j + 1][k + 1] + phi2[j][k] + phi2[j + 1][k] + phi2[j][k + 1] + phi2[j + 1][k + 1]);
        }
    }
    /*READ_S: [dzeta, deta]
    WRITE_S: []*/
    frc3 = deta * dzeta * frc3;
    /*READ_S: []
    WRITE_S: [frc]*/
    frc = 0.25 * (frc1 + frc2 + frc3);
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [&itmax, &ipr, itmax, printf, ipr, &nz0, nz0, &ny0, ny0, &nx0, nx0, omega, &omega, tolrsd, fgetc, fscanf, fclose, exit, _imopVarPre236, _imopVarPre234, nullCell, &inorm, &dt, dt, inorm, fopen, tolrsd.f]
WRITE_S: [inorm, dt, nz0, ny0, nx0, omega, itmax, tolrsd.f, nullCell, ipr]*/
static void read_input(void ) {
/*READ_S: [&itmax, &ipr, itmax, printf, ipr, &nz0, nz0, &ny0, ny0, &nx0, nx0, omega, &omega, tolrsd, fgetc, fscanf, fclose, exit, _imopVarPre236, _imopVarPre234, nullCell, &inorm, &dt, dt, inorm, fopen, tolrsd.f]
WRITE_S: [inorm, dt, nz0, ny0, nx0, omega, itmax, tolrsd.f, nullCell, ipr]*/
    /*READ_S: []
    WRITE_S: []*/
    FILE *fp;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - LU Benchmark\n\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fopen]
    WRITE_S: []*/
    fp = fopen("inputlu.data", "r");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fclose, &itmax, &ipr, itmax, printf, nullCell, ipr, &inorm, &dt, dt, inorm, &nz0, nz0, &ny0, ny0, &nx0, nx0, omega, tolrsd.f, &omega, tolrsd, fgetc, fscanf]
    WRITE_S: [inorm, dt, nz0, ny0, nx0, omega, itmax, tolrsd.f, nullCell, ipr]*/
    if (fp != ((void *) 0)) {
    /*READ_S: [fclose, &itmax, &ipr, itmax, printf, nullCell, ipr, &inorm, &dt, dt, inorm, &nz0, nz0, &ny0, ny0, &nx0, nx0, omega, tolrsd.f, &omega, tolrsd, fgetc, fscanf]
    WRITE_S: [dt, inorm, nz0, ny0, nx0, omega, tolrsd.f, itmax, nullCell, ipr]*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Reading from input file inputlu.data\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre173;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre173 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre173 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre173 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre175;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre175 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre175 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre175 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre178;
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre179;
        /*READ_S: [&inorm]
        WRITE_S: []*/
        _imopVarPre178 = &inorm;
        /*READ_S: [&ipr]
        WRITE_S: []*/
        _imopVarPre179 = &ipr;
        /*READ_S: [inorm, nullCell, fscanf, ipr]
        WRITE_S: [inorm, nullCell, ipr]*/
        fscanf(fp, "%d%d", _imopVarPre179, _imopVarPre178);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre181;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre181 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre181 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre181 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre183;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre183 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre183 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre183 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre185;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre185 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre185 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre185 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre187;
        /*READ_S: [&itmax]
        WRITE_S: []*/
        _imopVarPre187 = &itmax;
        /*READ_S: [itmax, nullCell, fscanf]
        WRITE_S: [itmax, nullCell]*/
        fscanf(fp, "%d", _imopVarPre187);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre189;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre189 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre189 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre189 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre191;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre191 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre191 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre191 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre193;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre193 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre193 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre193 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre195;
        /*READ_S: [&dt]
        WRITE_S: []*/
        _imopVarPre195 = &dt;
        /*READ_S: [dt, nullCell, fscanf]
        WRITE_S: [dt, nullCell]*/
        fscanf(fp, "%lf", _imopVarPre195);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre197;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre197 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre197 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre197 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre199;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre199 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre199 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre199 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre201;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre201 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre201 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre201 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre203;
        /*READ_S: [&omega]
        WRITE_S: []*/
        _imopVarPre203 = &omega;
        /*READ_S: [omega, nullCell, fscanf]
        WRITE_S: [omega, nullCell]*/
        fscanf(fp, "%lf", _imopVarPre203);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre205;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre205 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre205 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre205 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre207;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre207 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre207 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre207 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre209;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre209 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre209 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre209 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre215;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre216;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre217;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre218;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre219;
        /*READ_S: [tolrsd]
        WRITE_S: []*/
        _imopVarPre215 = &tolrsd[4];
        /*READ_S: [tolrsd]
        WRITE_S: []*/
        _imopVarPre216 = &tolrsd[3];
        /*READ_S: [tolrsd]
        WRITE_S: []*/
        _imopVarPre217 = &tolrsd[2];
        /*READ_S: [tolrsd]
        WRITE_S: []*/
        _imopVarPre218 = &tolrsd[1];
        /*READ_S: [tolrsd]
        WRITE_S: []*/
        _imopVarPre219 = &tolrsd[0];
        /*READ_S: [tolrsd.f, nullCell, fscanf]
        WRITE_S: [tolrsd.f, nullCell]*/
        fscanf(fp, "%lf%lf%lf%lf%lf", _imopVarPre219, _imopVarPre218, _imopVarPre217, _imopVarPre216, _imopVarPre215);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre221;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre221 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre221 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre221 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre223;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre223 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre223 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre223 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre225;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre225 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre225 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre225 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre229;
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre230;
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre231;
        /*READ_S: [&nz0]
        WRITE_S: []*/
        _imopVarPre229 = &nz0;
        /*READ_S: [&ny0]
        WRITE_S: []*/
        _imopVarPre230 = &ny0;
        /*READ_S: [&nx0]
        WRITE_S: []*/
        _imopVarPre231 = &nx0;
        /*READ_S: [nz0, ny0, nx0, nullCell, fscanf]
        WRITE_S: [nz0, ny0, nx0, nullCell]*/
        fscanf(fp, "%d%d%d", _imopVarPre231, _imopVarPre230, _imopVarPre229);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre233;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre233 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre233 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre233 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [fclose, nullCell]
        WRITE_S: [nullCell]*/
        fclose(fp);
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [tolrsd]
    WRITE_S: [dt, inorm, nz0, ny0, nx0, omega, tolrsd.f, itmax, ipr]*/
        /*READ_S: []
        WRITE_S: [ipr]*/
        ipr = 1;
        /*READ_S: []
        WRITE_S: [inorm]*/
        inorm = 50;
        /*READ_S: []
        WRITE_S: [itmax]*/
        itmax = 50;
        /*READ_S: []
        WRITE_S: [dt]*/
        dt = 0.5;
        /*READ_S: []
        WRITE_S: [omega]*/
        omega = 1.2;
        /*READ_S: [tolrsd]
        WRITE_S: [tolrsd.f]*/
        tolrsd[0] = 1.0e-8;
        /*READ_S: [tolrsd]
        WRITE_S: [tolrsd.f]*/
        tolrsd[1] = 1.0e-8;
        /*READ_S: [tolrsd]
        WRITE_S: [tolrsd.f]*/
        tolrsd[2] = 1.0e-8;
        /*READ_S: [tolrsd]
        WRITE_S: [tolrsd.f]*/
        tolrsd[3] = 1.0e-8;
        /*READ_S: [tolrsd]
        WRITE_S: [tolrsd.f]*/
        tolrsd[4] = 1.0e-8;
        /*READ_S: []
        WRITE_S: [nx0]*/
        nx0 = 12;
        /*READ_S: []
        WRITE_S: [ny0]*/
        ny0 = 12;
        /*READ_S: []
        WRITE_S: [nz0]*/
        nz0 = 12;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre234;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre235;
    /*READ_S: [nx0]
    WRITE_S: []*/
    _imopVarPre234 = nx0 < 4;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nz0, ny0]
    WRITE_S: []*/
    if (!_imopVarPre234) {
    /*READ_S: [nz0, ny0]
    WRITE_S: []*/
        /*READ_S: [ny0]
        WRITE_S: []*/
        _imopVarPre235 = ny0 < 4;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nz0]
        WRITE_S: []*/
        if (!_imopVarPre235) {
        /*READ_S: [nz0]
        WRITE_S: []*/
            /*READ_S: [nz0]
            WRITE_S: []*/
            _imopVarPre235 = nz0 < 4;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre234 = _imopVarPre235;
    }
    /*READ_S: [_imopVarPre234]
    WRITE_S: []*/
    /*READ_S: [exit, _imopVarPre234, printf]
    WRITE_S: []*/
    if (_imopVarPre234) {
    /*READ_S: [exit, printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("     PROBLEM SIZE IS TOO SMALL - \n" "     SET EACH OF NX, NY AND NZ AT LEAST EQUAL TO 5\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre236;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre237;
    /*READ_S: [nx0]
    WRITE_S: []*/
    _imopVarPre236 = nx0 > 12;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nz0, ny0]
    WRITE_S: []*/
    if (!_imopVarPre236) {
    /*READ_S: [nz0, ny0]
    WRITE_S: []*/
        /*READ_S: [ny0]
        WRITE_S: []*/
        _imopVarPre237 = ny0 > 12;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nz0]
        WRITE_S: []*/
        if (!_imopVarPre237) {
        /*READ_S: [nz0]
        WRITE_S: []*/
            /*READ_S: [nz0]
            WRITE_S: []*/
            _imopVarPre237 = nz0 > 12;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre236 = _imopVarPre237;
    }
    /*READ_S: [_imopVarPre236]
    WRITE_S: []*/
    /*READ_S: [exit, _imopVarPre236, printf]
    WRITE_S: []*/
    if (_imopVarPre236) {
    /*READ_S: [exit, printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("     PROBLEM SIZE IS TOO LARGE - \n" "     NX, NY AND NZ SHOULD BE EQUAL TO \n" "     ISIZ1, ISIZ2 AND ISIZ3 RESPECTIVELY\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [nz0, ny0, nx0, printf]
    WRITE_S: []*/
    printf(" Size: %3dx%3dx%3d\n", nx0, ny0, nz0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [itmax, printf]
    WRITE_S: []*/
    printf(" Iterations: %3d\n", itmax);
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [ty1, tz1, ty3, tz3, tx1, flux.f, ist, tx3, iend, i, u.f, dy4, dx4, dz2, rsd, dy2, dx2, dz4, ny, frct.f, tz2, dssp, tx2, ty2, flux, jst, j, u, dz5, dx3, dy5, dx5, dz1, nx, dy1, dx1, dz3, rsd.f, dy3, jend, nz, frct]
WRITE_S: [flux.f, rsd.f]*/
static void rhs(void ) {
/*READ_S: [ty1, tz1, ty3, tz3, tx1, flux.f, ist, tx3, iend, i, u.f, dy4, dx4, dz2, rsd, dy2, dx2, dz4, ny, frct.f, tz2, dssp, tx2, ty2, flux, jst, j, u, dz5, dx3, dy5, dx5, dz1, nx, dy1, dx1, dz3, rsd.f, dy3, jend, nz, frct]
WRITE_S: [flux.f, rsd.f]*/
    /*READ_S: [ty1, tz1, ty3, tz3, tx1, flux.f, ist, tx3, iend, i, u.f, dy4, dx4, dz2, rsd, dy2, dx2, dz4, ny, frct.f, tz2, dssp, tx2, ty2, flux, jst, j, u, dz5, dx3, dy5, dx5, dz1, nx, dy1, dx1, dz3, rsd.f, dy3, jend, nz, frct]
    WRITE_S: [flux.f, rsd.f]*/
#pragma omp parallel
    {
    /*READ_S: [ty1, tz1, ty3, tz3, tx1, flux.f, ist, tx3, iend, i, u.f, dy4, dx4, dz2, rsd, dy2, dx2, dz4, ny, frct.f, tz2, dssp, tx2, ty2, flux, jst, j, u, dz5, dx3, dy5, dx5, dz1, nx, dy1, dx1, dz3, rsd.f, dy3, jend, nz, frct]
    WRITE_S: [flux.f, rsd.f]*/
        /*READ_S: []
        WRITE_S: []*/
        int i;
        /*READ_S: []
        WRITE_S: []*/
        int j;
        /*READ_S: []
        WRITE_S: []*/
        int k;
        /*READ_S: []
        WRITE_S: []*/
        int m;
        /*READ_S: []
        WRITE_S: []*/
        int L1;
        /*READ_S: []
        WRITE_S: []*/
        int L2;
        /*READ_S: []
        WRITE_S: []*/
        int ist1;
        /*READ_S: []
        WRITE_S: []*/
        int iend1;
        /*READ_S: []
        WRITE_S: []*/
        int jst1;
        /*READ_S: []
        WRITE_S: []*/
        int jend1;
        /*READ_S: []
        WRITE_S: []*/
        double q;
        /*READ_S: []
        WRITE_S: []*/
        double u21;
        /*READ_S: []
        WRITE_S: []*/
        double u31;
        /*READ_S: []
        WRITE_S: []*/
        double u41;
        /*READ_S: []
        WRITE_S: []*/
        double tmp;
        /*READ_S: []
        WRITE_S: []*/
        double u21i;
        /*READ_S: []
        WRITE_S: []*/
        double u31i;
        /*READ_S: []
        WRITE_S: []*/
        double u41i;
        /*READ_S: []
        WRITE_S: []*/
        double u51i;
        /*READ_S: []
        WRITE_S: []*/
        double u21j;
        /*READ_S: []
        WRITE_S: []*/
        double u31j;
        /*READ_S: []
        WRITE_S: []*/
        double u41j;
        /*READ_S: []
        WRITE_S: []*/
        double u51j;
        /*READ_S: []
        WRITE_S: []*/
        double u21k;
        /*READ_S: []
        WRITE_S: []*/
        double u31k;
        /*READ_S: []
        WRITE_S: []*/
        double u41k;
        /*READ_S: []
        WRITE_S: []*/
        double u51k;
        /*READ_S: []
        WRITE_S: []*/
        double u21im1;
        /*READ_S: []
        WRITE_S: []*/
        double u31im1;
        /*READ_S: []
        WRITE_S: []*/
        double u41im1;
        /*READ_S: []
        WRITE_S: []*/
        double u51im1;
        /*READ_S: []
        WRITE_S: []*/
        double u21jm1;
        /*READ_S: []
        WRITE_S: []*/
        double u31jm1;
        /*READ_S: []
        WRITE_S: []*/
        double u41jm1;
        /*READ_S: []
        WRITE_S: []*/
        double u51jm1;
        /*READ_S: []
        WRITE_S: []*/
        double u21km1;
        /*READ_S: []
        WRITE_S: []*/
        double u31km1;
        /*READ_S: []
        WRITE_S: []*/
        double u41km1;
        /*READ_S: []
        WRITE_S: []*/
        double u51km1;
        /*READ_S: [i, nx, rsd, rsd.f, frct.f, ny, nz, frct]
        WRITE_S: [rsd.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [nx]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i <= nx - 1; i++) {
        /*READ_S: [rsd, rsd.f, ny, frct.f, nz, frct]
        WRITE_S: [rsd.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ny]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rsd, rsd.f, ny, frct.f, nz, frct]
            WRITE_S: [rsd.f]*/
            for (j = 0; j <= ny - 1; j++) {
            /*READ_S: [rsd, rsd.f, frct.f, nz, frct]
            WRITE_S: [rsd.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rsd, rsd.f, frct.f, nz, frct]
                WRITE_S: [rsd.f]*/
                for (k = 0; k <= nz - 1; k++) {
                /*READ_S: [rsd, rsd.f, frct.f, frct]
                WRITE_S: [rsd.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [rsd.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [rsd, rsd.f, frct.f, frct]
                    WRITE_S: [rsd.f]*/
                        /*READ_S: [rsd, rsd.f, frct.f, frct]
                        WRITE_S: [rsd.f]*/
                        rsd[i][j][k][m] = -frct[i][j][k][m];
                    }
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: []
        WRITE_S: []*/
        L1 = 0;
        /*READ_S: [nx]
        WRITE_S: []*/
        L2 = nx - 1;
        /*READ_S: [i, u, u.f, flux.f, flux, jend, jst, nz]
        WRITE_S: [flux.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = L1; i <= L2; i++) {
        /*READ_S: [u, u.f, flux.f, flux, jend, jst, nz]
        WRITE_S: [flux.f]*/
            /*READ_S: [jst]
            WRITE_S: []*/
            /*READ_S: [jend]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u, u.f, flux.f, flux, jend, jst, nz]
            WRITE_S: [flux.f]*/
            for (j = jst; j <= jend; j++) {
            /*READ_S: [u, u.f, flux.f, flux, nz]
            WRITE_S: [flux.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u, u.f, flux.f, flux, nz]
                WRITE_S: [flux.f]*/
                for (k = 1; k <= nz - 2; k++) {
                /*READ_S: [u, u.f, flux.f, flux]
                WRITE_S: [flux.f]*/
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][0] = u[i][j][k][1];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u21 = u[i][j][k][1] / u[i][j][k][0];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    q = 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) / u[i][j][k][0];
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][1] = u[i][j][k][1] * u21 + 0.40e+00 * (u[i][j][k][4] - q);
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][2] = u[i][j][k][2] * u21;
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][3] = u[i][j][k][3] * u21;
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][4] = (1.40e+00 * u[i][j][k][4] - 0.40e+00 * q) * u21;
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [dssp, tx2, tx1, flux.f, ist, flux, tx3, jst, iend, j, u, u.f, dx3, dx4, dx5, nx, rsd, dx1, rsd.f, dx2, jend, nz]
        WRITE_S: [flux.f, rsd.f]*/
#pragma omp for nowait
        /*READ_S: [j, jst]
        WRITE_S: []*/
        /*READ_S: [jend]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = jst; j <= jend; j++) {
        /*READ_S: [dssp, tx2, tx1, flux.f, ist, flux, tx3, iend, u, u.f, dx3, dx4, dx5, nx, rsd, dx1, rsd.f, dx2, nz]
        WRITE_S: [flux.f, rsd.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nz]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dssp, tx2, tx1, flux.f, ist, flux, tx3, iend, u, u.f, dx3, dx4, dx5, nx, rsd, dx1, rsd.f, dx2, nz]
            WRITE_S: [flux.f, rsd.f]*/
            for (k = 1; k <= nz - 2; k++) {
            /*READ_S: [dssp, tx2, tx1, flux.f, ist, flux, tx3, iend, u, u.f, dx3, dx4, dx5, nx, rsd, dx1, rsd.f, dx2]
            WRITE_S: [flux.f, rsd.f]*/
                /*READ_S: [ist]
                WRITE_S: []*/
                /*READ_S: [iend]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [tx2, flux.f, flux, ist, rsd, rsd.f, iend]
                WRITE_S: [rsd.f]*/
                for (i = ist; i <= iend; i++) {
                /*READ_S: [tx2, flux.f, flux, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [tx2, flux.f, flux, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [tx2, flux.f, flux, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                        /*READ_S: [tx2, flux.f, flux, rsd, rsd.f]
                        WRITE_S: [rsd.f]*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - tx2 * (flux[i + 1][j][k][m] - flux[i - 1][j][k][m]);
                    }
                }
                /*READ_S: [nx]
                WRITE_S: []*/
                L2 = nx - 1;
                /*READ_S: [ist]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u, u.f, flux.f, flux, ist, tx3]
                WRITE_S: [flux.f]*/
                for (i = ist; i <= L2; i++) {
                /*READ_S: [u, u.f, flux.f, flux, tx3]
                WRITE_S: [flux.f]*/
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    tmp = 1.0 / u[i][j][k][0];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u21i = tmp * u[i][j][k][1];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u31i = tmp * u[i][j][k][2];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u41i = tmp * u[i][j][k][3];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u51i = tmp * u[i][j][k][4];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    tmp = 1.0 / u[i - 1][j][k][0];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u21im1 = tmp * u[i - 1][j][k][1];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u31im1 = tmp * u[i - 1][j][k][2];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u41im1 = tmp * u[i - 1][j][k][3];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u51im1 = tmp * u[i - 1][j][k][4];
                    /*READ_S: [flux.f, flux, tx3]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][1] = (4.0 / 3.0) * tx3 * (u21i - u21im1);
                    /*READ_S: [flux.f, flux, tx3]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][2] = tx3 * (u31i - u31im1);
                    /*READ_S: [flux.f, flux, tx3]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][3] = tx3 * (u41i - u41im1);
                    /*READ_S: [flux.f, flux, tx3]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tx3 * (((u21i * u21i) + (u31i * u31i) + (u41i * u41i)) - ((u21im1 * u21im1) + (u31im1 * u31im1) + (u41im1 * u41im1))) + (1.0 / 6.0) * tx3 * ((u21i * u21i) - (u21im1 * u21im1)) + 1.40e+00 * 1.40e+00 * tx3 * (u51i - u51im1);
                }
                /*READ_S: [ist]
                WRITE_S: []*/
                /*READ_S: [iend]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [tx1, flux.f, flux, ist, tx3, iend, u, u.f, dx3, dx4, dx5, rsd, dx1, rsd.f, dx2]
                WRITE_S: [rsd.f]*/
                for (i = ist; i <= iend; i++) {
                /*READ_S: [tx1, flux.f, flux, tx3, u, u.f, dx3, dx4, dx5, rsd, dx1, rsd.f, dx2]
                WRITE_S: [rsd.f]*/
                    /*READ_S: [u, tx1, u.f, rsd, dx1, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][0] = rsd[i][j][k][0] + dx1 * tx1 * (u[i - 1][j][k][0] - 2.0 * u[i][j][k][0] + u[i + 1][j][k][0]);
                    /*READ_S: [u, tx1, u.f, flux.f, flux, rsd, rsd.f, dx2, tx3]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][1] = rsd[i][j][k][1] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][1] - flux[i][j][k][1]) + dx2 * tx1 * (u[i - 1][j][k][1] - 2.0 * u[i][j][k][1] + u[i + 1][j][k][1]);
                    /*READ_S: [u, tx1, u.f, dx3, flux.f, flux, rsd, rsd.f, tx3]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][2] = rsd[i][j][k][2] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][2] - flux[i][j][k][2]) + dx3 * tx1 * (u[i - 1][j][k][2] - 2.0 * u[i][j][k][2] + u[i + 1][j][k][2]);
                    /*READ_S: [u, tx1, u.f, dx4, flux.f, flux, rsd, rsd.f, tx3]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][3] = rsd[i][j][k][3] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][3] - flux[i][j][k][3]) + dx4 * tx1 * (u[i - 1][j][k][3] - 2.0 * u[i][j][k][3] + u[i + 1][j][k][3]);
                    /*READ_S: [u, tx1, u.f, dx5, flux.f, flux, rsd, rsd.f, tx3]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][4] = rsd[i][j][k][4] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][4] - flux[i][j][k][4]) + dx5 * tx1 * (u[i - 1][j][k][4] - 2.0 * u[i][j][k][4] + u[i + 1][j][k][4]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[1][j][k][m] = rsd[1][j][k][m] - dssp * (+5.0 * u[1][j][k][m] - 4.0 * u[2][j][k][m] + u[3][j][k][m]);
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[2][j][k][m] = rsd[2][j][k][m] - dssp * (-4.0 * u[1][j][k][m] + 6.0 * u[2][j][k][m] - 4.0 * u[3][j][k][m] + u[4][j][k][m]);
                }
                /*READ_S: []
                WRITE_S: []*/
                ist1 = 3;
                /*READ_S: [nx]
                WRITE_S: []*/
                iend1 = nx - 4;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                for (i = ist1; i <= iend1; i++) {
                /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                        /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                        WRITE_S: [rsd.f]*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dssp, u, u.f, nx, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [dssp, u, u.f, nx, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                    /*READ_S: [dssp, u, u.f, nx, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[nx - 3][j][k][m] = rsd[nx - 3][j][k][m] - dssp * (u[nx - 5][j][k][m] - 4.0 * u[nx - 4][j][k][m] + 6.0 * u[nx - 3][j][k][m] - 4.0 * u[nx - 2][j][k][m]);
                    /*READ_S: [dssp, u, u.f, nx, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[nx - 2][j][k][m] = rsd[nx - 2][j][k][m] - dssp * (u[nx - 4][j][k][m] - 4.0 * u[nx - 3][j][k][m] + 5.0 * u[nx - 2][j][k][m]);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: []
        WRITE_S: []*/
        L1 = 0;
        /*READ_S: [ny]
        WRITE_S: []*/
        L2 = ny - 1;
        /*READ_S: [i, u, u.f, flux.f, flux, ist, iend, nz]
        WRITE_S: [flux.f]*/
#pragma omp for nowait
        /*READ_S: [i, ist]
        WRITE_S: []*/
        /*READ_S: [iend]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = ist; i <= iend; i++) {
        /*READ_S: [u, u.f, flux.f, flux, nz]
        WRITE_S: [flux.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u, u.f, flux.f, flux, nz]
            WRITE_S: [flux.f]*/
            for (j = L1; j <= L2; j++) {
            /*READ_S: [u, u.f, flux.f, flux, nz]
            WRITE_S: [flux.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u, u.f, flux.f, flux, nz]
                WRITE_S: [flux.f]*/
                for (k = 1; k <= nz - 2; k++) {
                /*READ_S: [u, u.f, flux.f, flux]
                WRITE_S: [flux.f]*/
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][0] = u[i][j][k][2];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u31 = u[i][j][k][2] / u[i][j][k][0];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    q = 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) / u[i][j][k][0];
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][1] = u[i][j][k][1] * u31;
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][2] = u[i][j][k][2] * u31 + 0.40e+00 * (u[i][j][k][4] - q);
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][3] = u[i][j][k][3] * u31;
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][4] = (1.40e+00 * u[i][j][k][4] - 0.40e+00 * q) * u31;
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [ty1, dssp, ty3, ty2, flux.f, flux, ist, jst, iend, i, u, u.f, dy4, dy5, dy1, rsd, dy2, rsd.f, dy3, jend, ny, nz]
        WRITE_S: [flux.f, rsd.f]*/
#pragma omp for nowait
        /*READ_S: [i, ist]
        WRITE_S: []*/
        /*READ_S: [iend]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = ist; i <= iend; i++) {
        /*READ_S: [ty1, dssp, ty3, ty2, flux.f, flux, jst, u, u.f, dy4, dy5, dy1, rsd, dy2, rsd.f, dy3, jend, ny, nz]
        WRITE_S: [flux.f, rsd.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nz]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ty1, dssp, ty3, ty2, flux.f, flux, jst, u, u.f, dy4, dy5, dy1, rsd, dy2, rsd.f, dy3, jend, ny, nz]
            WRITE_S: [flux.f, rsd.f]*/
            for (k = 1; k <= nz - 2; k++) {
            /*READ_S: [ty1, dssp, ty3, ty2, flux.f, flux, jst, u, u.f, dy4, dy5, dy1, rsd, dy2, rsd.f, dy3, jend, ny]
            WRITE_S: [flux.f, rsd.f]*/
                /*READ_S: [jst]
                WRITE_S: []*/
                /*READ_S: [jend]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ty2, flux.f, flux, rsd, rsd.f, jend, jst]
                WRITE_S: [rsd.f]*/
                for (j = jst; j <= jend; j++) {
                /*READ_S: [ty2, flux.f, flux, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [ty2, flux.f, flux, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [ty2, flux.f, flux, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                        /*READ_S: [ty2, flux.f, flux, rsd, rsd.f]
                        WRITE_S: [rsd.f]*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - ty2 * (flux[i][j + 1][k][m] - flux[i][j - 1][k][m]);
                    }
                }
                /*READ_S: [ny]
                WRITE_S: []*/
                L2 = ny - 1;
                /*READ_S: [jst]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ty3, u, u.f, flux.f, flux, jst]
                WRITE_S: [flux.f]*/
                for (j = jst; j <= L2; j++) {
                /*READ_S: [ty3, u, u.f, flux.f, flux]
                WRITE_S: [flux.f]*/
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    tmp = 1.0 / u[i][j][k][0];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u21j = tmp * u[i][j][k][1];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u31j = tmp * u[i][j][k][2];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u41j = tmp * u[i][j][k][3];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u51j = tmp * u[i][j][k][4];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    tmp = 1.0 / u[i][j - 1][k][0];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u21jm1 = tmp * u[i][j - 1][k][1];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u31jm1 = tmp * u[i][j - 1][k][2];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u41jm1 = tmp * u[i][j - 1][k][3];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u51jm1 = tmp * u[i][j - 1][k][4];
                    /*READ_S: [ty3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][1] = ty3 * (u21j - u21jm1);
                    /*READ_S: [ty3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][2] = (4.0 / 3.0) * ty3 * (u31j - u31jm1);
                    /*READ_S: [ty3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][3] = ty3 * (u41j - u41jm1);
                    /*READ_S: [ty3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * ty3 * (((u21j * u21j) + (u31j * u31j) + (u41j * u41j)) - ((u21jm1 * u21jm1) + (u31jm1 * u31jm1) + (u41jm1 * u41jm1))) + (1.0 / 6.0) * ty3 * ((u31j * u31j) - (u31jm1 * u31jm1)) + 1.40e+00 * 1.40e+00 * ty3 * (u51j - u51jm1);
                }
                /*READ_S: [jst]
                WRITE_S: []*/
                /*READ_S: [jend]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ty1, ty3, flux.f, flux, jst, u, u.f, dy4, dy5, dy1, rsd, dy2, rsd.f, dy3, jend]
                WRITE_S: [rsd.f]*/
                for (j = jst; j <= jend; j++) {
                /*READ_S: [ty1, ty3, flux.f, flux, u, u.f, dy4, dy5, dy1, rsd, dy2, rsd.f, dy3]
                WRITE_S: [rsd.f]*/
                    /*READ_S: [ty1, u, u.f, dy1, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][0] = rsd[i][j][k][0] + dy1 * ty1 * (u[i][j - 1][k][0] - 2.0 * u[i][j][k][0] + u[i][j + 1][k][0]);
                    /*READ_S: [ty1, ty3, u, u.f, flux.f, flux, rsd, dy2, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][1] = rsd[i][j][k][1] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][1] - flux[i][j][k][1]) + dy2 * ty1 * (u[i][j - 1][k][1] - 2.0 * u[i][j][k][1] + u[i][j + 1][k][1]);
                    /*READ_S: [ty1, ty3, u, u.f, flux.f, flux, rsd, rsd.f, dy3]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][2] = rsd[i][j][k][2] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][2] - flux[i][j][k][2]) + dy3 * ty1 * (u[i][j - 1][k][2] - 2.0 * u[i][j][k][2] + u[i][j + 1][k][2]);
                    /*READ_S: [ty1, ty3, u, u.f, dy4, flux.f, flux, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][3] = rsd[i][j][k][3] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][3] - flux[i][j][k][3]) + dy4 * ty1 * (u[i][j - 1][k][3] - 2.0 * u[i][j][k][3] + u[i][j + 1][k][3]);
                    /*READ_S: [ty1, ty3, u, u.f, dy5, flux.f, flux, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][4] = rsd[i][j][k][4] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][4] - flux[i][j][k][4]) + dy5 * ty1 * (u[i][j - 1][k][4] - 2.0 * u[i][j][k][4] + u[i][j + 1][k][4]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[i][1][k][m] = rsd[i][1][k][m] - dssp * (+5.0 * u[i][1][k][m] - 4.0 * u[i][2][k][m] + u[i][3][k][m]);
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[i][2][k][m] = rsd[i][2][k][m] - dssp * (-4.0 * u[i][1][k][m] + 6.0 * u[i][2][k][m] - 4.0 * u[i][3][k][m] + u[i][4][k][m]);
                }
                /*READ_S: []
                WRITE_S: []*/
                jst1 = 3;
                /*READ_S: [ny]
                WRITE_S: []*/
                jend1 = ny - 4;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                for (j = jst1; j <= jend1; j++) {
                /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                        /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                        WRITE_S: [rsd.f]*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dssp, u, u.f, rsd, rsd.f, ny]
                WRITE_S: [rsd.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [dssp, u, u.f, rsd, rsd.f, ny]
                WRITE_S: [rsd.f]*/
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f, ny]
                    WRITE_S: [rsd.f]*/
                    rsd[i][ny - 3][k][m] = rsd[i][ny - 3][k][m] - dssp * (u[i][ny - 5][k][m] - 4.0 * u[i][ny - 4][k][m] + 6.0 * u[i][ny - 3][k][m] - 4.0 * u[i][ny - 2][k][m]);
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f, ny]
                    WRITE_S: [rsd.f]*/
                    rsd[i][ny - 2][k][m] = rsd[i][ny - 2][k][m] - dssp * (u[i][ny - 4][k][m] - 4.0 * u[i][ny - 3][k][m] + 5.0 * u[i][ny - 2][k][m]);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [tz2, tz1, dssp, tz3, flux.f, flux, ist, jst, iend, i, u, u.f, dz5, dz1, dz2, rsd, dz3, rsd.f, dz4, jend, nz]
        WRITE_S: [flux.f, rsd.f]*/
#pragma omp for nowait
        /*READ_S: [i, ist]
        WRITE_S: []*/
        /*READ_S: [iend]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = ist; i <= iend; i++) {
        /*READ_S: [tz2, tz1, dssp, tz3, flux.f, flux, jst, u, u.f, dz5, dz1, dz2, rsd, dz3, rsd.f, dz4, jend, nz]
        WRITE_S: [flux.f, rsd.f]*/
            /*READ_S: [jst]
            WRITE_S: []*/
            /*READ_S: [jend]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [tz2, tz1, dssp, tz3, flux.f, flux, jst, u, u.f, dz5, dz1, dz2, rsd, dz3, rsd.f, dz4, jend, nz]
            WRITE_S: [flux.f, rsd.f]*/
            for (j = jst; j <= jend; j++) {
            /*READ_S: [tz2, tz1, dssp, tz3, flux.f, flux, u, u.f, dz5, dz1, dz2, rsd, dz3, rsd.f, dz4, nz]
            WRITE_S: [flux.f, rsd.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u, u.f, flux.f, flux, nz]
                WRITE_S: [flux.f]*/
                for (k = 0; k <= nz - 1; k++) {
                /*READ_S: [u, u.f, flux.f, flux]
                WRITE_S: [flux.f]*/
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][0] = u[i][j][k][3];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u41 = u[i][j][k][3] / u[i][j][k][0];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    q = 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) / u[i][j][k][0];
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][1] = u[i][j][k][1] * u41;
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][2] = u[i][j][k][2] * u41;
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][3] = u[i][j][k][3] * u41 + 0.40e+00 * (u[i][j][k][4] - q);
                    /*READ_S: [u, u.f, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][4] = (1.40e+00 * u[i][j][k][4] - 0.40e+00 * q) * u41;
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [tz2, flux.f, flux, rsd, rsd.f, nz]
                WRITE_S: [rsd.f]*/
                for (k = 1; k <= nz - 2; k++) {
                /*READ_S: [tz2, flux.f, flux, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [tz2, flux.f, flux, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [tz2, flux.f, flux, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                        /*READ_S: [tz2, flux.f, flux, rsd, rsd.f]
                        WRITE_S: [rsd.f]*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - tz2 * (flux[i][j][k + 1][m] - flux[i][j][k - 1][m]);
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u, tz3, u.f, flux.f, flux, nz]
                WRITE_S: [flux.f]*/
                for (k = 1; k <= nz - 1; k++) {
                /*READ_S: [u, tz3, u.f, flux.f, flux]
                WRITE_S: [flux.f]*/
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    tmp = 1.0 / u[i][j][k][0];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u21k = tmp * u[i][j][k][1];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u31k = tmp * u[i][j][k][2];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u41k = tmp * u[i][j][k][3];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u51k = tmp * u[i][j][k][4];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    tmp = 1.0 / u[i][j][k - 1][0];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u21km1 = tmp * u[i][j][k - 1][1];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u31km1 = tmp * u[i][j][k - 1][2];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u41km1 = tmp * u[i][j][k - 1][3];
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    u51km1 = tmp * u[i][j][k - 1][4];
                    /*READ_S: [tz3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][1] = tz3 * (u21k - u21km1);
                    /*READ_S: [tz3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][2] = tz3 * (u31k - u31km1);
                    /*READ_S: [tz3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][3] = (4.0 / 3.0) * tz3 * (u41k - u41km1);
                    /*READ_S: [tz3, flux.f, flux]
                    WRITE_S: [flux.f]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tz3 * (((u21k * u21k) + (u31k * u31k) + (u41k * u41k)) - ((u21km1 * u21km1) + (u31km1 * u31km1) + (u41km1 * u41km1))) + (1.0 / 6.0) * tz3 * ((u41k * u41k) - (u41km1 * u41km1)) + 1.40e+00 * 1.40e+00 * tz3 * (u51k - u51km1);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [tz1, tz3, flux.f, flux, u, u.f, dz5, dz1, dz2, rsd, dz3, rsd.f, dz4, nz]
                WRITE_S: [rsd.f]*/
                for (k = 1; k <= nz - 2; k++) {
                /*READ_S: [tz1, tz3, flux.f, flux, u, u.f, dz5, dz1, dz2, rsd, dz3, rsd.f, dz4]
                WRITE_S: [rsd.f]*/
                    /*READ_S: [tz1, u, u.f, dz1, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][0] = rsd[i][j][k][0] + dz1 * tz1 * (u[i][j][k - 1][0] - 2.0 * u[i][j][k][0] + u[i][j][k + 1][0]);
                    /*READ_S: [tz1, u, tz3, u.f, flux.f, flux, dz2, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][1] = rsd[i][j][k][1] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][1] - flux[i][j][k][1]) + dz2 * tz1 * (u[i][j][k - 1][1] - 2.0 * u[i][j][k][1] + u[i][j][k + 1][1]);
                    /*READ_S: [tz1, u, tz3, u.f, flux.f, flux, rsd, dz3, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][2] = rsd[i][j][k][2] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][2] - flux[i][j][k][2]) + dz3 * tz1 * (u[i][j][k - 1][2] - 2.0 * u[i][j][k][2] + u[i][j][k + 1][2]);
                    /*READ_S: [tz1, u, tz3, u.f, flux.f, flux, rsd, rsd.f, dz4]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][3] = rsd[i][j][k][3] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][3] - flux[i][j][k][3]) + dz4 * tz1 * (u[i][j][k - 1][3] - 2.0 * u[i][j][k][3] + u[i][j][k + 1][3]);
                    /*READ_S: [tz1, u, tz3, u.f, dz5, flux.f, flux, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][k][4] = rsd[i][j][k][4] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][4] - flux[i][j][k][4]) + dz5 * tz1 * (u[i][j][k - 1][4] - 2.0 * u[i][j][k][4] + u[i][j][k + 1][4]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][1][m] = rsd[i][j][1][m] - dssp * (+5.0 * u[i][j][1][m] - 4.0 * u[i][j][2][m] + u[i][j][3][m]);
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][2][m] = rsd[i][j][2][m] - dssp * (-4.0 * u[i][j][1][m] + 6.0 * u[i][j][2][m] - 4.0 * u[i][j][3][m] + u[i][j][4][m]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nz]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dssp, u, u.f, rsd, rsd.f, nz]
                WRITE_S: [rsd.f]*/
                for (k = 3; k <= nz - 4; k++) {
                /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                WRITE_S: [rsd.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                        /*READ_S: [dssp, u, u.f, rsd, rsd.f]
                        WRITE_S: [rsd.f]*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dssp, u, u.f, rsd, rsd.f, nz]
                WRITE_S: [rsd.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [dssp, u, u.f, rsd, rsd.f, nz]
                WRITE_S: [rsd.f]*/
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f, nz]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][nz - 3][m] = rsd[i][j][nz - 3][m] - dssp * (u[i][j][nz - 5][m] - 4.0 * u[i][j][nz - 4][m] + 6.0 * u[i][j][nz - 3][m] - 4.0 * u[i][j][nz - 2][m]);
                    /*READ_S: [dssp, u, u.f, rsd, rsd.f, nz]
                    WRITE_S: [rsd.f]*/
                    rsd[i][j][nz - 2][m] = rsd[i][j][nz - 2][m] - dssp * (u[i][j][nz - 4][m] - 4.0 * u[i][j][nz - 3][m] + 5.0 * u[i][j][nz - 2][m]);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [ce, exact, u, u.f, i, ce.f, j, ny0, nx0, nx, ny, nz]
WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
static void setbv(void ) {
/*READ_S: [ce, exact, u, u.f, i, ce.f, j, ny0, nx0, nx, ny, nz]
WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
    /*READ_S: [ce, exact, u, u.f, i, ce.f, j, ny0, nx0, nx, ny, nz]
    WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
#pragma omp parallel
    {
    /*READ_S: [ce, exact, u, u.f, i, ce.f, j, ny0, nx0, nx, ny, nz]
    WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
        /*READ_S: []
        WRITE_S: []*/
        int i;
        /*READ_S: []
        WRITE_S: []*/
        int j;
        /*READ_S: []
        WRITE_S: []*/
        int k;
        /*READ_S: []
        WRITE_S: []*/
        int iglob;
        /*READ_S: []
        WRITE_S: []*/
        int jglob;
        /*READ_S: [ce, exact, u, u.f, i, ce.f, ny0, nx0, nx, ny, nz]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [nx]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < nx; i++) {
        /*READ_S: [ce, exact, u, u.f, ny0, ce.f, nx0, ny, nz]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
            /*READ_S: []
            WRITE_S: []*/
            iglob = i;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ny]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ce, exact, u, u.f, ny0, ce.f, nx0, ny, nz]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
            for (j = 0; j < ny; j++) {
            /*READ_S: [ce, exact, u, u.f, ny0, ce.f, nx0, nz]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
                /*READ_S: []
                WRITE_S: []*/
                jglob = j;
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre239;
                /*READ_S: [u, u.f]
                WRITE_S: []*/
                _imopVarPre239 = &u[i][j][0][0];
                /*READ_S: [exact]
                WRITE_S: []*/
                exact(iglob, jglob, 0, _imopVarPre239);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre242;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre243;
                /*READ_S: [u, u.f, nz]
                WRITE_S: []*/
                _imopVarPre242 = &u[i][j][nz - 1][0];
                /*READ_S: [nz]
                WRITE_S: []*/
                _imopVarPre243 = nz - 1;
                /*READ_S: [exact]
                WRITE_S: []*/
                exact(iglob, jglob, _imopVarPre243, _imopVarPre242);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [ce, u, exact, u.f, i, ny0, ce.f, nx0, nx, nz]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [nx]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < nx; i++) {
        /*READ_S: [ce, u, exact, u.f, ny0, ce.f, nx0, nz]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
            /*READ_S: []
            WRITE_S: []*/
            iglob = i;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nz]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ce, u, exact, u.f, ny0, ce.f, nx0, nz]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
            for (k = 0; k < nz; k++) {
            /*READ_S: [ce, u, exact, u.f, ny0, ce.f, nx0, nz]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre245;
                /*READ_S: [u, u.f]
                WRITE_S: []*/
                _imopVarPre245 = &u[i][0][k][0];
                /*READ_S: [exact]
                WRITE_S: []*/
                exact(iglob, 0, k, _imopVarPre245);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [ce, exact, u, u.f, i, ny0, ce.f, nx0, nx, ny, nz]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [nx]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < nx; i++) {
        /*READ_S: [ce, exact, u, u.f, ny0, ce.f, nx0, ny, nz]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
            /*READ_S: []
            WRITE_S: []*/
            iglob = i;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nz]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ce, exact, u, u.f, ny0, ce.f, nx0, ny, nz]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
            for (k = 0; k < nz; k++) {
            /*READ_S: [ce, exact, u, u.f, ny0, ce.f, nx0, ny, nz]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre248;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre249;
                /*READ_S: [u, u.f, ny]
                WRITE_S: []*/
                _imopVarPre248 = &u[i][ny - 1][k][0];
                /*READ_S: [ny0]
                WRITE_S: []*/
                _imopVarPre249 = ny0 - 1;
                /*READ_S: [exact]
                WRITE_S: []*/
                exact(iglob, _imopVarPre249, k, _imopVarPre248);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [ce, u, exact, u.f, ny0, ce.f, j, nx0, ny, nz]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [ny]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < ny; j++) {
        /*READ_S: [ce, u, exact, u.f, ny0, ce.f, nx0, nz]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
            /*READ_S: []
            WRITE_S: []*/
            jglob = j;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nz]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ce, u, exact, u.f, ny0, ce.f, nx0, nz]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
            for (k = 0; k < nz; k++) {
            /*READ_S: [ce, u, exact, u.f, ny0, ce.f, nx0, nz]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre251;
                /*READ_S: [u, u.f]
                WRITE_S: []*/
                _imopVarPre251 = &u[0][j][k][0];
                /*READ_S: [exact]
                WRITE_S: []*/
                exact(0, jglob, k, _imopVarPre251);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [ce, u, exact, u.f, ny0, ce.f, j, nx0, nx, ny, nz]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [ny]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < ny; j++) {
        /*READ_S: [ce, u, exact, u.f, ny0, ce.f, nx0, nx, nz]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
            /*READ_S: []
            WRITE_S: []*/
            jglob = j;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nz]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ce, u, exact, u.f, ny0, ce.f, nx0, nx, nz]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
            for (k = 0; k < nz; k++) {
            /*READ_S: [ce, u, exact, u.f, ny0, ce.f, nx0, nx, nz]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre254;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre255;
                /*READ_S: [u, u.f, nx]
                WRITE_S: []*/
                _imopVarPre254 = &u[nx - 1][j][k][0];
                /*READ_S: [nx0]
                WRITE_S: []*/
                _imopVarPre255 = nx0 - 1;
                /*READ_S: [exact]
                WRITE_S: []*/
                exact(_imopVarPre255, jglob, k, _imopVarPre254);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [ce, dxi, dzeta, ce.f, _imopVarPre350, deta, _imopVarPre348, _imopVarPre358, nz0, ny0, nx0, dz1, dy1, dx1]
WRITE_S: [ty1, ii2, tz1, ji1, ty3, tz3, tx1, ki2, dzeta, ce.f, tx3, dy4, dx4, dz2, dy2, dz4, dx2, ii1, tz2, dssp, dxi, tx2, ty2, ki1, ji2, deta, dx3, dz5, dy5, dx5, dz1, dy1, dz3, dx1, dy3]*/
static void setcoeff(void ) {
/*READ_S: [ce, dxi, dzeta, ce.f, _imopVarPre350, deta, _imopVarPre348, _imopVarPre358, nz0, ny0, nx0, dz1, dy1, dx1]
WRITE_S: [ty1, ii2, tz1, ji1, ty3, tz3, tx1, ki2, dzeta, ce.f, tx3, dy4, dx4, dz2, dy2, dz4, dx2, ii1, tz2, dssp, dxi, tx2, ty2, ki1, ji2, deta, dx3, dz5, dy5, dx5, dz1, dy1, dz3, dx1, dy3]*/
    /*READ_S: [nx0]
    WRITE_S: [dxi]*/
    dxi = 1.0 / (nx0 - 1);
    /*READ_S: [ny0]
    WRITE_S: [deta]*/
    deta = 1.0 / (ny0 - 1);
    /*READ_S: [nz0]
    WRITE_S: [dzeta]*/
    dzeta = 1.0 / (nz0 - 1);
    /*READ_S: [dxi]
    WRITE_S: [tx1]*/
    tx1 = 1.0 / (dxi * dxi);
    /*READ_S: [dxi]
    WRITE_S: [tx2]*/
    tx2 = 1.0 / (2.0 * dxi);
    /*READ_S: [dxi]
    WRITE_S: [tx3]*/
    tx3 = 1.0 / dxi;
    /*READ_S: [deta]
    WRITE_S: [ty1]*/
    ty1 = 1.0 / (deta * deta);
    /*READ_S: [deta]
    WRITE_S: [ty2]*/
    ty2 = 1.0 / (2.0 * deta);
    /*READ_S: [deta]
    WRITE_S: [ty3]*/
    ty3 = 1.0 / deta;
    /*READ_S: [dzeta]
    WRITE_S: [tz1]*/
    tz1 = 1.0 / (dzeta * dzeta);
    /*READ_S: [dzeta]
    WRITE_S: [tz2]*/
    tz2 = 1.0 / (2.0 * dzeta);
    /*READ_S: [dzeta]
    WRITE_S: [tz3]*/
    tz3 = 1.0 / dzeta;
    /*READ_S: []
    WRITE_S: [ii1]*/
    ii1 = 1;
    /*READ_S: [nx0]
    WRITE_S: [ii2]*/
    ii2 = nx0 - 2;
    /*READ_S: []
    WRITE_S: [ji1]*/
    ji1 = 1;
    /*READ_S: [ny0]
    WRITE_S: [ji2]*/
    ji2 = ny0 - 3;
    /*READ_S: []
    WRITE_S: [ki1]*/
    ki1 = 2;
    /*READ_S: [nz0]
    WRITE_S: [ki2]*/
    ki2 = nz0 - 2;
    /*READ_S: []
    WRITE_S: [dx1]*/
    dx1 = 0.75;
    /*READ_S: [dx1]
    WRITE_S: [dx2]*/
    dx2 = dx1;
    /*READ_S: [dx1]
    WRITE_S: [dx3]*/
    dx3 = dx1;
    /*READ_S: [dx1]
    WRITE_S: [dx4]*/
    dx4 = dx1;
    /*READ_S: [dx1]
    WRITE_S: [dx5]*/
    dx5 = dx1;
    /*READ_S: []
    WRITE_S: [dy1]*/
    dy1 = 0.75;
    /*READ_S: [dy1]
    WRITE_S: [dy2]*/
    dy2 = dy1;
    /*READ_S: [dy1]
    WRITE_S: [dy3]*/
    dy3 = dy1;
    /*READ_S: [dy1]
    WRITE_S: [dy4]*/
    dy4 = dy1;
    /*READ_S: [dy1]
    WRITE_S: [dy5]*/
    dy5 = dy1;
    /*READ_S: []
    WRITE_S: [dz1]*/
    dz1 = 1.00;
    /*READ_S: [dz1]
    WRITE_S: [dz2]*/
    dz2 = dz1;
    /*READ_S: [dz1]
    WRITE_S: [dz3]*/
    dz3 = dz1;
    /*READ_S: [dz1]
    WRITE_S: [dz4]*/
    dz4 = dz1;
    /*READ_S: [dz1]
    WRITE_S: [dz5]*/
    dz5 = dz1;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre348;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre349;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre350;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre351;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre358;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre359;
    /*READ_S: [dz1, dy1]
    WRITE_S: []*/
    _imopVarPre348 = (dy1 > dz1);
    /*READ_S: [_imopVarPre348]
    WRITE_S: []*/
    /*READ_S: [dz1, dy1, _imopVarPre348]
    WRITE_S: []*/
    if (_imopVarPre348) {
    /*READ_S: [dy1]
    WRITE_S: []*/
        /*READ_S: [dy1]
        WRITE_S: []*/
        _imopVarPre349 = dy1;
    } else {
    /*READ_S: [dz1]
    WRITE_S: []*/
        /*READ_S: [dz1]
        WRITE_S: []*/
        _imopVarPre349 = dz1;
    }
    /*READ_S: [dx1]
    WRITE_S: []*/
    _imopVarPre350 = (dx1 > _imopVarPre349);
    /*READ_S: [_imopVarPre350]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre350, dz1, dy1, dx1, _imopVarPre358]
    WRITE_S: []*/
    if (_imopVarPre350) {
    /*READ_S: [dx1]
    WRITE_S: []*/
        /*READ_S: [dx1]
        WRITE_S: []*/
        _imopVarPre351 = dx1;
    } else {
    /*READ_S: [dz1, dy1, _imopVarPre358]
    WRITE_S: []*/
        /*READ_S: [dz1, dy1]
        WRITE_S: []*/
        _imopVarPre358 = (dy1 > dz1);
        /*READ_S: [_imopVarPre358]
        WRITE_S: []*/
        /*READ_S: [dz1, dy1, _imopVarPre358]
        WRITE_S: []*/
        if (_imopVarPre358) {
        /*READ_S: [dy1]
        WRITE_S: []*/
            /*READ_S: [dy1]
            WRITE_S: []*/
            _imopVarPre359 = dy1;
        } else {
        /*READ_S: [dz1]
        WRITE_S: []*/
            /*READ_S: [dz1]
            WRITE_S: []*/
            _imopVarPre359 = dz1;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre351 = _imopVarPre359;
    }
    /*READ_S: []
    WRITE_S: [dssp]*/
    dssp = _imopVarPre351 / 4.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[0][0] = 2.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[0][1] = 0.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[0][2] = 0.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[0][3] = 4.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[0][4] = 5.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[0][5] = 3.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[0][6] = 5.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[0][7] = 2.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[0][8] = 1.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[0][9] = 3.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[0][10] = 5.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[0][11] = 4.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[0][12] = 3.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[1][0] = 1.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[1][1] = 0.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[1][2] = 0.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[1][3] = 0.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[1][4] = 1.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[1][5] = 2.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[1][6] = 3.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[1][7] = 1.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[1][8] = 3.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[1][9] = 2.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[1][10] = 4.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[1][11] = 3.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[1][12] = 5.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[2][0] = 2.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[2][1] = 2.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[2][2] = 0.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[2][3] = 0.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[2][4] = 0.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[2][5] = 2.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[2][6] = 3.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[2][7] = 4.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[2][8] = 3.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[2][9] = 5.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[2][10] = 3.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[2][11] = 5.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[2][12] = 4.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[3][0] = 2.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[3][1] = 2.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[3][2] = 0.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[3][3] = 0.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[3][4] = 0.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[3][5] = 2.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[3][6] = 3.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[3][7] = 3.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[3][8] = 5.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[3][9] = 4.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[3][10] = 2.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[3][11] = 1.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[3][12] = 3.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[4][0] = 5.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[4][1] = 4.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[4][2] = 3.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[4][3] = 2.0;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[4][4] = 1.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[4][5] = 4.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[4][6] = 3.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[4][7] = 5.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[4][8] = 4.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[4][9] = 3.0e-02;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[4][10] = 1.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[4][11] = 3.0e-01;
    /*READ_S: [ce, ce.f]
    WRITE_S: [ce.f]*/
    ce[4][12] = 2.0e-01;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [ce, exact, ce.f, _imopVarPre361, u, u.f, ny0, nx0, j, nx, ny, nz, _imopVarPre363]
WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
static void setiv(void ) {
/*READ_S: [ce, exact, ce.f, _imopVarPre361, u, u.f, ny0, nx0, j, nx, ny, nz, _imopVarPre363]
WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
    /*READ_S: [ce, exact, ce.f, _imopVarPre361, u, u.f, ny0, nx0, j, nx, ny, nz, _imopVarPre363]
    WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
#pragma omp parallel
    {
    /*READ_S: [ce, exact, ce.f, _imopVarPre361, u, u.f, ny0, nx0, j, nx, ny, nz, _imopVarPre363]
    WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
        /*READ_S: []
        WRITE_S: []*/
        int i;
        /*READ_S: []
        WRITE_S: []*/
        int j;
        /*READ_S: []
        WRITE_S: []*/
        int k;
        /*READ_S: []
        WRITE_S: []*/
        int m;
        /*READ_S: []
        WRITE_S: []*/
        int iglob;
        /*READ_S: []
        WRITE_S: []*/
        int jglob;
        /*READ_S: []
        WRITE_S: []*/
        double xi;
        /*READ_S: []
        WRITE_S: []*/
        double eta;
        /*READ_S: []
        WRITE_S: []*/
        double zeta;
        /*READ_S: []
        WRITE_S: []*/
        double pxi;
        /*READ_S: []
        WRITE_S: []*/
        double peta;
        /*READ_S: []
        WRITE_S: []*/
        double pzeta;
        /*READ_S: []
        WRITE_S: []*/
        double ue_1jk[5];
        /*READ_S: []
        WRITE_S: []*/
        double ue_nx0jk[5];
        /*READ_S: []
        WRITE_S: []*/
        double ue_i1k[5];
        /*READ_S: []
        WRITE_S: []*/
        double ue_iny0k[5];
        /*READ_S: []
        WRITE_S: []*/
        double ue_ij1[5];
        /*READ_S: []
        WRITE_S: []*/
        double ue_ijnz[5];
        /*READ_S: [ce, exact, ce.f, _imopVarPre361, u, u.f, ny0, nx0, j, nx, ny, nz, _imopVarPre363]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [ny]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < ny; j++) {
        /*READ_S: [ce, exact, u, u.f, ce.f, ny0, nx0, nx, _imopVarPre361, nz, _imopVarPre363]
        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
            /*READ_S: []
            WRITE_S: []*/
            jglob = j;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nz]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ce, exact, u, u.f, ce.f, ny0, nx0, nx, _imopVarPre361, nz, _imopVarPre363]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
            for (k = 1; k < nz - 1; k++) {
            /*READ_S: [ce, exact, u, u.f, ce.f, ny0, nx0, nx, _imopVarPre361, nz, _imopVarPre363]
            WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
                /*READ_S: [nz]
                WRITE_S: []*/
                zeta = ((double) k) / (nz - 1);
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre361;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre361 = jglob != 0;
                /*READ_S: [_imopVarPre361]
                WRITE_S: []*/
                /*READ_S: [ny0, _imopVarPre361]
                WRITE_S: []*/
                if (_imopVarPre361) {
                /*READ_S: [ny0]
                WRITE_S: []*/
                    /*READ_S: [ny0]
                    WRITE_S: []*/
                    _imopVarPre361 = jglob != ny0 - 1;
                }
                /*READ_S: [_imopVarPre361]
                WRITE_S: []*/
                /*READ_S: [ce, exact, u, u.f, ce.f, ny0, nx0, nx, _imopVarPre361, _imopVarPre363, nz]
                WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
                if (_imopVarPre361) {
                /*READ_S: [ce, exact, u, u.f, ce.f, ny0, nx0, nx, _imopVarPre363, nz]
                WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
                    /*READ_S: [ny0]
                    WRITE_S: []*/
                    eta = ((double) jglob) / (ny0 - 1);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [nx]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [ce, exact, u, u.f, ce.f, ny0, nx0, nx, _imopVarPre363, nz]
                    WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
                    for (i = 0; i < nx; i++) {
                    /*READ_S: [ce, exact, u, u.f, ce.f, ny0, nx0, _imopVarPre363, nz]
                    WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        iglob = i;
                        /*READ_S: []
                        WRITE_S: []*/
                        int _imopVarPre363;
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre363 = iglob != 0;
                        /*READ_S: [_imopVarPre363]
                        WRITE_S: []*/
                        /*READ_S: [nx0, _imopVarPre363]
                        WRITE_S: []*/
                        if (_imopVarPre363) {
                        /*READ_S: [nx0]
                        WRITE_S: []*/
                            /*READ_S: [nx0]
                            WRITE_S: []*/
                            _imopVarPre363 = iglob != nx0 - 1;
                        }
                        /*READ_S: [_imopVarPre363]
                        WRITE_S: []*/
                        /*READ_S: [ce, exact, u, u.f, ce.f, ny0, nx0, _imopVarPre363, nz]
                        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
                        if (_imopVarPre363) {
                        /*READ_S: [ce, exact, u, u.f, ce.f, ny0, nx0, nz]
                        WRITE_S: [ue_i1k.f, u.f, ue_iny0k.f, ue_ijnz.f, ue_nx0jk.f, ue_ij1.f, ue_1jk.f]*/
                            /*READ_S: [nx0]
                            WRITE_S: []*/
                            xi = ((double) iglob) / (nx0 - 1);
                            /*READ_S: [exact]
                            WRITE_S: []*/
                            exact(0, jglob, k, ue_1jk);
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            int _imopVarPre365;
                            /*READ_S: [nx0]
                            WRITE_S: []*/
                            _imopVarPre365 = nx0 - 1;
                            /*READ_S: [exact]
                            WRITE_S: []*/
                            exact(_imopVarPre365, jglob, k, ue_nx0jk);
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: [exact]
                            WRITE_S: []*/
                            exact(iglob, 0, k, ue_i1k);
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            int _imopVarPre367;
                            /*READ_S: [ny0]
                            WRITE_S: []*/
                            _imopVarPre367 = ny0 - 1;
                            /*READ_S: [exact]
                            WRITE_S: []*/
                            exact(iglob, _imopVarPre367, k, ue_iny0k);
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: [exact]
                            WRITE_S: []*/
                            exact(iglob, jglob, 0, ue_ij1);
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            int _imopVarPre369;
                            /*READ_S: [nz]
                            WRITE_S: []*/
                            _imopVarPre369 = nz - 1;
                            /*READ_S: [exact]
                            WRITE_S: []*/
                            exact(iglob, jglob, _imopVarPre369, ue_ijnz);
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: [u, u.f]
                            WRITE_S: [u.f]*/
                            for (m = 0; m < 5; m++) {
                            /*READ_S: [u, u.f]
                            WRITE_S: [u.f]*/
                                /*READ_S: []
                                WRITE_S: []*/
                                pxi = (1.0 - xi) * ue_1jk[m] + xi * ue_nx0jk[m];
                                /*READ_S: []
                                WRITE_S: []*/
                                peta = (1.0 - eta) * ue_i1k[m] + eta * ue_iny0k[m];
                                /*READ_S: []
                                WRITE_S: []*/
                                pzeta = (1.0 - zeta) * ue_ij1[m] + zeta * ue_ijnz[m];
                                /*READ_S: [u, u.f]
                                WRITE_S: [u.f]*/
                                u[i][j][k][m] = pxi + peta + pzeta - pxi * peta - peta * pzeta - pzeta * pxi + pxi * peta * pzeta;
                            }
                        }
                    }
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [ty3, d.f, tx1, _imopVarPre379, ny0, blts, flag, timer_clear, u.f, omega, dy2, dz4, ty2, i, flux, flag.f, sqrt, _imopVarPre372, dt, dy1, nx, dz3, rsd.f, tolrsd.f, tv, c, b.f, ty1, jst, _imopVarPre377, tz3, nx0, timer_start, flux.f, rsdnm, sum, printf, iend, i, delunm.f, nx0, dz2, rsd, tz2, c.f, d, _imopVarPre378, _imopVarPre370, rsdnm.f, iend, jst, u, dx5, dz1, jacu, frct, tz1, a, i, dx4, ny0, i, frct.f, timer_read, dssp, exit, a.f, b, v, jacld, _imopVarPre380, inorm, dx3, dy5, jend, l2norm, nz0, ist, itmax, tx3, rhs, dy4, nz0, dx2, tolrsd, i, ny, timer_stop, tx2, i, buts, ist, i, j, dz5, tmp, dx1, dy3, jend, nz]
WRITE_S: [b.f, c.f, d.f, u.f, delunm.f, a.f, flux.f, flag.f, rsd.f, rsdnm.f, maxtime]*/
static void ssor(void ) {
/*READ_S: [ty3, d.f, tx1, _imopVarPre379, ny0, blts, flag, timer_clear, u.f, omega, dy2, dz4, ty2, i, flux, flag.f, sqrt, _imopVarPre372, dt, dy1, nx, dz3, rsd.f, tolrsd.f, tv, c, b.f, ty1, jst, _imopVarPre377, tz3, nx0, timer_start, flux.f, rsdnm, sum, printf, iend, i, delunm.f, nx0, dz2, rsd, tz2, c.f, d, _imopVarPre378, _imopVarPre370, rsdnm.f, iend, jst, u, dx5, dz1, jacu, frct, tz1, a, i, dx4, ny0, i, frct.f, timer_read, dssp, exit, a.f, b, v, jacld, _imopVarPre380, inorm, dx3, dy5, jend, l2norm, nz0, ist, itmax, tx3, rhs, dy4, nz0, dx2, tolrsd, i, ny, timer_stop, tx2, i, buts, ist, i, j, dz5, tmp, dx1, dy3, jend, nz]
WRITE_S: [b.f, c.f, d.f, u.f, delunm.f, a.f, flux.f, flag.f, rsd.f, rsdnm.f, maxtime]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int m;
    /*READ_S: []
    WRITE_S: []*/
    int istep;
    /*READ_S: []
    WRITE_S: []*/
    double tmp;
    /*READ_S: []
    WRITE_S: []*/
    double delunm[5];
    /*READ_S: []
    WRITE_S: []*/
    double tv[12][12][5];
    /*READ_S: [omega]
    WRITE_S: []*/
    tmp = 1.0 / (omega * (2.0 - omega));
    /*READ_S: [b.f, c, d, c.f, d.f, a, i, b, a.f]
    WRITE_S: [b.f, c.f, d.f, a.f]*/
#pragma omp parallel private(i, j, k, m)
    {
    /*READ_S: [b.f, c, d, c.f, d.f, a, i, b, a.f]
    WRITE_S: [b.f, c.f, d.f, a.f]*/
        /*READ_S: [b.f, c, d, c.f, d.f, a, i, b, a.f]
        WRITE_S: [b.f, c.f, d.f, a.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < 12; i++) {
        /*READ_S: [b.f, c, d, c.f, d.f, a, b, a.f]
        WRITE_S: [b.f, c.f, d.f, a.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [b.f, c, d, c.f, d.f, a, b, a.f]
            WRITE_S: [b.f, c.f, d.f, a.f]*/
            for (j = 0; j < 12; j++) {
            /*READ_S: [c, b.f, c.f, d, d.f, a, a.f, b]
            WRITE_S: [b.f, c.f, d.f, a.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [c, b.f, c.f, d, d.f, a, a.f, b]
                WRITE_S: [b.f, c.f, d.f, a.f]*/
                for (k = 0; k < 5; k++) {
                /*READ_S: [c, b.f, c.f, d, d.f, a, a.f, b]
                WRITE_S: [b.f, c.f, d.f, a.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [c, b.f, c.f, d, d.f, a, a.f, b]
                    WRITE_S: [b.f, c.f, d.f, a.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [c, b.f, c.f, d, d.f, a, a.f, b]
                    WRITE_S: [b.f, c.f, d.f, a.f]*/
                        /*READ_S: [a, a.f]
                        WRITE_S: [a.f]*/
                        a[i][j][k][m] = 0.0;
                        /*READ_S: [b.f, b]
                        WRITE_S: [b.f]*/
                        b[i][j][k][m] = 0.0;
                        /*READ_S: [c, c.f]
                        WRITE_S: [c.f]*/
                        c[i][j][k][m] = 0.0;
                        /*READ_S: [d, d.f]
                        WRITE_S: [d.f]*/
                        d[i][j][k][m] = 0.0;
                    }
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [rhs]
    WRITE_S: []*/
    rhs();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nz0, ny0, nx0, ist, rsd, rsdnm, jend, l2norm, jst, iend]
    WRITE_S: []*/
    l2norm(nx0, ny0, nz0, ist, iend, jst, jend, rsd, rsdnm);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_clear]
    WRITE_S: []*/
    timer_clear(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_start]
    WRITE_S: []*/
    timer_start(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [itmax]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [tz1, ty3, d.f, tx1, _imopVarPre379, ny0, a, blts, flag, i, u.f, dx4, ny0, i, omega, dy2, dz4, frct.f, dssp, ty2, exit, a.f, b, i, flux, v, jacld, _imopVarPre380, flag.f, sqrt, _imopVarPre372, dt, inorm, dx3, dy5, dy1, nx, dz3, rsd.f, tolrsd.f, jend, l2norm, tv, c, b.f, ty1, jst, _imopVarPre377, tz3, nx0, nz0, flux.f, ist, rsdnm, itmax, sum, printf, tx3, iend, rhs, dy4, nz0, i, delunm.f, nx0, dz2, rsd, dx2, tolrsd, i, ny, tz2, c.f, d, tx2, _imopVarPre378, i, _imopVarPre370, buts, rsdnm.f, iend, jst, ist, i, j, u, dz5, dx5, dz1, tmp, dx1, jacu, dy3, jend, nz, frct]
    WRITE_S: [b.f, c.f, d.f, u.f, delunm.f, a.f, flux.f, flag.f, rsd.f, rsdnm.f]*/
    for (istep = 1; istep <= itmax; istep++) {
    /*READ_S: [tz1, ty3, d.f, tx1, _imopVarPre379, ny0, a, blts, flag, i, u.f, dx4, ny0, i, omega, dy2, dz4, frct.f, dssp, ty2, exit, a.f, b, i, flux, v, jacld, _imopVarPre380, flag.f, sqrt, _imopVarPre372, dt, inorm, dx3, dy5, dy1, nx, dz3, rsd.f, tolrsd.f, jend, l2norm, tv, c, b.f, ty1, jst, _imopVarPre377, tz3, nx0, nz0, flux.f, ist, rsdnm, itmax, sum, printf, tx3, iend, rhs, dy4, nz0, i, delunm.f, nx0, dz2, rsd, dx2, tolrsd, i, ny, tz2, c.f, d, tx2, _imopVarPre378, i, _imopVarPre370, buts, rsdnm.f, iend, jst, ist, i, j, u, dz5, dx5, dz1, tmp, dx1, jacu, dy3, jend, nz, frct]
    WRITE_S: [b.f, c.f, d.f, u.f, delunm.f, a.f, flux.f, flag.f, rsd.f, rsdnm.f]*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre370;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre371;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre370 = istep % 20 == 0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [itmax]
        WRITE_S: []*/
        if (!_imopVarPre370) {
        /*READ_S: [itmax]
        WRITE_S: []*/
            /*READ_S: [itmax]
            WRITE_S: []*/
            _imopVarPre371 = istep == itmax;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            if (!_imopVarPre371) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre371 = istep == 1;
            }
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre370 = _imopVarPre371;
        }
        /*READ_S: [_imopVarPre370]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre370, printf]
        WRITE_S: []*/
        if (_imopVarPre370) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
#pragma omp master
            {
            /*READ_S: [printf]
            WRITE_S: []*/
                /*READ_S: [printf]
                WRITE_S: []*/
                printf(" Time step %4d\n", istep);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
        /*READ_S: [tz1, d.f, tx1, a, blts, flag, u.f, dx4, ny0, i, omega, dy2, dz4, ty2, a.f, b, i, jacld, flag.f, dt, dx3, dy5, dy1, nx, dz3, rsd.f, jend, tv, c, b.f, ty1, ist, iend, dy4, i, nx0, dz2, rsd, dx2, i, ny, tz2, c.f, d, tx2, buts, jst, i, u, dz5, dx5, dz1, tmp, dx1, jacu, dy3, nz]
        WRITE_S: [b.f, c.f, d.f, u.f, a.f, flag.f, rsd.f]*/
#pragma omp parallel private(istep, i, j, k, m)
        {
        /*READ_S: [tz1, d.f, tx1, a, blts, flag, u.f, dx4, ny0, i, omega, dy2, dz4, ty2, a.f, b, i, jacld, flag.f, dt, dx3, dy5, dy1, nx, dz3, rsd.f, jend, tv, c, b.f, ty1, ist, iend, dy4, i, nx0, dz2, rsd, dx2, i, ny, tz2, c.f, d, tx2, buts, jst, i, u, dz5, dx5, dz1, tmp, dx1, jacu, dy3, nz]
        WRITE_S: [b.f, c.f, d.f, u.f, a.f, flag.f, rsd.f]*/
            /*READ_S: [dt, i, ist, rsd, rsd.f, jend, jst, iend, nz]
            WRITE_S: [rsd.f]*/
#pragma omp for nowait
            /*READ_S: [i, ist]
            WRITE_S: []*/
            /*READ_S: [iend]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = ist; i <= iend; i++) {
            /*READ_S: [dt, rsd, rsd.f, jend, jst, nz]
            WRITE_S: [rsd.f]*/
                /*READ_S: [jst]
                WRITE_S: []*/
                /*READ_S: [jend]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dt, rsd, rsd.f, jend, jst, nz]
                WRITE_S: [rsd.f]*/
                for (j = jst; j <= jend; j++) {
                /*READ_S: [dt, rsd, rsd.f, nz]
                WRITE_S: [rsd.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [nz]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [dt, rsd, rsd.f, nz]
                    WRITE_S: [rsd.f]*/
                    for (k = 1; k <= nz - 2; k++) {
                    /*READ_S: [dt, rsd, rsd.f]
                    WRITE_S: [rsd.f]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [dt, rsd, rsd.f]
                        WRITE_S: [rsd.f]*/
                        for (m = 0; m < 5; m++) {
                        /*READ_S: [dt, rsd, rsd.f]
                        WRITE_S: [rsd.f]*/
                            /*READ_S: [dt, rsd, rsd.f]
                            WRITE_S: [rsd.f]*/
                            rsd[i][j][k][m] = dt * rsd[i][j][k][m];
                        }
                    }
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nz]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [tz1, d.f, tx1, a, blts, flag, u.f, dx4, ny0, i, omega, dy2, dz4, ty2, a.f, b, jacld, flag.f, dt, dx3, dy5, dy1, nx, dz3, rsd.f, jend, c, b.f, ty1, ist, iend, dy4, i, nx0, dz2, rsd, dx2, ny, tz2, c.f, d, tx2, jst, u, dz5, dx5, dz1, dx1, dy3, nz]
            WRITE_S: [b.f, c.f, d.f, a.f, flag.f, rsd.f]*/
            for (k = 1; k <= nz - 2; k++) {
            /*READ_S: [tz1, d.f, tx1, a, blts, flag, u.f, dx4, ny0, i, omega, dy2, dz4, ty2, a.f, b, jacld, flag.f, dt, dx3, dy5, dy1, nx, dz3, rsd.f, jend, c, b.f, ty1, ist, iend, dy4, i, nx0, dz2, rsd, dx2, ny, tz2, c.f, d, tx2, jst, u, dz5, dx5, dz1, dx1, dy3, nz]
            WRITE_S: [b.f, c.f, d.f, a.f, flag.f, rsd.f]*/
                /*READ_S: [jacld]
                WRITE_S: []*/
                jacld(k);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [c, d, blts, a, b, ist, jst, iend, ny0, nx0, omega, nx, rsd, jend, ny, nz]
                WRITE_S: []*/
                blts(nx, ny, nz, k, omega, rsd, a, b, c, d, ist, iend, jst, jend, nx0, ny0);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [nz]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [tz1, d.f, tx1, a, flag, u.f, dx4, ny0, omega, dy2, dz4, ty2, a.f, b, flag.f, dt, dx3, dy5, nx, dy1, dz3, rsd.f, jend, tv, c, b.f, ty1, ist, iend, dy4, nx0, dz2, rsd, dx2, i, ny, tz2, c.f, d, tx2, buts, jst, i, u, dz5, dx5, dz1, dx1, jacu, dy3, nz]
            WRITE_S: [b.f, c.f, d.f, a.f, flag.f, rsd.f]*/
            for (k = nz - 2; k >= 1; k--) {
            /*READ_S: [tz1, d.f, tx1, a, flag, u.f, dx4, ny0, omega, dy2, dz4, ty2, a.f, b, flag.f, dt, dx3, dy5, nx, dy1, dz3, rsd.f, jend, tv, c, b.f, ty1, ist, iend, dy4, nx0, dz2, rsd, dx2, i, ny, tz2, c.f, d, tx2, buts, jst, i, u, dz5, dx5, dz1, dx1, jacu, dy3, nz]
            WRITE_S: [b.f, c.f, d.f, a.f, flag.f, rsd.f]*/
                /*READ_S: [jacu]
                WRITE_S: []*/
                jacu(k);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [c, d, a, b, ist, buts, jst, iend, ny0, nx0, omega, nx, rsd, jend, ny, tv, nz]
                WRITE_S: []*/
                buts(nx, ny, nz, k, omega, rsd, tv, d, a, b, c, ist, iend, jst, jend, nx0, ny0);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [u, u.f, i, tmp, ist, rsd, rsd.f, jend, jst, nz, iend]
            WRITE_S: [u.f]*/
#pragma omp for nowait
            /*READ_S: [i, ist]
            WRITE_S: []*/
            /*READ_S: [iend]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = ist; i <= iend; i++) {
            /*READ_S: [u, u.f, tmp, rsd, rsd.f, jend, jst, nz]
            WRITE_S: [u.f]*/
                /*READ_S: [jst]
                WRITE_S: []*/
                /*READ_S: [jend]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u, u.f, tmp, rsd, rsd.f, jend, jst, nz]
                WRITE_S: [u.f]*/
                for (j = jst; j <= jend; j++) {
                /*READ_S: [u, u.f, tmp, rsd, rsd.f, nz]
                WRITE_S: [u.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [nz]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [u, u.f, tmp, rsd, rsd.f, nz]
                    WRITE_S: [u.f]*/
                    for (k = 1; k <= nz - 2; k++) {
                    /*READ_S: [u, u.f, tmp, rsd, rsd.f]
                    WRITE_S: [u.f]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [u, u.f, tmp, rsd, rsd.f]
                        WRITE_S: [u.f]*/
                        for (m = 0; m < 5; m++) {
                        /*READ_S: [u, u.f, tmp, rsd, rsd.f]
                        WRITE_S: [u.f]*/
                            /*READ_S: [u, u.f, tmp, rsd, rsd.f]
                            WRITE_S: [u.f]*/
                            u[i][j][k][m] = u[i][j][k][m] + tmp * rsd[i][j][k][m];
                        }
                    }
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
        /*READ_S: [inorm]
        WRITE_S: []*/
        /*READ_S: [jst, ny0, nx0, nz0, i, v, ist, sqrt, sum, rsdnm.f, iend, jst, iend, ist, inorm, nz0, ny0, delunm.f, nx0, rsd, rsd.f, jend, jend, l2norm]
        WRITE_S: [delunm.f, rsdnm.f]*/
        if (istep % inorm == 0) {
        /*READ_S: [jst, ny0, nx0, nz0, i, v, ist, sqrt, sum, rsdnm.f, iend, jst, iend, ist, nz0, ny0, delunm.f, nx0, rsd, rsd.f, jend, jend, l2norm]
        WRITE_S: [delunm.f, rsdnm.f]*/
            /*READ_S: [nz0, ny0, nx0, ist, rsd, jend, l2norm, jst, iend]
            WRITE_S: []*/
            l2norm(nx0, ny0, nz0, ist, iend, jst, jend, rsd, delunm);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [rhs]
        WRITE_S: []*/
        rhs();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre372;
        /*READ_S: [inorm]
        WRITE_S: []*/
        _imopVarPre372 = (istep % inorm == 0);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [itmax]
        WRITE_S: []*/
        if (!_imopVarPre372) {
        /*READ_S: [itmax]
        WRITE_S: []*/
            /*READ_S: [itmax]
            WRITE_S: []*/
            _imopVarPre372 = (istep == itmax);
        }
        /*READ_S: [_imopVarPre372]
        WRITE_S: []*/
        /*READ_S: [jst, ny0, nx0, nz0, ist, rsdnm, sum, iend, nz0, delunm.f, ny0, nx0, rsd, i, v, sqrt, rsdnm.f, iend, _imopVarPre372, jst, ist, rsd.f, jend, jend, l2norm]
        WRITE_S: [delunm.f, rsdnm.f]*/
        if (_imopVarPre372) {
        /*READ_S: [jst, ny0, nx0, nz0, i, v, ist, rsdnm, sqrt, sum, rsdnm.f, iend, jst, ist, iend, nz0, delunm.f, ny0, nx0, rsd, rsd.f, jend, jend, l2norm]
        WRITE_S: [delunm.f, rsdnm.f]*/
            /*READ_S: [nz0, ny0, nx0, ist, rsd, rsdnm, jend, l2norm, jst, iend]
            WRITE_S: []*/
            l2norm(nx0, ny0, nz0, ist, iend, jst, jend, rsd, rsdnm);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre377;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre378;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre379;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre380;
        /*READ_S: [rsdnm, tolrsd.f, rsdnm.f, tolrsd]
        WRITE_S: []*/
        _imopVarPre377 = (rsdnm[0] < tolrsd[0]);
        /*READ_S: [_imopVarPre377]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre377, _imopVarPre378, _imopVarPre379, _imopVarPre380, rsdnm, tolrsd.f, rsdnm.f, tolrsd]
        WRITE_S: []*/
        if (_imopVarPre377) {
        /*READ_S: [_imopVarPre378, _imopVarPre379, _imopVarPre380, rsdnm, tolrsd.f, rsdnm.f, tolrsd]
        WRITE_S: []*/
            /*READ_S: [rsdnm, tolrsd.f, rsdnm.f, tolrsd]
            WRITE_S: []*/
            _imopVarPre378 = (rsdnm[1] < tolrsd[1]);
            /*READ_S: [_imopVarPre378]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre378, _imopVarPre379, _imopVarPre380, rsdnm, tolrsd.f, rsdnm.f, tolrsd]
            WRITE_S: []*/
            if (_imopVarPre378) {
            /*READ_S: [_imopVarPre379, _imopVarPre380, rsdnm, tolrsd.f, rsdnm.f, tolrsd]
            WRITE_S: []*/
                /*READ_S: [rsdnm, tolrsd.f, rsdnm.f, tolrsd]
                WRITE_S: []*/
                _imopVarPre379 = (rsdnm[2] < tolrsd[2]);
                /*READ_S: [_imopVarPre379]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre379, _imopVarPre380, rsdnm, tolrsd.f, rsdnm.f, tolrsd]
                WRITE_S: []*/
                if (_imopVarPre379) {
                /*READ_S: [_imopVarPre380, rsdnm, tolrsd.f, rsdnm.f, tolrsd]
                WRITE_S: []*/
                    /*READ_S: [rsdnm, tolrsd.f, rsdnm.f, tolrsd]
                    WRITE_S: []*/
                    _imopVarPre380 = (rsdnm[3] < tolrsd[3]);
                    /*READ_S: [_imopVarPre380]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre380, rsdnm, tolrsd.f, rsdnm.f, tolrsd]
                    WRITE_S: []*/
                    if (_imopVarPre380) {
                    /*READ_S: [rsdnm, tolrsd.f, rsdnm.f, tolrsd]
                    WRITE_S: []*/
                        /*READ_S: [rsdnm, tolrsd.f, rsdnm.f, tolrsd]
                        WRITE_S: []*/
                        _imopVarPre380 = (rsdnm[4] < tolrsd[4]);
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre379 = _imopVarPre380;
                }
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre378 = _imopVarPre379;
            }
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre377 = _imopVarPre378;
        }
        /*READ_S: [_imopVarPre377]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre377, exit]
        WRITE_S: []*/
        if (_imopVarPre377) {
        /*READ_S: [exit]
        WRITE_S: []*/
            /*READ_S: [exit]
            WRITE_S: []*/
            exit(1);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: [timer_stop]
    WRITE_S: []*/
    timer_stop(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_read]
    WRITE_S: []*/
    maxtime = timer_read(1);
    /*READ_S: []
    WRITE_S: [maxtime]*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [_imopVarPre386, _imopVarPre384, _imopVarPre410, itmax, printf, _imopVarPre397, verified, _imopVarPre408, nz0, _imopVarPre391, ny0, nx0, errnm.f, _imopVarPre403, _imopVarPre385, _imopVarPre396, rsdnm.f, _imopVarPre398, _imopVarPre409, dt, fabs, _imopVarPre390, _imopVarPre402, _imopVarPre392, _imopVarPre404]
WRITE_S: []*/
static void verify(double xcr[5], double xce[5] , double xci , char *class , boolean *verified) {
/*READ_S: [_imopVarPre386, _imopVarPre384, _imopVarPre410, itmax, printf, _imopVarPre397, verified, _imopVarPre408, nz0, _imopVarPre391, ny0, nx0, errnm.f, _imopVarPre403, _imopVarPre385, _imopVarPre396, rsdnm.f, _imopVarPre398, _imopVarPre409, dt, fabs, _imopVarPre390, _imopVarPre402, _imopVarPre392, _imopVarPre404]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double xcrref[5];
    /*READ_S: []
    WRITE_S: []*/
    double xceref[5];
    /*READ_S: []
    WRITE_S: []*/
    double xciref;
    /*READ_S: []
    WRITE_S: []*/
    double xcrdif[5];
    /*READ_S: []
    WRITE_S: []*/
    double xcedif[5];
    /*READ_S: []
    WRITE_S: []*/
    double xcidif;
    /*READ_S: []
    WRITE_S: []*/
    double epsilon;
    /*READ_S: []
    WRITE_S: []*/
    double dtref;
    /*READ_S: []
    WRITE_S: []*/
    int m;
    /*READ_S: []
    WRITE_S: []*/
    epsilon = 1.0e-08;
    /*READ_S: []
    WRITE_S: []*/
    *class = 'U';
    /*READ_S: []
    WRITE_S: []*/
    *verified = 1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (m = 0; m < 5; m++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        xcrref[m] = 1.0;
        /*READ_S: []
        WRITE_S: []*/
        xceref[m] = 1.0;
    }
    /*READ_S: []
    WRITE_S: []*/
    xciref = 1.0;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre384;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre385;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre386;
    /*READ_S: [nx0]
    WRITE_S: []*/
    _imopVarPre384 = nx0 == 12;
    /*READ_S: [_imopVarPre384]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre385, _imopVarPre386, _imopVarPre384, nz0, ny0, itmax]
    WRITE_S: []*/
    if (_imopVarPre384) {
    /*READ_S: [_imopVarPre385, _imopVarPre386, nz0, ny0, itmax]
    WRITE_S: []*/
        /*READ_S: [ny0]
        WRITE_S: []*/
        _imopVarPre385 = ny0 == 12;
        /*READ_S: [_imopVarPre385]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre385, _imopVarPre386, nz0, itmax]
        WRITE_S: []*/
        if (_imopVarPre385) {
        /*READ_S: [_imopVarPre386, nz0, itmax]
        WRITE_S: []*/
            /*READ_S: [nz0]
            WRITE_S: []*/
            _imopVarPre386 = nz0 == 12;
            /*READ_S: [_imopVarPre386]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre386, itmax]
            WRITE_S: []*/
            if (_imopVarPre386) {
            /*READ_S: [itmax]
            WRITE_S: []*/
                /*READ_S: [itmax]
                WRITE_S: []*/
                _imopVarPre386 = itmax == 50;
            }
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre385 = _imopVarPre386;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre384 = _imopVarPre385;
    }
    /*READ_S: [_imopVarPre384]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre384, _imopVarPre410, itmax, _imopVarPre396, _imopVarPre397, _imopVarPre398, _imopVarPre409, _imopVarPre408, nz0, _imopVarPre391, ny0, _imopVarPre390, nx0, _imopVarPre402, _imopVarPre392, _imopVarPre403, _imopVarPre404]
    WRITE_S: []*/
    if (_imopVarPre384) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        *class = 'S';
        /*READ_S: []
        WRITE_S: []*/
        dtref = 5.0e-1;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[0] = 1.6196343210976702e-02;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[1] = 2.1976745164821318e-03;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[2] = 1.5179927653399185e-03;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[3] = 1.5029584435994323e-03;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[4] = 3.4264073155896461e-02;
        /*READ_S: []
        WRITE_S: []*/
        xceref[0] = 6.4223319957960924e-04;
        /*READ_S: []
        WRITE_S: []*/
        xceref[1] = 8.4144342047347926e-05;
        /*READ_S: []
        WRITE_S: []*/
        xceref[2] = 5.8588269616485186e-05;
        /*READ_S: []
        WRITE_S: []*/
        xceref[3] = 5.8474222595157350e-05;
        /*READ_S: []
        WRITE_S: []*/
        xceref[4] = 1.3103347914111294e-03;
        /*READ_S: []
        WRITE_S: []*/
        xciref = 7.8418928865937083;
    } else {
    /*READ_S: [_imopVarPre410, itmax, _imopVarPre396, _imopVarPre397, _imopVarPre398, _imopVarPre409, _imopVarPre408, nz0, _imopVarPre391, ny0, _imopVarPre390, nx0, _imopVarPre402, _imopVarPre392, _imopVarPre403, _imopVarPre404]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre390;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre391;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre392;
        /*READ_S: [nx0]
        WRITE_S: []*/
        _imopVarPre390 = nx0 == 33;
        /*READ_S: [_imopVarPre390]
        WRITE_S: []*/
        /*READ_S: [nz0, _imopVarPre391, ny0, _imopVarPre390, _imopVarPre392, itmax]
        WRITE_S: []*/
        if (_imopVarPre390) {
        /*READ_S: [nz0, _imopVarPre391, ny0, _imopVarPre392, itmax]
        WRITE_S: []*/
            /*READ_S: [ny0]
            WRITE_S: []*/
            _imopVarPre391 = ny0 == 33;
            /*READ_S: [_imopVarPre391]
            WRITE_S: []*/
            /*READ_S: [nz0, _imopVarPre391, _imopVarPre392, itmax]
            WRITE_S: []*/
            if (_imopVarPre391) {
            /*READ_S: [nz0, _imopVarPre392, itmax]
            WRITE_S: []*/
                /*READ_S: [nz0]
                WRITE_S: []*/
                _imopVarPre392 = nz0 == 33;
                /*READ_S: [_imopVarPre392]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre392, itmax]
                WRITE_S: []*/
                if (_imopVarPre392) {
                /*READ_S: [itmax]
                WRITE_S: []*/
                    /*READ_S: [itmax]
                    WRITE_S: []*/
                    _imopVarPre392 = itmax == 300;
                }
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre391 = _imopVarPre392;
            }
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre390 = _imopVarPre391;
        }
        /*READ_S: [_imopVarPre390]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre410, itmax, _imopVarPre396, _imopVarPre397, _imopVarPre398, _imopVarPre409, _imopVarPre408, nz0, ny0, nx0, _imopVarPre390, _imopVarPre402, _imopVarPre403, _imopVarPre404]
        WRITE_S: []*/
        if (_imopVarPre390) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            *class = 'W';
            /*READ_S: []
            WRITE_S: []*/
            dtref = 1.5e-3;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[0] = 0.1236511638192e+02;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[1] = 0.1317228477799e+01;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[2] = 0.2550120713095e+01;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[3] = 0.2326187750252e+01;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[4] = 0.2826799444189e+02;
            /*READ_S: []
            WRITE_S: []*/
            xceref[0] = 0.4867877144216;
            /*READ_S: []
            WRITE_S: []*/
            xceref[1] = 0.5064652880982e-01;
            /*READ_S: []
            WRITE_S: []*/
            xceref[2] = 0.9281818101960e-01;
            /*READ_S: []
            WRITE_S: []*/
            xceref[3] = 0.8570126542733e-01;
            /*READ_S: []
            WRITE_S: []*/
            xceref[4] = 0.1084277417792e+01;
            /*READ_S: []
            WRITE_S: []*/
            xciref = 0.1161399311023e+02;
        } else {
        /*READ_S: [_imopVarPre410, itmax, _imopVarPre396, _imopVarPre397, _imopVarPre398, _imopVarPre409, _imopVarPre408, nz0, ny0, nx0, _imopVarPre402, _imopVarPre403, _imopVarPre404]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre396;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre397;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre398;
            /*READ_S: [nx0]
            WRITE_S: []*/
            _imopVarPre396 = nx0 == 64;
            /*READ_S: [_imopVarPre396]
            WRITE_S: []*/
            /*READ_S: [nz0, ny0, _imopVarPre396, itmax, _imopVarPre397, _imopVarPre398]
            WRITE_S: []*/
            if (_imopVarPre396) {
            /*READ_S: [nz0, ny0, itmax, _imopVarPre397, _imopVarPre398]
            WRITE_S: []*/
                /*READ_S: [ny0]
                WRITE_S: []*/
                _imopVarPre397 = ny0 == 64;
                /*READ_S: [_imopVarPre397]
                WRITE_S: []*/
                /*READ_S: [nz0, itmax, _imopVarPre397, _imopVarPre398]
                WRITE_S: []*/
                if (_imopVarPre397) {
                /*READ_S: [nz0, itmax, _imopVarPre398]
                WRITE_S: []*/
                    /*READ_S: [nz0]
                    WRITE_S: []*/
                    _imopVarPre398 = nz0 == 64;
                    /*READ_S: [_imopVarPre398]
                    WRITE_S: []*/
                    /*READ_S: [itmax, _imopVarPre398]
                    WRITE_S: []*/
                    if (_imopVarPre398) {
                    /*READ_S: [itmax]
                    WRITE_S: []*/
                        /*READ_S: [itmax]
                        WRITE_S: []*/
                        _imopVarPre398 = itmax == 250;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre397 = _imopVarPre398;
                }
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre396 = _imopVarPre397;
            }
            /*READ_S: [_imopVarPre396]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre409, _imopVarPre408, nz0, ny0, nx0, _imopVarPre410, _imopVarPre402, itmax, _imopVarPre396, _imopVarPre403, _imopVarPre404]
            WRITE_S: []*/
            if (_imopVarPre396) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                *class = 'A';
                /*READ_S: []
                WRITE_S: []*/
                dtref = 2.0e+0;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[0] = 7.7902107606689367e+02;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[1] = 6.3402765259692870e+01;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[2] = 1.9499249727292479e+02;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[3] = 1.7845301160418537e+02;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[4] = 1.8384760349464247e+03;
                /*READ_S: []
                WRITE_S: []*/
                xceref[0] = 2.9964085685471943e+01;
                /*READ_S: []
                WRITE_S: []*/
                xceref[1] = 2.8194576365003349;
                /*READ_S: []
                WRITE_S: []*/
                xceref[2] = 7.3473412698774742;
                /*READ_S: []
                WRITE_S: []*/
                xceref[3] = 6.7139225687777051;
                /*READ_S: []
                WRITE_S: []*/
                xceref[4] = 7.0715315688392578e+01;
                /*READ_S: []
                WRITE_S: []*/
                xciref = 2.6030925604886277e+01;
            } else {
            /*READ_S: [_imopVarPre409, _imopVarPre408, nz0, ny0, nx0, _imopVarPre410, _imopVarPre402, itmax, _imopVarPre403, _imopVarPre404]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre402;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre403;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre404;
                /*READ_S: [nx0]
                WRITE_S: []*/
                _imopVarPre402 = nx0 == 102;
                /*READ_S: [_imopVarPre402]
                WRITE_S: []*/
                /*READ_S: [nz0, ny0, _imopVarPre402, itmax, _imopVarPre403, _imopVarPre404]
                WRITE_S: []*/
                if (_imopVarPre402) {
                /*READ_S: [nz0, ny0, itmax, _imopVarPre403, _imopVarPre404]
                WRITE_S: []*/
                    /*READ_S: [ny0]
                    WRITE_S: []*/
                    _imopVarPre403 = ny0 == 102;
                    /*READ_S: [_imopVarPre403]
                    WRITE_S: []*/
                    /*READ_S: [nz0, itmax, _imopVarPre403, _imopVarPre404]
                    WRITE_S: []*/
                    if (_imopVarPre403) {
                    /*READ_S: [nz0, itmax, _imopVarPre404]
                    WRITE_S: []*/
                        /*READ_S: [nz0]
                        WRITE_S: []*/
                        _imopVarPre404 = nz0 == 102;
                        /*READ_S: [_imopVarPre404]
                        WRITE_S: []*/
                        /*READ_S: [itmax, _imopVarPre404]
                        WRITE_S: []*/
                        if (_imopVarPre404) {
                        /*READ_S: [itmax]
                        WRITE_S: []*/
                            /*READ_S: [itmax]
                            WRITE_S: []*/
                            _imopVarPre404 = itmax == 250;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre403 = _imopVarPre404;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre402 = _imopVarPre403;
                }
                /*READ_S: [_imopVarPre402]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre409, _imopVarPre408, nz0, ny0, nx0, _imopVarPre410, _imopVarPre402, itmax]
                WRITE_S: []*/
                if (_imopVarPre402) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    *class = 'B';
                    /*READ_S: []
                    WRITE_S: []*/
                    dtref = 2.0e+0;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[0] = 3.5532672969982736e+03;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[1] = 2.6214750795310692e+02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[2] = 8.8333721850952190e+02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[3] = 7.7812774739425265e+02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[4] = 7.3087969592545314e+03;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[0] = 1.1401176380212709e+02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[1] = 8.1098963655421574;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[2] = 2.8480597317698308e+01;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[3] = 2.5905394567832939e+01;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[4] = 2.6054907504857413e+02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xciref = 4.7887162703308227e+01;
                } else {
                /*READ_S: [_imopVarPre409, _imopVarPre408, nz0, ny0, nx0, _imopVarPre410, itmax]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre408;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre409;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre410;
                    /*READ_S: [nx0]
                    WRITE_S: []*/
                    _imopVarPre408 = nx0 == 162;
                    /*READ_S: [_imopVarPre408]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre409, _imopVarPre408, nz0, ny0, _imopVarPre410, itmax]
                    WRITE_S: []*/
                    if (_imopVarPre408) {
                    /*READ_S: [_imopVarPre409, nz0, ny0, _imopVarPre410, itmax]
                    WRITE_S: []*/
                        /*READ_S: [ny0]
                        WRITE_S: []*/
                        _imopVarPre409 = ny0 == 162;
                        /*READ_S: [_imopVarPre409]
                        WRITE_S: []*/
                        /*READ_S: [_imopVarPre409, nz0, _imopVarPre410, itmax]
                        WRITE_S: []*/
                        if (_imopVarPre409) {
                        /*READ_S: [nz0, _imopVarPre410, itmax]
                        WRITE_S: []*/
                            /*READ_S: [nz0]
                            WRITE_S: []*/
                            _imopVarPre410 = nz0 == 162;
                            /*READ_S: [_imopVarPre410]
                            WRITE_S: []*/
                            /*READ_S: [_imopVarPre410, itmax]
                            WRITE_S: []*/
                            if (_imopVarPre410) {
                            /*READ_S: [itmax]
                            WRITE_S: []*/
                                /*READ_S: [itmax]
                                WRITE_S: []*/
                                _imopVarPre410 = itmax == 250;
                            }
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre409 = _imopVarPre410;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre408 = _imopVarPre409;
                    }
                    /*READ_S: [_imopVarPre408]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre408]
                    WRITE_S: []*/
                    if (_imopVarPre408) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        *class = 'C';
                        /*READ_S: []
                        WRITE_S: []*/
                        dtref = 2.0e+0;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[0] = 1.03766980323537846e+04;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[1] = 8.92212458801008552e+02;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[2] = 2.56238814582660871e+03;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[3] = 2.19194343857831427e+03;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[4] = 1.78078057261061185e+04;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[0] = 2.15986399716949279e+02;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[1] = 1.55789559239863600e+01;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[2] = 5.41318863077207766e+01;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[3] = 4.82262643154045421e+01;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[4] = 4.55902910043250358e+02;
                        /*READ_S: []
                        WRITE_S: []*/
                        xciref = 6.66404553572181300e+01;
                    } else {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        *verified = 0;
                    }
                }
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fabs, errnm.f, rsdnm.f]
    WRITE_S: []*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [fabs, errnm.f, rsdnm.f]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre412;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre413;
        /*READ_S: [rsdnm.f]
        WRITE_S: []*/
        _imopVarPre412 = (xcr[m] - xcrref[m]) / xcrref[m];
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre413 = fabs(_imopVarPre412);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        xcrdif[m] = _imopVarPre413;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre415;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre416;
        /*READ_S: [errnm.f]
        WRITE_S: []*/
        _imopVarPre415 = (xce[m] - xceref[m]) / xceref[m];
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre416 = fabs(_imopVarPre415);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        xcedif[m] = _imopVarPre416;
    }
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre418;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre419;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre418 = (xci - xciref) / xciref;
    /*READ_S: [fabs]
    WRITE_S: []*/
    _imopVarPre419 = fabs(_imopVarPre418);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    xcidif = _imopVarPre419;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [dt, fabs, printf]
    WRITE_S: []*/
    if (*class != 'U') {
    /*READ_S: [dt, fabs, printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        char _imopVarPre421;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre421 = *class;
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("\n Verification being performed for class %1c\n", _imopVarPre421);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Accuracy setting for epsilon = %20.13e\n", epsilon);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre424;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre425;
        /*READ_S: [dt]
        WRITE_S: []*/
        _imopVarPre424 = dt - dtref;
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre425 = fabs(_imopVarPre424);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        if (_imopVarPre425 > epsilon) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            *verified = 0;
            /*READ_S: []
            WRITE_S: []*/
            *class = 'U';
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" DT does not match the reference value of %15.8e\n", dtref);
            /*READ_S: []
            WRITE_S: []*/
        }
    } else {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Unknown class\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    if (*class != 'U') {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Comparison of RMS-norms of residual\n");
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" RMS-norms of residual\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [rsdnm.f, printf]
    WRITE_S: []*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [rsdnm.f, printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rsdnm.f, printf]
        WRITE_S: []*/
        if (*class == 'U') {
        /*READ_S: [printf, rsdnm.f]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre427;
            /*READ_S: [rsdnm.f]
            WRITE_S: []*/
            _imopVarPre427 = xcr[m];
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("          %2d  %20.13e\n", m, _imopVarPre427);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [rsdnm.f, printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rsdnm.f, printf]
            WRITE_S: []*/
            if (xcrdif[m] > epsilon) {
            /*READ_S: [rsdnm.f, printf]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                *verified = 0;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre431;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre432;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre433;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre431 = xcrdif[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre432 = xcrref[m];
                /*READ_S: [rsdnm.f]
                WRITE_S: []*/
                _imopVarPre433 = xcr[m];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf(" FAILURE: %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre433, _imopVarPre432, _imopVarPre431);
                /*READ_S: []
                WRITE_S: []*/
            } else {
            /*READ_S: [rsdnm.f, printf]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre437;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre438;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre439;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre437 = xcrdif[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre438 = xcrref[m];
                /*READ_S: [rsdnm.f]
                WRITE_S: []*/
                _imopVarPre439 = xcr[m];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("          %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre439, _imopVarPre438, _imopVarPre437);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    if (*class != 'U') {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Comparison of RMS-norms of solution error\n");
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" RMS-norms of solution error\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [errnm.f, printf]
    WRITE_S: []*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [errnm.f, printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [errnm.f, printf]
        WRITE_S: []*/
        if (*class == 'U') {
        /*READ_S: [errnm.f, printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre441;
            /*READ_S: [errnm.f]
            WRITE_S: []*/
            _imopVarPre441 = xce[m];
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("          %2d  %20.13e\n", m, _imopVarPre441);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [errnm.f, printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [errnm.f, printf]
            WRITE_S: []*/
            if (xcedif[m] > epsilon) {
            /*READ_S: [errnm.f, printf]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                *verified = 0;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre445;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre446;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre447;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre445 = xcedif[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre446 = xceref[m];
                /*READ_S: [errnm.f]
                WRITE_S: []*/
                _imopVarPre447 = xce[m];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf(" FAILURE: %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre447, _imopVarPre446, _imopVarPre445);
                /*READ_S: []
                WRITE_S: []*/
            } else {
            /*READ_S: [errnm.f, printf]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre451;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre452;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre453;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre451 = xcedif[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre452 = xceref[m];
                /*READ_S: [errnm.f]
                WRITE_S: []*/
                _imopVarPre453 = xce[m];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("          %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre453, _imopVarPre452, _imopVarPre451);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    if (*class != 'U') {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Comparison of surface integral\n");
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Surface integral\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    if (*class == 'U') {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("              %20.13e\n", xci);
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        if (xcidif > epsilon) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            *verified = 0;
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" FAILURE:     %20.13e%20.13e%20.13e\n", xci, xciref, xcidif);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("              %20.13e%20.13e%20.13e\n", xci, xciref, xcidif);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, verified]
    WRITE_S: []*/
    if (*class == 'U') {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" No reference values provided\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" No verification performed\n");
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [printf, verified]
    WRITE_S: []*/
        /*READ_S: [verified]
        WRITE_S: []*/
        /*READ_S: [printf, verified]
        WRITE_S: []*/
        if (*verified) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" Verification Successful\n");
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" Verification failed\n");
            /*READ_S: []
            WRITE_S: []*/
        }
    }
}
