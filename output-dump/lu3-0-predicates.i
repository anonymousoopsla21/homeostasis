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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    char class;
    /*OUT: {
    Reverse<--,>}*/
    boolean verified;
    /*OUT: {
    Reverse<--,>}*/
    double mflops;
    /*OUT: {
    Reverse<--,>}*/
    int nthreads = 1;
    /*OUT: {
    Reverse<--,>}*/
    read_input();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    domain();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    setcoeff();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    setbv();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    setiv();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    erhs();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel
    {
#pragma omp master
        {
            /*OUT: {
            Reverse<11660,>}*/
            nthreads = omp_get_num_threads();
            /*OUT: {
            Reverse<11660,>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    ssor();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    error();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    pintgr();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre144;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre145;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre144 = &verified;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre145 = &class;
    /*OUT: {
    Reverse<--,>}*/
    verify(rsdnm, errnm, frc, _imopVarPre145, _imopVarPre144);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    mflops = (double) itmax * (1984.77 * (double) nx0 * (double) ny0 * (double) nz0 - 10923.3 * (((double) (nx0 + ny0 + nz0) / 3.0) * ((double) (nx0 + ny0 + nz0) / 3.0)) + 27770.9 * (double) (nx0 + ny0 + nz0) / 3.0 - 144010.0) / (maxtime * 1000000.0);
    /*OUT: {
    Reverse<--,>}*/
    c_print_results("LU", class, nx0, ny0, nz0, itmax, nthreads, maxtime, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "(none)");
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void blts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double ldz[12][12][5][5] , double ldy[12][12][5][5] , double ldx[12][12][5][5] , double d[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    double tmp;
    /*OUT: {
    Reverse<--,>}*/
    double tmp1;
    /*OUT: {
    Reverse<--,>}*/
    double tmat[5][5];
#pragma omp for nowait schedule(static)
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 322_1;>}*/
    for (i = ist; i <= iend; i++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 325_1; 322_0;>}*/
        for (j = jst; j <= jend; j++) {
            /*OUT: {
            Reverse<--, 322_0;>}*/
            /*OUT: {
            Reverse<--, 322_0;>}*/
            /*OUT: {
            Reverse<--, 325_0; 322_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 325_0; 322_0;>}*/
                v[i][j][k][m] = v[i][j][k][m] - omega * (ldz[i][j][m][0] * v[i][j][k - 1][0] + ldz[i][j][m][1] * v[i][j][k - 1][1] + ldz[i][j][m][2] * v[i][j][k - 1][2] + ldz[i][j][m][3] * v[i][j][k - 1][3] + ldz[i][j][m][4] * v[i][j][k - 1][4]);
            }
        }
    }
#pragma omp for nowait schedule(static)
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 394_1; 390_1; 388_0; 385_1; 383_0;>
    Reverse<--, 394_1; 390_1; 388_0; 383_1;>
    Reverse<--, 394_1; 388_1; 385_1; 383_0;>
    Reverse<--, 394_1; 388_1; 383_1;>}*/
    for (i = ist; i <= iend; i++) {
        /*OUT: {
        Reverse<--,>}*/
        if (i != ist) {
            /*OUT: {
            Reverse<--, 383_0;>}*/
            while (flag[i - 1] == 0) {
                /*OUT: {
                Reverse<--, 385_0; 383_0;>}*/
                // #pragma omp dummyFlush FLUSH_START
                /*OUT: {
                Reverse<--, 385_0; 383_0;>}*/
#pragma omp flush(flag)
                /*OUT: {
                Reverse<--, 385_0; 383_0;>}*/
                ;
            }
        }
        /*OUT: {
        Reverse<--, 385_1; 383_0;>
        Reverse<--, 383_1;>}*/
        if (i != iend) {
            /*OUT: {
            Reverse<--, 388_0; 385_1; 383_0;>
            Reverse<--, 388_0; 383_1;>}*/
            while (flag[i] == 1) {
                /*OUT: {
                Reverse<--, 390_0; 388_0; 383_1;>
                Reverse<--, 390_0; 388_0; 385_1; 383_0;>}*/
                // #pragma omp dummyFlush FLUSH_START
                /*OUT: {
                Reverse<--, 390_0; 388_0; 383_1;>
                Reverse<--, 390_0; 388_0; 385_1; 383_0;>}*/
#pragma omp flush(flag)
                /*OUT: {
                Reverse<--, 390_0; 388_0; 383_1;>
                Reverse<--, 390_0; 388_0; 385_1; 383_0;>}*/
                ;
            }
        }
        /*OUT: {
        Reverse<--, 390_1; 388_0; 383_1;>
        Reverse<--, 388_1; 385_1; 383_0;>
        Reverse<--, 390_1; 388_0; 385_1; 383_0;>
        Reverse<--, 388_1; 383_1;>}*/
        /*OUT: {
        Reverse<--, 390_1; 388_0; 383_1;>
        Reverse<--, 388_1; 385_1; 383_0;>
        Reverse<--, 390_1; 388_0; 385_1; 383_0;>
        Reverse<--, 388_1; 383_1;>}*/
        /*OUT: {
        Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
        Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
        Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
        Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
        for (j = jst; j <= jend; j++) {
            /*OUT: {
            Reverse<--, 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 394_0; 390_1; 388_0; 383_1;>
            Reverse<--, 394_0; 388_1; 383_1;>}*/
            /*OUT: {
            Reverse<--, 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 394_0; 390_1; 388_0; 383_1;>
            Reverse<--, 394_0; 388_1; 383_1;>}*/
            /*OUT: {
            Reverse<--, 397_0; 394_0; 390_1; 388_0; 383_1;>
            Reverse<--, 397_0; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 397_0; 394_0; 388_1; 383_1;>
            Reverse<--, 397_0; 394_0; 390_1; 388_0; 385_1; 383_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 397_0; 394_0; 390_1; 388_0; 383_1;>
                Reverse<--, 397_0; 394_0; 388_1; 385_1; 383_0;>
                Reverse<--, 397_0; 394_0; 388_1; 383_1;>
                Reverse<--, 397_0; 394_0; 390_1; 388_0; 385_1; 383_0;>}*/
                v[i][j][k][m] = v[i][j][k][m] - omega * (ldy[i][j][m][0] * v[i][j - 1][k][0] + ldx[i][j][m][0] * v[i - 1][j][k][0] + ldy[i][j][m][1] * v[i][j - 1][k][1] + ldx[i][j][m][1] * v[i - 1][j][k][1] + ldy[i][j][m][2] * v[i][j - 1][k][2] + ldx[i][j][m][2] * v[i - 1][j][k][2] + ldy[i][j][m][3] * v[i][j - 1][k][3] + ldx[i][j][m][3] * v[i - 1][j][k][3] + ldy[i][j][m][4] * v[i][j - 1][k][4] + ldx[i][j][m][4] * v[i - 1][j][k][4]);
            }
            /*OUT: {
            Reverse<--, 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            /*OUT: {
            Reverse<--, 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            /*OUT: {
            Reverse<--, 491_0; 397_1; 394_0; 390_1; 388_0; 383_1;>
            Reverse<--, 491_0; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_0; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_0; 397_1; 394_0; 388_1; 383_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 491_0; 397_1; 394_0; 390_1; 388_0; 383_1;>
                Reverse<--, 491_0; 397_1; 394_0; 388_1; 385_1; 383_0;>
                Reverse<--, 491_0; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
                Reverse<--, 491_0; 397_1; 394_0; 388_1; 383_1;>}*/
                tmat[m][0] = d[i][j][m][0];
                /*OUT: {
                Reverse<--, 491_0; 397_1; 394_0; 390_1; 388_0; 383_1;>
                Reverse<--, 491_0; 397_1; 394_0; 388_1; 385_1; 383_0;>
                Reverse<--, 491_0; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
                Reverse<--, 491_0; 397_1; 394_0; 388_1; 383_1;>}*/
                tmat[m][1] = d[i][j][m][1];
                /*OUT: {
                Reverse<--, 491_0; 397_1; 394_0; 390_1; 388_0; 383_1;>
                Reverse<--, 491_0; 397_1; 394_0; 388_1; 385_1; 383_0;>
                Reverse<--, 491_0; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
                Reverse<--, 491_0; 397_1; 394_0; 388_1; 383_1;>}*/
                tmat[m][2] = d[i][j][m][2];
                /*OUT: {
                Reverse<--, 491_0; 397_1; 394_0; 390_1; 388_0; 383_1;>
                Reverse<--, 491_0; 397_1; 394_0; 388_1; 385_1; 383_0;>
                Reverse<--, 491_0; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
                Reverse<--, 491_0; 397_1; 394_0; 388_1; 383_1;>}*/
                tmat[m][3] = d[i][j][m][3];
                /*OUT: {
                Reverse<--, 491_0; 397_1; 394_0; 390_1; 388_0; 383_1;>
                Reverse<--, 491_0; 397_1; 394_0; 388_1; 385_1; 383_0;>
                Reverse<--, 491_0; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
                Reverse<--, 491_0; 397_1; 394_0; 388_1; 383_1;>}*/
                tmat[m][4] = d[i][j][m][4];
            }
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp1 = 1.0 / tmat[0][0];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp = tmp1 * tmat[1][0];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[1][1] = tmat[1][1] - tmp * tmat[0][1];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[1][2] = tmat[1][2] - tmp * tmat[0][2];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[1][3] = tmat[1][3] - tmp * tmat[0][3];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[1][4] = tmat[1][4] - tmp * tmat[0][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][1] = v[i][j][k][1] - v[i][j][k][0] * tmp;
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp = tmp1 * tmat[2][0];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[2][1] = tmat[2][1] - tmp * tmat[0][1];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[0][2];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[0][3];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[0][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][2] = v[i][j][k][2] - v[i][j][k][0] * tmp;
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp = tmp1 * tmat[3][0];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[3][1] = tmat[3][1] - tmp * tmat[0][1];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[0][2];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[0][3];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[0][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][0] * tmp;
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp = tmp1 * tmat[4][0];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[4][1] = tmat[4][1] - tmp * tmat[0][1];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[0][2];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[0][3];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[0][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][0] * tmp;
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp1 = 1.0 / tmat[1][1];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp = tmp1 * tmat[2][1];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[1][2];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[1][3];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[1][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][2] = v[i][j][k][2] - v[i][j][k][1] * tmp;
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp = tmp1 * tmat[3][1];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[1][2];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[1][3];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[1][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][1] * tmp;
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp = tmp1 * tmat[4][1];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[1][2];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[1][3];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[1][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][1] * tmp;
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp1 = 1.0 / tmat[2][2];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp = tmp1 * tmat[3][2];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[2][3];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[2][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][2] * tmp;
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp = tmp1 * tmat[4][2];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[2][3];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[2][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][2] * tmp;
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp1 = 1.0 / tmat[3][3];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmp = tmp1 * tmat[4][3];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[3][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][3] * tmp;
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][4] = v[i][j][k][4] / tmat[4][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][3] = v[i][j][k][3] - tmat[3][4] * v[i][j][k][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][3] = v[i][j][k][3] / tmat[3][3];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][2] = v[i][j][k][2] - tmat[2][3] * v[i][j][k][3] - tmat[2][4] * v[i][j][k][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][2] = v[i][j][k][2] / tmat[2][2];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][1] = v[i][j][k][1] - tmat[1][2] * v[i][j][k][2] - tmat[1][3] * v[i][j][k][3] - tmat[1][4] * v[i][j][k][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][1] = v[i][j][k][1] / tmat[1][1];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][0] = v[i][j][k][0] - tmat[0][1] * v[i][j][k][1] - tmat[0][2] * v[i][j][k][2] - tmat[0][3] * v[i][j][k][3] - tmat[0][4] * v[i][j][k][4];
            /*OUT: {
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 491_1; 397_1; 394_0; 388_1; 383_1;>
            Reverse<--, 491_1; 397_1; 394_0; 390_1; 388_0; 383_1;>}*/
            v[i][j][k][0] = v[i][j][k][0] / tmat[0][0];
        }
        /*OUT: {
        Reverse<--, 394_1; 390_1; 388_0; 385_1; 383_0;>
        Reverse<--, 394_1; 390_1; 388_0; 383_1;>
        Reverse<--, 394_1; 388_1; 385_1; 383_0;>
        Reverse<--, 394_1; 388_1; 383_1;>}*/
        if (i != ist) {
            /*OUT: {
            Reverse<--, 1129_0; 394_1; 390_1; 388_0; 383_1;>
            Reverse<--, 1129_0; 394_1; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 1129_0; 394_1; 388_1; 385_1; 383_0;>
            Reverse<--, 1129_0; 394_1; 388_1; 383_1;>}*/
            flag[i - 1] = 0;
        }
        /*OUT: {
        Reverse<--, 394_1; 390_1; 388_0; 385_1; 383_0;>
        Reverse<--, 394_1; 390_1; 388_0; 383_1;>
        Reverse<--, 394_1; 388_1; 385_1; 383_0;>
        Reverse<--, 394_1; 388_1; 383_1;>}*/
        if (i != iend) {
            /*OUT: {
            Reverse<--, 1133_0; 394_1; 390_1; 388_0; 385_1; 383_0;>
            Reverse<--, 1133_0; 394_1; 388_1; 385_1; 383_0;>
            Reverse<--, 1133_0; 394_1; 388_1; 383_1;>
            Reverse<--, 1133_0; 394_1; 390_1; 388_0; 383_1;>}*/
            flag[i] = 1;
        }
        /*OUT: {
        Reverse<--, 394_1; 390_1; 388_0; 385_1; 383_0;>
        Reverse<--, 394_1; 390_1; 388_0; 383_1;>
        Reverse<--, 394_1; 388_1; 385_1; 383_0;>
        Reverse<--, 394_1; 388_1; 383_1;>}*/
        // #pragma omp dummyFlush FLUSH_START
        /*OUT: {
        Reverse<--, 394_1; 390_1; 388_0; 385_1; 383_0;>
        Reverse<--, 394_1; 390_1; 388_0; 383_1;>
        Reverse<--, 394_1; 388_1; 385_1; 383_0;>
        Reverse<--, 394_1; 388_1; 383_1;>}*/
#pragma omp flush(flag)
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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void buts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double tv[12][12][5] , double d[12][12][5][5] , double udx[12][12][5][5] , double udy[12][12][5][5] , double udz[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    double tmp;
    /*OUT: {
    Reverse<--,>}*/
    double tmp1;
    /*OUT: {
    Reverse<--,>}*/
    double tmat[5][5];
#pragma omp for nowait schedule(static)
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1167_1;>}*/
    for (i = iend; i >= ist; i--) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 1170_1; 1167_0;>}*/
        for (j = jend; j >= jst; j--) {
            /*OUT: {
            Reverse<--, 1167_0;>}*/
            /*OUT: {
            Reverse<--, 1167_0;>}*/
            /*OUT: {
            Reverse<--, 1170_0; 1167_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 1170_0; 1167_0;>}*/
                tv[i][j][m] = omega * (udz[i][j][m][0] * v[i][j][k + 1][0] + udz[i][j][m][1] * v[i][j][k + 1][1] + udz[i][j][m][2] * v[i][j][k + 1][2] + udz[i][j][m][3] * v[i][j][k + 1][3] + udz[i][j][m][4] * v[i][j][k + 1][4]);
            }
        }
    }
#pragma omp for nowait schedule(static)
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1234_1; 1228_1; 1225_1; 1223_0;>
    Reverse<--, 1234_1; 1230_1; 1228_0; 1223_1;>
    Reverse<--, 1234_1; 1228_1; 1223_1;>
    Reverse<--, 1234_1; 1230_1; 1228_0; 1225_1; 1223_0;>}*/
    for (i = iend; i >= ist; i--) {
        /*OUT: {
        Reverse<--,>}*/
        if (i != iend) {
            /*OUT: {
            Reverse<--, 1223_0;>}*/
            while (flag[i + 1] == 0) {
                /*OUT: {
                Reverse<--, 1225_0; 1223_0;>}*/
                // #pragma omp dummyFlush FLUSH_START
                /*OUT: {
                Reverse<--, 1225_0; 1223_0;>}*/
#pragma omp flush(flag)
                /*OUT: {
                Reverse<--, 1225_0; 1223_0;>}*/
                ;
            }
        }
        /*OUT: {
        Reverse<--, 1225_1; 1223_0;>
        Reverse<--, 1223_1;>}*/
        if (i != ist) {
            /*OUT: {
            Reverse<--, 1228_0; 1223_1;>
            Reverse<--, 1228_0; 1225_1; 1223_0;>}*/
            while (flag[i] == 1) {
                /*OUT: {
                Reverse<--, 1230_0; 1228_0; 1225_1; 1223_0;>
                Reverse<--, 1230_0; 1228_0; 1223_1;>}*/
                // #pragma omp dummyFlush FLUSH_START
                /*OUT: {
                Reverse<--, 1230_0; 1228_0; 1225_1; 1223_0;>
                Reverse<--, 1230_0; 1228_0; 1223_1;>}*/
#pragma omp flush(flag)
                /*OUT: {
                Reverse<--, 1230_0; 1228_0; 1225_1; 1223_0;>
                Reverse<--, 1230_0; 1228_0; 1223_1;>}*/
                ;
            }
        }
        /*OUT: {
        Reverse<--, 1228_1; 1225_1; 1223_0;>
        Reverse<--, 1228_1; 1223_1;>
        Reverse<--, 1230_1; 1228_0; 1225_1; 1223_0;>
        Reverse<--, 1230_1; 1228_0; 1223_1;>}*/
        /*OUT: {
        Reverse<--, 1228_1; 1225_1; 1223_0;>
        Reverse<--, 1228_1; 1223_1;>
        Reverse<--, 1230_1; 1228_0; 1225_1; 1223_0;>
        Reverse<--, 1230_1; 1228_0; 1223_1;>}*/
        /*OUT: {
        Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
        Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
        Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
        Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
        for (j = jend; j >= jst; j--) {
            /*OUT: {
            Reverse<--, 1234_0; 1228_1; 1225_1; 1223_0;>
            Reverse<--, 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>}*/
            /*OUT: {
            Reverse<--, 1234_0; 1228_1; 1225_1; 1223_0;>
            Reverse<--, 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>}*/
            /*OUT: {
            Reverse<--, 1237_0; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1237_0; 1234_0; 1228_1; 1225_1; 1223_0;>
            Reverse<--, 1237_0; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1237_0; 1234_0; 1230_1; 1228_0; 1223_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 1237_0; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
                Reverse<--, 1237_0; 1234_0; 1228_1; 1225_1; 1223_0;>
                Reverse<--, 1237_0; 1234_0; 1228_1; 1223_1;>
                Reverse<--, 1237_0; 1234_0; 1230_1; 1228_0; 1223_1;>}*/
                tv[i][j][m] = tv[i][j][m] + omega * (udy[i][j][m][0] * v[i][j + 1][k][0] + udx[i][j][m][0] * v[i + 1][j][k][0] + udy[i][j][m][1] * v[i][j + 1][k][1] + udx[i][j][m][1] * v[i + 1][j][k][1] + udy[i][j][m][2] * v[i][j + 1][k][2] + udx[i][j][m][2] * v[i + 1][j][k][2] + udy[i][j][m][3] * v[i][j + 1][k][3] + udx[i][j][m][3] * v[i + 1][j][k][3] + udy[i][j][m][4] * v[i][j + 1][k][4] + udx[i][j][m][4] * v[i + 1][j][k][4]);
            }
            /*OUT: {
            Reverse<--, 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>
            Reverse<--, 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>}*/
            /*OUT: {
            Reverse<--, 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>
            Reverse<--, 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>}*/
            /*OUT: {
            Reverse<--, 1329_0; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_0; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>
            Reverse<--, 1329_0; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_0; 1237_1; 1234_0; 1228_1; 1223_1;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<--, 1329_0; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1228_1; 1223_1;>}*/
                tmat[m][0] = d[i][j][m][0];
                /*OUT: {
                Reverse<--, 1329_0; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1228_1; 1223_1;>}*/
                tmat[m][1] = d[i][j][m][1];
                /*OUT: {
                Reverse<--, 1329_0; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1228_1; 1223_1;>}*/
                tmat[m][2] = d[i][j][m][2];
                /*OUT: {
                Reverse<--, 1329_0; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1228_1; 1223_1;>}*/
                tmat[m][3] = d[i][j][m][3];
                /*OUT: {
                Reverse<--, 1329_0; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
                Reverse<--, 1329_0; 1237_1; 1234_0; 1228_1; 1223_1;>}*/
                tmat[m][4] = d[i][j][m][4];
            }
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp1 = 1.0 / tmat[0][0];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp = tmp1 * tmat[1][0];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[1][1] = tmat[1][1] - tmp * tmat[0][1];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[1][2] = tmat[1][2] - tmp * tmat[0][2];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[1][3] = tmat[1][3] - tmp * tmat[0][3];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[1][4] = tmat[1][4] - tmp * tmat[0][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][1] = tv[i][j][1] - tv[i][j][0] * tmp;
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp = tmp1 * tmat[2][0];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[2][1] = tmat[2][1] - tmp * tmat[0][1];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[0][2];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[0][3];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[0][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][2] = tv[i][j][2] - tv[i][j][0] * tmp;
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp = tmp1 * tmat[3][0];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[3][1] = tmat[3][1] - tmp * tmat[0][1];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[0][2];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[0][3];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[0][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][3] = tv[i][j][3] - tv[i][j][0] * tmp;
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp = tmp1 * tmat[4][0];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[4][1] = tmat[4][1] - tmp * tmat[0][1];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[0][2];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[0][3];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[0][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][0] * tmp;
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp1 = 1.0 / tmat[1][1];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp = tmp1 * tmat[2][1];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[1][2];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[1][3];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[1][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][2] = tv[i][j][2] - tv[i][j][1] * tmp;
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp = tmp1 * tmat[3][1];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[1][2];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[1][3];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[1][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][3] = tv[i][j][3] - tv[i][j][1] * tmp;
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp = tmp1 * tmat[4][1];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[1][2];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[1][3];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[1][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][1] * tmp;
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp1 = 1.0 / tmat[2][2];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp = tmp1 * tmat[3][2];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[2][3];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[2][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][3] = tv[i][j][3] - tv[i][j][2] * tmp;
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp = tmp1 * tmat[4][2];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[2][3];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[2][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][2] * tmp;
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp1 = 1.0 / tmat[3][3];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmp = tmp1 * tmat[4][3];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[3][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][3] * tmp;
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][4] = tv[i][j][4] / tmat[4][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][3] = tv[i][j][3] - tmat[3][4] * tv[i][j][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][3] = tv[i][j][3] / tmat[3][3];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][2] = tv[i][j][2] - tmat[2][3] * tv[i][j][3] - tmat[2][4] * tv[i][j][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][2] = tv[i][j][2] / tmat[2][2];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][1] = tv[i][j][1] - tmat[1][2] * tv[i][j][2] - tmat[1][3] * tv[i][j][3] - tmat[1][4] * tv[i][j][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][1] = tv[i][j][1] / tmat[1][1];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][0] = tv[i][j][0] - tmat[0][1] * tv[i][j][1] - tmat[0][2] * tv[i][j][2] - tmat[0][3] * tv[i][j][3] - tmat[0][4] * tv[i][j][4];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            tv[i][j][0] = tv[i][j][0] / tmat[0][0];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            v[i][j][k][0] = v[i][j][k][0] - tv[i][j][0];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            v[i][j][k][1] = v[i][j][k][1] - tv[i][j][1];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            v[i][j][k][2] = v[i][j][k][2] - tv[i][j][2];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            v[i][j][k][3] = v[i][j][k][3] - tv[i][j][3];
            /*OUT: {
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1223_1;>
            Reverse<--, 1329_1; 1237_1; 1234_0; 1228_1; 1225_1; 1223_0;>}*/
            v[i][j][k][4] = v[i][j][k][4] - tv[i][j][4];
        }
        /*OUT: {
        Reverse<--, 1234_1; 1228_1; 1225_1; 1223_0;>
        Reverse<--, 1234_1; 1230_1; 1228_0; 1223_1;>
        Reverse<--, 1234_1; 1228_1; 1223_1;>
        Reverse<--, 1234_1; 1230_1; 1228_0; 1225_1; 1223_0;>}*/
        if (i != iend) {
            /*OUT: {
            Reverse<--, 1974_0; 1234_1; 1228_1; 1225_1; 1223_0;>
            Reverse<--, 1974_0; 1234_1; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1974_0; 1234_1; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1974_0; 1234_1; 1228_1; 1223_1;>}*/
            flag[i + 1] = 0;
        }
        /*OUT: {
        Reverse<--, 1234_1; 1228_1; 1225_1; 1223_0;>
        Reverse<--, 1234_1; 1230_1; 1228_0; 1223_1;>
        Reverse<--, 1234_1; 1228_1; 1223_1;>
        Reverse<--, 1234_1; 1230_1; 1228_0; 1225_1; 1223_0;>}*/
        if (i != ist) {
            /*OUT: {
            Reverse<--, 1978_0; 1234_1; 1228_1; 1223_1;>
            Reverse<--, 1978_0; 1234_1; 1230_1; 1228_0; 1223_1;>
            Reverse<--, 1978_0; 1234_1; 1230_1; 1228_0; 1225_1; 1223_0;>
            Reverse<--, 1978_0; 1234_1; 1228_1; 1225_1; 1223_0;>}*/
            flag[i] = 1;
        }
        /*OUT: {
        Reverse<--, 1234_1; 1228_1; 1225_1; 1223_0;>
        Reverse<--, 1234_1; 1230_1; 1228_0; 1223_1;>
        Reverse<--, 1234_1; 1228_1; 1223_1;>
        Reverse<--, 1234_1; 1230_1; 1228_0; 1225_1; 1223_0;>}*/
        // #pragma omp dummyFlush FLUSH_START
        /*OUT: {
        Reverse<--, 1234_1; 1228_1; 1225_1; 1223_0;>
        Reverse<--, 1234_1; 1230_1; 1228_0; 1223_1;>
        Reverse<--, 1234_1; 1228_1; 1223_1;>
        Reverse<--, 1234_1; 1230_1; 1228_0; 1225_1; 1223_0;>}*/
#pragma omp flush(flag)
    }
}
static void domain() {
    /*OUT: {
    Reverse<--,>}*/
    nx = nx0;
    /*OUT: {
    Reverse<--,>}*/
    ny = ny0;
    /*OUT: {
    Reverse<--,>}*/
    nz = nz0;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre146;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre147;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre146 = nx < 4;
    /*OUT: {
    Reverse<--,>}*/
    if (!_imopVarPre146) {
        /*OUT: {
        Reverse<--, 1993_0;>}*/
        _imopVarPre147 = ny < 4;
        /*OUT: {
        Reverse<--, 1993_0;>}*/
        if (!_imopVarPre147) {
            /*OUT: {
            Reverse<--, 1996_0; 1993_0;>}*/
            _imopVarPre147 = nz < 4;
        }
        /*OUT: {
        Reverse<--, 1993_0;>}*/
        _imopVarPre146 = _imopVarPre147;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre146) {
        /*OUT: {
        Reverse<--, 2001_0;>}*/
        printf("     SUBDOMAIN SIZE IS TOO SMALL - \n" "     ADJUST PROBLEM SIZE OR NUMBER OF PROCESSORS\n" "     SO THAT NX, NY AND NZ ARE GREATER THAN OR EQUAL\n" "     TO 4 THEY ARE CURRENTLY%3d%3d%3d\n", nx, ny, nz);
        /*OUT: {
        Reverse<--, 2001_0;>}*/
        /*OUT: {
        Reverse<--, 2001_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 2001_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre148;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre149;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre148 = nx > 12;
    /*OUT: {
    Reverse<--,>}*/
    if (!_imopVarPre148) {
        /*OUT: {
        Reverse<--, 2016_0;>}*/
        _imopVarPre149 = ny > 12;
        /*OUT: {
        Reverse<--, 2016_0;>}*/
        if (!_imopVarPre149) {
            /*OUT: {
            Reverse<--, 2019_0; 2016_0;>}*/
            _imopVarPre149 = nz > 12;
        }
        /*OUT: {
        Reverse<--, 2016_0;>}*/
        _imopVarPre148 = _imopVarPre149;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre148) {
        /*OUT: {
        Reverse<--, 2024_0;>}*/
        printf("     SUBDOMAIN SIZE IS TOO LARGE - \n" "     ADJUST PROBLEM SIZE OR NUMBER OF PROCESSORS\n" "     SO THAT NX, NY AND NZ ARE LESS THAN OR EQUAL TO \n" "     ISIZ1, ISIZ2 AND ISIZ3 RESPECTIVELY.  THEY ARE\n" "     CURRENTLY%4d%4d%4d\n", nx, ny, nz);
        /*OUT: {
        Reverse<--, 2024_0;>}*/
        /*OUT: {
        Reverse<--, 2024_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 2024_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    ist = 1;
    /*OUT: {
    Reverse<--,>}*/
    iend = nx - 2;
    /*OUT: {
    Reverse<--,>}*/
    jst = 1;
    /*OUT: {
    Reverse<--,>}*/
    jend = ny - 2;
}
static void erhs() {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<11859,>}*/
        int i;
        /*OUT: {
        Reverse<11859,>}*/
        int j;
        /*OUT: {
        Reverse<11859,>}*/
        int k;
        /*OUT: {
        Reverse<11859,>}*/
        int m;
        /*OUT: {
        Reverse<11859,>}*/
        int iglob;
        /*OUT: {
        Reverse<11859,>}*/
        int jglob;
        /*OUT: {
        Reverse<11859,>}*/
        int L1;
        /*OUT: {
        Reverse<11859,>}*/
        int L2;
        /*OUT: {
        Reverse<11859,>}*/
        int ist1;
        /*OUT: {
        Reverse<11859,>}*/
        int iend1;
        /*OUT: {
        Reverse<11859,>}*/
        int jst1;
        /*OUT: {
        Reverse<11859,>}*/
        int jend1;
        /*OUT: {
        Reverse<11859,>}*/
        double dsspm;
        /*OUT: {
        Reverse<11859,>}*/
        double xi;
        /*OUT: {
        Reverse<11859,>}*/
        double eta;
        /*OUT: {
        Reverse<11859,>}*/
        double zeta;
        /*OUT: {
        Reverse<11859,>}*/
        double q;
        /*OUT: {
        Reverse<11859,>}*/
        double u21;
        /*OUT: {
        Reverse<11859,>}*/
        double u31;
        /*OUT: {
        Reverse<11859,>}*/
        double u41;
        /*OUT: {
        Reverse<11859,>}*/
        double tmp;
        /*OUT: {
        Reverse<11859,>}*/
        double u21i;
        /*OUT: {
        Reverse<11859,>}*/
        double u31i;
        /*OUT: {
        Reverse<11859,>}*/
        double u41i;
        /*OUT: {
        Reverse<11859,>}*/
        double u51i;
        /*OUT: {
        Reverse<11859,>}*/
        double u21j;
        /*OUT: {
        Reverse<11859,>}*/
        double u31j;
        /*OUT: {
        Reverse<11859,>}*/
        double u41j;
        /*OUT: {
        Reverse<11859,>}*/
        double u51j;
        /*OUT: {
        Reverse<11859,>}*/
        double u21k;
        /*OUT: {
        Reverse<11859,>}*/
        double u31k;
        /*OUT: {
        Reverse<11859,>}*/
        double u41k;
        /*OUT: {
        Reverse<11859,>}*/
        double u51k;
        /*OUT: {
        Reverse<11859,>}*/
        double u21im1;
        /*OUT: {
        Reverse<11859,>}*/
        double u31im1;
        /*OUT: {
        Reverse<11859,>}*/
        double u41im1;
        /*OUT: {
        Reverse<11859,>}*/
        double u51im1;
        /*OUT: {
        Reverse<11859,>}*/
        double u21jm1;
        /*OUT: {
        Reverse<11859,>}*/
        double u31jm1;
        /*OUT: {
        Reverse<11859,>}*/
        double u41jm1;
        /*OUT: {
        Reverse<11859,>}*/
        double u51jm1;
        /*OUT: {
        Reverse<11859,>}*/
        double u21km1;
        /*OUT: {
        Reverse<11859,>}*/
        double u31km1;
        /*OUT: {
        Reverse<11859,>}*/
        double u41km1;
        /*OUT: {
        Reverse<11859,>}*/
        double u51km1;
        /*OUT: {
        Reverse<11859,>}*/
        dsspm = dssp;
#pragma omp for nowait
        /*OUT: {
        Reverse<11859,>}*/
        /*OUT: {
        Reverse<11859,>}*/
        /*OUT: {
        Reverse<11859, 2096_1;>}*/
        for (i = 0; i < nx; i++) {
            /*OUT: {
            Reverse<11859,>}*/
            /*OUT: {
            Reverse<11859,>}*/
            /*OUT: {
            Reverse<11859, 2099_1; 2096_0;>}*/
            for (j = 0; j < ny; j++) {
                /*OUT: {
                Reverse<11859, 2096_0;>}*/
                /*OUT: {
                Reverse<11859, 2096_0;>}*/
                /*OUT: {
                Reverse<11859, 2102_1; 2099_0; 2096_0;>}*/
                for (k = 0; k < nz; k++) {
                    /*OUT: {
                    Reverse<11859, 2099_0; 2096_0;>}*/
                    /*OUT: {
                    Reverse<11859, 2099_0; 2096_0;>}*/
                    /*OUT: {
                    Reverse<11859, 2102_0; 2099_0; 2096_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<11859, 2102_0; 2099_0; 2096_0;>}*/
                        frct[i][j][k][m] = 0.0;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<11859,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2110,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<2110,>}*/
        /*OUT: {
        Reverse<2110,>}*/
        /*OUT: {
        Reverse<2110, 2123_1;>}*/
        for (i = 0; i < nx; i++) {
            /*OUT: {
            Reverse<2110,>}*/
            iglob = i;
            /*OUT: {
            Reverse<2110,>}*/
            xi = ((double) iglob) / (nx0 - 1);
            /*OUT: {
            Reverse<2110,>}*/
            /*OUT: {
            Reverse<2110,>}*/
            /*OUT: {
            Reverse<2110, 2132_1; 2123_0;>}*/
            for (j = 0; j < ny; j++) {
                /*OUT: {
                Reverse<2110, 2123_0;>}*/
                jglob = j;
                /*OUT: {
                Reverse<2110, 2123_0;>}*/
                eta = ((double) jglob) / (ny0 - 1);
                /*OUT: {
                Reverse<2110, 2123_0;>}*/
                /*OUT: {
                Reverse<2110, 2123_0;>}*/
                /*OUT: {
                Reverse<2110, 2139_1; 2132_0; 2123_0;>}*/
                for (k = 0; k < nz; k++) {
                    /*OUT: {
                    Reverse<2110, 2132_0; 2123_0;>}*/
                    zeta = ((double) k) / (nz - 1);
                    /*OUT: {
                    Reverse<2110, 2132_0; 2123_0;>}*/
                    /*OUT: {
                    Reverse<2110, 2132_0; 2123_0;>}*/
                    /*OUT: {
                    Reverse<2110, 2139_0; 2132_0; 2123_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<2110, 2139_0; 2132_0; 2123_0;>}*/
                        rsd[i][j][k][m] = ce[m][0] + ce[m][1] * xi + ce[m][2] * eta + ce[m][3] * zeta + ce[m][4] * xi * xi + ce[m][5] * eta * eta + ce[m][6] * zeta * zeta + ce[m][7] * xi * xi * xi + ce[m][8] * eta * eta * eta + ce[m][9] * zeta * zeta * zeta + ce[m][10] * xi * xi * xi * xi + ce[m][11] * eta * eta * eta * eta + ce[m][12] * zeta * zeta * zeta * zeta;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<2110,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2173,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<2173,>}*/
        L1 = 0;
        /*OUT: {
        Reverse<2173,>}*/
        L2 = nx - 1;
#pragma omp for nowait
        /*OUT: {
        Reverse<2173,>}*/
        /*OUT: {
        Reverse<2173,>}*/
        /*OUT: {
        Reverse<2173, 2184_1;>}*/
        for (i = L1; i <= L2; i++) {
            /*OUT: {
            Reverse<2173,>}*/
            /*OUT: {
            Reverse<2173,>}*/
            /*OUT: {
            Reverse<2173, 2187_1; 2184_0;>}*/
            for (j = jst; j <= jend; j++) {
                /*OUT: {
                Reverse<2173, 2184_0;>}*/
                /*OUT: {
                Reverse<2173, 2184_0;>}*/
                /*OUT: {
                Reverse<2173, 2187_0; 2184_0;>}*/
                for (k = 1; k < nz - 1; k++) {
                    /*OUT: {
                    Reverse<2173, 2187_0; 2184_0;>}*/
                    flux[i][j][k][0] = rsd[i][j][k][1];
                    /*OUT: {
                    Reverse<2173, 2187_0; 2184_0;>}*/
                    u21 = rsd[i][j][k][1] / rsd[i][j][k][0];
                    /*OUT: {
                    Reverse<2173, 2187_0; 2184_0;>}*/
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    /*OUT: {
                    Reverse<2173, 2187_0; 2184_0;>}*/
                    flux[i][j][k][1] = rsd[i][j][k][1] * u21 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    /*OUT: {
                    Reverse<2173, 2187_0; 2184_0;>}*/
                    flux[i][j][k][2] = rsd[i][j][k][2] * u21;
                    /*OUT: {
                    Reverse<2173, 2187_0; 2184_0;>}*/
                    flux[i][j][k][3] = rsd[i][j][k][3] * u21;
                    /*OUT: {
                    Reverse<2173, 2187_0; 2184_0;>}*/
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u21;
                }
            }
        }
        /*OUT: {
        Reverse<2173,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2286,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<2286,>}*/
        /*OUT: {
        Reverse<2286,>}*/
        /*OUT: {
        Reverse<2286, 2293_1;>}*/
        for (j = jst; j <= jend; j++) {
            /*OUT: {
            Reverse<2286,>}*/
            /*OUT: {
            Reverse<2286,>}*/
            /*OUT: {
            Reverse<2286, 2667_1; 2630_1; 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
            for (k = 1; k <= nz - 2; k++) {
                /*OUT: {
                Reverse<2286, 2293_0;>}*/
                /*OUT: {
                Reverse<2286, 2293_0;>}*/
                /*OUT: {
                Reverse<2286, 2299_1; 2296_0; 2293_0;>}*/
                for (i = ist; i <= iend; i++) {
                    /*OUT: {
                    Reverse<2286, 2296_0; 2293_0;>}*/
                    /*OUT: {
                    Reverse<2286, 2296_0; 2293_0;>}*/
                    /*OUT: {
                    Reverse<2286, 2299_0; 2296_0; 2293_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<2286, 2299_0; 2296_0; 2293_0;>}*/
                        frct[i][j][k][m] = frct[i][j][k][m] - tx2 * (flux[i + 1][j][k][m] - flux[i - 1][j][k][m]);
                    }
                }
                /*OUT: {
                Reverse<2286, 2296_1; 2293_0;>}*/
                /*OUT: {
                Reverse<2286, 2296_1; 2293_0;>}*/
                /*OUT: {
                Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                for (i = ist; i <= L2; i++) {
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    tmp = 1.0 / rsd[i][j][k][0];
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    u21i = tmp * rsd[i][j][k][1];
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    u31i = tmp * rsd[i][j][k][2];
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    u41i = tmp * rsd[i][j][k][3];
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    u51i = tmp * rsd[i][j][k][4];
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    tmp = 1.0 / rsd[i - 1][j][k][0];
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    u21im1 = tmp * rsd[i - 1][j][k][1];
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    u31im1 = tmp * rsd[i - 1][j][k][2];
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    u41im1 = tmp * rsd[i - 1][j][k][3];
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    u51im1 = tmp * rsd[i - 1][j][k][4];
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    flux[i][j][k][1] = (4.0 / 3.0) * tx3 * (u21i - u21im1);
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    flux[i][j][k][2] = tx3 * (u31i - u31im1);
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    flux[i][j][k][3] = tx3 * (u41i - u41im1);
                    /*OUT: {
                    Reverse<2286, 2321_0; 2296_1; 2293_0;>}*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tx3 * ((u21i * u21i + u31i * u31i + u41i * u41i) - (u21im1 * u21im1 + u31im1 * u31im1 + u41im1 * u41im1)) + (1.0 / 6.0) * tx3 * (u21i * u21i - u21im1 * u21im1) + 1.40e+00 * 1.40e+00 * tx3 * (u51i - u51im1);
                }
                /*OUT: {
                Reverse<2286, 2321_1; 2296_1; 2293_0;>}*/
                /*OUT: {
                Reverse<2286, 2321_1; 2296_1; 2293_0;>}*/
                /*OUT: {
                Reverse<2286, 2419_0; 2321_1; 2296_1; 2293_0;>}*/
                for (i = ist; i <= iend; i++) {
                    /*OUT: {
                    Reverse<2286, 2419_0; 2321_1; 2296_1; 2293_0;>}*/
                    frct[i][j][k][0] = frct[i][j][k][0] + dx1 * tx1 * (rsd[i - 1][j][k][0] - 2.0 * rsd[i][j][k][0] + rsd[i + 1][j][k][0]);
                    /*OUT: {
                    Reverse<2286, 2419_0; 2321_1; 2296_1; 2293_0;>}*/
                    frct[i][j][k][1] = frct[i][j][k][1] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][1] - flux[i][j][k][1]) + dx2 * tx1 * (rsd[i - 1][j][k][1] - 2.0 * rsd[i][j][k][1] + rsd[i + 1][j][k][1]);
                    /*OUT: {
                    Reverse<2286, 2419_0; 2321_1; 2296_1; 2293_0;>}*/
                    frct[i][j][k][2] = frct[i][j][k][2] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][2] - flux[i][j][k][2]) + dx3 * tx1 * (rsd[i - 1][j][k][2] - 2.0 * rsd[i][j][k][2] + rsd[i + 1][j][k][2]);
                    /*OUT: {
                    Reverse<2286, 2419_0; 2321_1; 2296_1; 2293_0;>}*/
                    frct[i][j][k][3] = frct[i][j][k][3] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][3] - flux[i][j][k][3]) + dx4 * tx1 * (rsd[i - 1][j][k][3] - 2.0 * rsd[i][j][k][3] + rsd[i + 1][j][k][3]);
                    /*OUT: {
                    Reverse<2286, 2419_0; 2321_1; 2296_1; 2293_0;>}*/
                    frct[i][j][k][4] = frct[i][j][k][4] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][4] - flux[i][j][k][4]) + dx5 * tx1 * (rsd[i - 1][j][k][4] - 2.0 * rsd[i][j][k][4] + rsd[i + 1][j][k][4]);
                }
                /*OUT: {
                Reverse<2286, 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                /*OUT: {
                Reverse<2286, 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                /*OUT: {
                Reverse<2286, 2573_0; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<2286, 2573_0; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                    frct[1][j][k][m] = frct[1][j][k][m] - dsspm * (+5.0 * rsd[1][j][k][m] - 4.0 * rsd[2][j][k][m] + rsd[3][j][k][m]);
                    /*OUT: {
                    Reverse<2286, 2573_0; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                    frct[2][j][k][m] = frct[2][j][k][m] - dsspm * (-4.0 * rsd[1][j][k][m] + 6.0 * rsd[2][j][k][m] - 4.0 * rsd[3][j][k][m] + rsd[4][j][k][m]);
                }
                /*OUT: {
                Reverse<2286, 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                ist1 = 3;
                /*OUT: {
                Reverse<2286, 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                iend1 = nx - 4;
                /*OUT: {
                Reverse<2286, 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                /*OUT: {
                Reverse<2286, 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                /*OUT: {
                Reverse<2286, 2633_1; 2630_0; 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                for (i = ist1; i <= iend1; i++) {
                    /*OUT: {
                    Reverse<2286, 2630_0; 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                    /*OUT: {
                    Reverse<2286, 2630_0; 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                    /*OUT: {
                    Reverse<2286, 2633_0; 2630_0; 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<2286, 2633_0; 2630_0; 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i - 2][j][k][m] - 4.0 * rsd[i - 1][j][k][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i + 1][j][k][m] + rsd[i + 2][j][k][m]);
                    }
                }
                /*OUT: {
                Reverse<2286, 2630_1; 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                /*OUT: {
                Reverse<2286, 2630_1; 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                /*OUT: {
                Reverse<2286, 2667_0; 2630_1; 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<2286, 2667_0; 2630_1; 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                    frct[nx - 3][j][k][m] = frct[nx - 3][j][k][m] - dsspm * (rsd[nx - 5][j][k][m] - 4.0 * rsd[nx - 4][j][k][m] + 6.0 * rsd[nx - 3][j][k][m] - 4.0 * rsd[nx - 2][j][k][m]);
                    /*OUT: {
                    Reverse<2286, 2667_0; 2630_1; 2573_1; 2419_1; 2321_1; 2296_1; 2293_0;>}*/
                    frct[nx - 2][j][k][m] = frct[nx - 2][j][k][m] - dsspm * (rsd[nx - 4][j][k][m] - 4.0 * rsd[nx - 3][j][k][m] + 5.0 * rsd[nx - 2][j][k][m]);
                }
            }
        }
        /*OUT: {
        Reverse<2286,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2719,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<2719,>}*/
        L1 = 0;
        /*OUT: {
        Reverse<2719,>}*/
        L2 = ny - 1;
#pragma omp for nowait
        /*OUT: {
        Reverse<2719,>}*/
        /*OUT: {
        Reverse<2719,>}*/
        /*OUT: {
        Reverse<2719, 2730_1;>}*/
        for (i = ist; i <= iend; i++) {
            /*OUT: {
            Reverse<2719,>}*/
            /*OUT: {
            Reverse<2719,>}*/
            /*OUT: {
            Reverse<2719, 2733_1; 2730_0;>}*/
            for (j = L1; j <= L2; j++) {
                /*OUT: {
                Reverse<2719, 2730_0;>}*/
                /*OUT: {
                Reverse<2719, 2730_0;>}*/
                /*OUT: {
                Reverse<2719, 2733_0; 2730_0;>}*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: {
                    Reverse<2719, 2733_0; 2730_0;>}*/
                    flux[i][j][k][0] = rsd[i][j][k][2];
                    /*OUT: {
                    Reverse<2719, 2733_0; 2730_0;>}*/
                    u31 = rsd[i][j][k][2] / rsd[i][j][k][0];
                    /*OUT: {
                    Reverse<2719, 2733_0; 2730_0;>}*/
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    /*OUT: {
                    Reverse<2719, 2733_0; 2730_0;>}*/
                    flux[i][j][k][1] = rsd[i][j][k][1] * u31;
                    /*OUT: {
                    Reverse<2719, 2733_0; 2730_0;>}*/
                    flux[i][j][k][2] = rsd[i][j][k][2] * u31 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    /*OUT: {
                    Reverse<2719, 2733_0; 2730_0;>}*/
                    flux[i][j][k][3] = rsd[i][j][k][3] * u31;
                    /*OUT: {
                    Reverse<2719, 2733_0; 2730_0;>}*/
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u31;
                }
            }
        }
        /*OUT: {
        Reverse<2719,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2832,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<2832,>}*/
        /*OUT: {
        Reverse<2832,>}*/
        /*OUT: {
        Reverse<2832, 2839_1;>}*/
        for (i = ist; i <= iend; i++) {
            /*OUT: {
            Reverse<2832,>}*/
            /*OUT: {
            Reverse<2832,>}*/
            /*OUT: {
            Reverse<2832, 3213_1; 3176_1; 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
            for (k = 1; k <= nz - 2; k++) {
                /*OUT: {
                Reverse<2832, 2839_0;>}*/
                /*OUT: {
                Reverse<2832, 2839_0;>}*/
                /*OUT: {
                Reverse<2832, 2845_1; 2842_0; 2839_0;>}*/
                for (j = jst; j <= jend; j++) {
                    /*OUT: {
                    Reverse<2832, 2842_0; 2839_0;>}*/
                    /*OUT: {
                    Reverse<2832, 2842_0; 2839_0;>}*/
                    /*OUT: {
                    Reverse<2832, 2845_0; 2842_0; 2839_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<2832, 2845_0; 2842_0; 2839_0;>}*/
                        frct[i][j][k][m] = frct[i][j][k][m] - ty2 * (flux[i][j + 1][k][m] - flux[i][j - 1][k][m]);
                    }
                }
                /*OUT: {
                Reverse<2832, 2842_1; 2839_0;>}*/
                /*OUT: {
                Reverse<2832, 2842_1; 2839_0;>}*/
                /*OUT: {
                Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                for (j = jst; j <= L2; j++) {
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    tmp = 1.0 / rsd[i][j][k][0];
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    u21j = tmp * rsd[i][j][k][1];
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    u31j = tmp * rsd[i][j][k][2];
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    u41j = tmp * rsd[i][j][k][3];
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    u51j = tmp * rsd[i][j][k][4];
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    tmp = 1.0 / rsd[i][j - 1][k][0];
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    u21jm1 = tmp * rsd[i][j - 1][k][1];
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    u31jm1 = tmp * rsd[i][j - 1][k][2];
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    u41jm1 = tmp * rsd[i][j - 1][k][3];
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    u51jm1 = tmp * rsd[i][j - 1][k][4];
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    flux[i][j][k][1] = ty3 * (u21j - u21jm1);
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    flux[i][j][k][2] = (4.0 / 3.0) * ty3 * (u31j - u31jm1);
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    flux[i][j][k][3] = ty3 * (u41j - u41jm1);
                    /*OUT: {
                    Reverse<2832, 2867_0; 2842_1; 2839_0;>}*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * ty3 * ((u21j * u21j + u31j * u31j + u41j * u41j) - (u21jm1 * u21jm1 + u31jm1 * u31jm1 + u41jm1 * u41jm1)) + (1.0 / 6.0) * ty3 * (u31j * u31j - u31jm1 * u31jm1) + 1.40e+00 * 1.40e+00 * ty3 * (u51j - u51jm1);
                }
                /*OUT: {
                Reverse<2832, 2867_1; 2842_1; 2839_0;>}*/
                /*OUT: {
                Reverse<2832, 2867_1; 2842_1; 2839_0;>}*/
                /*OUT: {
                Reverse<2832, 2965_0; 2867_1; 2842_1; 2839_0;>}*/
                for (j = jst; j <= jend; j++) {
                    /*OUT: {
                    Reverse<2832, 2965_0; 2867_1; 2842_1; 2839_0;>}*/
                    frct[i][j][k][0] = frct[i][j][k][0] + dy1 * ty1 * (rsd[i][j - 1][k][0] - 2.0 * rsd[i][j][k][0] + rsd[i][j + 1][k][0]);
                    /*OUT: {
                    Reverse<2832, 2965_0; 2867_1; 2842_1; 2839_0;>}*/
                    frct[i][j][k][1] = frct[i][j][k][1] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][1] - flux[i][j][k][1]) + dy2 * ty1 * (rsd[i][j - 1][k][1] - 2.0 * rsd[i][j][k][1] + rsd[i][j + 1][k][1]);
                    /*OUT: {
                    Reverse<2832, 2965_0; 2867_1; 2842_1; 2839_0;>}*/
                    frct[i][j][k][2] = frct[i][j][k][2] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][2] - flux[i][j][k][2]) + dy3 * ty1 * (rsd[i][j - 1][k][2] - 2.0 * rsd[i][j][k][2] + rsd[i][j + 1][k][2]);
                    /*OUT: {
                    Reverse<2832, 2965_0; 2867_1; 2842_1; 2839_0;>}*/
                    frct[i][j][k][3] = frct[i][j][k][3] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][3] - flux[i][j][k][3]) + dy4 * ty1 * (rsd[i][j - 1][k][3] - 2.0 * rsd[i][j][k][3] + rsd[i][j + 1][k][3]);
                    /*OUT: {
                    Reverse<2832, 2965_0; 2867_1; 2842_1; 2839_0;>}*/
                    frct[i][j][k][4] = frct[i][j][k][4] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][4] - flux[i][j][k][4]) + dy5 * ty1 * (rsd[i][j - 1][k][4] - 2.0 * rsd[i][j][k][4] + rsd[i][j + 1][k][4]);
                }
                /*OUT: {
                Reverse<2832, 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                /*OUT: {
                Reverse<2832, 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                /*OUT: {
                Reverse<2832, 3119_0; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<2832, 3119_0; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                    frct[i][1][k][m] = frct[i][1][k][m] - dsspm * (+5.0 * rsd[i][1][k][m] - 4.0 * rsd[i][2][k][m] + rsd[i][3][k][m]);
                    /*OUT: {
                    Reverse<2832, 3119_0; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                    frct[i][2][k][m] = frct[i][2][k][m] - dsspm * (-4.0 * rsd[i][1][k][m] + 6.0 * rsd[i][2][k][m] - 4.0 * rsd[i][3][k][m] + rsd[i][4][k][m]);
                }
                /*OUT: {
                Reverse<2832, 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                jst1 = 3;
                /*OUT: {
                Reverse<2832, 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                jend1 = ny - 4;
                /*OUT: {
                Reverse<2832, 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                /*OUT: {
                Reverse<2832, 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                /*OUT: {
                Reverse<2832, 3179_1; 3176_0; 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                for (j = jst1; j <= jend1; j++) {
                    /*OUT: {
                    Reverse<2832, 3176_0; 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                    /*OUT: {
                    Reverse<2832, 3176_0; 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                    /*OUT: {
                    Reverse<2832, 3179_0; 3176_0; 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<2832, 3179_0; 3176_0; 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i][j - 2][k][m] - 4.0 * rsd[i][j - 1][k][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i][j + 1][k][m] + rsd[i][j + 2][k][m]);
                    }
                }
                /*OUT: {
                Reverse<2832, 3176_1; 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                /*OUT: {
                Reverse<2832, 3176_1; 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                /*OUT: {
                Reverse<2832, 3213_0; 3176_1; 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<2832, 3213_0; 3176_1; 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                    frct[i][ny - 3][k][m] = frct[i][ny - 3][k][m] - dsspm * (rsd[i][ny - 5][k][m] - 4.0 * rsd[i][ny - 4][k][m] + 6.0 * rsd[i][ny - 3][k][m] - 4.0 * rsd[i][ny - 2][k][m]);
                    /*OUT: {
                    Reverse<2832, 3213_0; 3176_1; 3119_1; 2965_1; 2867_1; 2842_1; 2839_0;>}*/
                    frct[i][ny - 2][k][m] = frct[i][ny - 2][k][m] - dsspm * (rsd[i][ny - 4][k][m] - 4.0 * rsd[i][ny - 3][k][m] + 5.0 * rsd[i][ny - 2][k][m]);
                }
            }
        }
        /*OUT: {
        Reverse<2832,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<3265,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<3265,>}*/
        /*OUT: {
        Reverse<3265,>}*/
        /*OUT: {
        Reverse<3265, 3272_1;>}*/
        for (i = ist; i <= iend; i++) {
            /*OUT: {
            Reverse<3265,>}*/
            /*OUT: {
            Reverse<3265,>}*/
            /*OUT: {
            Reverse<3265, 3742_1; 3705_1; 3652_1; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
            for (j = jst; j <= jend; j++) {
                /*OUT: {
                Reverse<3265, 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3275_0; 3272_0;>}*/
                for (k = 0; k <= nz - 1; k++) {
                    /*OUT: {
                    Reverse<3265, 3275_0; 3272_0;>}*/
                    flux[i][j][k][0] = rsd[i][j][k][3];
                    /*OUT: {
                    Reverse<3265, 3275_0; 3272_0;>}*/
                    u41 = rsd[i][j][k][3] / rsd[i][j][k][0];
                    /*OUT: {
                    Reverse<3265, 3275_0; 3272_0;>}*/
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    /*OUT: {
                    Reverse<3265, 3275_0; 3272_0;>}*/
                    flux[i][j][k][1] = rsd[i][j][k][1] * u41;
                    /*OUT: {
                    Reverse<3265, 3275_0; 3272_0;>}*/
                    flux[i][j][k][2] = rsd[i][j][k][2] * u41;
                    /*OUT: {
                    Reverse<3265, 3275_0; 3272_0;>}*/
                    flux[i][j][k][3] = rsd[i][j][k][3] * u41 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    /*OUT: {
                    Reverse<3265, 3275_0; 3272_0;>}*/
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u41;
                }
                /*OUT: {
                Reverse<3265, 3275_1; 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3275_1; 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3378_1; 3375_0; 3275_1; 3272_0;>}*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: {
                    Reverse<3265, 3375_0; 3275_1; 3272_0;>}*/
                    /*OUT: {
                    Reverse<3265, 3375_0; 3275_1; 3272_0;>}*/
                    /*OUT: {
                    Reverse<3265, 3378_0; 3375_0; 3275_1; 3272_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<3265, 3378_0; 3375_0; 3275_1; 3272_0;>}*/
                        frct[i][j][k][m] = frct[i][j][k][m] - tz2 * (flux[i][j][k + 1][m] - flux[i][j][k - 1][m]);
                    }
                }
                /*OUT: {
                Reverse<3265, 3375_1; 3275_1; 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3375_1; 3275_1; 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                for (k = 1; k <= nz - 1; k++) {
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    tmp = 1.0 / rsd[i][j][k][0];
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    u21k = tmp * rsd[i][j][k][1];
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    u31k = tmp * rsd[i][j][k][2];
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    u41k = tmp * rsd[i][j][k][3];
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    u51k = tmp * rsd[i][j][k][4];
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    tmp = 1.0 / rsd[i][j][k - 1][0];
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    u21km1 = tmp * rsd[i][j][k - 1][1];
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    u31km1 = tmp * rsd[i][j][k - 1][2];
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    u41km1 = tmp * rsd[i][j][k - 1][3];
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    u51km1 = tmp * rsd[i][j][k - 1][4];
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    flux[i][j][k][1] = tz3 * (u21k - u21km1);
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    flux[i][j][k][2] = tz3 * (u31k - u31km1);
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    flux[i][j][k][3] = (4.0 / 3.0) * tz3 * (u41k - u41km1);
                    /*OUT: {
                    Reverse<3265, 3400_0; 3375_1; 3275_1; 3272_0;>}*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tz3 * ((u21k * u21k + u31k * u31k + u41k * u41k) - (u21km1 * u21km1 + u31km1 * u31km1 + u41km1 * u41km1)) + (1.0 / 6.0) * tz3 * (u41k * u41k - u41km1 * u41km1) + 1.40e+00 * 1.40e+00 * tz3 * (u51k - u51km1);
                }
                /*OUT: {
                Reverse<3265, 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3498_0; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: {
                    Reverse<3265, 3498_0; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                    frct[i][j][k][0] = frct[i][j][k][0] + dz1 * tz1 * (rsd[i][j][k + 1][0] - 2.0 * rsd[i][j][k][0] + rsd[i][j][k - 1][0]);
                    /*OUT: {
                    Reverse<3265, 3498_0; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                    frct[i][j][k][1] = frct[i][j][k][1] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][1] - flux[i][j][k][1]) + dz2 * tz1 * (rsd[i][j][k + 1][1] - 2.0 * rsd[i][j][k][1] + rsd[i][j][k - 1][1]);
                    /*OUT: {
                    Reverse<3265, 3498_0; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                    frct[i][j][k][2] = frct[i][j][k][2] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][2] - flux[i][j][k][2]) + dz3 * tz1 * (rsd[i][j][k + 1][2] - 2.0 * rsd[i][j][k][2] + rsd[i][j][k - 1][2]);
                    /*OUT: {
                    Reverse<3265, 3498_0; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                    frct[i][j][k][3] = frct[i][j][k][3] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][3] - flux[i][j][k][3]) + dz4 * tz1 * (rsd[i][j][k + 1][3] - 2.0 * rsd[i][j][k][3] + rsd[i][j][k - 1][3]);
                    /*OUT: {
                    Reverse<3265, 3498_0; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                    frct[i][j][k][4] = frct[i][j][k][4] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][4] - flux[i][j][k][4]) + dz5 * tz1 * (rsd[i][j][k + 1][4] - 2.0 * rsd[i][j][k][4] + rsd[i][j][k - 1][4]);
                }
                /*OUT: {
                Reverse<3265, 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3652_0; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<3265, 3652_0; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                    frct[i][j][1][m] = frct[i][j][1][m] - dsspm * (+5.0 * rsd[i][j][1][m] - 4.0 * rsd[i][j][2][m] + rsd[i][j][3][m]);
                    /*OUT: {
                    Reverse<3265, 3652_0; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                    frct[i][j][2][m] = frct[i][j][2][m] - dsspm * (-4.0 * rsd[i][j][1][m] + 6.0 * rsd[i][j][2][m] - 4.0 * rsd[i][j][3][m] + rsd[i][j][4][m]);
                }
                /*OUT: {
                Reverse<3265, 3652_1; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3652_1; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3708_1; 3705_0; 3652_1; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                for (k = 3; k <= nz - 4; k++) {
                    /*OUT: {
                    Reverse<3265, 3705_0; 3652_1; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                    /*OUT: {
                    Reverse<3265, 3705_0; 3652_1; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                    /*OUT: {
                    Reverse<3265, 3708_0; 3705_0; 3652_1; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<3265, 3708_0; 3705_0; 3652_1; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i][j][k - 2][m] - 4.0 * rsd[i][j][k - 1][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i][j][k + 1][m] + rsd[i][j][k + 2][m]);
                    }
                }
                /*OUT: {
                Reverse<3265, 3705_1; 3652_1; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3705_1; 3652_1; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                /*OUT: {
                Reverse<3265, 3742_0; 3705_1; 3652_1; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<3265, 3742_0; 3705_1; 3652_1; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                    frct[i][j][nz - 3][m] = frct[i][j][nz - 3][m] - dsspm * (rsd[i][j][nz - 5][m] - 4.0 * rsd[i][j][nz - 4][m] + 6.0 * rsd[i][j][nz - 3][m] - 4.0 * rsd[i][j][nz - 2][m]);
                    /*OUT: {
                    Reverse<3265, 3742_0; 3705_1; 3652_1; 3498_1; 3400_1; 3375_1; 3275_1; 3272_0;>}*/
                    frct[i][j][nz - 2][m] = frct[i][j][nz - 2][m] - dsspm * (rsd[i][j][nz - 4][m] - 4.0 * rsd[i][j][nz - 3][m] + 5.0 * rsd[i][j][nz - 2][m]);
                }
            }
        }
        /*OUT: {
        Reverse<3265,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<3794,>}*/
#pragma omp barrier
    }
}
static void error() {
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
    int iglob;
    /*OUT: {
    Reverse<--,>}*/
    int jglob;
    /*OUT: {
    Reverse<--,>}*/
    double tmp;
    /*OUT: {
    Reverse<--,>}*/
    double u000ijk[5];
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 3804_0;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 3804_0;>}*/
        errnm[m] = 0.0;
    }
    /*OUT: {
    Reverse<--, 3804_1;>}*/
    /*OUT: {
    Reverse<--, 3804_1;>}*/
    /*OUT: {
    Reverse<--, 3815_1; 3810_0; 3804_1;>}*/
    for (i = ist; i <= iend; i++) {
        /*OUT: {
        Reverse<--, 3810_0; 3804_1;>}*/
        iglob = i;
        /*OUT: {
        Reverse<--, 3810_0; 3804_1;>}*/
        /*OUT: {
        Reverse<--, 3810_0; 3804_1;>}*/
        /*OUT: {
        Reverse<--, 3820_1; 3815_0; 3810_0; 3804_1;>}*/
        for (j = jst; j <= jend; j++) {
            /*OUT: {
            Reverse<--, 3815_0; 3810_0; 3804_1;>}*/
            jglob = j;
            /*OUT: {
            Reverse<--, 3815_0; 3810_0; 3804_1;>}*/
            /*OUT: {
            Reverse<--, 3815_0; 3810_0; 3804_1;>}*/
            /*OUT: {
            Reverse<--, 3828_1; 3820_0; 3815_0; 3810_0; 3804_1;>}*/
            for (k = 1; k <= nz - 2; k++) {
                /*OUT: {
                Reverse<--, 3820_0; 3815_0; 3810_0; 3804_1;>}*/
                exact(iglob, jglob, k, u000ijk);
                /*OUT: {
                Reverse<--, 3820_0; 3815_0; 3810_0; 3804_1;>}*/
                /*OUT: {
                Reverse<--, 3820_0; 3815_0; 3810_0; 3804_1;>}*/
                /*OUT: {
                Reverse<--, 3820_0; 3815_0; 3810_0; 3804_1;>}*/
                /*OUT: {
                Reverse<--, 3828_0; 3820_0; 3815_0; 3810_0; 3804_1;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<--, 3828_0; 3820_0; 3815_0; 3810_0; 3804_1;>}*/
                    tmp = (u000ijk[m] - u[i][j][k][m]);
                    /*OUT: {
                    Reverse<--, 3828_0; 3820_0; 3815_0; 3810_0; 3804_1;>}*/
                    errnm[m] = errnm[m] + tmp * tmp;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 3810_1; 3804_1;>}*/
    /*OUT: {
    Reverse<--, 3810_1; 3804_1;>}*/
    /*OUT: {
    Reverse<--, 3843_0; 3810_1; 3804_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 3843_0; 3810_1; 3804_1;>}*/
        double _imopVarPre151;
        /*OUT: {
        Reverse<--, 3843_0; 3810_1; 3804_1;>}*/
        double _imopVarPre152;
        /*OUT: {
        Reverse<--, 3843_0; 3810_1; 3804_1;>}*/
        _imopVarPre151 = errnm[m] / ((nx0 - 2) * (ny0 - 2) * (nz0 - 2));
        /*OUT: {
        Reverse<--, 3843_0; 3810_1; 3804_1;>}*/
        _imopVarPre152 = sqrt(_imopVarPre151);
        /*OUT: {
        Reverse<--, 3843_0; 3810_1; 3804_1;>}*/
        /*OUT: {
        Reverse<--, 3843_0; 3810_1; 3804_1;>}*/
        errnm[m] = _imopVarPre152;
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
static void exact(int i, int j , int k , double u000ijk[5]) {
    /*OUT: {
    Reverse<--,>}*/
    int m;
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
    xi = ((double) i) / (nx0 - 1);
    /*OUT: {
    Reverse<--,>}*/
    eta = ((double) j) / (ny0 - 1);
    /*OUT: {
    Reverse<--,>}*/
    zeta = ((double) k) / (nz - 1);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 3884_0;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 3884_0;>}*/
        u000ijk[m] = ce[m][0] + ce[m][1] * xi + ce[m][2] * eta + ce[m][3] * zeta + ce[m][4] * xi * xi + ce[m][5] * eta * eta + ce[m][6] * zeta * zeta + ce[m][7] * xi * xi * xi + ce[m][8] * eta * eta * eta + ce[m][9] * zeta * zeta * zeta + ce[m][10] * xi * xi * xi * xi + ce[m][11] * eta * eta * eta * eta + ce[m][12] * zeta * zeta * zeta * zeta;
    }
}
/*OUT: {
Reverse<--,>}*/
static void jacld(int k) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    double r43;
    /*OUT: {
    Reverse<--,>}*/
    double c1345;
    /*OUT: {
    Reverse<--,>}*/
    double c34;
    /*OUT: {
    Reverse<--,>}*/
    double tmp1;
    /*OUT: {
    Reverse<--,>}*/
    double tmp2;
    /*OUT: {
    Reverse<--,>}*/
    double tmp3;
    /*OUT: {
    Reverse<--,>}*/
    r43 = (4.0 / 3.0);
    /*OUT: {
    Reverse<--,>}*/
    c1345 = 1.40e+00 * 1.00e-01 * 1.00e+00 * 1.40e+00;
    /*OUT: {
    Reverse<--,>}*/
    c34 = 1.00e-01 * 1.00e+00;
#pragma omp for nowait schedule(static)
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 3937_1;>}*/
    for (i = ist; i <= iend; i++) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 3937_0;>}*/
        for (j = jst; j <= jend; j++) {
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            tmp1 = 1.0 / u[i][j][k][0];
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            tmp2 = tmp1 * tmp1;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            tmp3 = tmp1 * tmp2;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][0][0] = 1.0 + dt * 2.0 * (tx1 * dx1 + ty1 * dy1 + tz1 * dz1);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][0][1] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][0][2] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][0][3] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][0][4] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][1][0] = dt * 2.0 * (tx1 * (-r43 * c34 * tmp2 * u[i][j][k][1]) + ty1 * (-c34 * tmp2 * u[i][j][k][1]) + tz1 * (-c34 * tmp2 * u[i][j][k][1]));
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][1][1] = 1.0 + dt * 2.0 * (tx1 * r43 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx2 + ty1 * dy2 + tz1 * dz2);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][1][2] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][1][3] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][1][4] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][2][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][2]) + ty1 * (-r43 * c34 * tmp2 * u[i][j][k][2]) + tz1 * (-c34 * tmp2 * u[i][j][k][2]));
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][2][1] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][2][2] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * r43 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx3 + ty1 * dy3 + tz1 * dz3);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][2][3] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][2][4] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][3][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][3]) + ty1 * (-c34 * tmp2 * u[i][j][k][3]) + tz1 * (-r43 * c34 * tmp2 * u[i][j][k][3]));
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][3][1] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][3][2] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][3][3] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * r43 * c34 * tmp1) + dt * 2.0 * (tx1 * dx4 + ty1 * dy4 + tz1 * dz4);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][3][4] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][4][0] = dt * 2.0 * (tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]));
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][4][1] = dt * 2.0 * (tx1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][1] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][1] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][1]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][4][2] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][2] + ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][2] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][2]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][4][3] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][3]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            d[i][j][4][4] = 1.0 + dt * 2.0 * (tx1 * c1345 * tmp1 + ty1 * c1345 * tmp1 + tz1 * c1345 * tmp1) + dt * 2.0 * (tx1 * dx5 + ty1 * dy5 + tz1 * dz5);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            tmp1 = 1.0 / u[i][j][k - 1][0];
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            tmp2 = tmp1 * tmp1;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            tmp3 = tmp1 * tmp2;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][0][0] = -dt * tz1 * dz1;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][0][1] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][0][2] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][0][3] = -dt * tz2;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][0][4] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][1][0] = -dt * tz2 * (-(u[i][j][k - 1][1] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k - 1][1]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][1][1] = -dt * tz2 * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * c34 * tmp1 - dt * tz1 * dz2;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][1][2] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][1][3] = -dt * tz2 * (u[i][j][k - 1][1] * tmp1);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][1][4] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][2][0] = -dt * tz2 * (-(u[i][j][k - 1][2] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k - 1][2]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][2][1] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][2][2] = -dt * tz2 * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * (c34 * tmp1) - dt * tz1 * dz3;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][2][3] = -dt * tz2 * (u[i][j][k - 1][2] * tmp1);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][2][4] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][3][0] = -dt * tz2 * (-(u[i][j][k - 1][3] * tmp1) * (u[i][j][k - 1][3] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2)) - dt * tz1 * (-r43 * c34 * tmp2 * u[i][j][k - 1][3]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][3][1] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][1] * tmp1));
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][3][2] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][2] * tmp1));
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][3][3] = -dt * tz2 * (2.0 - 0.40e+00) * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * (r43 * c34 * tmp1) - dt * tz1 * dz4;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][3][4] = -dt * tz2 * 0.40e+00;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][4][0] = -dt * tz2 * ((0.40e+00 * (u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2 - 1.40e+00 * (u[i][j][k - 1][4] * tmp1)) * (u[i][j][k - 1][3] * tmp1)) - dt * tz1 * (-(c34 - c1345) * tmp3 * (u[i][j][k - 1][1] * u[i][j][k - 1][1]) - (c34 - c1345) * tmp3 * (u[i][j][k - 1][2] * u[i][j][k - 1][2]) - (r43 * c34 - c1345) * tmp3 * (u[i][j][k - 1][3] * u[i][j][k - 1][3]) - c1345 * tmp2 * u[i][j][k - 1][4]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][4][1] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][1] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k - 1][1];
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][4][2] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][2] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k - 1][2];
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][4][3] = -dt * tz2 * (1.40e+00 * (u[i][j][k - 1][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + 3.0 * u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2)) - dt * tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k - 1][3];
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            a[i][j][4][4] = -dt * tz2 * (1.40e+00 * (u[i][j][k - 1][3] * tmp1)) - dt * tz1 * c1345 * tmp1 - dt * tz1 * dz5;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            tmp1 = 1.0 / u[i][j - 1][k][0];
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            tmp2 = tmp1 * tmp1;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            tmp3 = tmp1 * tmp2;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][0][0] = -dt * ty1 * dy1;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][0][1] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][0][2] = -dt * ty2;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][0][3] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][0][4] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][1][0] = -dt * ty2 * (-(u[i][j - 1][k][1] * u[i][j - 1][k][2]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j - 1][k][1]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][1][1] = -dt * ty2 * (u[i][j - 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy2;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][1][2] = -dt * ty2 * (u[i][j - 1][k][1] * tmp1);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][1][3] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][1][4] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][2][0] = -dt * ty2 * (-(u[i][j - 1][k][2] * tmp1) * (u[i][j - 1][k][2] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j - 1][k][1] * u[i][j - 1][k][1] + u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2)) - dt * ty1 * (-r43 * c34 * tmp2 * u[i][j - 1][k][2]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][2][1] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][1] * tmp1));
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][2][2] = -dt * ty2 * ((2.0 - 0.40e+00) * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * (r43 * c34 * tmp1) - dt * ty1 * dy3;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][2][3] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][3] * tmp1));
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][2][4] = -dt * ty2 * 0.40e+00;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][3][0] = -dt * ty2 * (-(u[i][j - 1][k][2] * u[i][j - 1][k][3]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j - 1][k][3]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][3][1] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][3][2] = -dt * ty2 * (u[i][j - 1][k][3] * tmp1);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][3][3] = -dt * ty2 * (u[i][j - 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy4;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][3][4] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][4][0] = -dt * ty2 * ((0.40e+00 * (u[i][j - 1][k][1] * u[i][j - 1][k][1] + u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2 - 1.40e+00 * (u[i][j - 1][k][4] * tmp1)) * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j - 1][k][1]) * (u[i][j - 1][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j - 1][k][2]) * (u[i][j - 1][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j - 1][k][3]) * (u[i][j - 1][k][3]))) - c1345 * tmp2 * u[i][j - 1][k][4]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][4][1] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][1] * u[i][j - 1][k][2]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j - 1][k][1];
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][4][2] = -dt * ty2 * (1.40e+00 * (u[i][j - 1][k][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j - 1][k][1] * u[i][j - 1][k][1] + 3.0 * u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2)) - dt * ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j - 1][k][2];
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][4][3] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][2] * u[i][j - 1][k][3]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j - 1][k][3];
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            b[i][j][4][4] = -dt * ty2 * (1.40e+00 * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * c1345 * tmp1 - dt * ty1 * dy5;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            tmp1 = 1.0 / u[i - 1][j][k][0];
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            tmp2 = tmp1 * tmp1;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            tmp3 = tmp1 * tmp2;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][0][0] = -dt * tx1 * dx1;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][0][1] = -dt * tx2;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][0][2] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][0][3] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][0][4] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][1][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * tmp1) * (u[i - 1][j][k][1] * tmp1) + 0.40e+00 * 0.50 * (u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2) - dt * tx1 * (-r43 * c34 * tmp2 * u[i - 1][j][k][1]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][1][1] = -dt * tx2 * ((2.0 - 0.40e+00) * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * (r43 * c34 * tmp1) - dt * tx1 * dx2;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][1][2] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][2] * tmp1));
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][1][3] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][3] * tmp1));
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][1][4] = -dt * tx2 * 0.40e+00;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][2][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * u[i - 1][j][k][2]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i - 1][j][k][2]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][2][1] = -dt * tx2 * (u[i - 1][j][k][2] * tmp1);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][2][2] = -dt * tx2 * (u[i - 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx3;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][2][3] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][2][4] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][3][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * u[i - 1][j][k][3]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i - 1][j][k][3]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][3][1] = -dt * tx2 * (u[i - 1][j][k][3] * tmp1);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][3][2] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][3][3] = -dt * tx2 * (u[i - 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx4;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][3][4] = 0.0;
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][4][0] = -dt * tx2 * ((0.40e+00 * (u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2 - 1.40e+00 * (u[i - 1][j][k][4] * tmp1)) * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i - 1][j][k][1]) * (u[i - 1][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i - 1][j][k][2]) * (u[i - 1][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i - 1][j][k][3]) * (u[i - 1][j][k][3]))) - c1345 * tmp2 * u[i - 1][j][k][4]);
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][4][1] = -dt * tx2 * (1.40e+00 * (u[i - 1][j][k][4] * tmp1) - 0.50 * 0.40e+00 * ((3.0 * u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2)) - dt * tx1 * (r43 * c34 - c1345) * tmp2 * u[i - 1][j][k][1];
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][4][2] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][2] * u[i - 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i - 1][j][k][2];
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][4][3] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][3] * u[i - 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i - 1][j][k][3];
            /*OUT: {
            Reverse<--, 3937_0;>}*/
            c[i][j][4][4] = -dt * tx2 * (1.40e+00 * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * c1345 * tmp1 - dt * tx1 * dx5;
        }
    }
}
/*OUT: {
Reverse<--,>}*/
static void jacu(int k) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    double r43;
    /*OUT: {
    Reverse<--,>}*/
    double c1345;
    /*OUT: {
    Reverse<--,>}*/
    double c34;
    /*OUT: {
    Reverse<--,>}*/
    double tmp1;
    /*OUT: {
    Reverse<--,>}*/
    double tmp2;
    /*OUT: {
    Reverse<--,>}*/
    double tmp3;
    /*OUT: {
    Reverse<--,>}*/
    r43 = (4.0 / 3.0);
    /*OUT: {
    Reverse<--,>}*/
    c1345 = 1.40e+00 * 1.00e-01 * 1.00e+00 * 1.40e+00;
    /*OUT: {
    Reverse<--,>}*/
    c34 = 1.00e-01 * 1.00e+00;
#pragma omp for nowait schedule(static)
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 5631_1;>}*/
    for (i = iend; i >= ist; i--) {
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 5631_0;>}*/
        for (j = jend; j >= jst; j--) {
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            tmp1 = 1.0 / u[i][j][k][0];
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            tmp2 = tmp1 * tmp1;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            tmp3 = tmp1 * tmp2;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][0][0] = 1.0 + dt * 2.0 * (tx1 * dx1 + ty1 * dy1 + tz1 * dz1);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][0][1] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][0][2] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][0][3] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][0][4] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][1][0] = dt * 2.0 * (tx1 * (-r43 * c34 * tmp2 * u[i][j][k][1]) + ty1 * (-c34 * tmp2 * u[i][j][k][1]) + tz1 * (-c34 * tmp2 * u[i][j][k][1]));
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][1][1] = 1.0 + dt * 2.0 * (tx1 * r43 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx2 + ty1 * dy2 + tz1 * dz2);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][1][2] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][1][3] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][1][4] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][2][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][2]) + ty1 * (-r43 * c34 * tmp2 * u[i][j][k][2]) + tz1 * (-c34 * tmp2 * u[i][j][k][2]));
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][2][1] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][2][2] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * r43 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx3 + ty1 * dy3 + tz1 * dz3);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][2][3] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][2][4] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][3][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][3]) + ty1 * (-c34 * tmp2 * u[i][j][k][3]) + tz1 * (-r43 * c34 * tmp2 * u[i][j][k][3]));
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][3][1] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][3][2] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][3][3] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * r43 * c34 * tmp1) + dt * 2.0 * (tx1 * dx4 + ty1 * dy4 + tz1 * dz4);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][3][4] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][4][0] = dt * 2.0 * (tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]));
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][4][1] = dt * 2.0 * (tx1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][1] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][1] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][1]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][4][2] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][2] + ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][2] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][2]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][4][3] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][3]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            d[i][j][4][4] = 1.0 + dt * 2.0 * (tx1 * c1345 * tmp1 + ty1 * c1345 * tmp1 + tz1 * c1345 * tmp1) + dt * 2.0 * (tx1 * dx5 + ty1 * dy5 + tz1 * dz5);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            tmp1 = 1.0 / u[i + 1][j][k][0];
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            tmp2 = tmp1 * tmp1;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            tmp3 = tmp1 * tmp2;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][0][0] = -dt * tx1 * dx1;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][0][1] = dt * tx2;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][0][2] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][0][3] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][0][4] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][1][0] = dt * tx2 * (-(u[i + 1][j][k][1] * tmp1) * (u[i + 1][j][k][1] * tmp1) + 0.40e+00 * 0.50 * (u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2) - dt * tx1 * (-r43 * c34 * tmp2 * u[i + 1][j][k][1]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][1][1] = dt * tx2 * ((2.0 - 0.40e+00) * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * (r43 * c34 * tmp1) - dt * tx1 * dx2;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][1][2] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][2] * tmp1));
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][1][3] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][3] * tmp1));
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][1][4] = dt * tx2 * 0.40e+00;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][2][0] = dt * tx2 * (-(u[i + 1][j][k][1] * u[i + 1][j][k][2]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i + 1][j][k][2]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][2][1] = dt * tx2 * (u[i + 1][j][k][2] * tmp1);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][2][2] = dt * tx2 * (u[i + 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx3;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][2][3] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][2][4] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][3][0] = dt * tx2 * (-(u[i + 1][j][k][1] * u[i + 1][j][k][3]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i + 1][j][k][3]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][3][1] = dt * tx2 * (u[i + 1][j][k][3] * tmp1);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][3][2] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][3][3] = dt * tx2 * (u[i + 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx4;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][3][4] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][4][0] = dt * tx2 * ((0.40e+00 * (u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2 - 1.40e+00 * (u[i + 1][j][k][4] * tmp1)) * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i + 1][j][k][1]) * (u[i + 1][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i + 1][j][k][2]) * (u[i + 1][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i + 1][j][k][3]) * (u[i + 1][j][k][3]))) - c1345 * tmp2 * u[i + 1][j][k][4]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][4][1] = dt * tx2 * (1.40e+00 * (u[i + 1][j][k][4] * tmp1) - 0.50 * 0.40e+00 * ((3.0 * u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2)) - dt * tx1 * (r43 * c34 - c1345) * tmp2 * u[i + 1][j][k][1];
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][4][2] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][2] * u[i + 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i + 1][j][k][2];
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][4][3] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][3] * u[i + 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i + 1][j][k][3];
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            a[i][j][4][4] = dt * tx2 * (1.40e+00 * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * c1345 * tmp1 - dt * tx1 * dx5;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            tmp1 = 1.0 / u[i][j + 1][k][0];
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            tmp2 = tmp1 * tmp1;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            tmp3 = tmp1 * tmp2;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][0][0] = -dt * ty1 * dy1;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][0][1] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][0][2] = dt * ty2;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][0][3] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][0][4] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][1][0] = dt * ty2 * (-(u[i][j + 1][k][1] * u[i][j + 1][k][2]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j + 1][k][1]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][1][1] = dt * ty2 * (u[i][j + 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy2;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][1][2] = dt * ty2 * (u[i][j + 1][k][1] * tmp1);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][1][3] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][1][4] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][2][0] = dt * ty2 * (-(u[i][j + 1][k][2] * tmp1) * (u[i][j + 1][k][2] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j + 1][k][1] * u[i][j + 1][k][1] + u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2)) - dt * ty1 * (-r43 * c34 * tmp2 * u[i][j + 1][k][2]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][2][1] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][1] * tmp1));
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][2][2] = dt * ty2 * ((2.0 - 0.40e+00) * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * (r43 * c34 * tmp1) - dt * ty1 * dy3;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][2][3] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][3] * tmp1));
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][2][4] = dt * ty2 * 0.40e+00;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][3][0] = dt * ty2 * (-(u[i][j + 1][k][2] * u[i][j + 1][k][3]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j + 1][k][3]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][3][1] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][3][2] = dt * ty2 * (u[i][j + 1][k][3] * tmp1);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][3][3] = dt * ty2 * (u[i][j + 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy4;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][3][4] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][4][0] = dt * ty2 * ((0.40e+00 * (u[i][j + 1][k][1] * u[i][j + 1][k][1] + u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2 - 1.40e+00 * (u[i][j + 1][k][4] * tmp1)) * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j + 1][k][1]) * (u[i][j + 1][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j + 1][k][2]) * (u[i][j + 1][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j + 1][k][3]) * (u[i][j + 1][k][3]))) - c1345 * tmp2 * u[i][j + 1][k][4]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][4][1] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][1] * u[i][j + 1][k][2]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j + 1][k][1];
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][4][2] = dt * ty2 * (1.40e+00 * (u[i][j + 1][k][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j + 1][k][1] * u[i][j + 1][k][1] + 3.0 * u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2)) - dt * ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j + 1][k][2];
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][4][3] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][2] * u[i][j + 1][k][3]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j + 1][k][3];
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            b[i][j][4][4] = dt * ty2 * (1.40e+00 * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * c1345 * tmp1 - dt * ty1 * dy5;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            tmp1 = 1.0 / u[i][j][k + 1][0];
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            tmp2 = tmp1 * tmp1;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            tmp3 = tmp1 * tmp2;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][0][0] = -dt * tz1 * dz1;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][0][1] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][0][2] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][0][3] = dt * tz2;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][0][4] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][1][0] = dt * tz2 * (-(u[i][j][k + 1][1] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k + 1][1]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][1][1] = dt * tz2 * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * c34 * tmp1 - dt * tz1 * dz2;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][1][2] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][1][3] = dt * tz2 * (u[i][j][k + 1][1] * tmp1);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][1][4] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][2][0] = dt * tz2 * (-(u[i][j][k + 1][2] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k + 1][2]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][2][1] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][2][2] = dt * tz2 * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * (c34 * tmp1) - dt * tz1 * dz3;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][2][3] = dt * tz2 * (u[i][j][k + 1][2] * tmp1);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][2][4] = 0.0;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][3][0] = dt * tz2 * (-(u[i][j][k + 1][3] * tmp1) * (u[i][j][k + 1][3] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2)) - dt * tz1 * (-r43 * c34 * tmp2 * u[i][j][k + 1][3]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][3][1] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][1] * tmp1));
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][3][2] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][2] * tmp1));
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][3][3] = dt * tz2 * (2.0 - 0.40e+00) * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * (r43 * c34 * tmp1) - dt * tz1 * dz4;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][3][4] = dt * tz2 * 0.40e+00;
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][4][0] = dt * tz2 * ((0.40e+00 * (u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2 - 1.40e+00 * (u[i][j][k + 1][4] * tmp1)) * (u[i][j][k + 1][3] * tmp1)) - dt * tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k + 1][1]) * (u[i][j][k + 1][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k + 1][2]) * (u[i][j][k + 1][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k + 1][3]) * (u[i][j][k + 1][3]))) - c1345 * tmp2 * u[i][j][k + 1][4]);
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][4][1] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][1] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k + 1][1];
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][4][2] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][2] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k + 1][2];
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][4][3] = dt * tz2 * (1.40e+00 * (u[i][j][k + 1][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + 3.0 * u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2)) - dt * tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k + 1][3];
            /*OUT: {
            Reverse<--, 5631_0;>}*/
            c[i][j][4][4] = dt * tz2 * (1.40e+00 * (u[i][j][k + 1][3] * tmp1)) - dt * tz1 * c1345 * tmp1 - dt * tz1 * dz5;
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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void l2norm(int nx0, int ny0 , int nz0 , int ist , int iend , int jst , int jend , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double sum[5]) {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<12112,>}*/
        int i;
        /*OUT: {
        Reverse<12112,>}*/
        int j;
        /*OUT: {
        Reverse<12112,>}*/
        int k;
        /*OUT: {
        Reverse<12112,>}*/
        int m;
        /*OUT: {
        Reverse<12112,>}*/
        double sum0 = 0.0;
        /*OUT: {
        Reverse<12112,>}*/
        double sum1 = 0.0;
        /*OUT: {
        Reverse<12112,>}*/
        double sum2 = 0.0;
        /*OUT: {
        Reverse<12112,>}*/
        double sum3 = 0.0;
        /*OUT: {
        Reverse<12112,>}*/
        double sum4 = 0.0;
#pragma omp single nowait
        {
            /*OUT: {
            Reverse<12112,>}*/
            /*OUT: {
            Reverse<12112,>}*/
            /*OUT: {
            Reverse<12112, 7331_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<12112, 7331_0;>}*/
                sum[m] = 0.0;
            }
        }
        /*OUT: {
        Reverse<12112, 7331_1;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<7336,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<7336,>}*/
        /*OUT: {
        Reverse<7336,>}*/
        /*OUT: {
        Reverse<7336, 7343_1;>}*/
        for (i = ist; i <= iend; i++) {
            /*OUT: {
            Reverse<7336,>}*/
            /*OUT: {
            Reverse<7336,>}*/
            /*OUT: {
            Reverse<7336, 7346_1; 7343_0;>}*/
            for (j = jst; j <= jend; j++) {
                /*OUT: {
                Reverse<7336, 7343_0;>}*/
                /*OUT: {
                Reverse<7336, 7343_0;>}*/
                /*OUT: {
                Reverse<7336, 7346_0; 7343_0;>}*/
                for (k = 1; k <= nz0 - 2; k++) {
                    /*OUT: {
                    Reverse<7336, 7346_0; 7343_0;>}*/
                    sum0 = sum0 + v[i][j][k][0] * v[i][j][k][0];
                    /*OUT: {
                    Reverse<7336, 7346_0; 7343_0;>}*/
                    sum1 = sum1 + v[i][j][k][1] * v[i][j][k][1];
                    /*OUT: {
                    Reverse<7336, 7346_0; 7343_0;>}*/
                    sum2 = sum2 + v[i][j][k][2] * v[i][j][k][2];
                    /*OUT: {
                    Reverse<7336, 7346_0; 7343_0;>}*/
                    sum3 = sum3 + v[i][j][k][3] * v[i][j][k][3];
                    /*OUT: {
                    Reverse<7336, 7346_0; 7343_0;>}*/
                    sum4 = sum4 + v[i][j][k][4] * v[i][j][k][4];
                }
            }
        }
        /*OUT: {
        Reverse<7336,>}*/
        // #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
        {
            /*OUT: {
            Reverse<7336,>}*/
            sum[0] += sum0;
            /*OUT: {
            Reverse<7336,>}*/
            sum[1] += sum1;
            /*OUT: {
            Reverse<7336,>}*/
            sum[2] += sum2;
            /*OUT: {
            Reverse<7336,>}*/
            sum[3] += sum3;
            /*OUT: {
            Reverse<7336,>}*/
            sum[4] += sum4;
        }
        /*OUT: {
        Reverse<7336,>}*/
        // #pragma omp dummyFlush CRITICAL_END
        /*OUT: {
        Reverse<7336,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<7413,>}*/
#pragma omp barrier
#pragma omp single nowait
        {
            /*OUT: {
            Reverse<7413,>}*/
            /*OUT: {
            Reverse<7413,>}*/
            /*OUT: {
            Reverse<7413, 7415_0;>}*/
            for (m = 0; m < 5; m++) {
                /*OUT: {
                Reverse<7413, 7415_0;>}*/
                double _imopVarPre154;
                /*OUT: {
                Reverse<7413, 7415_0;>}*/
                double _imopVarPre155;
                /*OUT: {
                Reverse<7413, 7415_0;>}*/
                _imopVarPre154 = sum[m] / ((nx0 - 2) * (ny0 - 2) * (nz0 - 2));
                /*OUT: {
                Reverse<7413, 7415_0;>}*/
                _imopVarPre155 = sqrt(_imopVarPre154);
                /*OUT: {
                Reverse<7413, 7415_0;>}*/
                /*OUT: {
                Reverse<7413, 7415_0;>}*/
                sum[m] = _imopVarPre155;
            }
        }
        /*OUT: {
        Reverse<7413, 7415_1;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<7435,>}*/
#pragma omp barrier
    }
}
static void pintgr() {
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
    int ibeg;
    /*OUT: {
    Reverse<--,>}*/
    int ifin;
    /*OUT: {
    Reverse<--,>}*/
    int ifin1;
    /*OUT: {
    Reverse<--,>}*/
    int jbeg;
    /*OUT: {
    Reverse<--,>}*/
    int jfin;
    /*OUT: {
    Reverse<--,>}*/
    int jfin1;
    /*OUT: {
    Reverse<--,>}*/
    int iglob;
    /*OUT: {
    Reverse<--,>}*/
    int iglob1;
    /*OUT: {
    Reverse<--,>}*/
    int iglob2;
    /*OUT: {
    Reverse<--,>}*/
    int jglob;
    /*OUT: {
    Reverse<--,>}*/
    int jglob1;
    /*OUT: {
    Reverse<--,>}*/
    int jglob2;
    /*OUT: {
    Reverse<--,>}*/
    double phi1[12 + 2][12 + 2];
    /*OUT: {
    Reverse<--,>}*/
    double phi2[12 + 2][12 + 2];
    /*OUT: {
    Reverse<--,>}*/
    double frc1;
    /*OUT: {
    Reverse<--,>}*/
    double frc2;
    /*OUT: {
    Reverse<--,>}*/
    double frc3;
    /*OUT: {
    Reverse<--,>}*/
    ibeg = nx;
    /*OUT: {
    Reverse<--,>}*/
    ifin = 0;
    /*OUT: {
    Reverse<--,>}*/
    iglob1 = -1;
    /*OUT: {
    Reverse<--,>}*/
    iglob2 = nx - 1;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre157;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre157 = iglob1 >= ii1;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre157) {
        /*OUT: {
        Reverse<--, 7467_0;>}*/
        _imopVarPre157 = iglob2 < ii2 + nx;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre157) {
        /*OUT: {
        Reverse<--, 7470_0;>}*/
        ibeg = 0;
    }
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre159;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre159 = iglob1 >= ii1 - nx;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre159) {
        /*OUT: {
        Reverse<--, 7476_0;>}*/
        _imopVarPre159 = iglob2 <= ii2;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre159) {
        /*OUT: {
        Reverse<--, 7479_0;>}*/
        ifin = nx;
    }
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre161;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre161 = ii1 >= iglob1;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre161) {
        /*OUT: {
        Reverse<--, 7485_0;>}*/
        _imopVarPre161 = ii1 <= iglob2;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre161) {
        /*OUT: {
        Reverse<--, 7488_0;>}*/
        ibeg = ii1;
    }
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre163;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre163 = ii2 >= iglob1;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre163) {
        /*OUT: {
        Reverse<--, 7494_0;>}*/
        _imopVarPre163 = ii2 <= iglob2;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre163) {
        /*OUT: {
        Reverse<--, 7497_0;>}*/
        ifin = ii2;
    }
    /*OUT: {
    Reverse<--,>}*/
    jbeg = ny;
    /*OUT: {
    Reverse<--,>}*/
    jfin = -1;
    /*OUT: {
    Reverse<--,>}*/
    jglob1 = 0;
    /*OUT: {
    Reverse<--,>}*/
    jglob2 = ny - 1;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre165;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre165 = jglob1 >= ji1;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre165) {
        /*OUT: {
        Reverse<--, 7511_0;>}*/
        _imopVarPre165 = jglob2 < ji2 + ny;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre165) {
        /*OUT: {
        Reverse<--, 7514_0;>}*/
        jbeg = 0;
    }
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre167;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre167 = jglob1 > ji1 - ny;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre167) {
        /*OUT: {
        Reverse<--, 7520_0;>}*/
        _imopVarPre167 = jglob2 <= ji2;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre167) {
        /*OUT: {
        Reverse<--, 7523_0;>}*/
        jfin = ny;
    }
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre169;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre169 = ji1 >= jglob1;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre169) {
        /*OUT: {
        Reverse<--, 7529_0;>}*/
        _imopVarPre169 = ji1 <= jglob2;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre169) {
        /*OUT: {
        Reverse<--, 7532_0;>}*/
        jbeg = ji1;
    }
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre171;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre171 = ji2 >= jglob1;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre171) {
        /*OUT: {
        Reverse<--, 7538_0;>}*/
        _imopVarPre171 = ji2 <= jglob2;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre171) {
        /*OUT: {
        Reverse<--, 7541_0;>}*/
        jfin = ji2;
    }
    /*OUT: {
    Reverse<--,>}*/
    ifin1 = ifin;
    /*OUT: {
    Reverse<--,>}*/
    jfin1 = jfin;
    /*OUT: {
    Reverse<--,>}*/
    if (ifin1 == ii2) {
        /*OUT: {
        Reverse<--, 7548_0;>}*/
        ifin1 = ifin - 1;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (jfin1 == ji2) {
        /*OUT: {
        Reverse<--, 7551_0;>}*/
        jfin1 = jfin - 1;
    }
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 7558_1; 7555_0;>}*/
    for (i = 0; i <= 12 + 1; i++) {
        /*OUT: {
        Reverse<--, 7555_0;>}*/
        /*OUT: {
        Reverse<--, 7555_0;>}*/
        /*OUT: {
        Reverse<--, 7558_0; 7555_0;>}*/
        for (k = 0; k <= 12 + 1; k++) {
            /*OUT: {
            Reverse<--, 7558_0; 7555_0;>}*/
            phi1[i][k] = 0.0;
            /*OUT: {
            Reverse<--, 7558_0; 7555_0;>}*/
            phi2[i][k] = 0.0;
        }
    }
    /*OUT: {
    Reverse<--, 7555_1;>}*/
    /*OUT: {
    Reverse<--, 7555_1;>}*/
    /*OUT: {
    Reverse<--, 7574_1; 7569_0; 7555_1;>}*/
    for (i = ibeg; i <= ifin; i++) {
        /*OUT: {
        Reverse<--, 7569_0; 7555_1;>}*/
        iglob = i;
        /*OUT: {
        Reverse<--, 7569_0; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7569_0; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7574_0; 7569_0; 7555_1;>}*/
        for (j = jbeg; j <= jfin; j++) {
            /*OUT: {
            Reverse<--, 7574_0; 7569_0; 7555_1;>}*/
            jglob = j;
            /*OUT: {
            Reverse<--, 7574_0; 7569_0; 7555_1;>}*/
            k = ki1;
            /*OUT: {
            Reverse<--, 7574_0; 7569_0; 7555_1;>}*/
            phi1[i][j] = 0.40e+00 * (u[i][j][k][4] - 0.50 * (((u[i][j][k][1]) * (u[i][j][k][1])) + ((u[i][j][k][2]) * (u[i][j][k][2])) + ((u[i][j][k][3]) * (u[i][j][k][3]))) / u[i][j][k][0]);
            /*OUT: {
            Reverse<--, 7574_0; 7569_0; 7555_1;>}*/
            k = ki2;
            /*OUT: {
            Reverse<--, 7574_0; 7569_0; 7555_1;>}*/
            phi2[i][j] = 0.40e+00 * (u[i][j][k][4] - 0.50 * (((u[i][j][k][1]) * (u[i][j][k][1])) + ((u[i][j][k][2]) * (u[i][j][k][2])) + ((u[i][j][k][3]) * (u[i][j][k][3]))) / u[i][j][k][0]);
        }
    }
    /*OUT: {
    Reverse<--, 7569_1; 7555_1;>}*/
    frc1 = 0.0;
    /*OUT: {
    Reverse<--, 7569_1; 7555_1;>}*/
    /*OUT: {
    Reverse<--, 7569_1; 7555_1;>}*/
    /*OUT: {
    Reverse<--, 7682_1; 7679_0; 7569_1; 7555_1;>}*/
    for (i = ibeg; i <= ifin1; i++) {
        /*OUT: {
        Reverse<--, 7679_0; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7679_0; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7682_0; 7679_0; 7569_1; 7555_1;>}*/
        for (j = jbeg; j <= jfin1; j++) {
            /*OUT: {
            Reverse<--, 7682_0; 7679_0; 7569_1; 7555_1;>}*/
            frc1 = frc1 + (phi1[i][j] + phi1[i + 1][j] + phi1[i][j + 1] + phi1[i + 1][j + 1] + phi2[i][j] + phi2[i + 1][j] + phi2[i][j + 1] + phi2[i + 1][j + 1]);
        }
    }
    /*OUT: {
    Reverse<--, 7679_1; 7569_1; 7555_1;>}*/
    frc1 = dxi * deta * frc1;
    /*OUT: {
    Reverse<--, 7679_1; 7569_1; 7555_1;>}*/
    /*OUT: {
    Reverse<--, 7679_1; 7569_1; 7555_1;>}*/
    /*OUT: {
    Reverse<--, 7709_1; 7706_0; 7679_1; 7569_1; 7555_1;>}*/
    for (i = 0; i <= 12 + 1; i++) {
        /*OUT: {
        Reverse<--, 7706_0; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7706_0; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7709_0; 7706_0; 7679_1; 7569_1; 7555_1;>}*/
        for (k = 0; k <= 12 + 1; k++) {
            /*OUT: {
            Reverse<--, 7709_0; 7706_0; 7679_1; 7569_1; 7555_1;>}*/
            phi1[i][k] = 0.0;
            /*OUT: {
            Reverse<--, 7709_0; 7706_0; 7679_1; 7569_1; 7555_1;>}*/
            phi2[i][k] = 0.0;
        }
    }
    /*OUT: {
    Reverse<--, 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    jglob = jbeg;
    /*OUT: {
    Reverse<--, 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    if (jglob == ji1) {
        /*OUT: {
        Reverse<--, 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7728_1; 7723_0; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        for (i = ibeg; i <= ifin; i++) {
            /*OUT: {
            Reverse<--, 7723_0; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            iglob = i;
            /*OUT: {
            Reverse<--, 7723_0; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            /*OUT: {
            Reverse<--, 7723_0; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            /*OUT: {
            Reverse<--, 7728_0; 7723_0; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            for (k = ki1; k <= ki2; k++) {
                /*OUT: {
                Reverse<--, 7728_0; 7723_0; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
                phi1[i][k] = 0.40e+00 * (u[i][jbeg][k][4] - 0.50 * (((u[i][jbeg][k][1]) * (u[i][jbeg][k][1])) + ((u[i][jbeg][k][2]) * (u[i][jbeg][k][2])) + ((u[i][jbeg][k][3]) * (u[i][jbeg][k][3]))) / u[i][jbeg][k][0]);
            }
        }
    }
    /*OUT: {
    Reverse<--, 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    jglob = jfin;
    /*OUT: {
    Reverse<--, 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    if (jglob == ji2) {
        /*OUT: {
        Reverse<--, 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7786_1; 7781_0; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7786_1; 7781_0; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        for (i = ibeg; i <= ifin; i++) {
            /*OUT: {
            Reverse<--, 7781_0; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7781_0; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            iglob = i;
            /*OUT: {
            Reverse<--, 7781_0; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7781_0; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            /*OUT: {
            Reverse<--, 7781_0; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7781_0; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            /*OUT: {
            Reverse<--, 7786_0; 7781_0; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7786_0; 7781_0; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            for (k = ki1; k <= ki2; k++) {
                /*OUT: {
                Reverse<--, 7786_0; 7781_0; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
                Reverse<--, 7786_0; 7781_0; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
                phi2[i][k] = 0.40e+00 * (u[i][jfin][k][4] - 0.50 * (((u[i][jfin][k][1]) * (u[i][jfin][k][1])) + ((u[i][jfin][k][2]) * (u[i][jfin][k][2])) + ((u[i][jfin][k][3]) * (u[i][jfin][k][3]))) / u[i][jfin][k][0]);
            }
        }
    }
    /*OUT: {
    Reverse<--, 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    frc2 = 0.0;
    /*OUT: {
    Reverse<--, 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    /*OUT: {
    Reverse<--, 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    /*OUT: {
    Reverse<--, 7841_1; 7838_0; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7841_1; 7838_0; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7841_1; 7838_0; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7841_1; 7838_0; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    for (i = ibeg; i <= ifin1; i++) {
        /*OUT: {
        Reverse<--, 7838_0; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7838_0; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7838_0; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7838_0; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7838_0; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7838_0; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7838_0; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7838_0; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7841_0; 7838_0; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7841_0; 7838_0; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7841_0; 7838_0; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7841_0; 7838_0; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        for (k = ki1; k <= ki2 - 1; k++) {
            /*OUT: {
            Reverse<--, 7841_0; 7838_0; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7841_0; 7838_0; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7841_0; 7838_0; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7841_0; 7838_0; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            frc2 = frc2 + (phi1[i][k] + phi1[i + 1][k] + phi1[i][k + 1] + phi1[i + 1][k + 1] + phi2[i][k] + phi2[i + 1][k] + phi2[i][k + 1] + phi2[i + 1][k + 1]);
        }
    }
    /*OUT: {
    Reverse<--, 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    frc2 = dxi * dzeta * frc2;
    /*OUT: {
    Reverse<--, 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    /*OUT: {
    Reverse<--, 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    /*OUT: {
    Reverse<--, 7868_1; 7865_0; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7868_1; 7865_0; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7868_1; 7865_0; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7868_1; 7865_0; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    for (i = 0; i <= 12 + 1; i++) {
        /*OUT: {
        Reverse<--, 7865_0; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7865_0; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7865_0; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7865_0; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7865_0; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7865_0; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7865_0; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7865_0; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7868_0; 7865_0; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7868_0; 7865_0; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7868_0; 7865_0; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7868_0; 7865_0; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        for (k = 0; k <= 12 + 1; k++) {
            /*OUT: {
            Reverse<--, 7868_0; 7865_0; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7868_0; 7865_0; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7868_0; 7865_0; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7868_0; 7865_0; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            phi1[i][k] = 0.0;
            /*OUT: {
            Reverse<--, 7868_0; 7865_0; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7868_0; 7865_0; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7868_0; 7865_0; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7868_0; 7865_0; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            phi2[i][k] = 0.0;
        }
    }
    /*OUT: {
    Reverse<--, 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    iglob = ibeg;
    /*OUT: {
    Reverse<--, 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    if (iglob == ii1) {
        /*OUT: {
        Reverse<--, 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7887_1; 7882_0; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7887_1; 7882_0; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7887_1; 7882_0; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7887_1; 7882_0; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        for (j = jbeg; j <= jfin; j++) {
            /*OUT: {
            Reverse<--, 7882_0; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7882_0; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7882_0; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7882_0; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            jglob = j;
            /*OUT: {
            Reverse<--, 7882_0; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7882_0; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7882_0; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7882_0; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            /*OUT: {
            Reverse<--, 7882_0; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7882_0; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7882_0; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7882_0; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            /*OUT: {
            Reverse<--, 7887_0; 7882_0; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7887_0; 7882_0; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7887_0; 7882_0; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7887_0; 7882_0; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            for (k = ki1; k <= ki2; k++) {
                /*OUT: {
                Reverse<--, 7887_0; 7882_0; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
                Reverse<--, 7887_0; 7882_0; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
                Reverse<--, 7887_0; 7882_0; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
                Reverse<--, 7887_0; 7882_0; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
                phi1[j][k] = 0.40e+00 * (u[ibeg][j][k][4] - 0.50 * (((u[ibeg][j][k][1]) * (u[ibeg][j][k][1])) + ((u[ibeg][j][k][2]) * (u[ibeg][j][k][2])) + ((u[ibeg][j][k][3]) * (u[ibeg][j][k][3]))) / u[ibeg][j][k][0]);
            }
        }
    }
    /*OUT: {
    Reverse<--, 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    iglob = ifin;
    /*OUT: {
    Reverse<--, 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    if (iglob == ii2) {
        /*OUT: {
        Reverse<--, 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7945_1; 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7945_1; 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7945_1; 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7945_1; 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7945_1; 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7945_1; 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7945_1; 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7945_1; 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        for (j = jbeg; j <= jfin; j++) {
            /*OUT: {
            Reverse<--, 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            jglob = j;
            /*OUT: {
            Reverse<--, 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            /*OUT: {
            Reverse<--, 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            /*OUT: {
            Reverse<--, 7945_0; 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7945_0; 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7945_0; 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7945_0; 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7945_0; 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7945_0; 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7945_0; 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 7945_0; 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            for (k = ki1; k <= ki2; k++) {
                /*OUT: {
                Reverse<--, 7945_0; 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
                Reverse<--, 7945_0; 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
                Reverse<--, 7945_0; 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
                Reverse<--, 7945_0; 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
                Reverse<--, 7945_0; 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
                Reverse<--, 7945_0; 7940_0; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
                Reverse<--, 7945_0; 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
                Reverse<--, 7945_0; 7940_0; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
                phi2[j][k] = 0.40e+00 * (u[ifin][j][k][4] - 0.50 * (((u[ifin][j][k][1]) * (u[ifin][j][k][1])) + ((u[ifin][j][k][2]) * (u[ifin][j][k][2])) + ((u[ifin][j][k][3]) * (u[ifin][j][k][3]))) / u[ifin][j][k][0]);
            }
        }
    }
    /*OUT: {
    Reverse<--, 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    frc3 = 0.0;
    /*OUT: {
    Reverse<--, 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    /*OUT: {
    Reverse<--, 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    /*OUT: {
    Reverse<--, 8000_1; 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 8000_1; 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    for (j = jbeg; j <= jfin1; j++) {
        /*OUT: {
        Reverse<--, 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        /*OUT: {
        Reverse<--, 8000_0; 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
        Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
        for (k = ki1; k <= ki2 - 1; k++) {
            /*OUT: {
            Reverse<--, 8000_0; 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
            Reverse<--, 8000_0; 7997_0; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
            frc3 = frc3 + (phi1[j][k] + phi1[j + 1][k] + phi1[j][k + 1] + phi1[j + 1][k + 1] + phi2[j][k] + phi2[j + 1][k] + phi2[j][k + 1] + phi2[j + 1][k + 1]);
        }
    }
    /*OUT: {
    Reverse<--, 7997_1; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    frc3 = deta * dzeta * frc3;
    /*OUT: {
    Reverse<--, 7997_1; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7880_1; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7880_1; 7865_1; 7838_1; 7779_1; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7940_1; 7938_0; 7882_1; 7880_0; 7865_1; 7838_1; 7781_1; 7779_0; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7882_1; 7880_0; 7865_1; 7838_1; 7779_1; 7721_1; 7706_1; 7679_1; 7569_1; 7555_1;>
    Reverse<--, 7997_1; 7938_1; 7880_1; 7865_1; 7838_1; 7781_1; 7779_0; 7723_1; 7721_0; 7706_1; 7679_1; 7569_1; 7555_1;>}*/
    frc = 0.25 * (frc1 + frc2 + frc3);
}
static void read_input() {
    /*OUT: {
    Reverse<--,>}*/
    FILE *fp;
    /*OUT: {
    Reverse<--,>}*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - LU Benchmark\n\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fp = fopen("inputlu.data", "r");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (fp != ((void *) 0)) {
        /*OUT: {
        Reverse<--, 8039_0;>}*/
        printf(" Reading from input file inputlu.data\n");
        /*OUT: {
        Reverse<--, 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8039_0;>}*/
        int _imopVarPre173;
        /*OUT: {
        Reverse<--, 8039_0;>}*/
        _imopVarPre173 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8039_0;>}*/
        while (_imopVarPre173 != '\n') {
            /*OUT: {
            Reverse<--, 8052_0; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8052_0; 8039_0;>}*/
            _imopVarPre173 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8052_0; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8052_1; 8039_0;>}*/
        int _imopVarPre175;
        /*OUT: {
        Reverse<--, 8052_1; 8039_0;>}*/
        _imopVarPre175 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8052_1; 8039_0;>}*/
        while (_imopVarPre175 != '\n') {
            /*OUT: {
            Reverse<--, 8067_0; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8067_0; 8052_1; 8039_0;>}*/
            _imopVarPre175 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8067_0; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8067_1; 8052_1; 8039_0;>}*/
        int *_imopVarPre178;
        /*OUT: {
        Reverse<--, 8067_1; 8052_1; 8039_0;>}*/
        int *_imopVarPre179;
        /*OUT: {
        Reverse<--, 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre178 = &inorm;
        /*OUT: {
        Reverse<--, 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre179 = &ipr;
        /*OUT: {
        Reverse<--, 8067_1; 8052_1; 8039_0;>}*/
        fscanf(fp, "%d%d", _imopVarPre179, _imopVarPre178);
        /*OUT: {
        Reverse<--, 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre181;
        /*OUT: {
        Reverse<--, 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre181 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre181 != '\n') {
            /*OUT: {
            Reverse<--, 8093_0; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8093_0; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre181 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8093_0; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre183;
        /*OUT: {
        Reverse<--, 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre183 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre183 != '\n') {
            /*OUT: {
            Reverse<--, 8108_0; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8108_0; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre183 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8108_0; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre185;
        /*OUT: {
        Reverse<--, 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre185 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre185 != '\n') {
            /*OUT: {
            Reverse<--, 8123_0; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8123_0; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre185 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8123_0; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int *_imopVarPre187;
        /*OUT: {
        Reverse<--, 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre187 = &itmax;
        /*OUT: {
        Reverse<--, 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        fscanf(fp, "%d", _imopVarPre187);
        /*OUT: {
        Reverse<--, 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre189;
        /*OUT: {
        Reverse<--, 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre189 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre189 != '\n') {
            /*OUT: {
            Reverse<--, 8146_0; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8146_0; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre189 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8146_0; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre191;
        /*OUT: {
        Reverse<--, 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre191 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre191 != '\n') {
            /*OUT: {
            Reverse<--, 8161_0; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8161_0; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre191 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8161_0; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre193;
        /*OUT: {
        Reverse<--, 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre193 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre193 != '\n') {
            /*OUT: {
            Reverse<--, 8176_0; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8176_0; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre193 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8176_0; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        double *_imopVarPre195;
        /*OUT: {
        Reverse<--, 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre195 = &dt;
        /*OUT: {
        Reverse<--, 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        fscanf(fp, "%lf", _imopVarPre195);
        /*OUT: {
        Reverse<--, 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre197;
        /*OUT: {
        Reverse<--, 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre197 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre197 != '\n') {
            /*OUT: {
            Reverse<--, 8199_0; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8199_0; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre197 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8199_0; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre199;
        /*OUT: {
        Reverse<--, 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre199 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre199 != '\n') {
            /*OUT: {
            Reverse<--, 8214_0; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8214_0; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre199 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8214_0; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre201;
        /*OUT: {
        Reverse<--, 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre201 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre201 != '\n') {
            /*OUT: {
            Reverse<--, 8229_0; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8229_0; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre201 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8229_0; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        double *_imopVarPre203;
        /*OUT: {
        Reverse<--, 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre203 = &omega;
        /*OUT: {
        Reverse<--, 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        fscanf(fp, "%lf", _imopVarPre203);
        /*OUT: {
        Reverse<--, 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre205;
        /*OUT: {
        Reverse<--, 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre205 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre205 != '\n') {
            /*OUT: {
            Reverse<--, 8252_0; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8252_0; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre205 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8252_0; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre207;
        /*OUT: {
        Reverse<--, 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre207 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre207 != '\n') {
            /*OUT: {
            Reverse<--, 8267_0; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8267_0; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre207 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8267_0; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre209;
        /*OUT: {
        Reverse<--, 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre209 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre209 != '\n') {
            /*OUT: {
            Reverse<--, 8282_0; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8282_0; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre209 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8282_0; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        double *_imopVarPre215;
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        double *_imopVarPre216;
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        double *_imopVarPre217;
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        double *_imopVarPre218;
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        double *_imopVarPre219;
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre215 = &tolrsd[4];
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre216 = &tolrsd[3];
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre217 = &tolrsd[2];
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre218 = &tolrsd[1];
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre219 = &tolrsd[0];
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        fscanf(fp, "%lf%lf%lf%lf%lf", _imopVarPre219, _imopVarPre218, _imopVarPre217, _imopVarPre216, _imopVarPre215);
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre221;
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre221 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre221 != '\n') {
            /*OUT: {
            Reverse<--, 8322_0; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8322_0; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre221 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8322_0; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre223;
        /*OUT: {
        Reverse<--, 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre223 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre223 != '\n') {
            /*OUT: {
            Reverse<--, 8337_0; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8337_0; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre223 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8337_0; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre225;
        /*OUT: {
        Reverse<--, 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre225 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre225 != '\n') {
            /*OUT: {
            Reverse<--, 8352_0; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8352_0; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre225 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8352_0; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int *_imopVarPre229;
        /*OUT: {
        Reverse<--, 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int *_imopVarPre230;
        /*OUT: {
        Reverse<--, 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int *_imopVarPre231;
        /*OUT: {
        Reverse<--, 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre229 = &nz0;
        /*OUT: {
        Reverse<--, 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre230 = &ny0;
        /*OUT: {
        Reverse<--, 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre231 = &nx0;
        /*OUT: {
        Reverse<--, 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        fscanf(fp, "%d%d%d", _imopVarPre231, _imopVarPre230, _imopVarPre229);
        /*OUT: {
        Reverse<--, 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        int _imopVarPre233;
        /*OUT: {
        Reverse<--, 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre233 = fgetc(fp);
        /*OUT: {
        Reverse<--, 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        while (_imopVarPre233 != '\n') {
            /*OUT: {
            Reverse<--, 8381_0; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 8381_0; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre233 = fgetc(fp);
            /*OUT: {
            Reverse<--, 8381_0; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        fclose(fp);
        /*OUT: {
        Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
    } else {
        /*OUT: {
        Reverse<--, 8039_1;>}*/
        ipr = 1;
        /*OUT: {
        Reverse<--, 8039_1;>}*/
        inorm = 50;
        /*OUT: {
        Reverse<--, 8039_1;>}*/
        itmax = 50;
        /*OUT: {
        Reverse<--, 8039_1;>}*/
        dt = 0.5;
        /*OUT: {
        Reverse<--, 8039_1;>}*/
        omega = 1.2;
        /*OUT: {
        Reverse<--, 8039_1;>}*/
        tolrsd[0] = 1.0e-8;
        /*OUT: {
        Reverse<--, 8039_1;>}*/
        tolrsd[1] = 1.0e-8;
        /*OUT: {
        Reverse<--, 8039_1;>}*/
        tolrsd[2] = 1.0e-8;
        /*OUT: {
        Reverse<--, 8039_1;>}*/
        tolrsd[3] = 1.0e-8;
        /*OUT: {
        Reverse<--, 8039_1;>}*/
        tolrsd[4] = 1.0e-8;
        /*OUT: {
        Reverse<--, 8039_1;>}*/
        nx0 = 12;
        /*OUT: {
        Reverse<--, 8039_1;>}*/
        ny0 = 12;
        /*OUT: {
        Reverse<--, 8039_1;>}*/
        nz0 = 12;
    }
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
    int _imopVarPre234;
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
    int _imopVarPre235;
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
    _imopVarPre234 = nx0 < 4;
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
    if (!_imopVarPre234) {
        /*OUT: {
        Reverse<--, 8429_0; 8039_1;>
        Reverse<--, 8429_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre235 = ny0 < 4;
        /*OUT: {
        Reverse<--, 8429_0; 8039_1;>
        Reverse<--, 8429_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        if (!_imopVarPre235) {
            /*OUT: {
            Reverse<--, 8432_0; 8429_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
            Reverse<--, 8432_0; 8429_0; 8039_1;>}*/
            _imopVarPre235 = nz0 < 4;
        }
        /*OUT: {
        Reverse<--, 8429_0; 8039_1;>
        Reverse<--, 8429_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre234 = _imopVarPre235;
    }
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
    if (_imopVarPre234) {
        /*OUT: {
        Reverse<--, 8437_0; 8039_1;>
        Reverse<--, 8437_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        printf("     PROBLEM SIZE IS TOO SMALL - \n" "     SET EACH OF NX, NY AND NZ AT LEAST EQUAL TO 5\n");
        /*OUT: {
        Reverse<--, 8437_0; 8039_1;>
        Reverse<--, 8437_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        /*OUT: {
        Reverse<--, 8437_0; 8039_1;>
        Reverse<--, 8437_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 8437_0; 8039_1;>
        Reverse<--, 8437_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
    }
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
    int _imopVarPre236;
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
    int _imopVarPre237;
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
    _imopVarPre236 = nx0 > 12;
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
    if (!_imopVarPre236) {
        /*OUT: {
        Reverse<--, 8452_0; 8039_1;>
        Reverse<--, 8452_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre237 = ny0 > 12;
        /*OUT: {
        Reverse<--, 8452_0; 8039_1;>
        Reverse<--, 8452_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        if (!_imopVarPre237) {
            /*OUT: {
            Reverse<--, 8455_0; 8452_0; 8039_1;>
            Reverse<--, 8455_0; 8452_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
            _imopVarPre237 = nz0 > 12;
        }
        /*OUT: {
        Reverse<--, 8452_0; 8039_1;>
        Reverse<--, 8452_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>}*/
        _imopVarPre236 = _imopVarPre237;
    }
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
    if (_imopVarPre236) {
        /*OUT: {
        Reverse<--, 8460_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
        Reverse<--, 8460_0; 8039_1;>}*/
        printf("     PROBLEM SIZE IS TOO LARGE - \n" "     NX, NY AND NZ SHOULD BE EQUAL TO \n" "     ISIZ1, ISIZ2 AND ISIZ3 RESPECTIVELY\n");
        /*OUT: {
        Reverse<--, 8460_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
        Reverse<--, 8460_0; 8039_1;>}*/
        /*OUT: {
        Reverse<--, 8460_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
        Reverse<--, 8460_0; 8039_1;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 8460_0; 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
        Reverse<--, 8460_0; 8039_1;>}*/
    }
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
    printf(" Size: %3dx%3dx%3d\n", nx0, ny0, nz0);
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
    printf(" Iterations: %3d\n", itmax);
    /*OUT: {
    Reverse<--, 8381_1; 8352_1; 8337_1; 8322_1; 8282_1; 8267_1; 8252_1; 8229_1; 8214_1; 8199_1; 8176_1; 8161_1; 8146_1; 8123_1; 8108_1; 8093_1; 8067_1; 8052_1; 8039_0;>
    Reverse<--, 8039_1;>}*/
}
static void rhs() {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<12441,>}*/
        int i;
        /*OUT: {
        Reverse<12441,>}*/
        int j;
        /*OUT: {
        Reverse<12441,>}*/
        int k;
        /*OUT: {
        Reverse<12441,>}*/
        int m;
        /*OUT: {
        Reverse<12441,>}*/
        int L1;
        /*OUT: {
        Reverse<12441,>}*/
        int L2;
        /*OUT: {
        Reverse<12441,>}*/
        int ist1;
        /*OUT: {
        Reverse<12441,>}*/
        int iend1;
        /*OUT: {
        Reverse<12441,>}*/
        int jst1;
        /*OUT: {
        Reverse<12441,>}*/
        int jend1;
        /*OUT: {
        Reverse<12441,>}*/
        double q;
        /*OUT: {
        Reverse<12441,>}*/
        double u21;
        /*OUT: {
        Reverse<12441,>}*/
        double u31;
        /*OUT: {
        Reverse<12441,>}*/
        double u41;
        /*OUT: {
        Reverse<12441,>}*/
        double tmp;
        /*OUT: {
        Reverse<12441,>}*/
        double u21i;
        /*OUT: {
        Reverse<12441,>}*/
        double u31i;
        /*OUT: {
        Reverse<12441,>}*/
        double u41i;
        /*OUT: {
        Reverse<12441,>}*/
        double u51i;
        /*OUT: {
        Reverse<12441,>}*/
        double u21j;
        /*OUT: {
        Reverse<12441,>}*/
        double u31j;
        /*OUT: {
        Reverse<12441,>}*/
        double u41j;
        /*OUT: {
        Reverse<12441,>}*/
        double u51j;
        /*OUT: {
        Reverse<12441,>}*/
        double u21k;
        /*OUT: {
        Reverse<12441,>}*/
        double u31k;
        /*OUT: {
        Reverse<12441,>}*/
        double u41k;
        /*OUT: {
        Reverse<12441,>}*/
        double u51k;
        /*OUT: {
        Reverse<12441,>}*/
        double u21im1;
        /*OUT: {
        Reverse<12441,>}*/
        double u31im1;
        /*OUT: {
        Reverse<12441,>}*/
        double u41im1;
        /*OUT: {
        Reverse<12441,>}*/
        double u51im1;
        /*OUT: {
        Reverse<12441,>}*/
        double u21jm1;
        /*OUT: {
        Reverse<12441,>}*/
        double u31jm1;
        /*OUT: {
        Reverse<12441,>}*/
        double u41jm1;
        /*OUT: {
        Reverse<12441,>}*/
        double u51jm1;
        /*OUT: {
        Reverse<12441,>}*/
        double u21km1;
        /*OUT: {
        Reverse<12441,>}*/
        double u31km1;
        /*OUT: {
        Reverse<12441,>}*/
        double u41km1;
        /*OUT: {
        Reverse<12441,>}*/
        double u51km1;
#pragma omp for nowait
        /*OUT: {
        Reverse<12441,>}*/
        /*OUT: {
        Reverse<12441,>}*/
        /*OUT: {
        Reverse<12441, 8526_1;>}*/
        for (i = 0; i <= nx - 1; i++) {
            /*OUT: {
            Reverse<12441,>}*/
            /*OUT: {
            Reverse<12441,>}*/
            /*OUT: {
            Reverse<12441, 8529_1; 8526_0;>}*/
            for (j = 0; j <= ny - 1; j++) {
                /*OUT: {
                Reverse<12441, 8526_0;>}*/
                /*OUT: {
                Reverse<12441, 8526_0;>}*/
                /*OUT: {
                Reverse<12441, 8532_1; 8529_0; 8526_0;>}*/
                for (k = 0; k <= nz - 1; k++) {
                    /*OUT: {
                    Reverse<12441, 8529_0; 8526_0;>}*/
                    /*OUT: {
                    Reverse<12441, 8529_0; 8526_0;>}*/
                    /*OUT: {
                    Reverse<12441, 8532_0; 8529_0; 8526_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<12441, 8532_0; 8529_0; 8526_0;>}*/
                        rsd[i][j][k][m] = -frct[i][j][k][m];
                    }
                }
            }
        }
        /*OUT: {
        Reverse<12441,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<8544,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<8544,>}*/
        L1 = 0;
        /*OUT: {
        Reverse<8544,>}*/
        L2 = nx - 1;
#pragma omp for nowait
        /*OUT: {
        Reverse<8544,>}*/
        /*OUT: {
        Reverse<8544,>}*/
        /*OUT: {
        Reverse<8544, 8555_1;>}*/
        for (i = L1; i <= L2; i++) {
            /*OUT: {
            Reverse<8544,>}*/
            /*OUT: {
            Reverse<8544,>}*/
            /*OUT: {
            Reverse<8544, 8558_1; 8555_0;>}*/
            for (j = jst; j <= jend; j++) {
                /*OUT: {
                Reverse<8544, 8555_0;>}*/
                /*OUT: {
                Reverse<8544, 8555_0;>}*/
                /*OUT: {
                Reverse<8544, 8558_0; 8555_0;>}*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: {
                    Reverse<8544, 8558_0; 8555_0;>}*/
                    flux[i][j][k][0] = u[i][j][k][1];
                    /*OUT: {
                    Reverse<8544, 8558_0; 8555_0;>}*/
                    u21 = u[i][j][k][1] / u[i][j][k][0];
                    /*OUT: {
                    Reverse<8544, 8558_0; 8555_0;>}*/
                    q = 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) / u[i][j][k][0];
                    /*OUT: {
                    Reverse<8544, 8558_0; 8555_0;>}*/
                    flux[i][j][k][1] = u[i][j][k][1] * u21 + 0.40e+00 * (u[i][j][k][4] - q);
                    /*OUT: {
                    Reverse<8544, 8558_0; 8555_0;>}*/
                    flux[i][j][k][2] = u[i][j][k][2] * u21;
                    /*OUT: {
                    Reverse<8544, 8558_0; 8555_0;>}*/
                    flux[i][j][k][3] = u[i][j][k][3] * u21;
                    /*OUT: {
                    Reverse<8544, 8558_0; 8555_0;>}*/
                    flux[i][j][k][4] = (1.40e+00 * u[i][j][k][4] - 0.40e+00 * q) * u21;
                }
            }
        }
        /*OUT: {
        Reverse<8544,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<8657,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<8657,>}*/
        /*OUT: {
        Reverse<8657,>}*/
        /*OUT: {
        Reverse<8657, 8664_1;>}*/
        for (j = jst; j <= jend; j++) {
            /*OUT: {
            Reverse<8657,>}*/
            /*OUT: {
            Reverse<8657,>}*/
            /*OUT: {
            Reverse<8657, 9048_1; 9011_1; 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
            for (k = 1; k <= nz - 2; k++) {
                /*OUT: {
                Reverse<8657, 8664_0;>}*/
                /*OUT: {
                Reverse<8657, 8664_0;>}*/
                /*OUT: {
                Reverse<8657, 8670_1; 8667_0; 8664_0;>}*/
                for (i = ist; i <= iend; i++) {
                    /*OUT: {
                    Reverse<8657, 8667_0; 8664_0;>}*/
                    /*OUT: {
                    Reverse<8657, 8667_0; 8664_0;>}*/
                    /*OUT: {
                    Reverse<8657, 8670_0; 8667_0; 8664_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<8657, 8670_0; 8667_0; 8664_0;>}*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - tx2 * (flux[i + 1][j][k][m] - flux[i - 1][j][k][m]);
                    }
                }
                /*OUT: {
                Reverse<8657, 8667_1; 8664_0;>}*/
                L2 = nx - 1;
                /*OUT: {
                Reverse<8657, 8667_1; 8664_0;>}*/
                /*OUT: {
                Reverse<8657, 8667_1; 8664_0;>}*/
                /*OUT: {
                Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                for (i = ist; i <= L2; i++) {
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    tmp = 1.0 / u[i][j][k][0];
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    u21i = tmp * u[i][j][k][1];
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    u31i = tmp * u[i][j][k][2];
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    u41i = tmp * u[i][j][k][3];
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    u51i = tmp * u[i][j][k][4];
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    tmp = 1.0 / u[i - 1][j][k][0];
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    u21im1 = tmp * u[i - 1][j][k][1];
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    u31im1 = tmp * u[i - 1][j][k][2];
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    u41im1 = tmp * u[i - 1][j][k][3];
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    u51im1 = tmp * u[i - 1][j][k][4];
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    flux[i][j][k][1] = (4.0 / 3.0) * tx3 * (u21i - u21im1);
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    flux[i][j][k][2] = tx3 * (u31i - u31im1);
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    flux[i][j][k][3] = tx3 * (u41i - u41im1);
                    /*OUT: {
                    Reverse<8657, 8694_0; 8667_1; 8664_0;>}*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tx3 * (((u21i * u21i) + (u31i * u31i) + (u41i * u41i)) - ((u21im1 * u21im1) + (u31im1 * u31im1) + (u41im1 * u41im1))) + (1.0 / 6.0) * tx3 * ((u21i * u21i) - (u21im1 * u21im1)) + 1.40e+00 * 1.40e+00 * tx3 * (u51i - u51im1);
                }
                /*OUT: {
                Reverse<8657, 8694_1; 8667_1; 8664_0;>}*/
                /*OUT: {
                Reverse<8657, 8694_1; 8667_1; 8664_0;>}*/
                /*OUT: {
                Reverse<8657, 8800_0; 8694_1; 8667_1; 8664_0;>}*/
                for (i = ist; i <= iend; i++) {
                    /*OUT: {
                    Reverse<8657, 8800_0; 8694_1; 8667_1; 8664_0;>}*/
                    rsd[i][j][k][0] = rsd[i][j][k][0] + dx1 * tx1 * (u[i - 1][j][k][0] - 2.0 * u[i][j][k][0] + u[i + 1][j][k][0]);
                    /*OUT: {
                    Reverse<8657, 8800_0; 8694_1; 8667_1; 8664_0;>}*/
                    rsd[i][j][k][1] = rsd[i][j][k][1] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][1] - flux[i][j][k][1]) + dx2 * tx1 * (u[i - 1][j][k][1] - 2.0 * u[i][j][k][1] + u[i + 1][j][k][1]);
                    /*OUT: {
                    Reverse<8657, 8800_0; 8694_1; 8667_1; 8664_0;>}*/
                    rsd[i][j][k][2] = rsd[i][j][k][2] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][2] - flux[i][j][k][2]) + dx3 * tx1 * (u[i - 1][j][k][2] - 2.0 * u[i][j][k][2] + u[i + 1][j][k][2]);
                    /*OUT: {
                    Reverse<8657, 8800_0; 8694_1; 8667_1; 8664_0;>}*/
                    rsd[i][j][k][3] = rsd[i][j][k][3] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][3] - flux[i][j][k][3]) + dx4 * tx1 * (u[i - 1][j][k][3] - 2.0 * u[i][j][k][3] + u[i + 1][j][k][3]);
                    /*OUT: {
                    Reverse<8657, 8800_0; 8694_1; 8667_1; 8664_0;>}*/
                    rsd[i][j][k][4] = rsd[i][j][k][4] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][4] - flux[i][j][k][4]) + dx5 * tx1 * (u[i - 1][j][k][4] - 2.0 * u[i][j][k][4] + u[i + 1][j][k][4]);
                }
                /*OUT: {
                Reverse<8657, 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                /*OUT: {
                Reverse<8657, 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                /*OUT: {
                Reverse<8657, 8954_0; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<8657, 8954_0; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                    rsd[1][j][k][m] = rsd[1][j][k][m] - dssp * (+5.0 * u[1][j][k][m] - 4.0 * u[2][j][k][m] + u[3][j][k][m]);
                    /*OUT: {
                    Reverse<8657, 8954_0; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                    rsd[2][j][k][m] = rsd[2][j][k][m] - dssp * (-4.0 * u[1][j][k][m] + 6.0 * u[2][j][k][m] - 4.0 * u[3][j][k][m] + u[4][j][k][m]);
                }
                /*OUT: {
                Reverse<8657, 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                ist1 = 3;
                /*OUT: {
                Reverse<8657, 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                iend1 = nx - 4;
                /*OUT: {
                Reverse<8657, 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                /*OUT: {
                Reverse<8657, 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                /*OUT: {
                Reverse<8657, 9014_1; 9011_0; 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                for (i = ist1; i <= iend1; i++) {
                    /*OUT: {
                    Reverse<8657, 9011_0; 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                    /*OUT: {
                    Reverse<8657, 9011_0; 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                    /*OUT: {
                    Reverse<8657, 9014_0; 9011_0; 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<8657, 9014_0; 9011_0; 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
                    }
                }
                /*OUT: {
                Reverse<8657, 9011_1; 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                /*OUT: {
                Reverse<8657, 9011_1; 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                /*OUT: {
                Reverse<8657, 9048_0; 9011_1; 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<8657, 9048_0; 9011_1; 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                    rsd[nx - 3][j][k][m] = rsd[nx - 3][j][k][m] - dssp * (u[nx - 5][j][k][m] - 4.0 * u[nx - 4][j][k][m] + 6.0 * u[nx - 3][j][k][m] - 4.0 * u[nx - 2][j][k][m]);
                    /*OUT: {
                    Reverse<8657, 9048_0; 9011_1; 8954_1; 8800_1; 8694_1; 8667_1; 8664_0;>}*/
                    rsd[nx - 2][j][k][m] = rsd[nx - 2][j][k][m] - dssp * (u[nx - 4][j][k][m] - 4.0 * u[nx - 3][j][k][m] + 5.0 * u[nx - 2][j][k][m]);
                }
            }
        }
        /*OUT: {
        Reverse<8657,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<9100,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<9100,>}*/
        L1 = 0;
        /*OUT: {
        Reverse<9100,>}*/
        L2 = ny - 1;
#pragma omp for nowait
        /*OUT: {
        Reverse<9100,>}*/
        /*OUT: {
        Reverse<9100,>}*/
        /*OUT: {
        Reverse<9100, 9111_1;>}*/
        for (i = ist; i <= iend; i++) {
            /*OUT: {
            Reverse<9100,>}*/
            /*OUT: {
            Reverse<9100,>}*/
            /*OUT: {
            Reverse<9100, 9114_1; 9111_0;>}*/
            for (j = L1; j <= L2; j++) {
                /*OUT: {
                Reverse<9100, 9111_0;>}*/
                /*OUT: {
                Reverse<9100, 9111_0;>}*/
                /*OUT: {
                Reverse<9100, 9114_0; 9111_0;>}*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: {
                    Reverse<9100, 9114_0; 9111_0;>}*/
                    flux[i][j][k][0] = u[i][j][k][2];
                    /*OUT: {
                    Reverse<9100, 9114_0; 9111_0;>}*/
                    u31 = u[i][j][k][2] / u[i][j][k][0];
                    /*OUT: {
                    Reverse<9100, 9114_0; 9111_0;>}*/
                    q = 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) / u[i][j][k][0];
                    /*OUT: {
                    Reverse<9100, 9114_0; 9111_0;>}*/
                    flux[i][j][k][1] = u[i][j][k][1] * u31;
                    /*OUT: {
                    Reverse<9100, 9114_0; 9111_0;>}*/
                    flux[i][j][k][2] = u[i][j][k][2] * u31 + 0.40e+00 * (u[i][j][k][4] - q);
                    /*OUT: {
                    Reverse<9100, 9114_0; 9111_0;>}*/
                    flux[i][j][k][3] = u[i][j][k][3] * u31;
                    /*OUT: {
                    Reverse<9100, 9114_0; 9111_0;>}*/
                    flux[i][j][k][4] = (1.40e+00 * u[i][j][k][4] - 0.40e+00 * q) * u31;
                }
            }
        }
        /*OUT: {
        Reverse<9100,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<9213,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<9213,>}*/
        /*OUT: {
        Reverse<9213,>}*/
        /*OUT: {
        Reverse<9213, 9220_1;>}*/
        for (i = ist; i <= iend; i++) {
            /*OUT: {
            Reverse<9213,>}*/
            /*OUT: {
            Reverse<9213,>}*/
            /*OUT: {
            Reverse<9213, 9604_1; 9567_1; 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
            for (k = 1; k <= nz - 2; k++) {
                /*OUT: {
                Reverse<9213, 9220_0;>}*/
                /*OUT: {
                Reverse<9213, 9220_0;>}*/
                /*OUT: {
                Reverse<9213, 9226_1; 9223_0; 9220_0;>}*/
                for (j = jst; j <= jend; j++) {
                    /*OUT: {
                    Reverse<9213, 9223_0; 9220_0;>}*/
                    /*OUT: {
                    Reverse<9213, 9223_0; 9220_0;>}*/
                    /*OUT: {
                    Reverse<9213, 9226_0; 9223_0; 9220_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<9213, 9226_0; 9223_0; 9220_0;>}*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - ty2 * (flux[i][j + 1][k][m] - flux[i][j - 1][k][m]);
                    }
                }
                /*OUT: {
                Reverse<9213, 9223_1; 9220_0;>}*/
                L2 = ny - 1;
                /*OUT: {
                Reverse<9213, 9223_1; 9220_0;>}*/
                /*OUT: {
                Reverse<9213, 9223_1; 9220_0;>}*/
                /*OUT: {
                Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                for (j = jst; j <= L2; j++) {
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    tmp = 1.0 / u[i][j][k][0];
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    u21j = tmp * u[i][j][k][1];
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    u31j = tmp * u[i][j][k][2];
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    u41j = tmp * u[i][j][k][3];
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    u51j = tmp * u[i][j][k][4];
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    tmp = 1.0 / u[i][j - 1][k][0];
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    u21jm1 = tmp * u[i][j - 1][k][1];
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    u31jm1 = tmp * u[i][j - 1][k][2];
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    u41jm1 = tmp * u[i][j - 1][k][3];
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    u51jm1 = tmp * u[i][j - 1][k][4];
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    flux[i][j][k][1] = ty3 * (u21j - u21jm1);
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    flux[i][j][k][2] = (4.0 / 3.0) * ty3 * (u31j - u31jm1);
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    flux[i][j][k][3] = ty3 * (u41j - u41jm1);
                    /*OUT: {
                    Reverse<9213, 9250_0; 9223_1; 9220_0;>}*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * ty3 * (((u21j * u21j) + (u31j * u31j) + (u41j * u41j)) - ((u21jm1 * u21jm1) + (u31jm1 * u31jm1) + (u41jm1 * u41jm1))) + (1.0 / 6.0) * ty3 * ((u31j * u31j) - (u31jm1 * u31jm1)) + 1.40e+00 * 1.40e+00 * ty3 * (u51j - u51jm1);
                }
                /*OUT: {
                Reverse<9213, 9250_1; 9223_1; 9220_0;>}*/
                /*OUT: {
                Reverse<9213, 9250_1; 9223_1; 9220_0;>}*/
                /*OUT: {
                Reverse<9213, 9356_0; 9250_1; 9223_1; 9220_0;>}*/
                for (j = jst; j <= jend; j++) {
                    /*OUT: {
                    Reverse<9213, 9356_0; 9250_1; 9223_1; 9220_0;>}*/
                    rsd[i][j][k][0] = rsd[i][j][k][0] + dy1 * ty1 * (u[i][j - 1][k][0] - 2.0 * u[i][j][k][0] + u[i][j + 1][k][0]);
                    /*OUT: {
                    Reverse<9213, 9356_0; 9250_1; 9223_1; 9220_0;>}*/
                    rsd[i][j][k][1] = rsd[i][j][k][1] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][1] - flux[i][j][k][1]) + dy2 * ty1 * (u[i][j - 1][k][1] - 2.0 * u[i][j][k][1] + u[i][j + 1][k][1]);
                    /*OUT: {
                    Reverse<9213, 9356_0; 9250_1; 9223_1; 9220_0;>}*/
                    rsd[i][j][k][2] = rsd[i][j][k][2] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][2] - flux[i][j][k][2]) + dy3 * ty1 * (u[i][j - 1][k][2] - 2.0 * u[i][j][k][2] + u[i][j + 1][k][2]);
                    /*OUT: {
                    Reverse<9213, 9356_0; 9250_1; 9223_1; 9220_0;>}*/
                    rsd[i][j][k][3] = rsd[i][j][k][3] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][3] - flux[i][j][k][3]) + dy4 * ty1 * (u[i][j - 1][k][3] - 2.0 * u[i][j][k][3] + u[i][j + 1][k][3]);
                    /*OUT: {
                    Reverse<9213, 9356_0; 9250_1; 9223_1; 9220_0;>}*/
                    rsd[i][j][k][4] = rsd[i][j][k][4] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][4] - flux[i][j][k][4]) + dy5 * ty1 * (u[i][j - 1][k][4] - 2.0 * u[i][j][k][4] + u[i][j + 1][k][4]);
                }
                /*OUT: {
                Reverse<9213, 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                /*OUT: {
                Reverse<9213, 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                /*OUT: {
                Reverse<9213, 9510_0; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<9213, 9510_0; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                    rsd[i][1][k][m] = rsd[i][1][k][m] - dssp * (+5.0 * u[i][1][k][m] - 4.0 * u[i][2][k][m] + u[i][3][k][m]);
                    /*OUT: {
                    Reverse<9213, 9510_0; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                    rsd[i][2][k][m] = rsd[i][2][k][m] - dssp * (-4.0 * u[i][1][k][m] + 6.0 * u[i][2][k][m] - 4.0 * u[i][3][k][m] + u[i][4][k][m]);
                }
                /*OUT: {
                Reverse<9213, 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                jst1 = 3;
                /*OUT: {
                Reverse<9213, 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                jend1 = ny - 4;
                /*OUT: {
                Reverse<9213, 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                /*OUT: {
                Reverse<9213, 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                /*OUT: {
                Reverse<9213, 9570_1; 9567_0; 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                for (j = jst1; j <= jend1; j++) {
                    /*OUT: {
                    Reverse<9213, 9567_0; 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                    /*OUT: {
                    Reverse<9213, 9567_0; 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                    /*OUT: {
                    Reverse<9213, 9570_0; 9567_0; 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<9213, 9570_0; 9567_0; 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
                    }
                }
                /*OUT: {
                Reverse<9213, 9567_1; 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                /*OUT: {
                Reverse<9213, 9567_1; 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                /*OUT: {
                Reverse<9213, 9604_0; 9567_1; 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<9213, 9604_0; 9567_1; 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                    rsd[i][ny - 3][k][m] = rsd[i][ny - 3][k][m] - dssp * (u[i][ny - 5][k][m] - 4.0 * u[i][ny - 4][k][m] + 6.0 * u[i][ny - 3][k][m] - 4.0 * u[i][ny - 2][k][m]);
                    /*OUT: {
                    Reverse<9213, 9604_0; 9567_1; 9510_1; 9356_1; 9250_1; 9223_1; 9220_0;>}*/
                    rsd[i][ny - 2][k][m] = rsd[i][ny - 2][k][m] - dssp * (u[i][ny - 4][k][m] - 4.0 * u[i][ny - 3][k][m] + 5.0 * u[i][ny - 2][k][m]);
                }
            }
        }
        /*OUT: {
        Reverse<9213,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<9656,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<9656,>}*/
        /*OUT: {
        Reverse<9656,>}*/
        /*OUT: {
        Reverse<9656, 9663_1;>}*/
        for (i = ist; i <= iend; i++) {
            /*OUT: {
            Reverse<9656,>}*/
            /*OUT: {
            Reverse<9656,>}*/
            /*OUT: {
            Reverse<9656, 10141_1; 10104_1; 10051_1; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
            for (j = jst; j <= jend; j++) {
                /*OUT: {
                Reverse<9656, 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 9666_0; 9663_0;>}*/
                for (k = 0; k <= nz - 1; k++) {
                    /*OUT: {
                    Reverse<9656, 9666_0; 9663_0;>}*/
                    flux[i][j][k][0] = u[i][j][k][3];
                    /*OUT: {
                    Reverse<9656, 9666_0; 9663_0;>}*/
                    u41 = u[i][j][k][3] / u[i][j][k][0];
                    /*OUT: {
                    Reverse<9656, 9666_0; 9663_0;>}*/
                    q = 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) / u[i][j][k][0];
                    /*OUT: {
                    Reverse<9656, 9666_0; 9663_0;>}*/
                    flux[i][j][k][1] = u[i][j][k][1] * u41;
                    /*OUT: {
                    Reverse<9656, 9666_0; 9663_0;>}*/
                    flux[i][j][k][2] = u[i][j][k][2] * u41;
                    /*OUT: {
                    Reverse<9656, 9666_0; 9663_0;>}*/
                    flux[i][j][k][3] = u[i][j][k][3] * u41 + 0.40e+00 * (u[i][j][k][4] - q);
                    /*OUT: {
                    Reverse<9656, 9666_0; 9663_0;>}*/
                    flux[i][j][k][4] = (1.40e+00 * u[i][j][k][4] - 0.40e+00 * q) * u41;
                }
                /*OUT: {
                Reverse<9656, 9666_1; 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 9666_1; 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 9769_1; 9766_0; 9666_1; 9663_0;>}*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: {
                    Reverse<9656, 9766_0; 9666_1; 9663_0;>}*/
                    /*OUT: {
                    Reverse<9656, 9766_0; 9666_1; 9663_0;>}*/
                    /*OUT: {
                    Reverse<9656, 9769_0; 9766_0; 9666_1; 9663_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<9656, 9769_0; 9766_0; 9666_1; 9663_0;>}*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - tz2 * (flux[i][j][k + 1][m] - flux[i][j][k - 1][m]);
                    }
                }
                /*OUT: {
                Reverse<9656, 9766_1; 9666_1; 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 9766_1; 9666_1; 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                for (k = 1; k <= nz - 1; k++) {
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    tmp = 1.0 / u[i][j][k][0];
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    u21k = tmp * u[i][j][k][1];
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    u31k = tmp * u[i][j][k][2];
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    u41k = tmp * u[i][j][k][3];
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    u51k = tmp * u[i][j][k][4];
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    tmp = 1.0 / u[i][j][k - 1][0];
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    u21km1 = tmp * u[i][j][k - 1][1];
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    u31km1 = tmp * u[i][j][k - 1][2];
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    u41km1 = tmp * u[i][j][k - 1][3];
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    u51km1 = tmp * u[i][j][k - 1][4];
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    flux[i][j][k][1] = tz3 * (u21k - u21km1);
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    flux[i][j][k][2] = tz3 * (u31k - u31km1);
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    flux[i][j][k][3] = (4.0 / 3.0) * tz3 * (u41k - u41km1);
                    /*OUT: {
                    Reverse<9656, 9791_0; 9766_1; 9666_1; 9663_0;>}*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tz3 * (((u21k * u21k) + (u31k * u31k) + (u41k * u41k)) - ((u21km1 * u21km1) + (u31km1 * u31km1) + (u41km1 * u41km1))) + (1.0 / 6.0) * tz3 * ((u41k * u41k) - (u41km1 * u41km1)) + 1.40e+00 * 1.40e+00 * tz3 * (u51k - u51km1);
                }
                /*OUT: {
                Reverse<9656, 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 9897_0; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                for (k = 1; k <= nz - 2; k++) {
                    /*OUT: {
                    Reverse<9656, 9897_0; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                    rsd[i][j][k][0] = rsd[i][j][k][0] + dz1 * tz1 * (u[i][j][k - 1][0] - 2.0 * u[i][j][k][0] + u[i][j][k + 1][0]);
                    /*OUT: {
                    Reverse<9656, 9897_0; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                    rsd[i][j][k][1] = rsd[i][j][k][1] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][1] - flux[i][j][k][1]) + dz2 * tz1 * (u[i][j][k - 1][1] - 2.0 * u[i][j][k][1] + u[i][j][k + 1][1]);
                    /*OUT: {
                    Reverse<9656, 9897_0; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                    rsd[i][j][k][2] = rsd[i][j][k][2] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][2] - flux[i][j][k][2]) + dz3 * tz1 * (u[i][j][k - 1][2] - 2.0 * u[i][j][k][2] + u[i][j][k + 1][2]);
                    /*OUT: {
                    Reverse<9656, 9897_0; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                    rsd[i][j][k][3] = rsd[i][j][k][3] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][3] - flux[i][j][k][3]) + dz4 * tz1 * (u[i][j][k - 1][3] - 2.0 * u[i][j][k][3] + u[i][j][k + 1][3]);
                    /*OUT: {
                    Reverse<9656, 9897_0; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                    rsd[i][j][k][4] = rsd[i][j][k][4] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][4] - flux[i][j][k][4]) + dz5 * tz1 * (u[i][j][k - 1][4] - 2.0 * u[i][j][k][4] + u[i][j][k + 1][4]);
                }
                /*OUT: {
                Reverse<9656, 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 10051_0; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<9656, 10051_0; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                    rsd[i][j][1][m] = rsd[i][j][1][m] - dssp * (+5.0 * u[i][j][1][m] - 4.0 * u[i][j][2][m] + u[i][j][3][m]);
                    /*OUT: {
                    Reverse<9656, 10051_0; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                    rsd[i][j][2][m] = rsd[i][j][2][m] - dssp * (-4.0 * u[i][j][1][m] + 6.0 * u[i][j][2][m] - 4.0 * u[i][j][3][m] + u[i][j][4][m]);
                }
                /*OUT: {
                Reverse<9656, 10051_1; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 10051_1; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 10107_1; 10104_0; 10051_1; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                for (k = 3; k <= nz - 4; k++) {
                    /*OUT: {
                    Reverse<9656, 10104_0; 10051_1; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                    /*OUT: {
                    Reverse<9656, 10104_0; 10051_1; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                    /*OUT: {
                    Reverse<9656, 10107_0; 10104_0; 10051_1; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<9656, 10107_0; 10104_0; 10051_1; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                        rsd[i][j][k][m] = rsd[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
                    }
                }
                /*OUT: {
                Reverse<9656, 10104_1; 10051_1; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 10104_1; 10051_1; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                /*OUT: {
                Reverse<9656, 10141_0; 10104_1; 10051_1; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                for (m = 0; m < 5; m++) {
                    /*OUT: {
                    Reverse<9656, 10141_0; 10104_1; 10051_1; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                    rsd[i][j][nz - 3][m] = rsd[i][j][nz - 3][m] - dssp * (u[i][j][nz - 5][m] - 4.0 * u[i][j][nz - 4][m] + 6.0 * u[i][j][nz - 3][m] - 4.0 * u[i][j][nz - 2][m]);
                    /*OUT: {
                    Reverse<9656, 10141_0; 10104_1; 10051_1; 9897_1; 9791_1; 9766_1; 9666_1; 9663_0;>}*/
                    rsd[i][j][nz - 2][m] = rsd[i][j][nz - 2][m] - dssp * (u[i][j][nz - 4][m] - 4.0 * u[i][j][nz - 3][m] + 5.0 * u[i][j][nz - 2][m]);
                }
            }
        }
        /*OUT: {
        Reverse<9656,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<10193,>}*/
#pragma omp barrier
    }
}
static void setbv() {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<12614,>}*/
        int i;
        /*OUT: {
        Reverse<12614,>}*/
        int j;
        /*OUT: {
        Reverse<12614,>}*/
        int k;
        /*OUT: {
        Reverse<12614,>}*/
        int iglob;
        /*OUT: {
        Reverse<12614,>}*/
        int jglob;
#pragma omp for nowait
        /*OUT: {
        Reverse<12614,>}*/
        /*OUT: {
        Reverse<12614,>}*/
        /*OUT: {
        Reverse<12614, 10207_1;>}*/
        for (i = 0; i < nx; i++) {
            /*OUT: {
            Reverse<12614,>}*/
            iglob = i;
            /*OUT: {
            Reverse<12614,>}*/
            /*OUT: {
            Reverse<12614,>}*/
            /*OUT: {
            Reverse<12614, 10207_0;>}*/
            for (j = 0; j < ny; j++) {
                /*OUT: {
                Reverse<12614, 10207_0;>}*/
                jglob = j;
                /*OUT: {
                Reverse<12614, 10207_0;>}*/
                double *_imopVarPre239;
                /*OUT: {
                Reverse<12614, 10207_0;>}*/
                _imopVarPre239 = &u[i][j][0][0];
                /*OUT: {
                Reverse<12614, 10207_0;>}*/
                exact(iglob, jglob, 0, _imopVarPre239);
                /*OUT: {
                Reverse<12614, 10207_0;>}*/
                /*OUT: {
                Reverse<12614, 10207_0;>}*/
                double *_imopVarPre242;
                /*OUT: {
                Reverse<12614, 10207_0;>}*/
                int _imopVarPre243;
                /*OUT: {
                Reverse<12614, 10207_0;>}*/
                _imopVarPre242 = &u[i][j][nz - 1][0];
                /*OUT: {
                Reverse<12614, 10207_0;>}*/
                _imopVarPre243 = nz - 1;
                /*OUT: {
                Reverse<12614, 10207_0;>}*/
                exact(iglob, jglob, _imopVarPre243, _imopVarPre242);
                /*OUT: {
                Reverse<12614, 10207_0;>}*/
            }
        }
        /*OUT: {
        Reverse<12614,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<10238,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<10238,>}*/
        /*OUT: {
        Reverse<10238,>}*/
        /*OUT: {
        Reverse<10238, 10247_1;>}*/
        for (i = 0; i < nx; i++) {
            /*OUT: {
            Reverse<10238,>}*/
            iglob = i;
            /*OUT: {
            Reverse<10238,>}*/
            /*OUT: {
            Reverse<10238,>}*/
            /*OUT: {
            Reverse<10238, 10247_0;>}*/
            for (k = 0; k < nz; k++) {
                /*OUT: {
                Reverse<10238, 10247_0;>}*/
                double *_imopVarPre245;
                /*OUT: {
                Reverse<10238, 10247_0;>}*/
                _imopVarPre245 = &u[i][0][k][0];
                /*OUT: {
                Reverse<10238, 10247_0;>}*/
                exact(iglob, 0, k, _imopVarPre245);
                /*OUT: {
                Reverse<10238, 10247_0;>}*/
            }
        }
        /*OUT: {
        Reverse<10238,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<10261,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<10261,>}*/
        /*OUT: {
        Reverse<10261,>}*/
        /*OUT: {
        Reverse<10261, 10270_1;>}*/
        for (i = 0; i < nx; i++) {
            /*OUT: {
            Reverse<10261,>}*/
            iglob = i;
            /*OUT: {
            Reverse<10261,>}*/
            /*OUT: {
            Reverse<10261,>}*/
            /*OUT: {
            Reverse<10261, 10270_0;>}*/
            for (k = 0; k < nz; k++) {
                /*OUT: {
                Reverse<10261, 10270_0;>}*/
                double *_imopVarPre248;
                /*OUT: {
                Reverse<10261, 10270_0;>}*/
                int _imopVarPre249;
                /*OUT: {
                Reverse<10261, 10270_0;>}*/
                _imopVarPre248 = &u[i][ny - 1][k][0];
                /*OUT: {
                Reverse<10261, 10270_0;>}*/
                _imopVarPre249 = ny0 - 1;
                /*OUT: {
                Reverse<10261, 10270_0;>}*/
                exact(iglob, _imopVarPre249, k, _imopVarPre248);
                /*OUT: {
                Reverse<10261, 10270_0;>}*/
            }
        }
        /*OUT: {
        Reverse<10261,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<10287,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<10287,>}*/
        /*OUT: {
        Reverse<10287,>}*/
        /*OUT: {
        Reverse<10287, 10296_1;>}*/
        for (j = 0; j < ny; j++) {
            /*OUT: {
            Reverse<10287,>}*/
            jglob = j;
            /*OUT: {
            Reverse<10287,>}*/
            /*OUT: {
            Reverse<10287,>}*/
            /*OUT: {
            Reverse<10287, 10296_0;>}*/
            for (k = 0; k < nz; k++) {
                /*OUT: {
                Reverse<10287, 10296_0;>}*/
                double *_imopVarPre251;
                /*OUT: {
                Reverse<10287, 10296_0;>}*/
                _imopVarPre251 = &u[0][j][k][0];
                /*OUT: {
                Reverse<10287, 10296_0;>}*/
                exact(0, jglob, k, _imopVarPre251);
                /*OUT: {
                Reverse<10287, 10296_0;>}*/
            }
        }
        /*OUT: {
        Reverse<10287,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<10310,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<10310,>}*/
        /*OUT: {
        Reverse<10310,>}*/
        /*OUT: {
        Reverse<10310, 10319_1;>}*/
        for (j = 0; j < ny; j++) {
            /*OUT: {
            Reverse<10310,>}*/
            jglob = j;
            /*OUT: {
            Reverse<10310,>}*/
            /*OUT: {
            Reverse<10310,>}*/
            /*OUT: {
            Reverse<10310, 10319_0;>}*/
            for (k = 0; k < nz; k++) {
                /*OUT: {
                Reverse<10310, 10319_0;>}*/
                double *_imopVarPre254;
                /*OUT: {
                Reverse<10310, 10319_0;>}*/
                int _imopVarPre255;
                /*OUT: {
                Reverse<10310, 10319_0;>}*/
                _imopVarPre254 = &u[nx - 1][j][k][0];
                /*OUT: {
                Reverse<10310, 10319_0;>}*/
                _imopVarPre255 = nx0 - 1;
                /*OUT: {
                Reverse<10310, 10319_0;>}*/
                exact(_imopVarPre255, jglob, k, _imopVarPre254);
                /*OUT: {
                Reverse<10310, 10319_0;>}*/
            }
        }
        /*OUT: {
        Reverse<10310,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<10336,>}*/
#pragma omp barrier
    }
}
static void setcoeff() {
    /*OUT: {
    Reverse<--,>}*/
    dxi = 1.0 / (nx0 - 1);
    /*OUT: {
    Reverse<--,>}*/
    deta = 1.0 / (ny0 - 1);
    /*OUT: {
    Reverse<--,>}*/
    dzeta = 1.0 / (nz0 - 1);
    /*OUT: {
    Reverse<--,>}*/
    tx1 = 1.0 / (dxi * dxi);
    /*OUT: {
    Reverse<--,>}*/
    tx2 = 1.0 / (2.0 * dxi);
    /*OUT: {
    Reverse<--,>}*/
    tx3 = 1.0 / dxi;
    /*OUT: {
    Reverse<--,>}*/
    ty1 = 1.0 / (deta * deta);
    /*OUT: {
    Reverse<--,>}*/
    ty2 = 1.0 / (2.0 * deta);
    /*OUT: {
    Reverse<--,>}*/
    ty3 = 1.0 / deta;
    /*OUT: {
    Reverse<--,>}*/
    tz1 = 1.0 / (dzeta * dzeta);
    /*OUT: {
    Reverse<--,>}*/
    tz2 = 1.0 / (2.0 * dzeta);
    /*OUT: {
    Reverse<--,>}*/
    tz3 = 1.0 / dzeta;
    /*OUT: {
    Reverse<--,>}*/
    ii1 = 1;
    /*OUT: {
    Reverse<--,>}*/
    ii2 = nx0 - 2;
    /*OUT: {
    Reverse<--,>}*/
    ji1 = 1;
    /*OUT: {
    Reverse<--,>}*/
    ji2 = ny0 - 3;
    /*OUT: {
    Reverse<--,>}*/
    ki1 = 2;
    /*OUT: {
    Reverse<--,>}*/
    ki2 = nz0 - 2;
    /*OUT: {
    Reverse<--,>}*/
    dx1 = 0.75;
    /*OUT: {
    Reverse<--,>}*/
    dx2 = dx1;
    /*OUT: {
    Reverse<--,>}*/
    dx3 = dx1;
    /*OUT: {
    Reverse<--,>}*/
    dx4 = dx1;
    /*OUT: {
    Reverse<--,>}*/
    dx5 = dx1;
    /*OUT: {
    Reverse<--,>}*/
    dy1 = 0.75;
    /*OUT: {
    Reverse<--,>}*/
    dy2 = dy1;
    /*OUT: {
    Reverse<--,>}*/
    dy3 = dy1;
    /*OUT: {
    Reverse<--,>}*/
    dy4 = dy1;
    /*OUT: {
    Reverse<--,>}*/
    dy5 = dy1;
    /*OUT: {
    Reverse<--,>}*/
    dz1 = 1.00;
    /*OUT: {
    Reverse<--,>}*/
    dz2 = dz1;
    /*OUT: {
    Reverse<--,>}*/
    dz3 = dz1;
    /*OUT: {
    Reverse<--,>}*/
    dz4 = dz1;
    /*OUT: {
    Reverse<--,>}*/
    dz5 = dz1;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre348;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre349;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre350;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre351;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre358;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre359;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre348 = (dy1 > dz1);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre348) {
        /*OUT: {
        Reverse<--, 10421_0;>}*/
        _imopVarPre349 = dy1;
    } else {
        /*OUT: {
        Reverse<--, 10421_1;>}*/
        _imopVarPre349 = dz1;
    }
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre350 = (dx1 > _imopVarPre349);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre350) {
        /*OUT: {
        Reverse<--, 10429_0;>}*/
        _imopVarPre351 = dx1;
    } else {
        /*OUT: {
        Reverse<--, 10429_1;>}*/
        _imopVarPre358 = (dy1 > dz1);
        /*OUT: {
        Reverse<--, 10429_1;>}*/
        if (_imopVarPre358) {
            /*OUT: {
            Reverse<--, 10435_0; 10429_1;>}*/
            _imopVarPre359 = dy1;
        } else {
            /*OUT: {
            Reverse<--, 10435_1; 10429_1;>}*/
            _imopVarPre359 = dz1;
        }
        /*OUT: {
        Reverse<--, 10429_1;>}*/
        _imopVarPre351 = _imopVarPre359;
    }
    /*OUT: {
    Reverse<--,>}*/
    dssp = _imopVarPre351 / 4.0;
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
    ce[0][6] = 5.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][7] = 2.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][8] = 1.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][9] = 3.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][10] = 5.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][11] = 4.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[0][12] = 3.0e-01;
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
    ce[1][7] = 1.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][8] = 3.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][9] = 2.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][10] = 4.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][11] = 3.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[1][12] = 5.0e-01;
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
    ce[2][7] = 4.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][8] = 3.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][9] = 5.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][10] = 3.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][11] = 5.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[2][12] = 4.0e-01;
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
    ce[3][7] = 3.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][8] = 5.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][9] = 4.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][10] = 2.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][11] = 1.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[3][12] = 3.0e-01;
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
    ce[4][4] = 1.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][5] = 4.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][6] = 3.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][7] = 5.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][8] = 4.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][9] = 3.0e-02;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][10] = 1.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][11] = 3.0e-01;
    /*OUT: {
    Reverse<--,>}*/
    ce[4][12] = 2.0e-01;
}
static void setiv() {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<12686,>}*/
        int i;
        /*OUT: {
        Reverse<12686,>}*/
        int j;
        /*OUT: {
        Reverse<12686,>}*/
        int k;
        /*OUT: {
        Reverse<12686,>}*/
        int m;
        /*OUT: {
        Reverse<12686,>}*/
        int iglob;
        /*OUT: {
        Reverse<12686,>}*/
        int jglob;
        /*OUT: {
        Reverse<12686,>}*/
        double xi;
        /*OUT: {
        Reverse<12686,>}*/
        double eta;
        /*OUT: {
        Reverse<12686,>}*/
        double zeta;
        /*OUT: {
        Reverse<12686,>}*/
        double pxi;
        /*OUT: {
        Reverse<12686,>}*/
        double peta;
        /*OUT: {
        Reverse<12686,>}*/
        double pzeta;
        /*OUT: {
        Reverse<12686,>}*/
        double ue_1jk[5];
        /*OUT: {
        Reverse<12686,>}*/
        double ue_nx0jk[5];
        /*OUT: {
        Reverse<12686,>}*/
        double ue_i1k[5];
        /*OUT: {
        Reverse<12686,>}*/
        double ue_iny0k[5];
        /*OUT: {
        Reverse<12686,>}*/
        double ue_ij1[5];
        /*OUT: {
        Reverse<12686,>}*/
        double ue_ijnz[5];
#pragma omp for nowait
        /*OUT: {
        Reverse<12686,>}*/
        /*OUT: {
        Reverse<12686,>}*/
        /*OUT: {
        Reverse<12686, 10730_1;>}*/
        for (j = 0; j < ny; j++) {
            /*OUT: {
            Reverse<12686,>}*/
            jglob = j;
            /*OUT: {
            Reverse<12686,>}*/
            /*OUT: {
            Reverse<12686,>}*/
            /*OUT: {
            Reverse<12686, 10742_1; 10730_0;>
            Reverse<12686, 10748_1; 10742_0; 10730_0;>}*/
            for (k = 1; k < nz - 1; k++) {
                /*OUT: {
                Reverse<12686, 10730_0;>}*/
                zeta = ((double) k) / (nz - 1);
                /*OUT: {
                Reverse<12686, 10730_0;>}*/
                int _imopVarPre361;
                /*OUT: {
                Reverse<12686, 10730_0;>}*/
                _imopVarPre361 = jglob != 0;
                /*OUT: {
                Reverse<12686, 10730_0;>}*/
                if (_imopVarPre361) {
                    /*OUT: {
                    Reverse<12686, 10739_0; 10730_0;>}*/
                    _imopVarPre361 = jglob != ny0 - 1;
                }
                /*OUT: {
                Reverse<12686, 10730_0;>}*/
                if (_imopVarPre361) {
                    /*OUT: {
                    Reverse<12686, 10742_0; 10730_0;>}*/
                    eta = ((double) jglob) / (ny0 - 1);
                    /*OUT: {
                    Reverse<12686, 10742_0; 10730_0;>}*/
                    /*OUT: {
                    Reverse<12686, 10742_0; 10730_0;>}*/
                    /*OUT: {
                    Reverse<12686, 10803_1; 10758_0; 10748_0; 10742_0; 10730_0;>
                    Reverse<12686, 10758_1; 10748_0; 10742_0; 10730_0;>}*/
                    for (i = 0; i < nx; i++) {
                        /*OUT: {
                        Reverse<12686, 10748_0; 10742_0; 10730_0;>}*/
                        iglob = i;
                        /*OUT: {
                        Reverse<12686, 10748_0; 10742_0; 10730_0;>}*/
                        int _imopVarPre363;
                        /*OUT: {
                        Reverse<12686, 10748_0; 10742_0; 10730_0;>}*/
                        _imopVarPre363 = iglob != 0;
                        /*OUT: {
                        Reverse<12686, 10748_0; 10742_0; 10730_0;>}*/
                        if (_imopVarPre363) {
                            /*OUT: {
                            Reverse<12686, 10755_0; 10748_0; 10742_0; 10730_0;>}*/
                            _imopVarPre363 = iglob != nx0 - 1;
                        }
                        /*OUT: {
                        Reverse<12686, 10748_0; 10742_0; 10730_0;>}*/
                        if (_imopVarPre363) {
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            xi = ((double) iglob) / (nx0 - 1);
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            exact(0, jglob, k, ue_1jk);
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            int _imopVarPre365;
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            _imopVarPre365 = nx0 - 1;
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            exact(_imopVarPre365, jglob, k, ue_nx0jk);
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            exact(iglob, 0, k, ue_i1k);
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            int _imopVarPre367;
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            _imopVarPre367 = ny0 - 1;
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            exact(iglob, _imopVarPre367, k, ue_iny0k);
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            exact(iglob, jglob, 0, ue_ij1);
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            int _imopVarPre369;
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            _imopVarPre369 = nz - 1;
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            exact(iglob, jglob, _imopVarPre369, ue_ijnz);
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            /*OUT: {
                            Reverse<12686, 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            /*OUT: {
                            Reverse<12686, 10803_0; 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                            for (m = 0; m < 5; m++) {
                                /*OUT: {
                                Reverse<12686, 10803_0; 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                                pxi = (1.0 - xi) * ue_1jk[m] + xi * ue_nx0jk[m];
                                /*OUT: {
                                Reverse<12686, 10803_0; 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                                peta = (1.0 - eta) * ue_i1k[m] + eta * ue_iny0k[m];
                                /*OUT: {
                                Reverse<12686, 10803_0; 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                                pzeta = (1.0 - zeta) * ue_ij1[m] + zeta * ue_ijnz[m];
                                /*OUT: {
                                Reverse<12686, 10803_0; 10758_0; 10748_0; 10742_0; 10730_0;>}*/
                                u[i][j][k][m] = pxi + peta + pzeta - pxi * peta - peta * pzeta - pzeta * pxi + pxi * peta * pzeta;
                            }
                        }
                    }
                }
            }
        }
        /*OUT: {
        Reverse<12686,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<10826,>}*/
#pragma omp barrier
    }
}
static void ssor() {
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
    int istep;
    /*OUT: {
    Reverse<--,>}*/
    double tmp;
    /*OUT: {
    Reverse<--,>}*/
    double delunm[5];
    /*OUT: {
    Reverse<--,>}*/
    double tv[12][12][5];
    /*OUT: {
    Reverse<--,>}*/
    tmp = 1.0 / (omega * (2.0 - omega));
#pragma omp parallel private(i, j, k, m)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<12727,>}*/
        /*OUT: {
        Reverse<12727,>}*/
        /*OUT: {
        Reverse<12727, 10845_1;>}*/
        for (i = 0; i < 12; i++) {
            /*OUT: {
            Reverse<12727,>}*/
            /*OUT: {
            Reverse<12727,>}*/
            /*OUT: {
            Reverse<12727, 10848_1; 10845_0;>}*/
            for (j = 0; j < 12; j++) {
                /*OUT: {
                Reverse<12727, 10845_0;>}*/
                /*OUT: {
                Reverse<12727, 10845_0;>}*/
                /*OUT: {
                Reverse<12727, 10851_1; 10848_0; 10845_0;>}*/
                for (k = 0; k < 5; k++) {
                    /*OUT: {
                    Reverse<12727, 10848_0; 10845_0;>}*/
                    /*OUT: {
                    Reverse<12727, 10848_0; 10845_0;>}*/
                    /*OUT: {
                    Reverse<12727, 10851_0; 10848_0; 10845_0;>}*/
                    for (m = 0; m < 5; m++) {
                        /*OUT: {
                        Reverse<12727, 10851_0; 10848_0; 10845_0;>}*/
                        a[i][j][k][m] = 0.0;
                        /*OUT: {
                        Reverse<12727, 10851_0; 10848_0; 10845_0;>}*/
                        b[i][j][k][m] = 0.0;
                        /*OUT: {
                        Reverse<12727, 10851_0; 10848_0; 10845_0;>}*/
                        c[i][j][k][m] = 0.0;
                        /*OUT: {
                        Reverse<12727, 10851_0; 10848_0; 10845_0;>}*/
                        d[i][j][k][m] = 0.0;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<12727,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<10877,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    rhs();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    l2norm(nx0, ny0, nz0, ist, iend, jst, jend, rsd, rsdnm);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    timer_clear(1);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    timer_start(1);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 10899_0;>}*/
    for (istep = 1; istep <= itmax; istep++) {
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        int _imopVarPre370;
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        int _imopVarPre371;
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        _imopVarPre370 = istep % 20 == 0;
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        if (!_imopVarPre370) {
            /*OUT: {
            Reverse<--, 10905_0; 10899_0;>}*/
            _imopVarPre371 = istep == itmax;
            /*OUT: {
            Reverse<--, 10905_0; 10899_0;>}*/
            if (!_imopVarPre371) {
                /*OUT: {
                Reverse<--, 10908_0; 10905_0; 10899_0;>}*/
                _imopVarPre371 = istep == 1;
            }
            /*OUT: {
            Reverse<--, 10905_0; 10899_0;>}*/
            _imopVarPre370 = _imopVarPre371;
        }
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        if (_imopVarPre370) {
#pragma omp master
            {
                /*OUT: {
                Reverse<--, 10913_0; 10899_0;>}*/
                printf(" Time step %4d\n", istep);
                /*OUT: {
                Reverse<--, 10913_0; 10899_0;>}*/
            }
        }
#pragma omp parallel private(istep, i, j, k, m)
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<12767,>}*/
            /*OUT: {
            Reverse<12767,>}*/
            /*OUT: {
            Reverse<12767, 10925_1;>}*/
            for (i = ist; i <= iend; i++) {
                /*OUT: {
                Reverse<12767,>}*/
                /*OUT: {
                Reverse<12767,>}*/
                /*OUT: {
                Reverse<12767, 10928_1; 10925_0;>}*/
                for (j = jst; j <= jend; j++) {
                    /*OUT: {
                    Reverse<12767, 10925_0;>}*/
                    /*OUT: {
                    Reverse<12767, 10925_0;>}*/
                    /*OUT: {
                    Reverse<12767, 10931_1; 10928_0; 10925_0;>}*/
                    for (k = 1; k <= nz - 2; k++) {
                        /*OUT: {
                        Reverse<12767, 10928_0; 10925_0;>}*/
                        /*OUT: {
                        Reverse<12767, 10928_0; 10925_0;>}*/
                        /*OUT: {
                        Reverse<12767, 10931_0; 10928_0; 10925_0;>}*/
                        for (m = 0; m < 5; m++) {
                            /*OUT: {
                            Reverse<12767, 10931_0; 10928_0; 10925_0;>}*/
                            rsd[i][j][k][m] = dt * rsd[i][j][k][m];
                        }
                    }
                }
            }
            /*OUT: {
            Reverse<12767,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<10943,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<10943,>}*/
            /*OUT: {
            Reverse<10943,>}*/
            /*OUT: {
            Reverse<10943, 10945_0;>}*/
            for (k = 1; k <= nz - 2; k++) {
                /*OUT: {
                Reverse<10943, 10945_0;>}*/
                jacld(k);
                /*OUT: {
                Reverse<10943, 10945_0;>}*/
                /*OUT: {
                Reverse<10943, 10945_0;>}*/
                blts(nx, ny, nz, k, omega, rsd, a, b, c, d, ist, iend, jst, jend, nx0, ny0);
                /*OUT: {
                Reverse<10943, 10945_0;>}*/
            }
            /*OUT: {
            Reverse<10943, 10945_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<10957,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<10957,>}*/
            /*OUT: {
            Reverse<10957,>}*/
            /*OUT: {
            Reverse<10957, 10959_0;>}*/
            for (k = nz - 2; k >= 1; k--) {
                /*OUT: {
                Reverse<10957, 10959_0;>}*/
                jacu(k);
                /*OUT: {
                Reverse<10957, 10959_0;>}*/
                /*OUT: {
                Reverse<10957, 10959_0;>}*/
                buts(nx, ny, nz, k, omega, rsd, tv, d, a, b, c, ist, iend, jst, jend, nx0, ny0);
                /*OUT: {
                Reverse<10957, 10959_0;>}*/
            }
            /*OUT: {
            Reverse<10957, 10959_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<10971,>}*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: {
            Reverse<10971,>}*/
            /*OUT: {
            Reverse<10971,>}*/
            /*OUT: {
            Reverse<10971, 10978_1;>}*/
            for (i = ist; i <= iend; i++) {
                /*OUT: {
                Reverse<10971,>}*/
                /*OUT: {
                Reverse<10971,>}*/
                /*OUT: {
                Reverse<10971, 10981_1; 10978_0;>}*/
                for (j = jst; j <= jend; j++) {
                    /*OUT: {
                    Reverse<10971, 10978_0;>}*/
                    /*OUT: {
                    Reverse<10971, 10978_0;>}*/
                    /*OUT: {
                    Reverse<10971, 10984_1; 10981_0; 10978_0;>}*/
                    for (k = 1; k <= nz - 2; k++) {
                        /*OUT: {
                        Reverse<10971, 10981_0; 10978_0;>}*/
                        /*OUT: {
                        Reverse<10971, 10981_0; 10978_0;>}*/
                        /*OUT: {
                        Reverse<10971, 10984_0; 10981_0; 10978_0;>}*/
                        for (m = 0; m < 5; m++) {
                            /*OUT: {
                            Reverse<10971, 10984_0; 10981_0; 10978_0;>}*/
                            u[i][j][k][m] = u[i][j][k][m] + tmp * rsd[i][j][k][m];
                        }
                    }
                }
            }
            /*OUT: {
            Reverse<10971,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<11000,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        if (istep % inorm == 0) {
            /*OUT: {
            Reverse<--, 11001_0; 10899_0;>}*/
            l2norm(nx0, ny0, nz0, ist, iend, jst, jend, rsd, delunm);
            /*OUT: {
            Reverse<--, 11001_0; 10899_0;>}*/
        }
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        rhs();
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        int _imopVarPre372;
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        _imopVarPre372 = (istep % inorm == 0);
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        if (!_imopVarPre372) {
            /*OUT: {
            Reverse<--, 11016_0; 11001_1; 10899_0;>
            Reverse<--, 11016_0; 10899_0;>}*/
            _imopVarPre372 = (istep == itmax);
        }
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        if (_imopVarPre372) {
            /*OUT: {
            Reverse<--, 11020_0; 11001_1; 10899_0;>
            Reverse<--, 11020_0; 10899_0;>}*/
            l2norm(nx0, ny0, nz0, ist, iend, jst, jend, rsd, rsdnm);
            /*OUT: {
            Reverse<--, 11020_0; 11001_1; 10899_0;>
            Reverse<--, 11020_0; 10899_0;>}*/
        }
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        int _imopVarPre377;
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        int _imopVarPre378;
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        int _imopVarPre379;
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        int _imopVarPre380;
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        _imopVarPre377 = (rsdnm[0] < tolrsd[0]);
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        if (_imopVarPre377) {
            /*OUT: {
            Reverse<--, 11035_0; 11001_1; 10899_0;>
            Reverse<--, 11035_0; 10899_0;>}*/
            _imopVarPre378 = (rsdnm[1] < tolrsd[1]);
            /*OUT: {
            Reverse<--, 11035_0; 11001_1; 10899_0;>
            Reverse<--, 11035_0; 10899_0;>}*/
            if (_imopVarPre378) {
                /*OUT: {
                Reverse<--, 11041_0; 11035_0; 11001_1; 10899_0;>
                Reverse<--, 11041_0; 11035_0; 10899_0;>}*/
                _imopVarPre379 = (rsdnm[2] < tolrsd[2]);
                /*OUT: {
                Reverse<--, 11041_0; 11035_0; 11001_1; 10899_0;>
                Reverse<--, 11041_0; 11035_0; 10899_0;>}*/
                if (_imopVarPre379) {
                    /*OUT: {
                    Reverse<--, 11047_0; 11041_0; 11035_0; 11001_1; 10899_0;>
                    Reverse<--, 11047_0; 11041_0; 11035_0; 10899_0;>}*/
                    _imopVarPre380 = (rsdnm[3] < tolrsd[3]);
                    /*OUT: {
                    Reverse<--, 11047_0; 11041_0; 11035_0; 11001_1; 10899_0;>
                    Reverse<--, 11047_0; 11041_0; 11035_0; 10899_0;>}*/
                    if (_imopVarPre380) {
                        /*OUT: {
                        Reverse<--, 11053_0; 11047_0; 11041_0; 11035_0; 11001_1; 10899_0;>
                        Reverse<--, 11053_0; 11047_0; 11041_0; 11035_0; 10899_0;>}*/
                        _imopVarPre380 = (rsdnm[4] < tolrsd[4]);
                    }
                    /*OUT: {
                    Reverse<--, 11047_0; 11041_0; 11035_0; 11001_1; 10899_0;>
                    Reverse<--, 11047_0; 11041_0; 11035_0; 10899_0;>}*/
                    _imopVarPre379 = _imopVarPre380;
                }
                /*OUT: {
                Reverse<--, 11041_0; 11035_0; 11001_1; 10899_0;>
                Reverse<--, 11041_0; 11035_0; 10899_0;>}*/
                _imopVarPre378 = _imopVarPre379;
            }
            /*OUT: {
            Reverse<--, 11035_0; 11001_1; 10899_0;>
            Reverse<--, 11035_0; 10899_0;>}*/
            _imopVarPre377 = _imopVarPre378;
        }
        /*OUT: {
        Reverse<--, 10899_0;>}*/
        if (_imopVarPre377) {
            /*OUT: {
            Reverse<--, 11065_0; 10899_0;>
            Reverse<--, 11065_0; 11001_1; 10899_0;>}*/
            exit(1);
            /*OUT: {
            Reverse<--, 11065_0; 10899_0;>
            Reverse<--, 11065_0; 11001_1; 10899_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--, 10899_1;>}*/
    timer_stop(1);
    /*OUT: {
    Reverse<--, 10899_1;>}*/
    /*OUT: {
    Reverse<--, 10899_1;>}*/
    maxtime = timer_read(1);
    /*OUT: {
    Reverse<--, 10899_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void verify(double xcr[5], double xce[5] , double xci , char *class , boolean *verified) {
    /*OUT: {
    Reverse<--,>}*/
    double xcrref[5];
    /*OUT: {
    Reverse<--,>}*/
    double xceref[5];
    /*OUT: {
    Reverse<--,>}*/
    double xciref;
    /*OUT: {
    Reverse<--,>}*/
    double xcrdif[5];
    /*OUT: {
    Reverse<--,>}*/
    double xcedif[5];
    /*OUT: {
    Reverse<--,>}*/
    double xcidif;
    /*OUT: {
    Reverse<--,>}*/
    double epsilon;
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
    *class = 'U';
    /*OUT: {
    Reverse<--,>}*/
    *verified = 1;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 11103_0;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 11103_0;>}*/
        xcrref[m] = 1.0;
        /*OUT: {
        Reverse<--, 11103_0;>}*/
        xceref[m] = 1.0;
    }
    /*OUT: {
    Reverse<--, 11103_1;>}*/
    xciref = 1.0;
    /*OUT: {
    Reverse<--, 11103_1;>}*/
    int _imopVarPre384;
    /*OUT: {
    Reverse<--, 11103_1;>}*/
    int _imopVarPre385;
    /*OUT: {
    Reverse<--, 11103_1;>}*/
    int _imopVarPre386;
    /*OUT: {
    Reverse<--, 11103_1;>}*/
    _imopVarPre384 = nx0 == 12;
    /*OUT: {
    Reverse<--, 11103_1;>}*/
    if (_imopVarPre384) {
        /*OUT: {
        Reverse<--, 11118_0; 11103_1;>}*/
        _imopVarPre385 = ny0 == 12;
        /*OUT: {
        Reverse<--, 11118_0; 11103_1;>}*/
        if (_imopVarPre385) {
            /*OUT: {
            Reverse<--, 11121_0; 11118_0; 11103_1;>}*/
            _imopVarPre386 = nz0 == 12;
            /*OUT: {
            Reverse<--, 11121_0; 11118_0; 11103_1;>}*/
            if (_imopVarPre386) {
                /*OUT: {
                Reverse<--, 11124_0; 11121_0; 11118_0; 11103_1;>}*/
                _imopVarPre386 = itmax == 50;
            }
            /*OUT: {
            Reverse<--, 11121_0; 11118_0; 11103_1;>}*/
            _imopVarPre385 = _imopVarPre386;
        }
        /*OUT: {
        Reverse<--, 11118_0; 11103_1;>}*/
        _imopVarPre384 = _imopVarPre385;
    }
    /*OUT: {
    Reverse<--, 11103_1;>}*/
    if (_imopVarPre384) {
        /*OUT: {
        Reverse<--, 11131_0; 11103_1;>}*/
        *class = 'S';
        /*OUT: {
        Reverse<--, 11131_0; 11103_1;>}*/
        dtref = 5.0e-1;
        /*OUT: {
        Reverse<--, 11131_0; 11103_1;>}*/
        xcrref[0] = 1.6196343210976702e-02;
        /*OUT: {
        Reverse<--, 11131_0; 11103_1;>}*/
        xcrref[1] = 2.1976745164821318e-03;
        /*OUT: {
        Reverse<--, 11131_0; 11103_1;>}*/
        xcrref[2] = 1.5179927653399185e-03;
        /*OUT: {
        Reverse<--, 11131_0; 11103_1;>}*/
        xcrref[3] = 1.5029584435994323e-03;
        /*OUT: {
        Reverse<--, 11131_0; 11103_1;>}*/
        xcrref[4] = 3.4264073155896461e-02;
        /*OUT: {
        Reverse<--, 11131_0; 11103_1;>}*/
        xceref[0] = 6.4223319957960924e-04;
        /*OUT: {
        Reverse<--, 11131_0; 11103_1;>}*/
        xceref[1] = 8.4144342047347926e-05;
        /*OUT: {
        Reverse<--, 11131_0; 11103_1;>}*/
        xceref[2] = 5.8588269616485186e-05;
        /*OUT: {
        Reverse<--, 11131_0; 11103_1;>}*/
        xceref[3] = 5.8474222595157350e-05;
        /*OUT: {
        Reverse<--, 11131_0; 11103_1;>}*/
        xceref[4] = 1.3103347914111294e-03;
        /*OUT: {
        Reverse<--, 11131_0; 11103_1;>}*/
        xciref = 7.8418928865937083;
    } else {
        /*OUT: {
        Reverse<--, 11131_1; 11103_1;>}*/
        int _imopVarPre390;
        /*OUT: {
        Reverse<--, 11131_1; 11103_1;>}*/
        int _imopVarPre391;
        /*OUT: {
        Reverse<--, 11131_1; 11103_1;>}*/
        int _imopVarPre392;
        /*OUT: {
        Reverse<--, 11131_1; 11103_1;>}*/
        _imopVarPre390 = nx0 == 33;
        /*OUT: {
        Reverse<--, 11131_1; 11103_1;>}*/
        if (_imopVarPre390) {
            /*OUT: {
            Reverse<--, 11173_0; 11131_1; 11103_1;>}*/
            _imopVarPre391 = ny0 == 33;
            /*OUT: {
            Reverse<--, 11173_0; 11131_1; 11103_1;>}*/
            if (_imopVarPre391) {
                /*OUT: {
                Reverse<--, 11176_0; 11173_0; 11131_1; 11103_1;>}*/
                _imopVarPre392 = nz0 == 33;
                /*OUT: {
                Reverse<--, 11176_0; 11173_0; 11131_1; 11103_1;>}*/
                if (_imopVarPre392) {
                    /*OUT: {
                    Reverse<--, 11179_0; 11176_0; 11173_0; 11131_1; 11103_1;>}*/
                    _imopVarPre392 = itmax == 300;
                }
                /*OUT: {
                Reverse<--, 11176_0; 11173_0; 11131_1; 11103_1;>}*/
                _imopVarPre391 = _imopVarPre392;
            }
            /*OUT: {
            Reverse<--, 11173_0; 11131_1; 11103_1;>}*/
            _imopVarPre390 = _imopVarPre391;
        }
        /*OUT: {
        Reverse<--, 11131_1; 11103_1;>}*/
        if (_imopVarPre390) {
            /*OUT: {
            Reverse<--, 11186_0; 11131_1; 11103_1;>}*/
            *class = 'W';
            /*OUT: {
            Reverse<--, 11186_0; 11131_1; 11103_1;>}*/
            dtref = 1.5e-3;
            /*OUT: {
            Reverse<--, 11186_0; 11131_1; 11103_1;>}*/
            xcrref[0] = 0.1236511638192e+02;
            /*OUT: {
            Reverse<--, 11186_0; 11131_1; 11103_1;>}*/
            xcrref[1] = 0.1317228477799e+01;
            /*OUT: {
            Reverse<--, 11186_0; 11131_1; 11103_1;>}*/
            xcrref[2] = 0.2550120713095e+01;
            /*OUT: {
            Reverse<--, 11186_0; 11131_1; 11103_1;>}*/
            xcrref[3] = 0.2326187750252e+01;
            /*OUT: {
            Reverse<--, 11186_0; 11131_1; 11103_1;>}*/
            xcrref[4] = 0.2826799444189e+02;
            /*OUT: {
            Reverse<--, 11186_0; 11131_1; 11103_1;>}*/
            xceref[0] = 0.4867877144216;
            /*OUT: {
            Reverse<--, 11186_0; 11131_1; 11103_1;>}*/
            xceref[1] = 0.5064652880982e-01;
            /*OUT: {
            Reverse<--, 11186_0; 11131_1; 11103_1;>}*/
            xceref[2] = 0.9281818101960e-01;
            /*OUT: {
            Reverse<--, 11186_0; 11131_1; 11103_1;>}*/
            xceref[3] = 0.8570126542733e-01;
            /*OUT: {
            Reverse<--, 11186_0; 11131_1; 11103_1;>}*/
            xceref[4] = 0.1084277417792e+01;
            /*OUT: {
            Reverse<--, 11186_0; 11131_1; 11103_1;>}*/
            xciref = 0.1161399311023e+02;
        } else {
            /*OUT: {
            Reverse<--, 11186_1; 11131_1; 11103_1;>}*/
            int _imopVarPre396;
            /*OUT: {
            Reverse<--, 11186_1; 11131_1; 11103_1;>}*/
            int _imopVarPre397;
            /*OUT: {
            Reverse<--, 11186_1; 11131_1; 11103_1;>}*/
            int _imopVarPre398;
            /*OUT: {
            Reverse<--, 11186_1; 11131_1; 11103_1;>}*/
            _imopVarPre396 = nx0 == 64;
            /*OUT: {
            Reverse<--, 11186_1; 11131_1; 11103_1;>}*/
            if (_imopVarPre396) {
                /*OUT: {
                Reverse<--, 11228_0; 11186_1; 11131_1; 11103_1;>}*/
                _imopVarPre397 = ny0 == 64;
                /*OUT: {
                Reverse<--, 11228_0; 11186_1; 11131_1; 11103_1;>}*/
                if (_imopVarPre397) {
                    /*OUT: {
                    Reverse<--, 11231_0; 11228_0; 11186_1; 11131_1; 11103_1;>}*/
                    _imopVarPre398 = nz0 == 64;
                    /*OUT: {
                    Reverse<--, 11231_0; 11228_0; 11186_1; 11131_1; 11103_1;>}*/
                    if (_imopVarPre398) {
                        /*OUT: {
                        Reverse<--, 11234_0; 11231_0; 11228_0; 11186_1; 11131_1; 11103_1;>}*/
                        _imopVarPre398 = itmax == 250;
                    }
                    /*OUT: {
                    Reverse<--, 11231_0; 11228_0; 11186_1; 11131_1; 11103_1;>}*/
                    _imopVarPre397 = _imopVarPre398;
                }
                /*OUT: {
                Reverse<--, 11228_0; 11186_1; 11131_1; 11103_1;>}*/
                _imopVarPre396 = _imopVarPre397;
            }
            /*OUT: {
            Reverse<--, 11186_1; 11131_1; 11103_1;>}*/
            if (_imopVarPre396) {
                /*OUT: {
                Reverse<--, 11241_0; 11186_1; 11131_1; 11103_1;>}*/
                *class = 'A';
                /*OUT: {
                Reverse<--, 11241_0; 11186_1; 11131_1; 11103_1;>}*/
                dtref = 2.0e+0;
                /*OUT: {
                Reverse<--, 11241_0; 11186_1; 11131_1; 11103_1;>}*/
                xcrref[0] = 7.7902107606689367e+02;
                /*OUT: {
                Reverse<--, 11241_0; 11186_1; 11131_1; 11103_1;>}*/
                xcrref[1] = 6.3402765259692870e+01;
                /*OUT: {
                Reverse<--, 11241_0; 11186_1; 11131_1; 11103_1;>}*/
                xcrref[2] = 1.9499249727292479e+02;
                /*OUT: {
                Reverse<--, 11241_0; 11186_1; 11131_1; 11103_1;>}*/
                xcrref[3] = 1.7845301160418537e+02;
                /*OUT: {
                Reverse<--, 11241_0; 11186_1; 11131_1; 11103_1;>}*/
                xcrref[4] = 1.8384760349464247e+03;
                /*OUT: {
                Reverse<--, 11241_0; 11186_1; 11131_1; 11103_1;>}*/
                xceref[0] = 2.9964085685471943e+01;
                /*OUT: {
                Reverse<--, 11241_0; 11186_1; 11131_1; 11103_1;>}*/
                xceref[1] = 2.8194576365003349;
                /*OUT: {
                Reverse<--, 11241_0; 11186_1; 11131_1; 11103_1;>}*/
                xceref[2] = 7.3473412698774742;
                /*OUT: {
                Reverse<--, 11241_0; 11186_1; 11131_1; 11103_1;>}*/
                xceref[3] = 6.7139225687777051;
                /*OUT: {
                Reverse<--, 11241_0; 11186_1; 11131_1; 11103_1;>}*/
                xceref[4] = 7.0715315688392578e+01;
                /*OUT: {
                Reverse<--, 11241_0; 11186_1; 11131_1; 11103_1;>}*/
                xciref = 2.6030925604886277e+01;
            } else {
                /*OUT: {
                Reverse<--, 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                int _imopVarPre402;
                /*OUT: {
                Reverse<--, 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                int _imopVarPre403;
                /*OUT: {
                Reverse<--, 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                int _imopVarPre404;
                /*OUT: {
                Reverse<--, 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                _imopVarPre402 = nx0 == 102;
                /*OUT: {
                Reverse<--, 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                if (_imopVarPre402) {
                    /*OUT: {
                    Reverse<--, 11283_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    _imopVarPre403 = ny0 == 102;
                    /*OUT: {
                    Reverse<--, 11283_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    if (_imopVarPre403) {
                        /*OUT: {
                        Reverse<--, 11286_0; 11283_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        _imopVarPre404 = nz0 == 102;
                        /*OUT: {
                        Reverse<--, 11286_0; 11283_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        if (_imopVarPre404) {
                            /*OUT: {
                            Reverse<--, 11289_0; 11286_0; 11283_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                            _imopVarPre404 = itmax == 250;
                        }
                        /*OUT: {
                        Reverse<--, 11286_0; 11283_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        _imopVarPre403 = _imopVarPre404;
                    }
                    /*OUT: {
                    Reverse<--, 11283_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    _imopVarPre402 = _imopVarPre403;
                }
                /*OUT: {
                Reverse<--, 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                if (_imopVarPre402) {
                    /*OUT: {
                    Reverse<--, 11296_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    *class = 'B';
                    /*OUT: {
                    Reverse<--, 11296_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    dtref = 2.0e+0;
                    /*OUT: {
                    Reverse<--, 11296_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    xcrref[0] = 3.5532672969982736e+03;
                    /*OUT: {
                    Reverse<--, 11296_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    xcrref[1] = 2.6214750795310692e+02;
                    /*OUT: {
                    Reverse<--, 11296_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    xcrref[2] = 8.8333721850952190e+02;
                    /*OUT: {
                    Reverse<--, 11296_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    xcrref[3] = 7.7812774739425265e+02;
                    /*OUT: {
                    Reverse<--, 11296_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    xcrref[4] = 7.3087969592545314e+03;
                    /*OUT: {
                    Reverse<--, 11296_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    xceref[0] = 1.1401176380212709e+02;
                    /*OUT: {
                    Reverse<--, 11296_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    xceref[1] = 8.1098963655421574;
                    /*OUT: {
                    Reverse<--, 11296_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    xceref[2] = 2.8480597317698308e+01;
                    /*OUT: {
                    Reverse<--, 11296_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    xceref[3] = 2.5905394567832939e+01;
                    /*OUT: {
                    Reverse<--, 11296_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    xceref[4] = 2.6054907504857413e+02;
                    /*OUT: {
                    Reverse<--, 11296_0; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    xciref = 4.7887162703308227e+01;
                } else {
                    /*OUT: {
                    Reverse<--, 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    int _imopVarPre408;
                    /*OUT: {
                    Reverse<--, 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    int _imopVarPre409;
                    /*OUT: {
                    Reverse<--, 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    int _imopVarPre410;
                    /*OUT: {
                    Reverse<--, 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    _imopVarPre408 = nx0 == 162;
                    /*OUT: {
                    Reverse<--, 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    if (_imopVarPre408) {
                        /*OUT: {
                        Reverse<--, 11338_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        _imopVarPre409 = ny0 == 162;
                        /*OUT: {
                        Reverse<--, 11338_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        if (_imopVarPre409) {
                            /*OUT: {
                            Reverse<--, 11341_0; 11338_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                            _imopVarPre410 = nz0 == 162;
                            /*OUT: {
                            Reverse<--, 11341_0; 11338_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                            if (_imopVarPre410) {
                                /*OUT: {
                                Reverse<--, 11344_0; 11341_0; 11338_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                                _imopVarPre410 = itmax == 250;
                            }
                            /*OUT: {
                            Reverse<--, 11341_0; 11338_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                            _imopVarPre409 = _imopVarPre410;
                        }
                        /*OUT: {
                        Reverse<--, 11338_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        _imopVarPre408 = _imopVarPre409;
                    }
                    /*OUT: {
                    Reverse<--, 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                    if (_imopVarPre408) {
                        /*OUT: {
                        Reverse<--, 11351_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        *class = 'C';
                        /*OUT: {
                        Reverse<--, 11351_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        dtref = 2.0e+0;
                        /*OUT: {
                        Reverse<--, 11351_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        xcrref[0] = 1.03766980323537846e+04;
                        /*OUT: {
                        Reverse<--, 11351_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        xcrref[1] = 8.92212458801008552e+02;
                        /*OUT: {
                        Reverse<--, 11351_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        xcrref[2] = 2.56238814582660871e+03;
                        /*OUT: {
                        Reverse<--, 11351_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        xcrref[3] = 2.19194343857831427e+03;
                        /*OUT: {
                        Reverse<--, 11351_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        xcrref[4] = 1.78078057261061185e+04;
                        /*OUT: {
                        Reverse<--, 11351_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        xceref[0] = 2.15986399716949279e+02;
                        /*OUT: {
                        Reverse<--, 11351_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        xceref[1] = 1.55789559239863600e+01;
                        /*OUT: {
                        Reverse<--, 11351_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        xceref[2] = 5.41318863077207766e+01;
                        /*OUT: {
                        Reverse<--, 11351_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        xceref[3] = 4.82262643154045421e+01;
                        /*OUT: {
                        Reverse<--, 11351_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        xceref[4] = 4.55902910043250358e+02;
                        /*OUT: {
                        Reverse<--, 11351_0; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        xciref = 6.66404553572181300e+01;
                    } else {
                        /*OUT: {
                        Reverse<--, 11351_1; 11296_1; 11241_1; 11186_1; 11131_1; 11103_1;>}*/
                        *verified = 0;
                    }
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 11103_1;>}*/
    /*OUT: {
    Reverse<--, 11103_1;>}*/
    /*OUT: {
    Reverse<--, 11391_0; 11103_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 11391_0; 11103_1;>}*/
        double _imopVarPre412;
        /*OUT: {
        Reverse<--, 11391_0; 11103_1;>}*/
        double _imopVarPre413;
        /*OUT: {
        Reverse<--, 11391_0; 11103_1;>}*/
        _imopVarPre412 = (xcr[m] - xcrref[m]) / xcrref[m];
        /*OUT: {
        Reverse<--, 11391_0; 11103_1;>}*/
        _imopVarPre413 = fabs(_imopVarPre412);
        /*OUT: {
        Reverse<--, 11391_0; 11103_1;>}*/
        /*OUT: {
        Reverse<--, 11391_0; 11103_1;>}*/
        xcrdif[m] = _imopVarPre413;
        /*OUT: {
        Reverse<--, 11391_0; 11103_1;>}*/
        double _imopVarPre415;
        /*OUT: {
        Reverse<--, 11391_0; 11103_1;>}*/
        double _imopVarPre416;
        /*OUT: {
        Reverse<--, 11391_0; 11103_1;>}*/
        _imopVarPre415 = (xce[m] - xceref[m]) / xceref[m];
        /*OUT: {
        Reverse<--, 11391_0; 11103_1;>}*/
        _imopVarPre416 = fabs(_imopVarPre415);
        /*OUT: {
        Reverse<--, 11391_0; 11103_1;>}*/
        /*OUT: {
        Reverse<--, 11391_0; 11103_1;>}*/
        xcedif[m] = _imopVarPre416;
    }
    /*OUT: {
    Reverse<--, 11391_1; 11103_1;>}*/
    double _imopVarPre418;
    /*OUT: {
    Reverse<--, 11391_1; 11103_1;>}*/
    double _imopVarPre419;
    /*OUT: {
    Reverse<--, 11391_1; 11103_1;>}*/
    _imopVarPre418 = (xci - xciref) / xciref;
    /*OUT: {
    Reverse<--, 11391_1; 11103_1;>}*/
    _imopVarPre419 = fabs(_imopVarPre418);
    /*OUT: {
    Reverse<--, 11391_1; 11103_1;>}*/
    /*OUT: {
    Reverse<--, 11391_1; 11103_1;>}*/
    xcidif = _imopVarPre419;
    /*OUT: {
    Reverse<--, 11391_1; 11103_1;>}*/
    if (*class != 'U') {
        /*OUT: {
        Reverse<--, 11440_0; 11391_1; 11103_1;>}*/
        char _imopVarPre421;
        /*OUT: {
        Reverse<--, 11440_0; 11391_1; 11103_1;>}*/
        _imopVarPre421 = *class;
        /*OUT: {
        Reverse<--, 11440_0; 11391_1; 11103_1;>}*/
        printf("\n Verification being performed for class %1c\n", _imopVarPre421);
        /*OUT: {
        Reverse<--, 11440_0; 11391_1; 11103_1;>}*/
        /*OUT: {
        Reverse<--, 11440_0; 11391_1; 11103_1;>}*/
        printf(" Accuracy setting for epsilon = %20.13e\n", epsilon);
        /*OUT: {
        Reverse<--, 11440_0; 11391_1; 11103_1;>}*/
        /*OUT: {
        Reverse<--, 11440_0; 11391_1; 11103_1;>}*/
        double _imopVarPre424;
        /*OUT: {
        Reverse<--, 11440_0; 11391_1; 11103_1;>}*/
        double _imopVarPre425;
        /*OUT: {
        Reverse<--, 11440_0; 11391_1; 11103_1;>}*/
        _imopVarPre424 = dt - dtref;
        /*OUT: {
        Reverse<--, 11440_0; 11391_1; 11103_1;>}*/
        _imopVarPre425 = fabs(_imopVarPre424);
        /*OUT: {
        Reverse<--, 11440_0; 11391_1; 11103_1;>}*/
        /*OUT: {
        Reverse<--, 11440_0; 11391_1; 11103_1;>}*/
        if (_imopVarPre425 > epsilon) {
            /*OUT: {
            Reverse<--, 11464_0; 11440_0; 11391_1; 11103_1;>}*/
            *verified = 0;
            /*OUT: {
            Reverse<--, 11464_0; 11440_0; 11391_1; 11103_1;>}*/
            *class = 'U';
            /*OUT: {
            Reverse<--, 11464_0; 11440_0; 11391_1; 11103_1;>}*/
            printf(" DT does not match the reference value of %15.8e\n", dtref);
            /*OUT: {
            Reverse<--, 11464_0; 11440_0; 11391_1; 11103_1;>}*/
        }
    } else {
        /*OUT: {
        Reverse<--, 11440_1; 11391_1; 11103_1;>}*/
        printf(" Unknown class\n");
        /*OUT: {
        Reverse<--, 11440_1; 11391_1; 11103_1;>}*/
    }
    /*OUT: {
    Reverse<--, 11391_1; 11103_1;>}*/
    if (*class != 'U') {
        /*OUT: {
        Reverse<--, 11479_0; 11391_1; 11103_1;>}*/
        printf(" Comparison of RMS-norms of residual\n");
        /*OUT: {
        Reverse<--, 11479_0; 11391_1; 11103_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 11479_1; 11391_1; 11103_1;>}*/
        printf(" RMS-norms of residual\n");
        /*OUT: {
        Reverse<--, 11479_1; 11391_1; 11103_1;>}*/
    }
    /*OUT: {
    Reverse<--, 11391_1; 11103_1;>}*/
    /*OUT: {
    Reverse<--, 11391_1; 11103_1;>}*/
    /*OUT: {
    Reverse<--, 11491_0; 11391_1; 11103_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 11491_0; 11391_1; 11103_1;>}*/
        if (*class == 'U') {
            /*OUT: {
            Reverse<--, 11493_0; 11491_0; 11391_1; 11103_1;>}*/
            double _imopVarPre427;
            /*OUT: {
            Reverse<--, 11493_0; 11491_0; 11391_1; 11103_1;>}*/
            _imopVarPre427 = xcr[m];
            /*OUT: {
            Reverse<--, 11493_0; 11491_0; 11391_1; 11103_1;>}*/
            printf("          %2d  %20.13e\n", m, _imopVarPre427);
            /*OUT: {
            Reverse<--, 11493_0; 11491_0; 11391_1; 11103_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 11493_1; 11491_0; 11391_1; 11103_1;>}*/
            if (xcrdif[m] > epsilon) {
                /*OUT: {
                Reverse<--, 11504_0; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                *verified = 0;
                /*OUT: {
                Reverse<--, 11504_0; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                double _imopVarPre431;
                /*OUT: {
                Reverse<--, 11504_0; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                double _imopVarPre432;
                /*OUT: {
                Reverse<--, 11504_0; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                double _imopVarPre433;
                /*OUT: {
                Reverse<--, 11504_0; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                _imopVarPre431 = xcrdif[m];
                /*OUT: {
                Reverse<--, 11504_0; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                _imopVarPre432 = xcrref[m];
                /*OUT: {
                Reverse<--, 11504_0; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                _imopVarPre433 = xcr[m];
                /*OUT: {
                Reverse<--, 11504_0; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                printf(" FAILURE: %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre433, _imopVarPre432, _imopVarPre431);
                /*OUT: {
                Reverse<--, 11504_0; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
            } else {
                /*OUT: {
                Reverse<--, 11504_1; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                double _imopVarPre437;
                /*OUT: {
                Reverse<--, 11504_1; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                double _imopVarPre438;
                /*OUT: {
                Reverse<--, 11504_1; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                double _imopVarPre439;
                /*OUT: {
                Reverse<--, 11504_1; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                _imopVarPre437 = xcrdif[m];
                /*OUT: {
                Reverse<--, 11504_1; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                _imopVarPre438 = xcrref[m];
                /*OUT: {
                Reverse<--, 11504_1; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                _imopVarPre439 = xcr[m];
                /*OUT: {
                Reverse<--, 11504_1; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
                printf("          %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre439, _imopVarPre438, _imopVarPre437);
                /*OUT: {
                Reverse<--, 11504_1; 11493_1; 11491_0; 11391_1; 11103_1;>}*/
            }
        }
    }
    /*OUT: {
    Reverse<--, 11491_1; 11391_1; 11103_1;>}*/
    if (*class != 'U') {
        /*OUT: {
        Reverse<--, 11541_0; 11491_1; 11391_1; 11103_1;>}*/
        printf(" Comparison of RMS-norms of solution error\n");
        /*OUT: {
        Reverse<--, 11541_0; 11491_1; 11391_1; 11103_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 11541_1; 11491_1; 11391_1; 11103_1;>}*/
        printf(" RMS-norms of solution error\n");
        /*OUT: {
        Reverse<--, 11541_1; 11491_1; 11391_1; 11103_1;>}*/
    }
    /*OUT: {
    Reverse<--, 11491_1; 11391_1; 11103_1;>}*/
    /*OUT: {
    Reverse<--, 11491_1; 11391_1; 11103_1;>}*/
    /*OUT: {
    Reverse<--, 11553_0; 11491_1; 11391_1; 11103_1;>}*/
    for (m = 0; m < 5; m++) {
        /*OUT: {
        Reverse<--, 11553_0; 11491_1; 11391_1; 11103_1;>}*/
        if (*class == 'U') {
            /*OUT: {
            Reverse<--, 11555_0; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
            double _imopVarPre441;
            /*OUT: {
            Reverse<--, 11555_0; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
            _imopVarPre441 = xce[m];
            /*OUT: {
            Reverse<--, 11555_0; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
            printf("          %2d  %20.13e\n", m, _imopVarPre441);
            /*OUT: {
            Reverse<--, 11555_0; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
            if (xcedif[m] > epsilon) {
                /*OUT: {
                Reverse<--, 11566_0; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                *verified = 0;
                /*OUT: {
                Reverse<--, 11566_0; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                double _imopVarPre445;
                /*OUT: {
                Reverse<--, 11566_0; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                double _imopVarPre446;
                /*OUT: {
                Reverse<--, 11566_0; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                double _imopVarPre447;
                /*OUT: {
                Reverse<--, 11566_0; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                _imopVarPre445 = xcedif[m];
                /*OUT: {
                Reverse<--, 11566_0; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                _imopVarPre446 = xceref[m];
                /*OUT: {
                Reverse<--, 11566_0; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                _imopVarPre447 = xce[m];
                /*OUT: {
                Reverse<--, 11566_0; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                printf(" FAILURE: %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre447, _imopVarPre446, _imopVarPre445);
                /*OUT: {
                Reverse<--, 11566_0; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
            } else {
                /*OUT: {
                Reverse<--, 11566_1; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                double _imopVarPre451;
                /*OUT: {
                Reverse<--, 11566_1; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                double _imopVarPre452;
                /*OUT: {
                Reverse<--, 11566_1; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                double _imopVarPre453;
                /*OUT: {
                Reverse<--, 11566_1; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                _imopVarPre451 = xcedif[m];
                /*OUT: {
                Reverse<--, 11566_1; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                _imopVarPre452 = xceref[m];
                /*OUT: {
                Reverse<--, 11566_1; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                _imopVarPre453 = xce[m];
                /*OUT: {
                Reverse<--, 11566_1; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
                printf("          %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre453, _imopVarPre452, _imopVarPre451);
                /*OUT: {
                Reverse<--, 11566_1; 11555_1; 11553_0; 11491_1; 11391_1; 11103_1;>}*/
            }
        }
    }
    /*OUT: {
    Reverse<--, 11553_1; 11491_1; 11391_1; 11103_1;>}*/
    if (*class != 'U') {
        /*OUT: {
        Reverse<--, 11603_0; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
        printf(" Comparison of surface integral\n");
        /*OUT: {
        Reverse<--, 11603_0; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 11603_1; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
        printf(" Surface integral\n");
        /*OUT: {
        Reverse<--, 11603_1; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
    }
    /*OUT: {
    Reverse<--, 11553_1; 11491_1; 11391_1; 11103_1;>}*/
    if (*class == 'U') {
        /*OUT: {
        Reverse<--, 11614_0; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
        printf("              %20.13e\n", xci);
        /*OUT: {
        Reverse<--, 11614_0; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 11614_1; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
        if (xcidif > epsilon) {
            /*OUT: {
            Reverse<--, 11620_0; 11614_1; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
            *verified = 0;
            /*OUT: {
            Reverse<--, 11620_0; 11614_1; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
            printf(" FAILURE:     %20.13e%20.13e%20.13e\n", xci, xciref, xcidif);
            /*OUT: {
            Reverse<--, 11620_0; 11614_1; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 11620_1; 11614_1; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
            printf("              %20.13e%20.13e%20.13e\n", xci, xciref, xcidif);
            /*OUT: {
            Reverse<--, 11620_1; 11614_1; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
        }
    }
    /*OUT: {
    Reverse<--, 11553_1; 11491_1; 11391_1; 11103_1;>}*/
    if (*class == 'U') {
        /*OUT: {
        Reverse<--, 11633_0; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
        printf(" No reference values provided\n");
        /*OUT: {
        Reverse<--, 11633_0; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
        /*OUT: {
        Reverse<--, 11633_0; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
        printf(" No verification performed\n");
        /*OUT: {
        Reverse<--, 11633_0; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 11633_1; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
        if (*verified) {
            /*OUT: {
            Reverse<--, 11644_0; 11633_1; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
            printf(" Verification Successful\n");
            /*OUT: {
            Reverse<--, 11644_0; 11633_1; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 11644_1; 11633_1; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
            printf(" Verification failed\n");
            /*OUT: {
            Reverse<--, 11644_1; 11633_1; 11553_1; 11491_1; 11391_1; 11103_1;>}*/
        }
    }
}
