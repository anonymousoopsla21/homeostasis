
/*[]*/
struct __sFILEX ;
/*[]*/
int printf(const char *restrict , ...);
/*[]*/
void exit(int );
/*[]*/
extern double cos(double );
/*[]*/
extern double sin(double );
/*[]*/
extern double exp(double );
/*[]*/
extern double log(double );
/*[]*/
extern double fabs(double );
/*[]*/
typedef int boolean;
/*[]*/
struct stUn_imopVarPre11 {
    double real;
    double imag;
} ;
/*[]*/
typedef struct stUn_imopVarPre11 dcomplex;
/*[]*/
extern double randlc(double *, double );
/*[]*/
extern void vranlc(int , double * , double  , double *);
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
int fftblock;
/*[]*/
int fftblockpad;
/*[]*/
static int dims[3][3];
/*[]*/
static int xstart[3];
/*[]*/
static int ystart[3];
/*[]*/
static int zstart[3];
/*[]*/
static int xend[3];
/*[]*/
static int yend[3];
/*[]*/
static int zend[3];
/*[]*/
static double ex[(6 * (64 * 64 / 4 + 64 * 64 / 4 + 64 * 64 / 4)) + 1];
/*[]*/
static dcomplex u[64];
/*[]*/
static dcomplex sums[6 + 1];
/*[]*/
static int niter;
/*[]*/
static void evolve(dcomplex u0[64][64][64], dcomplex u1[64][64][64] , int t , int indexmap[64][64][64] , int d[3]);
/*[]*/
static void compute_initial_conditions(dcomplex u0[64][64][64], int d[3]);
/*[]*/
static void ipow46(double a, int exponent , double *result);
/*[]*/
static void setup(void );
/*[]*/
static void compute_indexmap(int indexmap[64][64][64], int d[3]);
/*[]*/
static void print_timers(void );
/*[]*/
static void fft(int dir, dcomplex x1[64][64][64] , dcomplex x2[64][64][64]);
/*[]*/
static void cffts1(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]);
/*[]*/
static void cffts2(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]);
/*[]*/
static void cffts3(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]);
/*[]*/
static void fft_init(int n);
/*[]*/
static void cfftz(int is, int m , int n , dcomplex x[64][18] , dcomplex y[64][18]);
/*[]*/
static void fftz2(int is, int l , int m , int n , int ny , int ny1 , dcomplex u[64] , dcomplex x[64][18] , dcomplex y[64][18]);
/*[]*/
static int ilog2(int n);
/*[]*/
static void checksum(int i, dcomplex u1[64][64][64] , int d[3]);
/*[]*/
static void verify(int d1, int d2 , int d3 , int nt , boolean *verified , char *class);
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char **argv) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    static dcomplex u0[64][64][64];
    /*[]*/
    static dcomplex u1[64][64][64];
    /*[]*/
    static dcomplex u2[64][64][64];
    /*[]*/
    static int indexmap[64][64][64];
    /*[]*/
    int iter;
    /*[]*/
    int nthreads = 1;
    /*[]*/
    double total_time;
    /*[]*/
    double mflops;
    /*[]*/
    boolean verified;
    /*[]*/
    char class;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 7; i++) {
    /*[]*/
        /*[]*/
        timer_clear(i);
        /*[]*/
    }
    /*[]*/
    setup();
    /*[]*/
    /*[]*/
    int ( *_imopVarPre145 );
    /*[]*/
    _imopVarPre145 = dims[2];
    /*[]*/
    int *d;
    /*[]*/
    d = _imopVarPre145;
    /*[]*/
    int i_imopVarPre95;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    int ii;
    /*[]*/
    int ii2;
    /*[]*/
    int jj;
    /*[]*/
    int ij2;
    /*[]*/
    int kk;
    /*[]*/
    double ap;
    /*[1]*/
#pragma omp parallel default(shared) private(i_imopVarPre95, j, k, ii, ii2, jj, ij2, kk)
    {
    /*[1]*/
        /*[1]*/
#pragma omp for nowait
        /*[1]*/
        /*[1]*/
        /*[1]*/
        for (i_imopVarPre95 = 0; i_imopVarPre95 < dims[2][0]; i_imopVarPre95++) {
        /*[1]*/
            /*[1]*/
            ii = (i_imopVarPre95 + 1 + xstart[2] - 2 + 64 / 2) % 64 - 64 / 2;
            /*[1]*/
            ii2 = ii * ii;
            /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            for (j = 0; j < dims[2][1]; j++) {
            /*[1]*/
                /*[1]*/
                jj = (j + 1 + ystart[2] - 2 + 64 / 2) % 64 - 64 / 2;
                /*[1]*/
                ij2 = jj * jj + ii2;
                /*[1]*/
                /*[1]*/
                /*[1]*/
                /*[1]*/
                for (k = 0; k < dims[2][2]; k++) {
                /*[1]*/
                    /*[1]*/
                    kk = (k + 1 + zstart[2] - 2 + 64 / 2) % 64 - 64 / 2;
                    /*[1]*/
                    indexmap[k][j][i_imopVarPre95] = kk * kk + ij2;
                }
            }
        }
    }
    /*[1]*/
    ap = -4.0 * 1.0e-6 * 3.141592653589793238 * 3.141592653589793238;
    /*[1]*/
    ex[0] = 1.0;
    /*[1]*/
    double _imopVarPre217;
    /*[1]*/
    _imopVarPre217 = exp(ap);
    /*[1]*/
    /*[1]*/
    ex[1] = _imopVarPre217;
    /*[1]*/
    /*[1]*/
    /*[1]*/
    /*[1]*/
    for (i_imopVarPre95 = 2; i_imopVarPre95 <= (6 * (64 * 64 / 4 + 64 * 64 / 4 + 64 * 64 / 4)); i_imopVarPre95++) {
    /*[1]*/
        /*[1]*/
        ex[i_imopVarPre95] = ex[i_imopVarPre95 - 1] * ex[1];
    }
    /*[]*/
    int ( *_imopVarPre147 );
    /*[]*/
    _imopVarPre147 = dims[0];
    /*[]*/
    compute_initial_conditions(u1, _imopVarPre147);
    /*[]*/
    /*[]*/
    int _imopVarPre149;
    /*[]*/
    _imopVarPre149 = dims[0][0];
    /*[]*/
    fft_init(_imopVarPre149);
    /*[]*/
    /*[]*/
    int dir_imopVarPre111;
    /*[]*/
    struct stUn_imopVarPre11 ( *x1_imopVarPre112 )[64][64];
    /*[]*/
    struct stUn_imopVarPre11 ( *x2_imopVarPre113 )[64][64];
    /*[]*/
    dir_imopVarPre111 = 1;
    /*[]*/
    x1_imopVarPre112 = u1;
    /*[]*/
    x2_imopVarPre113 = u0;
    /*[]*/
    dcomplex y0_imopVarPre114[64][18];
    /*[]*/
    dcomplex y1_imopVarPre115[64][18];
    /*[]*/
    /*[]*/
    if (dir_imopVarPre111 == 1) {
    /*[]*/
        /*[]*/
        int ( *_imopVarPre225 );
        /*[]*/
        _imopVarPre225 = dims[0];
        /*[]*/
        int is;
        /*[]*/
        int *d;
        /*[]*/
        struct stUn_imopVarPre11 ( *x )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout )[64][64];
        /*[]*/
        is = 1;
        /*[]*/
        d = _imopVarPre225;
        /*[]*/
        x = x1_imopVarPre112;
        /*[]*/
        xout = x1_imopVarPre112;
        /*[]*/
        int logd[3];
        /*[2]*/
#pragma omp parallel default(shared) shared(is)
        {
        /*[2]*/
            /*[2]*/
            int i;
            /*[2]*/
            int j;
            /*[2]*/
            int k;
            /*[2]*/
            int jj;
            /*[2]*/
#pragma omp master
            {
            /*[2]*/
                /*[2]*/
                /*[2]*/
                /*[2]*/
                /*[2]*/
                for (i = 0; i < 3; i++) {
                /*[2]*/
                    /*[2]*/
                    int _imopVarPre243;
                    /*[2]*/
                    int _imopVarPre244;
                    /*[2]*/
                    _imopVarPre243 = d[i];
                    /*[2]*/
                    _imopVarPre244 = ilog2(_imopVarPre243);
                    /*[2]*/
                    /*[2]*/
                    logd[i] = _imopVarPre244;
                }
            }
            /*[2]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[2]*/
#pragma omp barrier
            /*[3]*/
            dcomplex y0[64][18];
            /*[3]*/
            dcomplex y1[64][18];
            /*[3]*/
#pragma omp for nowait
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (k = 0; k < d[2]; k++) {
            /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                for (jj = 0; jj <= d[1] - fftblock; jj += fftblock) {
                /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    for (j = 0; j < fftblock; j++) {
                    /*[3]*/
                        /*[3]*/
                        /*[3]*/
                        /*[3]*/
                        /*[3]*/
                        for (i = 0; i < d[0]; i++) {
                        /*[3]*/
                            /*[3]*/
                            y0[i][j].real = x[k][j + jj][i].real;
                            /*[3]*/
                            y0[i][j].imag = x[k][j + jj][i].imag;
                        }
                    }
                    /*[3]*/
                    int _imopVarPre247;
                    /*[3]*/
                    int _imopVarPre248;
                    /*[3]*/
                    _imopVarPre247 = d[0];
                    /*[3]*/
                    _imopVarPre248 = logd[0];
                    /*[3]*/
                    cfftz(is, _imopVarPre248, _imopVarPre247, y0, y1);
                    /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    for (j = 0; j < fftblock; j++) {
                    /*[3]*/
                        /*[3]*/
                        /*[3]*/
                        /*[3]*/
                        /*[3]*/
                        for (i = 0; i < d[0]; i++) {
                        /*[3]*/
                            /*[3]*/
                            xout[k][j + jj][i].real = y0[i][j].real;
                            /*[3]*/
                            xout[k][j + jj][i].imag = y0[i][j].imag;
                        }
                    }
                }
            }
        }
        /*[]*/
        int ( *_imopVarPre227 );
        /*[]*/
        _imopVarPre227 = dims[1];
        /*[]*/
        int is_imopVarPre85;
        /*[]*/
        int *d_imopVarPre86;
        /*[]*/
        struct stUn_imopVarPre11 ( *x_imopVarPre87 )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout_imopVarPre88 )[64][64];
        /*[]*/
        is_imopVarPre85 = 1;
        /*[]*/
        d_imopVarPre86 = _imopVarPre227;
        /*[]*/
        x_imopVarPre87 = x1_imopVarPre112;
        /*[]*/
        xout_imopVarPre88 = x1_imopVarPre112;
        /*[]*/
        int logd_imopVarPre89[3];
        /*[4]*/
#pragma omp parallel default(shared) shared(is_imopVarPre85)
        {
        /*[4]*/
            /*[4]*/
            int i;
            /*[4]*/
            int j;
            /*[4]*/
            int k;
            /*[4]*/
            int ii;
            /*[4]*/
#pragma omp master
            {
            /*[4]*/
                /*[4]*/
                /*[4]*/
                /*[4]*/
                /*[4]*/
                for (i = 0; i < 3; i++) {
                /*[4]*/
                    /*[4]*/
                    int _imopVarPre250;
                    /*[4]*/
                    int _imopVarPre251;
                    /*[4]*/
                    _imopVarPre250 = d_imopVarPre86[i];
                    /*[4]*/
                    _imopVarPre251 = ilog2(_imopVarPre250);
                    /*[4]*/
                    /*[4]*/
                    logd_imopVarPre89[i] = _imopVarPre251;
                }
            }
            /*[4]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[4]*/
#pragma omp barrier
            /*[5]*/
            dcomplex y0[64][18];
            /*[5]*/
            dcomplex y1[64][18];
            /*[5]*/
#pragma omp for nowait
            /*[5]*/
            /*[5]*/
            /*[5]*/
            for (k = 0; k < d_imopVarPre86[2]; k++) {
            /*[5]*/
                /*[5]*/
                /*[5]*/
                /*[5]*/
                /*[5]*/
                for (ii = 0; ii <= d_imopVarPre86[0] - fftblock; ii += fftblock) {
                /*[5]*/
                    /*[5]*/
                    /*[5]*/
                    /*[5]*/
                    /*[5]*/
                    for (j = 0; j < d_imopVarPre86[1]; j++) {
                    /*[5]*/
                        /*[5]*/
                        /*[5]*/
                        /*[5]*/
                        /*[5]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[5]*/
                            /*[5]*/
                            y0[j][i].real = x_imopVarPre87[k][j][i + ii].real;
                            /*[5]*/
                            y0[j][i].imag = x_imopVarPre87[k][j][i + ii].imag;
                        }
                    }
                    /*[5]*/
                    int _imopVarPre254;
                    /*[5]*/
                    int _imopVarPre255;
                    /*[5]*/
                    _imopVarPre254 = d_imopVarPre86[1];
                    /*[5]*/
                    _imopVarPre255 = logd_imopVarPre89[1];
                    /*[5]*/
                    cfftz(is_imopVarPre85, _imopVarPre255, _imopVarPre254, y0, y1);
                    /*[5]*/
                    /*[5]*/
                    /*[5]*/
                    /*[5]*/
                    /*[5]*/
                    for (j = 0; j < d_imopVarPre86[1]; j++) {
                    /*[5]*/
                        /*[5]*/
                        /*[5]*/
                        /*[5]*/
                        /*[5]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[5]*/
                            /*[5]*/
                            xout_imopVarPre88[k][j][i + ii].real = y0[j][i].real;
                            /*[5]*/
                            xout_imopVarPre88[k][j][i + ii].imag = y0[j][i].imag;
                        }
                    }
                }
            }
        }
        /*[]*/
        int ( *_imopVarPre229 );
        /*[]*/
        _imopVarPre229 = dims[2];
        /*[]*/
        int is_imopVarPre90;
        /*[]*/
        int *d_imopVarPre91;
        /*[]*/
        struct stUn_imopVarPre11 ( *x_imopVarPre92 )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout_imopVarPre93 )[64][64];
        /*[]*/
        is_imopVarPre90 = 1;
        /*[]*/
        d_imopVarPre91 = _imopVarPre229;
        /*[]*/
        x_imopVarPre92 = x1_imopVarPre112;
        /*[]*/
        xout_imopVarPre93 = x2_imopVarPre113;
        /*[]*/
        int logd_imopVarPre94[3];
        /*[6]*/
#pragma omp parallel default(shared) shared(is_imopVarPre90)
        {
        /*[6]*/
            /*[6]*/
            int i;
            /*[6]*/
            int j;
            /*[6]*/
            int k;
            /*[6]*/
            int ii;
            /*[6]*/
#pragma omp master
            {
            /*[6]*/
                /*[6]*/
                /*[6]*/
                /*[6]*/
                /*[6]*/
                for (i = 0; i < 3; i++) {
                /*[6]*/
                    /*[6]*/
                    int _imopVarPre257;
                    /*[6]*/
                    int _imopVarPre258;
                    /*[6]*/
                    _imopVarPre257 = d_imopVarPre91[i];
                    /*[6]*/
                    _imopVarPre258 = ilog2(_imopVarPre257);
                    /*[6]*/
                    /*[6]*/
                    logd_imopVarPre94[i] = _imopVarPre258;
                }
            }
            /*[6]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6]*/
#pragma omp barrier
            /*[7]*/
            dcomplex y0[64][18];
            /*[7]*/
            dcomplex y1[64][18];
            /*[7]*/
#pragma omp for nowait
            /*[7]*/
            /*[7]*/
            /*[7]*/
            for (j = 0; j < d_imopVarPre91[1]; j++) {
            /*[7]*/
                /*[7]*/
                /*[7]*/
                /*[7]*/
                /*[7]*/
                for (ii = 0; ii <= d_imopVarPre91[0] - fftblock; ii += fftblock) {
                /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    for (k = 0; k < d_imopVarPre91[2]; k++) {
                    /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[7]*/
                            /*[7]*/
                            y0[k][i].real = x_imopVarPre92[k][j][i + ii].real;
                            /*[7]*/
                            y0[k][i].imag = x_imopVarPre92[k][j][i + ii].imag;
                        }
                    }
                    /*[7]*/
                    int _imopVarPre261;
                    /*[7]*/
                    int _imopVarPre262;
                    /*[7]*/
                    _imopVarPre261 = d_imopVarPre91[2];
                    /*[7]*/
                    _imopVarPre262 = logd_imopVarPre94[2];
                    /*[7]*/
                    cfftz(is_imopVarPre90, _imopVarPre262, _imopVarPre261, y0, y1);
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    for (k = 0; k < d_imopVarPre91[2]; k++) {
                    /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[7]*/
                            /*[7]*/
                            xout_imopVarPre93[k][j][i + ii].real = y0[k][i].real;
                            /*[7]*/
                            xout_imopVarPre93[k][j][i + ii].imag = y0[k][i].imag;
                        }
                    }
                }
            }
        }
    } else {
    /*[]*/
        /*[]*/
        int ( *_imopVarPre232 );
        /*[]*/
        int _imopVarPre233;
        /*[]*/
        _imopVarPre232 = dims[2];
        /*[]*/
        _imopVarPre233 = -1;
        /*[]*/
        int is;
        /*[]*/
        int *d;
        /*[]*/
        struct stUn_imopVarPre11 ( *x )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout )[64][64];
        /*[]*/
        is = _imopVarPre233;
        /*[]*/
        d = _imopVarPre232;
        /*[]*/
        x = x1_imopVarPre112;
        /*[]*/
        xout = x1_imopVarPre112;
        /*[]*/
        int logd[3];
        /*[8]*/
#pragma omp parallel default(shared) shared(is)
        {
        /*[8]*/
            /*[8]*/
            int i;
            /*[8]*/
            int j;
            /*[8]*/
            int k;
            /*[8]*/
            int ii;
            /*[8]*/
#pragma omp master
            {
            /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                for (i = 0; i < 3; i++) {
                /*[8]*/
                    /*[8]*/
                    int _imopVarPre257;
                    /*[8]*/
                    int _imopVarPre258;
                    /*[8]*/
                    _imopVarPre257 = d[i];
                    /*[8]*/
                    _imopVarPre258 = ilog2(_imopVarPre257);
                    /*[8]*/
                    /*[8]*/
                    logd[i] = _imopVarPre258;
                }
            }
            /*[8]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[8]*/
#pragma omp barrier
            /*[9]*/
            dcomplex y0[64][18];
            /*[9]*/
            dcomplex y1[64][18];
            /*[9]*/
#pragma omp for nowait
            /*[9]*/
            /*[9]*/
            /*[9]*/
            for (j = 0; j < d[1]; j++) {
            /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                for (ii = 0; ii <= d[0] - fftblock; ii += fftblock) {
                /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    for (k = 0; k < d[2]; k++) {
                    /*[9]*/
                        /*[9]*/
                        /*[9]*/
                        /*[9]*/
                        /*[9]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[9]*/
                            /*[9]*/
                            y0[k][i].real = x[k][j][i + ii].real;
                            /*[9]*/
                            y0[k][i].imag = x[k][j][i + ii].imag;
                        }
                    }
                    /*[9]*/
                    int _imopVarPre261;
                    /*[9]*/
                    int _imopVarPre262;
                    /*[9]*/
                    _imopVarPre261 = d[2];
                    /*[9]*/
                    _imopVarPre262 = logd[2];
                    /*[9]*/
                    cfftz(is, _imopVarPre262, _imopVarPre261, y0, y1);
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    for (k = 0; k < d[2]; k++) {
                    /*[9]*/
                        /*[9]*/
                        /*[9]*/
                        /*[9]*/
                        /*[9]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[9]*/
                            /*[9]*/
                            xout[k][j][i + ii].real = y0[k][i].real;
                            /*[9]*/
                            xout[k][j][i + ii].imag = y0[k][i].imag;
                        }
                    }
                }
            }
        }
        /*[]*/
        int ( *_imopVarPre236 );
        /*[]*/
        int _imopVarPre237;
        /*[]*/
        _imopVarPre236 = dims[1];
        /*[]*/
        _imopVarPre237 = -1;
        /*[]*/
        int is_imopVarPre75;
        /*[]*/
        int *d_imopVarPre76;
        /*[]*/
        struct stUn_imopVarPre11 ( *x_imopVarPre77 )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout_imopVarPre78 )[64][64];
        /*[]*/
        is_imopVarPre75 = _imopVarPre237;
        /*[]*/
        d_imopVarPre76 = _imopVarPre236;
        /*[]*/
        x_imopVarPre77 = x1_imopVarPre112;
        /*[]*/
        xout_imopVarPre78 = x1_imopVarPre112;
        /*[]*/
        int logd_imopVarPre79[3];
        /*[10]*/
#pragma omp parallel default(shared) shared(is_imopVarPre75)
        {
        /*[10]*/
            /*[10]*/
            int i;
            /*[10]*/
            int j;
            /*[10]*/
            int k;
            /*[10]*/
            int ii;
            /*[10]*/
#pragma omp master
            {
            /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                for (i = 0; i < 3; i++) {
                /*[10]*/
                    /*[10]*/
                    int _imopVarPre250;
                    /*[10]*/
                    int _imopVarPre251;
                    /*[10]*/
                    _imopVarPre250 = d_imopVarPre76[i];
                    /*[10]*/
                    _imopVarPre251 = ilog2(_imopVarPre250);
                    /*[10]*/
                    /*[10]*/
                    logd_imopVarPre79[i] = _imopVarPre251;
                }
            }
            /*[10]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[10]*/
#pragma omp barrier
            /*[11]*/
            dcomplex y0[64][18];
            /*[11]*/
            dcomplex y1[64][18];
            /*[11]*/
#pragma omp for nowait
            /*[11]*/
            /*[11]*/
            /*[11]*/
            for (k = 0; k < d_imopVarPre76[2]; k++) {
            /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (ii = 0; ii <= d_imopVarPre76[0] - fftblock; ii += fftblock) {
                /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    for (j = 0; j < d_imopVarPre76[1]; j++) {
                    /*[11]*/
                        /*[11]*/
                        /*[11]*/
                        /*[11]*/
                        /*[11]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[11]*/
                            /*[11]*/
                            y0[j][i].real = x_imopVarPre77[k][j][i + ii].real;
                            /*[11]*/
                            y0[j][i].imag = x_imopVarPre77[k][j][i + ii].imag;
                        }
                    }
                    /*[11]*/
                    int _imopVarPre254;
                    /*[11]*/
                    int _imopVarPre255;
                    /*[11]*/
                    _imopVarPre254 = d_imopVarPre76[1];
                    /*[11]*/
                    _imopVarPre255 = logd_imopVarPre79[1];
                    /*[11]*/
                    cfftz(is_imopVarPre75, _imopVarPre255, _imopVarPre254, y0, y1);
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    for (j = 0; j < d_imopVarPre76[1]; j++) {
                    /*[11]*/
                        /*[11]*/
                        /*[11]*/
                        /*[11]*/
                        /*[11]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[11]*/
                            /*[11]*/
                            xout_imopVarPre78[k][j][i + ii].real = y0[j][i].real;
                            /*[11]*/
                            xout_imopVarPre78[k][j][i + ii].imag = y0[j][i].imag;
                        }
                    }
                }
            }
        }
        /*[]*/
        int ( *_imopVarPre240 );
        /*[]*/
        int _imopVarPre241;
        /*[]*/
        _imopVarPre240 = dims[0];
        /*[]*/
        _imopVarPre241 = -1;
        /*[]*/
        int is_imopVarPre80;
        /*[]*/
        int *d_imopVarPre81;
        /*[]*/
        struct stUn_imopVarPre11 ( *x_imopVarPre82 )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout_imopVarPre83 )[64][64];
        /*[]*/
        is_imopVarPre80 = _imopVarPre241;
        /*[]*/
        d_imopVarPre81 = _imopVarPre240;
        /*[]*/
        x_imopVarPre82 = x1_imopVarPre112;
        /*[]*/
        xout_imopVarPre83 = x2_imopVarPre113;
        /*[]*/
        int logd_imopVarPre84[3];
        /*[12]*/
#pragma omp parallel default(shared) shared(is_imopVarPre80)
        {
        /*[12]*/
            /*[12]*/
            int i;
            /*[12]*/
            int j;
            /*[12]*/
            int k;
            /*[12]*/
            int jj;
            /*[12]*/
#pragma omp master
            {
            /*[12]*/
                /*[12]*/
                /*[12]*/
                /*[12]*/
                /*[12]*/
                for (i = 0; i < 3; i++) {
                /*[12]*/
                    /*[12]*/
                    int _imopVarPre243;
                    /*[12]*/
                    int _imopVarPre244;
                    /*[12]*/
                    _imopVarPre243 = d_imopVarPre81[i];
                    /*[12]*/
                    _imopVarPre244 = ilog2(_imopVarPre243);
                    /*[12]*/
                    /*[12]*/
                    logd_imopVarPre84[i] = _imopVarPre244;
                }
            }
            /*[12]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[12]*/
#pragma omp barrier
            /*[13]*/
            dcomplex y0[64][18];
            /*[13]*/
            dcomplex y1[64][18];
            /*[13]*/
#pragma omp for nowait
            /*[13]*/
            /*[13]*/
            /*[13]*/
            for (k = 0; k < d_imopVarPre81[2]; k++) {
            /*[13]*/
                /*[13]*/
                /*[13]*/
                /*[13]*/
                /*[13]*/
                for (jj = 0; jj <= d_imopVarPre81[1] - fftblock; jj += fftblock) {
                /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    for (j = 0; j < fftblock; j++) {
                    /*[13]*/
                        /*[13]*/
                        /*[13]*/
                        /*[13]*/
                        /*[13]*/
                        for (i = 0; i < d_imopVarPre81[0]; i++) {
                        /*[13]*/
                            /*[13]*/
                            y0[i][j].real = x_imopVarPre82[k][j + jj][i].real;
                            /*[13]*/
                            y0[i][j].imag = x_imopVarPre82[k][j + jj][i].imag;
                        }
                    }
                    /*[13]*/
                    int _imopVarPre247;
                    /*[13]*/
                    int _imopVarPre248;
                    /*[13]*/
                    _imopVarPre247 = d_imopVarPre81[0];
                    /*[13]*/
                    _imopVarPre248 = logd_imopVarPre84[0];
                    /*[13]*/
                    cfftz(is_imopVarPre80, _imopVarPre248, _imopVarPre247, y0, y1);
                    /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    /*[13]*/
                    for (j = 0; j < fftblock; j++) {
                    /*[13]*/
                        /*[13]*/
                        /*[13]*/
                        /*[13]*/
                        /*[13]*/
                        for (i = 0; i < d_imopVarPre81[0]; i++) {
                        /*[13]*/
                            /*[13]*/
                            xout_imopVarPre83[k][j + jj][i].real = y0[i][j].real;
                            /*[13]*/
                            xout_imopVarPre83[k][j + jj][i].imag = y0[i][j].imag;
                        }
                    }
                }
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 7; i++) {
    /*[]*/
        /*[]*/
        timer_clear(i);
        /*[]*/
    }
    /*[]*/
    timer_start(0);
    /*[]*/
    /*[]*/
    /*[]*/
    if (0 == 1) {
    /*[]*/
        /*[]*/
        timer_start(1);
        /*[]*/
    }
    /*[]*/
    int ( *_imopVarPre151 );
    /*[]*/
    _imopVarPre151 = dims[2];
    /*[]*/
    int *d_imopVarPre100;
    /*[]*/
    d_imopVarPre100 = _imopVarPre151;
    /*[]*/
    int i_imopVarPre101;
    /*[]*/
    int j_imopVarPre102;
    /*[]*/
    int k_imopVarPre103;
    /*[]*/
    int ii_imopVarPre104;
    /*[]*/
    int ii2_imopVarPre105;
    /*[]*/
    int jj_imopVarPre106;
    /*[]*/
    int ij2_imopVarPre107;
    /*[]*/
    int kk_imopVarPre108;
    /*[]*/
    double ap_imopVarPre109;
    /*[14]*/
#pragma omp parallel default(shared) private(i_imopVarPre101, j_imopVarPre102, k_imopVarPre103, ii_imopVarPre104, ii2_imopVarPre105, jj_imopVarPre106, ij2_imopVarPre107, kk_imopVarPre108)
    {
    /*[14]*/
        /*[14]*/
#pragma omp for nowait
        /*[14]*/
        /*[14]*/
        /*[14]*/
        for (i_imopVarPre101 = 0; i_imopVarPre101 < dims[2][0]; i_imopVarPre101++) {
        /*[14]*/
            /*[14]*/
            ii_imopVarPre104 = (i_imopVarPre101 + 1 + xstart[2] - 2 + 64 / 2) % 64 - 64 / 2;
            /*[14]*/
            ii2_imopVarPre105 = ii_imopVarPre104 * ii_imopVarPre104;
            /*[14]*/
            /*[14]*/
            /*[14]*/
            /*[14]*/
            for (j_imopVarPre102 = 0; j_imopVarPre102 < dims[2][1]; j_imopVarPre102++) {
            /*[14]*/
                /*[14]*/
                jj_imopVarPre106 = (j_imopVarPre102 + 1 + ystart[2] - 2 + 64 / 2) % 64 - 64 / 2;
                /*[14]*/
                ij2_imopVarPre107 = jj_imopVarPre106 * jj_imopVarPre106 + ii2_imopVarPre105;
                /*[14]*/
                /*[14]*/
                /*[14]*/
                /*[14]*/
                for (k_imopVarPre103 = 0; k_imopVarPre103 < dims[2][2]; k_imopVarPre103++) {
                /*[14]*/
                    /*[14]*/
                    kk_imopVarPre108 = (k_imopVarPre103 + 1 + zstart[2] - 2 + 64 / 2) % 64 - 64 / 2;
                    /*[14]*/
                    indexmap[k_imopVarPre103][j_imopVarPre102][i_imopVarPre101] = kk_imopVarPre108 * kk_imopVarPre108 + ij2_imopVarPre107;
                }
            }
        }
    }
    /*[14]*/
    ap_imopVarPre109 = -4.0 * 1.0e-6 * 3.141592653589793238 * 3.141592653589793238;
    /*[14]*/
    ex[0] = 1.0;
    /*[14]*/
    double _imopVarPre217_imopVarPre110;
    /*[14]*/
    _imopVarPre217_imopVarPre110 = exp(ap_imopVarPre109);
    /*[14]*/
    /*[14]*/
    ex[1] = _imopVarPre217_imopVarPre110;
    /*[14]*/
    /*[14]*/
    /*[14]*/
    /*[14]*/
    for (i_imopVarPre101 = 2; i_imopVarPre101 <= (6 * (64 * 64 / 4 + 64 * 64 / 4 + 64 * 64 / 4)); i_imopVarPre101++) {
    /*[14]*/
        /*[14]*/
        ex[i_imopVarPre101] = ex[i_imopVarPre101 - 1] * ex[1];
    }
    /*[]*/
    int ( *_imopVarPre153 );
    /*[]*/
    _imopVarPre153 = dims[0];
    /*[]*/
    compute_initial_conditions(u1, _imopVarPre153);
    /*[]*/
    /*[]*/
    int _imopVarPre155;
    /*[]*/
    _imopVarPre155 = dims[0][0];
    /*[]*/
    fft_init(_imopVarPre155);
    /*[]*/
    /*[]*/
    /*[]*/
    if (0 == 1) {
    /*[]*/
        /*[]*/
        timer_stop(1);
        /*[]*/
    }
    /*[]*/
    /*[]*/
    if (0 == 1) {
    /*[]*/
        /*[]*/
        timer_start(2);
        /*[]*/
    }
    /*[]*/
    int dir;
    /*[]*/
    struct stUn_imopVarPre11 ( *x1 )[64][64];
    /*[]*/
    struct stUn_imopVarPre11 ( *x2 )[64][64];
    /*[]*/
    dir = 1;
    /*[]*/
    x1 = u1;
    /*[]*/
    x2 = u0;
    /*[]*/
    dcomplex y0[64][18];
    /*[]*/
    dcomplex y1[64][18];
    /*[]*/
    /*[]*/
    if (dir == 1) {
    /*[]*/
        /*[]*/
        int ( *_imopVarPre225 );
        /*[]*/
        _imopVarPre225 = dims[0];
        /*[]*/
        int is;
        /*[]*/
        int *d;
        /*[]*/
        struct stUn_imopVarPre11 ( *x )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout )[64][64];
        /*[]*/
        is = 1;
        /*[]*/
        d = _imopVarPre225;
        /*[]*/
        x = x1;
        /*[]*/
        xout = x1;
        /*[]*/
        int logd[3];
        /*[15]*/
#pragma omp parallel default(shared) shared(is)
        {
        /*[15]*/
            /*[15]*/
            int i;
            /*[15]*/
            int j;
            /*[15]*/
            int k;
            /*[15]*/
            int jj;
            /*[15]*/
#pragma omp master
            {
            /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (i = 0; i < 3; i++) {
                /*[15]*/
                    /*[15]*/
                    int _imopVarPre243;
                    /*[15]*/
                    int _imopVarPre244;
                    /*[15]*/
                    _imopVarPre243 = d[i];
                    /*[15]*/
                    _imopVarPre244 = ilog2(_imopVarPre243);
                    /*[15]*/
                    /*[15]*/
                    logd[i] = _imopVarPre244;
                }
            }
            /*[15]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[15]*/
#pragma omp barrier
            /*[16]*/
            dcomplex y0[64][18];
            /*[16]*/
            dcomplex y1[64][18];
            /*[16]*/
#pragma omp for nowait
            /*[16]*/
            /*[16]*/
            /*[16]*/
            for (k = 0; k < d[2]; k++) {
            /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (jj = 0; jj <= d[1] - fftblock; jj += fftblock) {
                /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    for (j = 0; j < fftblock; j++) {
                    /*[16]*/
                        /*[16]*/
                        /*[16]*/
                        /*[16]*/
                        /*[16]*/
                        for (i = 0; i < d[0]; i++) {
                        /*[16]*/
                            /*[16]*/
                            y0[i][j].real = x[k][j + jj][i].real;
                            /*[16]*/
                            y0[i][j].imag = x[k][j + jj][i].imag;
                        }
                    }
                    /*[16]*/
                    int _imopVarPre247;
                    /*[16]*/
                    int _imopVarPre248;
                    /*[16]*/
                    _imopVarPre247 = d[0];
                    /*[16]*/
                    _imopVarPre248 = logd[0];
                    /*[16]*/
                    cfftz(is, _imopVarPre248, _imopVarPre247, y0, y1);
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    for (j = 0; j < fftblock; j++) {
                    /*[16]*/
                        /*[16]*/
                        /*[16]*/
                        /*[16]*/
                        /*[16]*/
                        for (i = 0; i < d[0]; i++) {
                        /*[16]*/
                            /*[16]*/
                            xout[k][j + jj][i].real = y0[i][j].real;
                            /*[16]*/
                            xout[k][j + jj][i].imag = y0[i][j].imag;
                        }
                    }
                }
            }
        }
        /*[]*/
        int ( *_imopVarPre227 );
        /*[]*/
        _imopVarPre227 = dims[1];
        /*[]*/
        int is_imopVarPre85;
        /*[]*/
        int *d_imopVarPre86;
        /*[]*/
        struct stUn_imopVarPre11 ( *x_imopVarPre87 )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout_imopVarPre88 )[64][64];
        /*[]*/
        is_imopVarPre85 = 1;
        /*[]*/
        d_imopVarPre86 = _imopVarPre227;
        /*[]*/
        x_imopVarPre87 = x1;
        /*[]*/
        xout_imopVarPre88 = x1;
        /*[]*/
        int logd_imopVarPre89[3];
        /*[17]*/
#pragma omp parallel default(shared) shared(is_imopVarPre85)
        {
        /*[17]*/
            /*[17]*/
            int i;
            /*[17]*/
            int j;
            /*[17]*/
            int k;
            /*[17]*/
            int ii;
            /*[17]*/
#pragma omp master
            {
            /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (i = 0; i < 3; i++) {
                /*[17]*/
                    /*[17]*/
                    int _imopVarPre250;
                    /*[17]*/
                    int _imopVarPre251;
                    /*[17]*/
                    _imopVarPre250 = d_imopVarPre86[i];
                    /*[17]*/
                    _imopVarPre251 = ilog2(_imopVarPre250);
                    /*[17]*/
                    /*[17]*/
                    logd_imopVarPre89[i] = _imopVarPre251;
                }
            }
            /*[17]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[17]*/
#pragma omp barrier
            /*[18]*/
            dcomplex y0[64][18];
            /*[18]*/
            dcomplex y1[64][18];
            /*[18]*/
#pragma omp for nowait
            /*[18]*/
            /*[18]*/
            /*[18]*/
            for (k = 0; k < d_imopVarPre86[2]; k++) {
            /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                for (ii = 0; ii <= d_imopVarPre86[0] - fftblock; ii += fftblock) {
                /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    for (j = 0; j < d_imopVarPre86[1]; j++) {
                    /*[18]*/
                        /*[18]*/
                        /*[18]*/
                        /*[18]*/
                        /*[18]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[18]*/
                            /*[18]*/
                            y0[j][i].real = x_imopVarPre87[k][j][i + ii].real;
                            /*[18]*/
                            y0[j][i].imag = x_imopVarPre87[k][j][i + ii].imag;
                        }
                    }
                    /*[18]*/
                    int _imopVarPre254;
                    /*[18]*/
                    int _imopVarPre255;
                    /*[18]*/
                    _imopVarPre254 = d_imopVarPre86[1];
                    /*[18]*/
                    _imopVarPre255 = logd_imopVarPre89[1];
                    /*[18]*/
                    cfftz(is_imopVarPre85, _imopVarPre255, _imopVarPre254, y0, y1);
                    /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    for (j = 0; j < d_imopVarPre86[1]; j++) {
                    /*[18]*/
                        /*[18]*/
                        /*[18]*/
                        /*[18]*/
                        /*[18]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[18]*/
                            /*[18]*/
                            xout_imopVarPre88[k][j][i + ii].real = y0[j][i].real;
                            /*[18]*/
                            xout_imopVarPre88[k][j][i + ii].imag = y0[j][i].imag;
                        }
                    }
                }
            }
        }
        /*[]*/
        int ( *_imopVarPre229 );
        /*[]*/
        _imopVarPre229 = dims[2];
        /*[]*/
        int is_imopVarPre90;
        /*[]*/
        int *d_imopVarPre91;
        /*[]*/
        struct stUn_imopVarPre11 ( *x_imopVarPre92 )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout_imopVarPre93 )[64][64];
        /*[]*/
        is_imopVarPre90 = 1;
        /*[]*/
        d_imopVarPre91 = _imopVarPre229;
        /*[]*/
        x_imopVarPre92 = x1;
        /*[]*/
        xout_imopVarPre93 = x2;
        /*[]*/
        int logd_imopVarPre94[3];
        /*[19]*/
#pragma omp parallel default(shared) shared(is_imopVarPre90)
        {
        /*[19]*/
            /*[19]*/
            int i;
            /*[19]*/
            int j;
            /*[19]*/
            int k;
            /*[19]*/
            int ii;
            /*[19]*/
#pragma omp master
            {
            /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (i = 0; i < 3; i++) {
                /*[19]*/
                    /*[19]*/
                    int _imopVarPre257;
                    /*[19]*/
                    int _imopVarPre258;
                    /*[19]*/
                    _imopVarPre257 = d_imopVarPre91[i];
                    /*[19]*/
                    _imopVarPre258 = ilog2(_imopVarPre257);
                    /*[19]*/
                    /*[19]*/
                    logd_imopVarPre94[i] = _imopVarPre258;
                }
            }
            /*[19]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[19]*/
#pragma omp barrier
            /*[20]*/
            dcomplex y0[64][18];
            /*[20]*/
            dcomplex y1[64][18];
            /*[20]*/
#pragma omp for nowait
            /*[20]*/
            /*[20]*/
            /*[20]*/
            for (j = 0; j < d_imopVarPre91[1]; j++) {
            /*[20]*/
                /*[20]*/
                /*[20]*/
                /*[20]*/
                /*[20]*/
                for (ii = 0; ii <= d_imopVarPre91[0] - fftblock; ii += fftblock) {
                /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    for (k = 0; k < d_imopVarPre91[2]; k++) {
                    /*[20]*/
                        /*[20]*/
                        /*[20]*/
                        /*[20]*/
                        /*[20]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[20]*/
                            /*[20]*/
                            y0[k][i].real = x_imopVarPre92[k][j][i + ii].real;
                            /*[20]*/
                            y0[k][i].imag = x_imopVarPre92[k][j][i + ii].imag;
                        }
                    }
                    /*[20]*/
                    int _imopVarPre261;
                    /*[20]*/
                    int _imopVarPre262;
                    /*[20]*/
                    _imopVarPre261 = d_imopVarPre91[2];
                    /*[20]*/
                    _imopVarPre262 = logd_imopVarPre94[2];
                    /*[20]*/
                    cfftz(is_imopVarPre90, _imopVarPre262, _imopVarPre261, y0, y1);
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    /*[20]*/
                    for (k = 0; k < d_imopVarPre91[2]; k++) {
                    /*[20]*/
                        /*[20]*/
                        /*[20]*/
                        /*[20]*/
                        /*[20]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[20]*/
                            /*[20]*/
                            xout_imopVarPre93[k][j][i + ii].real = y0[k][i].real;
                            /*[20]*/
                            xout_imopVarPre93[k][j][i + ii].imag = y0[k][i].imag;
                        }
                    }
                }
            }
        }
    } else {
    /*[]*/
        /*[]*/
        int ( *_imopVarPre232 );
        /*[]*/
        int _imopVarPre233;
        /*[]*/
        _imopVarPre232 = dims[2];
        /*[]*/
        _imopVarPre233 = -1;
        /*[]*/
        int is;
        /*[]*/
        int *d;
        /*[]*/
        struct stUn_imopVarPre11 ( *x )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout )[64][64];
        /*[]*/
        is = _imopVarPre233;
        /*[]*/
        d = _imopVarPre232;
        /*[]*/
        x = x1;
        /*[]*/
        xout = x1;
        /*[]*/
        int logd[3];
        /*[21]*/
#pragma omp parallel default(shared) shared(is)
        {
        /*[21]*/
            /*[21]*/
            int i;
            /*[21]*/
            int j;
            /*[21]*/
            int k;
            /*[21]*/
            int ii;
            /*[21]*/
#pragma omp master
            {
            /*[21]*/
                /*[21]*/
                /*[21]*/
                /*[21]*/
                /*[21]*/
                for (i = 0; i < 3; i++) {
                /*[21]*/
                    /*[21]*/
                    int _imopVarPre257;
                    /*[21]*/
                    int _imopVarPre258;
                    /*[21]*/
                    _imopVarPre257 = d[i];
                    /*[21]*/
                    _imopVarPre258 = ilog2(_imopVarPre257);
                    /*[21]*/
                    /*[21]*/
                    logd[i] = _imopVarPre258;
                }
            }
            /*[21]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[21]*/
#pragma omp barrier
            /*[22]*/
            dcomplex y0[64][18];
            /*[22]*/
            dcomplex y1[64][18];
            /*[22]*/
#pragma omp for nowait
            /*[22]*/
            /*[22]*/
            /*[22]*/
            for (j = 0; j < d[1]; j++) {
            /*[22]*/
                /*[22]*/
                /*[22]*/
                /*[22]*/
                /*[22]*/
                for (ii = 0; ii <= d[0] - fftblock; ii += fftblock) {
                /*[22]*/
                    /*[22]*/
                    /*[22]*/
                    /*[22]*/
                    /*[22]*/
                    for (k = 0; k < d[2]; k++) {
                    /*[22]*/
                        /*[22]*/
                        /*[22]*/
                        /*[22]*/
                        /*[22]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[22]*/
                            /*[22]*/
                            y0[k][i].real = x[k][j][i + ii].real;
                            /*[22]*/
                            y0[k][i].imag = x[k][j][i + ii].imag;
                        }
                    }
                    /*[22]*/
                    int _imopVarPre261;
                    /*[22]*/
                    int _imopVarPre262;
                    /*[22]*/
                    _imopVarPre261 = d[2];
                    /*[22]*/
                    _imopVarPre262 = logd[2];
                    /*[22]*/
                    cfftz(is, _imopVarPre262, _imopVarPre261, y0, y1);
                    /*[22]*/
                    /*[22]*/
                    /*[22]*/
                    /*[22]*/
                    /*[22]*/
                    for (k = 0; k < d[2]; k++) {
                    /*[22]*/
                        /*[22]*/
                        /*[22]*/
                        /*[22]*/
                        /*[22]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[22]*/
                            /*[22]*/
                            xout[k][j][i + ii].real = y0[k][i].real;
                            /*[22]*/
                            xout[k][j][i + ii].imag = y0[k][i].imag;
                        }
                    }
                }
            }
        }
        /*[]*/
        int ( *_imopVarPre236 );
        /*[]*/
        int _imopVarPre237;
        /*[]*/
        _imopVarPre236 = dims[1];
        /*[]*/
        _imopVarPre237 = -1;
        /*[]*/
        int is_imopVarPre75;
        /*[]*/
        int *d_imopVarPre76;
        /*[]*/
        struct stUn_imopVarPre11 ( *x_imopVarPre77 )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout_imopVarPre78 )[64][64];
        /*[]*/
        is_imopVarPre75 = _imopVarPre237;
        /*[]*/
        d_imopVarPre76 = _imopVarPre236;
        /*[]*/
        x_imopVarPre77 = x1;
        /*[]*/
        xout_imopVarPre78 = x1;
        /*[]*/
        int logd_imopVarPre79[3];
        /*[23]*/
#pragma omp parallel default(shared) shared(is_imopVarPre75)
        {
        /*[23]*/
            /*[23]*/
            int i;
            /*[23]*/
            int j;
            /*[23]*/
            int k;
            /*[23]*/
            int ii;
            /*[23]*/
#pragma omp master
            {
            /*[23]*/
                /*[23]*/
                /*[23]*/
                /*[23]*/
                /*[23]*/
                for (i = 0; i < 3; i++) {
                /*[23]*/
                    /*[23]*/
                    int _imopVarPre250;
                    /*[23]*/
                    int _imopVarPre251;
                    /*[23]*/
                    _imopVarPre250 = d_imopVarPre76[i];
                    /*[23]*/
                    _imopVarPre251 = ilog2(_imopVarPre250);
                    /*[23]*/
                    /*[23]*/
                    logd_imopVarPre79[i] = _imopVarPre251;
                }
            }
            /*[23]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[23]*/
#pragma omp barrier
            /*[24]*/
            dcomplex y0[64][18];
            /*[24]*/
            dcomplex y1[64][18];
            /*[24]*/
#pragma omp for nowait
            /*[24]*/
            /*[24]*/
            /*[24]*/
            for (k = 0; k < d_imopVarPre76[2]; k++) {
            /*[24]*/
                /*[24]*/
                /*[24]*/
                /*[24]*/
                /*[24]*/
                for (ii = 0; ii <= d_imopVarPre76[0] - fftblock; ii += fftblock) {
                /*[24]*/
                    /*[24]*/
                    /*[24]*/
                    /*[24]*/
                    /*[24]*/
                    for (j = 0; j < d_imopVarPre76[1]; j++) {
                    /*[24]*/
                        /*[24]*/
                        /*[24]*/
                        /*[24]*/
                        /*[24]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[24]*/
                            /*[24]*/
                            y0[j][i].real = x_imopVarPre77[k][j][i + ii].real;
                            /*[24]*/
                            y0[j][i].imag = x_imopVarPre77[k][j][i + ii].imag;
                        }
                    }
                    /*[24]*/
                    int _imopVarPre254;
                    /*[24]*/
                    int _imopVarPre255;
                    /*[24]*/
                    _imopVarPre254 = d_imopVarPre76[1];
                    /*[24]*/
                    _imopVarPre255 = logd_imopVarPre79[1];
                    /*[24]*/
                    cfftz(is_imopVarPre75, _imopVarPre255, _imopVarPre254, y0, y1);
                    /*[24]*/
                    /*[24]*/
                    /*[24]*/
                    /*[24]*/
                    /*[24]*/
                    for (j = 0; j < d_imopVarPre76[1]; j++) {
                    /*[24]*/
                        /*[24]*/
                        /*[24]*/
                        /*[24]*/
                        /*[24]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[24]*/
                            /*[24]*/
                            xout_imopVarPre78[k][j][i + ii].real = y0[j][i].real;
                            /*[24]*/
                            xout_imopVarPre78[k][j][i + ii].imag = y0[j][i].imag;
                        }
                    }
                }
            }
        }
        /*[]*/
        int ( *_imopVarPre240 );
        /*[]*/
        int _imopVarPre241;
        /*[]*/
        _imopVarPre240 = dims[0];
        /*[]*/
        _imopVarPre241 = -1;
        /*[]*/
        int is_imopVarPre80;
        /*[]*/
        int *d_imopVarPre81;
        /*[]*/
        struct stUn_imopVarPre11 ( *x_imopVarPre82 )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout_imopVarPre83 )[64][64];
        /*[]*/
        is_imopVarPre80 = _imopVarPre241;
        /*[]*/
        d_imopVarPre81 = _imopVarPre240;
        /*[]*/
        x_imopVarPre82 = x1;
        /*[]*/
        xout_imopVarPre83 = x2;
        /*[]*/
        int logd_imopVarPre84[3];
        /*[25]*/
#pragma omp parallel default(shared) shared(is_imopVarPre80)
        {
        /*[25]*/
            /*[25]*/
            int i;
            /*[25]*/
            int j;
            /*[25]*/
            int k;
            /*[25]*/
            int jj;
            /*[25]*/
#pragma omp master
            {
            /*[25]*/
                /*[25]*/
                /*[25]*/
                /*[25]*/
                /*[25]*/
                for (i = 0; i < 3; i++) {
                /*[25]*/
                    /*[25]*/
                    int _imopVarPre243;
                    /*[25]*/
                    int _imopVarPre244;
                    /*[25]*/
                    _imopVarPre243 = d_imopVarPre81[i];
                    /*[25]*/
                    _imopVarPre244 = ilog2(_imopVarPre243);
                    /*[25]*/
                    /*[25]*/
                    logd_imopVarPre84[i] = _imopVarPre244;
                }
            }
            /*[25]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[25]*/
#pragma omp barrier
            /*[26]*/
            dcomplex y0[64][18];
            /*[26]*/
            dcomplex y1[64][18];
            /*[26]*/
#pragma omp for nowait
            /*[26]*/
            /*[26]*/
            /*[26]*/
            for (k = 0; k < d_imopVarPre81[2]; k++) {
            /*[26]*/
                /*[26]*/
                /*[26]*/
                /*[26]*/
                /*[26]*/
                for (jj = 0; jj <= d_imopVarPre81[1] - fftblock; jj += fftblock) {
                /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    for (j = 0; j < fftblock; j++) {
                    /*[26]*/
                        /*[26]*/
                        /*[26]*/
                        /*[26]*/
                        /*[26]*/
                        for (i = 0; i < d_imopVarPre81[0]; i++) {
                        /*[26]*/
                            /*[26]*/
                            y0[i][j].real = x_imopVarPre82[k][j + jj][i].real;
                            /*[26]*/
                            y0[i][j].imag = x_imopVarPre82[k][j + jj][i].imag;
                        }
                    }
                    /*[26]*/
                    int _imopVarPre247;
                    /*[26]*/
                    int _imopVarPre248;
                    /*[26]*/
                    _imopVarPre247 = d_imopVarPre81[0];
                    /*[26]*/
                    _imopVarPre248 = logd_imopVarPre84[0];
                    /*[26]*/
                    cfftz(is_imopVarPre80, _imopVarPre248, _imopVarPre247, y0, y1);
                    /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    for (j = 0; j < fftblock; j++) {
                    /*[26]*/
                        /*[26]*/
                        /*[26]*/
                        /*[26]*/
                        /*[26]*/
                        for (i = 0; i < d_imopVarPre81[0]; i++) {
                        /*[26]*/
                            /*[26]*/
                            xout_imopVarPre83[k][j + jj][i].real = y0[i][j].real;
                            /*[26]*/
                            xout_imopVarPre83[k][j + jj][i].imag = y0[i][j].imag;
                        }
                    }
                }
            }
        }
    }
    /*[]*/
    /*[]*/
    if (0 == 1) {
    /*[]*/
        /*[]*/
        timer_stop(2);
        /*[]*/
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (iter = 1; iter <= niter; iter++) {
    /*[]*/
        /*[]*/
        int ( *_imopVarPre157 );
        /*[]*/
        /*There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.*/
        int dir;
        /*[]*/
        /*There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.*/
        struct stUn_imopVarPre11 ( *x1 )[64][64];
        /*[]*/
        /*There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.
        There was a namespace collision due to removal of this declaration.
        There was a namespace collision due to addition of this declaration.*/
        struct stUn_imopVarPre11 ( *x2 )[64][64];
        /*[]*/
        int ( *_imopVarPre161 );
        /*[27]*/
#pragma omp parallel
        {
        /*[27]*/
            /*[27]*/
            int _imopVarPre159;
            /*[27]*/
            /*There was a namespace collision due to removal of this declaration.
            There was a namespace collision due to addition of this declaration.
            There was a namespace collision due to removal of this declaration.
            There was a namespace collision due to addition of this declaration.*/
            dcomplex y0[64][18];
            /*[27]*/
            /*There was a namespace collision due to removal of this declaration.
            There was a namespace collision due to addition of this declaration.
            There was a namespace collision due to removal of this declaration.
            There was a namespace collision due to addition of this declaration.*/
            dcomplex y1[64][18];
            /*[27]*/
#pragma omp master
            {
            /*[27]*/
                /*[27]*/
                /*[27]*/
                if (0 == 1) {
                /*[27]*/
                    /*[27]*/
                    timer_start(3);
                    /*[27]*/
                }
                /*[27]*/
                _imopVarPre157 = dims[0];
            }
            /*[27]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[27]*/
#pragma omp barrier
            /*[28]*/
            evolve(u0, u1, iter, indexmap, _imopVarPre157);
            /*[28]*/
            /*[28]*/
#pragma omp master
            {
            /*[28]*/
                /*[28]*/
                /*[28]*/
                if (0 == 1) {
                /*[28]*/
                    /*[28]*/
                    timer_stop(3);
                    /*[28]*/
                }
                /*[28]*/
                /*[28]*/
                if (0 == 1) {
                /*[28]*/
                    /*[28]*/
                    timer_start(2);
                    /*[28]*/
                }
                /*[28]*/
                _imopVarPre159 = -1;
                /*[28]*/
                dir = _imopVarPre159;
                /*[28]*/
                x1 = u1;
                /*[28]*/
                x2 = u2;
            }
        }
        /*[]*/
        /*[]*/
        if (dir == 1) {
        /*[]*/
            /*[]*/
            struct stUn_imopVarPre11 ( *x_imopVarPre92 )[64][64];
            /*[]*/
            struct stUn_imopVarPre11 ( *xout_imopVarPre93 )[64][64];
            /*[]*/
            int logd_imopVarPre94[3];
            /*[]*/
            int is;
            /*[]*/
            /*There was a namespace collision due to removal of this declaration.
            There was a namespace collision due to addition of this declaration.
            There was a namespace collision due to removal of this declaration.
            There was a namespace collision due to addition of this declaration.
            There was a namespace collision due to removal of this declaration.
            There was a namespace collision due to addition of this declaration.*/
            int *d;
            /*[]*/
            struct stUn_imopVarPre11 ( *x )[64][64];
            /*[]*/
            struct stUn_imopVarPre11 ( *xout )[64][64];
            /*[]*/
            int logd[3];
            /*[]*/
            int is_imopVarPre85;
            /*[]*/
            int *d_imopVarPre86;
            /*[]*/
            struct stUn_imopVarPre11 ( *x_imopVarPre87 )[64][64];
            /*[]*/
            struct stUn_imopVarPre11 ( *xout_imopVarPre88 )[64][64];
            /*[]*/
            int logd_imopVarPre89[3];
            /*[]*/
            int is_imopVarPre90;
            /*[]*/
            int *d_imopVarPre91;
            /*[29]*/
#pragma omp parallel default(shared) shared(is, is_imopVarPre85, is_imopVarPre90)
            {
            /*[29]*/
                /*[29]*/
                int ( *_imopVarPre225 );
                /*[29]*/
#pragma omp master
                {
                /*[29]*/
                    /*[29]*/
                    _imopVarPre225 = dims[0];
                    /*[29]*/
                    is = 1;
                    /*[29]*/
                    d = _imopVarPre225;
                    /*[29]*/
                    x = x1;
                    /*[29]*/
                    xout = x1;
                }
                /*[29]*/
                int ( *_imopVarPre227 );
                /*[29]*/
                int ( *_imopVarPre229 );
                /*[29]*/
                int i;
                /*[29]*/
                int j;
                /*[29]*/
                int k;
                /*[29]*/
                int jj;
                /*[29]*/
#pragma omp master
                {
                /*[29]*/
                    /*[29]*/
                    /*[29]*/
                    /*[29]*/
                    /*[29]*/
                    for (i = 0; i < 3; i++) {
                    /*[29]*/
                        /*[29]*/
                        int _imopVarPre243;
                        /*[29]*/
                        int _imopVarPre244;
                        /*[29]*/
                        _imopVarPre243 = d[i];
                        /*[29]*/
                        _imopVarPre244 = ilog2(_imopVarPre243);
                        /*[29]*/
                        /*[29]*/
                        logd[i] = _imopVarPre244;
                    }
                }
                /*[29]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[29]*/
#pragma omp barrier
                /*[30]*/
                dcomplex y0[64][18];
                /*[30]*/
                dcomplex y1[64][18];
                /*[30]*/
#pragma omp for nowait
                /*[30]*/
                /*[30]*/
                /*[30]*/
                for (k = 0; k < d[2]; k++) {
                /*[30]*/
                    /*[30]*/
                    /*[30]*/
                    /*[30]*/
                    /*[30]*/
                    for (jj = 0; jj <= d[1] - fftblock; jj += fftblock) {
                    /*[30]*/
                        /*[30]*/
                        /*[30]*/
                        /*[30]*/
                        /*[30]*/
                        for (j = 0; j < fftblock; j++) {
                        /*[30]*/
                            /*[30]*/
                            /*[30]*/
                            /*[30]*/
                            /*[30]*/
                            for (i = 0; i < d[0]; i++) {
                            /*[30]*/
                                /*[30]*/
                                y0[i][j].real = x[k][j + jj][i].real;
                                /*[30]*/
                                y0[i][j].imag = x[k][j + jj][i].imag;
                            }
                        }
                        /*[30]*/
                        int _imopVarPre247;
                        /*[30]*/
                        int _imopVarPre248;
                        /*[30]*/
                        _imopVarPre247 = d[0];
                        /*[30]*/
                        _imopVarPre248 = logd[0];
                        /*[30]*/
                        cfftz(is, _imopVarPre248, _imopVarPre247, y0, y1);
                        /*[30]*/
                        /*[30]*/
                        /*[30]*/
                        /*[30]*/
                        /*[30]*/
                        for (j = 0; j < fftblock; j++) {
                        /*[30]*/
                            /*[30]*/
                            /*[30]*/
                            /*[30]*/
                            /*[30]*/
                            for (i = 0; i < d[0]; i++) {
                            /*[30]*/
                                /*[30]*/
                                xout[k][j + jj][i].real = y0[i][j].real;
                                /*[30]*/
                                xout[k][j + jj][i].imag = y0[i][j].imag;
                            }
                        }
                    }
                }
                /*[30]*/
#pragma omp master
                {
                /*[30]*/
                    /*[30]*/
                    _imopVarPre227 = dims[1];
                    /*[30]*/
                    is_imopVarPre85 = 1;
                    /*[30]*/
                    d_imopVarPre86 = _imopVarPre227;
                    /*[30]*/
                    x_imopVarPre87 = x1;
                    /*[30]*/
                    xout_imopVarPre88 = x1;
                }
                {
                /*[30]*/
                    /*[30]*/
                    int i;
                    /*[30]*/
                    int j;
                    /*[30]*/
                    int k;
                    /*[30]*/
                    int ii;
                    /*[30]*/
#pragma omp master
                    {
                    /*[30]*/
                        /*[30]*/
                        /*[30]*/
                        /*[30]*/
                        /*[30]*/
                        for (i = 0; i < 3; i++) {
                        /*[30]*/
                            /*[30]*/
                            int _imopVarPre250;
                            /*[30]*/
                            int _imopVarPre251;
                            /*[30]*/
                            _imopVarPre250 = d_imopVarPre86[i];
                            /*[30]*/
                            _imopVarPre251 = ilog2(_imopVarPre250);
                            /*[30]*/
                            /*[30]*/
                            logd_imopVarPre89[i] = _imopVarPre251;
                        }
                    }
                    /*[30]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[30]*/
#pragma omp barrier
                    /*[31]*/
                    dcomplex y0[64][18];
                    /*[31]*/
                    dcomplex y1[64][18];
                    /*[31]*/
#pragma omp for nowait
                    /*[31]*/
                    /*[31]*/
                    /*[31]*/
                    for (k = 0; k < d_imopVarPre86[2]; k++) {
                    /*[31]*/
                        /*[31]*/
                        /*[31]*/
                        /*[31]*/
                        /*[31]*/
                        for (ii = 0; ii <= d_imopVarPre86[0] - fftblock; ii += fftblock) {
                        /*[31]*/
                            /*[31]*/
                            /*[31]*/
                            /*[31]*/
                            /*[31]*/
                            for (j = 0; j < d_imopVarPre86[1]; j++) {
                            /*[31]*/
                                /*[31]*/
                                /*[31]*/
                                /*[31]*/
                                /*[31]*/
                                for (i = 0; i < fftblock; i++) {
                                /*[31]*/
                                    /*[31]*/
                                    y0[j][i].real = x_imopVarPre87[k][j][i + ii].real;
                                    /*[31]*/
                                    y0[j][i].imag = x_imopVarPre87[k][j][i + ii].imag;
                                }
                            }
                            /*[31]*/
                            int _imopVarPre254;
                            /*[31]*/
                            int _imopVarPre255;
                            /*[31]*/
                            _imopVarPre254 = d_imopVarPre86[1];
                            /*[31]*/
                            _imopVarPre255 = logd_imopVarPre89[1];
                            /*[31]*/
                            cfftz(is_imopVarPre85, _imopVarPre255, _imopVarPre254, y0, y1);
                            /*[31]*/
                            /*[31]*/
                            /*[31]*/
                            /*[31]*/
                            /*[31]*/
                            for (j = 0; j < d_imopVarPre86[1]; j++) {
                            /*[31]*/
                                /*[31]*/
                                /*[31]*/
                                /*[31]*/
                                /*[31]*/
                                for (i = 0; i < fftblock; i++) {
                                /*[31]*/
                                    /*[31]*/
                                    xout_imopVarPre88[k][j][i + ii].real = y0[j][i].real;
                                    /*[31]*/
                                    xout_imopVarPre88[k][j][i + ii].imag = y0[j][i].imag;
                                }
                            }
                        }
                    }
                }
                /*[31]*/
#pragma omp master
                {
                /*[31]*/
                    /*[31]*/
                    _imopVarPre229 = dims[2];
                    /*[31]*/
                    is_imopVarPre90 = 1;
                    /*[31]*/
                    d_imopVarPre91 = _imopVarPre229;
                    /*[31]*/
                    x_imopVarPre92 = x1;
                    /*[31]*/
                    xout_imopVarPre93 = x2;
                }
                {
                /*[31]*/
                    /*[31]*/
                    int i;
                    /*[31]*/
                    int j;
                    /*[31]*/
                    int k;
                    /*[31]*/
                    int ii;
                    /*[31]*/
#pragma omp master
                    {
                    /*[31]*/
                        /*[31]*/
                        /*[31]*/
                        /*[31]*/
                        /*[31]*/
                        for (i = 0; i < 3; i++) {
                        /*[31]*/
                            /*[31]*/
                            int _imopVarPre257;
                            /*[31]*/
                            int _imopVarPre258;
                            /*[31]*/
                            _imopVarPre257 = d_imopVarPre91[i];
                            /*[31]*/
                            _imopVarPre258 = ilog2(_imopVarPre257);
                            /*[31]*/
                            /*[31]*/
                            logd_imopVarPre94[i] = _imopVarPre258;
                        }
                    }
                    /*[31]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[31]*/
#pragma omp barrier
                    /*[32]*/
                    dcomplex y0[64][18];
                    /*[32]*/
                    dcomplex y1[64][18];
                    /*[32]*/
#pragma omp for nowait
                    /*[32]*/
                    /*[32]*/
                    /*[32]*/
                    for (j = 0; j < d_imopVarPre91[1]; j++) {
                    /*[32]*/
                        /*[32]*/
                        /*[32]*/
                        /*[32]*/
                        /*[32]*/
                        for (ii = 0; ii <= d_imopVarPre91[0] - fftblock; ii += fftblock) {
                        /*[32]*/
                            /*[32]*/
                            /*[32]*/
                            /*[32]*/
                            /*[32]*/
                            for (k = 0; k < d_imopVarPre91[2]; k++) {
                            /*[32]*/
                                /*[32]*/
                                /*[32]*/
                                /*[32]*/
                                /*[32]*/
                                for (i = 0; i < fftblock; i++) {
                                /*[32]*/
                                    /*[32]*/
                                    y0[k][i].real = x_imopVarPre92[k][j][i + ii].real;
                                    /*[32]*/
                                    y0[k][i].imag = x_imopVarPre92[k][j][i + ii].imag;
                                }
                            }
                            /*[32]*/
                            int _imopVarPre261;
                            /*[32]*/
                            int _imopVarPre262;
                            /*[32]*/
                            _imopVarPre261 = d_imopVarPre91[2];
                            /*[32]*/
                            _imopVarPre262 = logd_imopVarPre94[2];
                            /*[32]*/
                            cfftz(is_imopVarPre90, _imopVarPre262, _imopVarPre261, y0, y1);
                            /*[32]*/
                            /*[32]*/
                            /*[32]*/
                            /*[32]*/
                            /*[32]*/
                            for (k = 0; k < d_imopVarPre91[2]; k++) {
                            /*[32]*/
                                /*[32]*/
                                /*[32]*/
                                /*[32]*/
                                /*[32]*/
                                for (i = 0; i < fftblock; i++) {
                                /*[32]*/
                                    /*[32]*/
                                    xout_imopVarPre93[k][j][i + ii].real = y0[k][i].real;
                                    /*[32]*/
                                    xout_imopVarPre93[k][j][i + ii].imag = y0[k][i].imag;
                                }
                            }
                        }
                    }
                }
            }
        } else {
        /*[]*/
            /*[]*/
            struct stUn_imopVarPre11 ( *xout_imopVarPre83 )[64][64];
            /*[]*/
            int logd_imopVarPre84[3];
            /*[]*/
            int is;
            /*[]*/
            /*There was a namespace collision due to removal of this declaration.
            There was a namespace collision due to addition of this declaration.
            There was a namespace collision due to removal of this declaration.
            There was a namespace collision due to addition of this declaration.*/
            int *d;
            /*[]*/
            struct stUn_imopVarPre11 ( *x )[64][64];
            /*[]*/
            struct stUn_imopVarPre11 ( *xout )[64][64];
            /*[]*/
            int logd[3];
            /*[]*/
            int is_imopVarPre75;
            /*[]*/
            int *d_imopVarPre76;
            /*[]*/
            struct stUn_imopVarPre11 ( *x_imopVarPre77 )[64][64];
            /*[]*/
            struct stUn_imopVarPre11 ( *xout_imopVarPre78 )[64][64];
            /*[]*/
            int logd_imopVarPre79[3];
            /*[]*/
            int is_imopVarPre80;
            /*[]*/
            int *d_imopVarPre81;
            /*[]*/
            struct stUn_imopVarPre11 ( *x_imopVarPre82 )[64][64];
            /*[33]*/
#pragma omp parallel default(shared) shared(is, is_imopVarPre75, is_imopVarPre80)
            {
            /*[33]*/
                /*[33]*/
                int ( *_imopVarPre232 );
                /*[33]*/
                int _imopVarPre233;
                /*[33]*/
#pragma omp master
                {
                /*[33]*/
                    /*[33]*/
                    _imopVarPre232 = dims[2];
                    /*[33]*/
                    _imopVarPre233 = -1;
                    /*[33]*/
                    is = _imopVarPre233;
                    /*[33]*/
                    d = _imopVarPre232;
                    /*[33]*/
                    x = x1;
                    /*[33]*/
                    xout = x1;
                }
                /*[33]*/
                int ( *_imopVarPre236 );
                /*[33]*/
                int _imopVarPre237;
                /*[33]*/
                int ( *_imopVarPre240 );
                /*[33]*/
                int _imopVarPre241;
                /*[33]*/
                int i;
                /*[33]*/
                int j;
                /*[33]*/
                int k;
                /*[33]*/
                int ii;
                /*[33]*/
#pragma omp master
                {
                /*[33]*/
                    /*[33]*/
                    /*[33]*/
                    /*[33]*/
                    /*[33]*/
                    for (i = 0; i < 3; i++) {
                    /*[33]*/
                        /*[33]*/
                        int _imopVarPre257;
                        /*[33]*/
                        int _imopVarPre258;
                        /*[33]*/
                        _imopVarPre257 = d[i];
                        /*[33]*/
                        _imopVarPre258 = ilog2(_imopVarPre257);
                        /*[33]*/
                        /*[33]*/
                        logd[i] = _imopVarPre258;
                    }
                }
                /*[33]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[33]*/
#pragma omp barrier
                /*[34]*/
                dcomplex y0[64][18];
                /*[34]*/
                dcomplex y1[64][18];
                /*[34]*/
#pragma omp for nowait
                /*[34]*/
                /*[34]*/
                /*[34]*/
                for (j = 0; j < d[1]; j++) {
                /*[34]*/
                    /*[34]*/
                    /*[34]*/
                    /*[34]*/
                    /*[34]*/
                    for (ii = 0; ii <= d[0] - fftblock; ii += fftblock) {
                    /*[34]*/
                        /*[34]*/
                        /*[34]*/
                        /*[34]*/
                        /*[34]*/
                        for (k = 0; k < d[2]; k++) {
                        /*[34]*/
                            /*[34]*/
                            /*[34]*/
                            /*[34]*/
                            /*[34]*/
                            for (i = 0; i < fftblock; i++) {
                            /*[34]*/
                                /*[34]*/
                                y0[k][i].real = x[k][j][i + ii].real;
                                /*[34]*/
                                y0[k][i].imag = x[k][j][i + ii].imag;
                            }
                        }
                        /*[34]*/
                        int _imopVarPre261;
                        /*[34]*/
                        int _imopVarPre262;
                        /*[34]*/
                        _imopVarPre261 = d[2];
                        /*[34]*/
                        _imopVarPre262 = logd[2];
                        /*[34]*/
                        cfftz(is, _imopVarPre262, _imopVarPre261, y0, y1);
                        /*[34]*/
                        /*[34]*/
                        /*[34]*/
                        /*[34]*/
                        /*[34]*/
                        for (k = 0; k < d[2]; k++) {
                        /*[34]*/
                            /*[34]*/
                            /*[34]*/
                            /*[34]*/
                            /*[34]*/
                            for (i = 0; i < fftblock; i++) {
                            /*[34]*/
                                /*[34]*/
                                xout[k][j][i + ii].real = y0[k][i].real;
                                /*[34]*/
                                xout[k][j][i + ii].imag = y0[k][i].imag;
                            }
                        }
                    }
                }
                /*[34]*/
#pragma omp master
                {
                /*[34]*/
                    /*[34]*/
                    _imopVarPre236 = dims[1];
                    /*[34]*/
                    _imopVarPre237 = -1;
                    /*[34]*/
                    is_imopVarPre75 = _imopVarPre237;
                    /*[34]*/
                    d_imopVarPre76 = _imopVarPre236;
                    /*[34]*/
                    x_imopVarPre77 = x1;
                    /*[34]*/
                    xout_imopVarPre78 = x1;
                }
                {
                /*[34]*/
                    /*[34]*/
                    int i;
                    /*[34]*/
                    int j;
                    /*[34]*/
                    int k;
                    /*[34]*/
                    int ii;
                    /*[34]*/
#pragma omp master
                    {
                    /*[34]*/
                        /*[34]*/
                        /*[34]*/
                        /*[34]*/
                        /*[34]*/
                        for (i = 0; i < 3; i++) {
                        /*[34]*/
                            /*[34]*/
                            int _imopVarPre250;
                            /*[34]*/
                            int _imopVarPre251;
                            /*[34]*/
                            _imopVarPre250 = d_imopVarPre76[i];
                            /*[34]*/
                            _imopVarPre251 = ilog2(_imopVarPre250);
                            /*[34]*/
                            /*[34]*/
                            logd_imopVarPre79[i] = _imopVarPre251;
                        }
                    }
                    /*[34]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[34]*/
#pragma omp barrier
                    /*[35]*/
                    dcomplex y0[64][18];
                    /*[35]*/
                    dcomplex y1[64][18];
                    /*[35]*/
#pragma omp for nowait
                    /*[35]*/
                    /*[35]*/
                    /*[35]*/
                    for (k = 0; k < d_imopVarPre76[2]; k++) {
                    /*[35]*/
                        /*[35]*/
                        /*[35]*/
                        /*[35]*/
                        /*[35]*/
                        for (ii = 0; ii <= d_imopVarPre76[0] - fftblock; ii += fftblock) {
                        /*[35]*/
                            /*[35]*/
                            /*[35]*/
                            /*[35]*/
                            /*[35]*/
                            for (j = 0; j < d_imopVarPre76[1]; j++) {
                            /*[35]*/
                                /*[35]*/
                                /*[35]*/
                                /*[35]*/
                                /*[35]*/
                                for (i = 0; i < fftblock; i++) {
                                /*[35]*/
                                    /*[35]*/
                                    y0[j][i].real = x_imopVarPre77[k][j][i + ii].real;
                                    /*[35]*/
                                    y0[j][i].imag = x_imopVarPre77[k][j][i + ii].imag;
                                }
                            }
                            /*[35]*/
                            int _imopVarPre254;
                            /*[35]*/
                            int _imopVarPre255;
                            /*[35]*/
                            _imopVarPre254 = d_imopVarPre76[1];
                            /*[35]*/
                            _imopVarPre255 = logd_imopVarPre79[1];
                            /*[35]*/
                            cfftz(is_imopVarPre75, _imopVarPre255, _imopVarPre254, y0, y1);
                            /*[35]*/
                            /*[35]*/
                            /*[35]*/
                            /*[35]*/
                            /*[35]*/
                            for (j = 0; j < d_imopVarPre76[1]; j++) {
                            /*[35]*/
                                /*[35]*/
                                /*[35]*/
                                /*[35]*/
                                /*[35]*/
                                for (i = 0; i < fftblock; i++) {
                                /*[35]*/
                                    /*[35]*/
                                    xout_imopVarPre78[k][j][i + ii].real = y0[j][i].real;
                                    /*[35]*/
                                    xout_imopVarPre78[k][j][i + ii].imag = y0[j][i].imag;
                                }
                            }
                        }
                    }
                }
                /*[35]*/
#pragma omp master
                {
                /*[35]*/
                    /*[35]*/
                    _imopVarPre240 = dims[0];
                    /*[35]*/
                    _imopVarPre241 = -1;
                    /*[35]*/
                    is_imopVarPre80 = _imopVarPre241;
                    /*[35]*/
                    d_imopVarPre81 = _imopVarPre240;
                    /*[35]*/
                    x_imopVarPre82 = x1;
                    /*[35]*/
                    xout_imopVarPre83 = x2;
                }
                {
                /*[35]*/
                    /*[35]*/
                    int i;
                    /*[35]*/
                    int j;
                    /*[35]*/
                    int k;
                    /*[35]*/
                    int jj;
                    /*[35]*/
#pragma omp master
                    {
                    /*[35]*/
                        /*[35]*/
                        /*[35]*/
                        /*[35]*/
                        /*[35]*/
                        for (i = 0; i < 3; i++) {
                        /*[35]*/
                            /*[35]*/
                            int _imopVarPre243;
                            /*[35]*/
                            int _imopVarPre244;
                            /*[35]*/
                            _imopVarPre243 = d_imopVarPre81[i];
                            /*[35]*/
                            _imopVarPre244 = ilog2(_imopVarPre243);
                            /*[35]*/
                            /*[35]*/
                            logd_imopVarPre84[i] = _imopVarPre244;
                        }
                    }
                    /*[35]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[35]*/
#pragma omp barrier
                    /*[36]*/
                    dcomplex y0[64][18];
                    /*[36]*/
                    dcomplex y1[64][18];
                    /*[36]*/
#pragma omp for nowait
                    /*[36]*/
                    /*[36]*/
                    /*[36]*/
                    for (k = 0; k < d_imopVarPre81[2]; k++) {
                    /*[36]*/
                        /*[36]*/
                        /*[36]*/
                        /*[36]*/
                        /*[36]*/
                        for (jj = 0; jj <= d_imopVarPre81[1] - fftblock; jj += fftblock) {
                        /*[36]*/
                            /*[36]*/
                            /*[36]*/
                            /*[36]*/
                            /*[36]*/
                            for (j = 0; j < fftblock; j++) {
                            /*[36]*/
                                /*[36]*/
                                /*[36]*/
                                /*[36]*/
                                /*[36]*/
                                for (i = 0; i < d_imopVarPre81[0]; i++) {
                                /*[36]*/
                                    /*[36]*/
                                    y0[i][j].real = x_imopVarPre82[k][j + jj][i].real;
                                    /*[36]*/
                                    y0[i][j].imag = x_imopVarPre82[k][j + jj][i].imag;
                                }
                            }
                            /*[36]*/
                            int _imopVarPre247;
                            /*[36]*/
                            int _imopVarPre248;
                            /*[36]*/
                            _imopVarPre247 = d_imopVarPre81[0];
                            /*[36]*/
                            _imopVarPre248 = logd_imopVarPre84[0];
                            /*[36]*/
                            cfftz(is_imopVarPre80, _imopVarPre248, _imopVarPre247, y0, y1);
                            /*[36]*/
                            /*[36]*/
                            /*[36]*/
                            /*[36]*/
                            /*[36]*/
                            for (j = 0; j < fftblock; j++) {
                            /*[36]*/
                                /*[36]*/
                                /*[36]*/
                                /*[36]*/
                                /*[36]*/
                                for (i = 0; i < d_imopVarPre81[0]; i++) {
                                /*[36]*/
                                    /*[36]*/
                                    xout_imopVarPre83[k][j + jj][i].real = y0[i][j].real;
                                    /*[36]*/
                                    xout_imopVarPre83[k][j + jj][i].imag = y0[i][j].imag;
                                }
                            }
                        }
                    }
                }
            }
        }
        /*[37]*/
#pragma omp parallel
        {
        /*[37]*/
            /*[37]*/
#pragma omp master
            {
            /*[37]*/
                /*[37]*/
                /*[37]*/
                if (0 == 1) {
                /*[37]*/
                    /*[37]*/
                    timer_stop(2);
                    /*[37]*/
                }
                /*[37]*/
                /*[37]*/
                if (0 == 1) {
                /*[37]*/
                    /*[37]*/
                    timer_start(4);
                    /*[37]*/
                }
                /*[37]*/
                _imopVarPre161 = dims[0];
            }
            /*[37]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[37]*/
#pragma omp barrier
            /*[38]*/
            int i_imopVarPre96;
            /*[38]*/
            struct stUn_imopVarPre11 ( *u1_imopVarPre97 )[64][64];
            /*[38]*/
            int *d_imopVarPre98;
            /*[38]*/
            i_imopVarPre96 = iter;
            /*[38]*/
            u1_imopVarPre97 = u2;
            /*[38]*/
            d_imopVarPre98 = _imopVarPre161;
            /*[38]*/
            int j_imopVarPre99;
            /*[38]*/
            int q;
            /*[38]*/
            int r;
            /*[38]*/
            int s;
            /*[38]*/
            dcomplex chk;
            /*[38]*/
            chk.real = 0.0;
            /*[38]*/
            chk.imag = 0.0;
            /*[38]*/
#pragma omp for nowait
            /*[38]*/
            /*[38]*/
            /*[38]*/
            for (j_imopVarPre99 = 1; j_imopVarPre99 <= 1024; j_imopVarPre99++) {
            /*[38]*/
                /*[38]*/
                q = j_imopVarPre99 % 64 + 1;
                /*[38]*/
                int _imopVarPre272;
                /*[38]*/
                _imopVarPre272 = q >= xstart[0];
                /*[38]*/
                /*[38]*/
                if (_imopVarPre272) {
                /*[38]*/
                    /*[38]*/
                    _imopVarPre272 = q <= xend[0];
                }
                /*[38]*/
                /*[38]*/
                if (_imopVarPre272) {
                /*[38]*/
                    /*[38]*/
                    r = (3 * j_imopVarPre99) % 64 + 1;
                    /*[38]*/
                    int _imopVarPre274;
                    /*[38]*/
                    _imopVarPre274 = r >= ystart[0];
                    /*[38]*/
                    /*[38]*/
                    if (_imopVarPre274) {
                    /*[38]*/
                        /*[38]*/
                        _imopVarPre274 = r <= yend[0];
                    }
                    /*[38]*/
                    /*[38]*/
                    if (_imopVarPre274) {
                    /*[38]*/
                        /*[38]*/
                        s = (5 * j_imopVarPre99) % 64 + 1;
                        /*[38]*/
                        int _imopVarPre276;
                        /*[38]*/
                        _imopVarPre276 = s >= zstart[0];
                        /*[38]*/
                        /*[38]*/
                        if (_imopVarPre276) {
                        /*[38]*/
                            /*[38]*/
                            _imopVarPre276 = s <= zend[0];
                        }
                        /*[38]*/
                        /*[38]*/
                        if (_imopVarPre276) {
                        /*[38]*/
                            /*[38]*/
                            chk.real = chk.real + u1_imopVarPre97[s - zstart[0]][r - ystart[0]][q - xstart[0]].real;
                            /*[38]*/
                            (chk.imag = chk.imag + u1_imopVarPre97[s - zstart[0]][r - ystart[0]][q - xstart[0]].imag);
                        }
                    }
                }
            }
            /*[38]*/
            // #pragma omp dummyFlush CRITICAL_START
            /*[38]*/
#pragma omp critical
            {
            /*[38]*/
                /*[38]*/
                sums[i_imopVarPre96].real += chk.real;
                /*[38]*/
                sums[i_imopVarPre96].imag += chk.imag;
            }
            /*[38]*/
            // #pragma omp dummyFlush CRITICAL_END
            /*[38]*/
#pragma omp single nowait
            {
            /*[38]*/
                /*[38]*/
                sums[i_imopVarPre96].real = sums[i_imopVarPre96].real / (double) 262144;
                /*[38]*/
                sums[i_imopVarPre96].imag = sums[i_imopVarPre96].imag / (double) 262144;
                /*[38]*/
                double _imopVarPre279;
                /*[38]*/
                double _imopVarPre280;
                /*[38]*/
                _imopVarPre279 = sums[i_imopVarPre96].imag;
                /*[38]*/
                _imopVarPre280 = sums[i_imopVarPre96].real;
                /*[38]*/
                printf("T = %5d     Checksum = %22.12e %22.12e\n", i_imopVarPre96, _imopVarPre280, _imopVarPre279);
                /*[38]*/
            }
            /*[38]*/
#pragma omp master
            {
            /*[38]*/
                /*[38]*/
                /*[38]*/
                if (0 == 1) {
                /*[38]*/
                    /*[38]*/
                    timer_stop(4);
                    /*[38]*/
                }
            }
        }
    }
    /*[]*/
    char *_imopVarPre164;
    /*[]*/
    int *_imopVarPre165;
    /*[]*/
    _imopVarPre164 = &class;
    /*[]*/
    _imopVarPre165 = &verified;
    /*[]*/
    verify(64, 64, 64, niter, _imopVarPre165, _imopVarPre164);
    /*[]*/
    /*[39]*/
#pragma omp parallel
    {
    /*[39]*/
    }
    /*[]*/
    timer_stop(0);
    /*[]*/
    /*[]*/
    total_time = timer_read(0);
    /*[]*/
    /*[]*/
    /*[]*/
    if (total_time != 0.0) {
    /*[]*/
        /*[]*/
        double _imopVarPre184;
        /*[]*/
        double _imopVarPre185;
        /*[]*/
        double _imopVarPre188;
        /*[]*/
        double _imopVarPre189;
        /*[]*/
        _imopVarPre184 = (double) 262144;
        /*[]*/
        _imopVarPre185 = log(_imopVarPre184);
        /*[]*/
        /*[]*/
        _imopVarPre188 = (double) 262144;
        /*[]*/
        _imopVarPre189 = log(_imopVarPre188);
        /*[]*/
        /*[]*/
        mflops = 1.0e-6 * (double) 262144 * (14.8157 + 7.19641 * _imopVarPre185 + (5.23518 + 7.21113 * _imopVarPre189) * niter) / total_time;
    } else {
    /*[]*/
        /*[]*/
        mflops = 0.0;
    }
    /*[]*/
    c_print_results("FT", class, 64, 64, 64, niter, nthreads, total_time, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
    /*[]*/
    /*[]*/
    /*[]*/
    if (0 == 1) {
    /*[]*/
        /*[]*/
        print_timers();
        /*[]*/
    }
}
/*[28]*/
/*[28]*/
/*[28]*/
/*[28]*/
/*[28]*/
/*[28]*/
static void evolve(dcomplex u0[64][64][64], dcomplex u1[64][64][64] , int t , int indexmap[64][64][64] , int d[3]) {
/*[28]*/
    /*[28]*/
    int i;
    /*[28]*/
    int j;
    /*[28]*/
    int k;
    /*[28]*/
#pragma omp for nowait
    /*[28]*/
    /*[28]*/
    /*[28]*/
    for (k = 0; k < d[2]; k++) {
    /*[28]*/
        /*[28]*/
        /*[28]*/
        /*[28]*/
        /*[28]*/
        for (j = 0; j < d[1]; j++) {
        /*[28]*/
            /*[28]*/
            /*[28]*/
            /*[28]*/
            /*[28]*/
            for (i = 0; i < d[0]; i++) {
            /*[28]*/
                /*[28]*/
                u1[k][j][i].real = u0[k][j][i].real * ex[t * indexmap[k][j][i]];
                /*[28]*/
                (u1[k][j][i].imag = u0[k][j][i].imag * ex[t * indexmap[k][j][i]]);
            }
        }
    }
}
/*[]*/
/*[]*/
/*[]*/
static void compute_initial_conditions(dcomplex u0[64][64][64], int d[3]) {
/*[]*/
    /*[]*/
    int k;
    /*[]*/
    double x0;
    /*[]*/
    double start;
    /*[]*/
    double an;
    /*[]*/
    double dummy;
    /*[]*/
    static double tmp[64 * 2 * 64 + 1];
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int t;
    /*[]*/
    start = 314159265.0;
    /*[]*/
    double *_imopVarPre192;
    /*[]*/
    int _imopVarPre193;
    /*[]*/
    _imopVarPre192 = &an;
    /*[]*/
    _imopVarPre193 = (zstart[0] - 1) * 2 * 64 * 64 + (ystart[0] - 1) * 2 * 64;
    /*[]*/
    ipow46(1220703125.0, _imopVarPre193, _imopVarPre192);
    /*[]*/
    /*[]*/
    double *_imopVarPre195;
    /*[]*/
    double _imopVarPre196;
    /*[]*/
    _imopVarPre195 = &start;
    /*[]*/
    _imopVarPre196 = randlc(_imopVarPre195, an);
    /*[]*/
    /*[]*/
    dummy = _imopVarPre196;
    /*[]*/
    double *_imopVarPre199;
    /*[]*/
    int _imopVarPre200;
    /*[]*/
    _imopVarPre199 = &an;
    /*[]*/
    _imopVarPre200 = 2 * 64 * 64;
    /*[]*/
    ipow46(1220703125.0, _imopVarPre200, _imopVarPre199);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (k = 0; k < dims[0][2]; k++) {
    /*[]*/
        /*[]*/
        x0 = start;
        /*[]*/
        double *_imopVarPre203;
        /*[]*/
        int _imopVarPre204;
        /*[]*/
        _imopVarPre203 = &x0;
        /*[]*/
        _imopVarPre204 = 2 * 64 * dims[0][1];
        /*[]*/
        vranlc(_imopVarPre204, _imopVarPre203, 1220703125.0, tmp);
        /*[]*/
        /*[]*/
        t = 1;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < dims[0][1]; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (i = 0; i < 64; i++) {
            /*[]*/
                /*[]*/
                u0[k][j][i].real = tmp[t++];
                /*[]*/
                u0[k][j][i].imag = tmp[t++];
            }
        }
        /*[]*/
        /*[]*/
        if (k != dims[0][2]) {
        /*[]*/
            /*[]*/
            double *_imopVarPre206;
            /*[]*/
            double _imopVarPre207;
            /*[]*/
            _imopVarPre206 = &start;
            /*[]*/
            _imopVarPre207 = randlc(_imopVarPre206, an);
            /*[]*/
            /*[]*/
            dummy = _imopVarPre207;
        }
    }
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void ipow46(double a, int exponent , double *result) {
/*[]*/
    /*[]*/
    double dummy;
    /*[]*/
    double q;
    /*[]*/
    double r;
    /*[]*/
    int n;
    /*[]*/
    int n2;
    /*[]*/
    *result = 1;
    /*[]*/
    /*[]*/
    if (exponent == 0) {
    /*[]*/
        /*[]*/
        return;
    }
    /*[]*/
    q = a;
    /*[]*/
    r = 1;
    /*[]*/
    n = exponent;
    /*[]*/
    /*[]*/
    while (n > 1) {
    /*[]*/
        /*[]*/
        n2 = n / 2;
        /*[]*/
        /*[]*/
        if (n2 * 2 == n) {
        /*[]*/
            /*[]*/
            double *_imopVarPre209;
            /*[]*/
            double _imopVarPre210;
            /*[]*/
            _imopVarPre209 = &q;
            /*[]*/
            _imopVarPre210 = randlc(_imopVarPre209, q);
            /*[]*/
            /*[]*/
            dummy = _imopVarPre210;
            /*[]*/
            n = n2;
        } else {
        /*[]*/
            /*[]*/
            double *_imopVarPre212;
            /*[]*/
            double _imopVarPre213;
            /*[]*/
            _imopVarPre212 = &r;
            /*[]*/
            _imopVarPre213 = randlc(_imopVarPre212, q);
            /*[]*/
            /*[]*/
            dummy = _imopVarPre213;
            /*[]*/
            n = n - 1;
        }
    }
    /*[]*/
    double *_imopVarPre215;
    /*[]*/
    double _imopVarPre216;
    /*[]*/
    _imopVarPre215 = &r;
    /*[]*/
    _imopVarPre216 = randlc(_imopVarPre215, q);
    /*[]*/
    /*[]*/
    dummy = _imopVarPre216;
    /*[]*/
    *result = r;
}
/*[]*/
/*[]*/
static void setup(void ) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - FT Benchmark\n\n");
    /*[]*/
    /*[]*/
    niter = 6;
    /*[]*/
    printf(" Size                : %3dx%3dx%3d\n", 64, 64, 64);
    /*[]*/
    /*[]*/
    printf(" Iterations          :     %7d\n", niter);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 3; i++) {
    /*[]*/
        /*[]*/
        dims[i][0] = 64;
        /*[]*/
        dims[i][1] = 64;
        /*[]*/
        dims[i][2] = 64;
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 3; i++) {
    /*[]*/
        /*[]*/
        xstart[i] = 1;
        /*[]*/
        xend[i] = 64;
        /*[]*/
        ystart[i] = 1;
        /*[]*/
        yend[i] = 64;
        /*[]*/
        zstart[i] = 1;
        /*[]*/
        zend[i] = 64;
    }
    /*[]*/
    fftblock = 16;
    /*[]*/
    fftblockpad = 18;
    /*[]*/
    /*[]*/
    if (fftblock != 16) {
    /*[]*/
        /*[]*/
        fftblockpad = fftblock + 3;
    }
}
/*[]*/
/*[]*/
/*[]*/
static void compute_indexmap(int indexmap[64][64][64], int d[3]) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    int ii;
    /*[]*/
    int ii2;
    /*[]*/
    int jj;
    /*[]*/
    int ij2;
    /*[]*/
    int kk;
    /*[]*/
    double ap;
    /*[40]*/
#pragma omp parallel default(shared) private(i, j, k, ii, ii2, jj, ij2, kk)
    {
    /*[40]*/
        /*[40]*/
#pragma omp for nowait
        /*[40]*/
        /*[40]*/
        /*[40]*/
        for (i = 0; i < dims[2][0]; i++) {
        /*[40]*/
            /*[40]*/
            ii = (i + 1 + xstart[2] - 2 + 64 / 2) % 64 - 64 / 2;
            /*[40]*/
            ii2 = ii * ii;
            /*[40]*/
            /*[40]*/
            /*[40]*/
            /*[40]*/
            for (j = 0; j < dims[2][1]; j++) {
            /*[40]*/
                /*[40]*/
                jj = (j + 1 + ystart[2] - 2 + 64 / 2) % 64 - 64 / 2;
                /*[40]*/
                ij2 = jj * jj + ii2;
                /*[40]*/
                /*[40]*/
                /*[40]*/
                /*[40]*/
                for (k = 0; k < dims[2][2]; k++) {
                /*[40]*/
                    /*[40]*/
                    kk = (k + 1 + zstart[2] - 2 + 64 / 2) % 64 - 64 / 2;
                    /*[40]*/
                    indexmap[k][j][i] = kk * kk + ij2;
                }
            }
        }
    }
    /*[]*/
    ap = -4.0 * 1.0e-6 * 3.141592653589793238 * 3.141592653589793238;
    /*[]*/
    ex[0] = 1.0;
    /*[]*/
    double _imopVarPre217;
    /*[]*/
    _imopVarPre217 = exp(ap);
    /*[]*/
    /*[]*/
    ex[1] = _imopVarPre217;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 2; i <= (6 * (64 * 64 / 4 + 64 * 64 / 4 + 64 * 64 / 4)); i++) {
    /*[]*/
        /*[]*/
        ex[i] = ex[i - 1] * ex[1];
    }
}
/*[]*/
/*[]*/
static void print_timers(void ) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    char *tstrings[] = {"          total ", "          setup " , "            fft " , "         evolve " , "       checksum " , "         fftlow " , "        fftcopy "};
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 7; i++) {
    /*[]*/
        /*[]*/
        double _imopVarPre219;
        /*[]*/
        _imopVarPre219 = timer_read(i);
        /*[]*/
        /*[]*/
        /*[]*/
        if (_imopVarPre219 != 0.0) {
        /*[]*/
            /*[]*/
            double _imopVarPre222;
            /*[]*/
            char *_imopVarPre223;
            /*[]*/
            _imopVarPre222 = timer_read(i);
            /*[]*/
            /*[]*/
            _imopVarPre223 = tstrings[i];
            /*[]*/
            printf("timer %2d(%16s( :%10.6f\n", i, _imopVarPre223, _imopVarPre222);
            /*[]*/
        }
    }
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void fft(int dir, dcomplex x1[64][64][64] , dcomplex x2[64][64][64]) {
/*[]*/
    /*[]*/
    dcomplex y0[64][18];
    /*[]*/
    dcomplex y1[64][18];
    /*[]*/
    /*[]*/
    if (dir == 1) {
    /*[]*/
        /*[]*/
        int ( *_imopVarPre225 );
        /*[]*/
        _imopVarPre225 = dims[0];
        /*[]*/
        int is;
        /*[]*/
        int *d;
        /*[]*/
        struct stUn_imopVarPre11 ( *x )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout )[64][64];
        /*[]*/
        is = 1;
        /*[]*/
        d = _imopVarPre225;
        /*[]*/
        x = x1;
        /*[]*/
        xout = x1;
        /*[]*/
        int logd[3];
        /*[41]*/
#pragma omp parallel default(shared) shared(is)
        {
        /*[41]*/
            /*[41]*/
            int i;
            /*[41]*/
            int j;
            /*[41]*/
            int k;
            /*[41]*/
            int jj;
            /*[41]*/
#pragma omp master
            {
            /*[41]*/
                /*[41]*/
                /*[41]*/
                /*[41]*/
                /*[41]*/
                for (i = 0; i < 3; i++) {
                /*[41]*/
                    /*[41]*/
                    int _imopVarPre243;
                    /*[41]*/
                    int _imopVarPre244;
                    /*[41]*/
                    _imopVarPre243 = d[i];
                    /*[41]*/
                    _imopVarPre244 = ilog2(_imopVarPre243);
                    /*[41]*/
                    /*[41]*/
                    logd[i] = _imopVarPre244;
                }
            }
            /*[41]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[41]*/
#pragma omp barrier
            /*[42]*/
            dcomplex y0[64][18];
            /*[42]*/
            dcomplex y1[64][18];
            /*[42]*/
#pragma omp for nowait
            /*[42]*/
            /*[42]*/
            /*[42]*/
            for (k = 0; k < d[2]; k++) {
            /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                /*[42]*/
                for (jj = 0; jj <= d[1] - fftblock; jj += fftblock) {
                /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    for (j = 0; j < fftblock; j++) {
                    /*[42]*/
                        /*[42]*/
                        /*[42]*/
                        /*[42]*/
                        /*[42]*/
                        for (i = 0; i < d[0]; i++) {
                        /*[42]*/
                            /*[42]*/
                            y0[i][j].real = x[k][j + jj][i].real;
                            /*[42]*/
                            y0[i][j].imag = x[k][j + jj][i].imag;
                        }
                    }
                    /*[42]*/
                    int _imopVarPre247;
                    /*[42]*/
                    int _imopVarPre248;
                    /*[42]*/
                    _imopVarPre247 = d[0];
                    /*[42]*/
                    _imopVarPre248 = logd[0];
                    /*[42]*/
                    cfftz(is, _imopVarPre248, _imopVarPre247, y0, y1);
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    /*[42]*/
                    for (j = 0; j < fftblock; j++) {
                    /*[42]*/
                        /*[42]*/
                        /*[42]*/
                        /*[42]*/
                        /*[42]*/
                        for (i = 0; i < d[0]; i++) {
                        /*[42]*/
                            /*[42]*/
                            xout[k][j + jj][i].real = y0[i][j].real;
                            /*[42]*/
                            xout[k][j + jj][i].imag = y0[i][j].imag;
                        }
                    }
                }
            }
        }
        /*[]*/
        int ( *_imopVarPre227 );
        /*[]*/
        _imopVarPre227 = dims[1];
        /*[]*/
        int is_imopVarPre85;
        /*[]*/
        int *d_imopVarPre86;
        /*[]*/
        struct stUn_imopVarPre11 ( *x_imopVarPre87 )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout_imopVarPre88 )[64][64];
        /*[]*/
        is_imopVarPre85 = 1;
        /*[]*/
        d_imopVarPre86 = _imopVarPre227;
        /*[]*/
        x_imopVarPre87 = x1;
        /*[]*/
        xout_imopVarPre88 = x1;
        /*[]*/
        int logd_imopVarPre89[3];
        /*[43]*/
#pragma omp parallel default(shared) shared(is_imopVarPre85)
        {
        /*[43]*/
            /*[43]*/
            int i;
            /*[43]*/
            int j;
            /*[43]*/
            int k;
            /*[43]*/
            int ii;
            /*[43]*/
#pragma omp master
            {
            /*[43]*/
                /*[43]*/
                /*[43]*/
                /*[43]*/
                /*[43]*/
                for (i = 0; i < 3; i++) {
                /*[43]*/
                    /*[43]*/
                    int _imopVarPre250;
                    /*[43]*/
                    int _imopVarPre251;
                    /*[43]*/
                    _imopVarPre250 = d_imopVarPre86[i];
                    /*[43]*/
                    _imopVarPre251 = ilog2(_imopVarPre250);
                    /*[43]*/
                    /*[43]*/
                    logd_imopVarPre89[i] = _imopVarPre251;
                }
            }
            /*[43]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[43]*/
#pragma omp barrier
            /*[44]*/
            dcomplex y0[64][18];
            /*[44]*/
            dcomplex y1[64][18];
            /*[44]*/
#pragma omp for nowait
            /*[44]*/
            /*[44]*/
            /*[44]*/
            for (k = 0; k < d_imopVarPre86[2]; k++) {
            /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                /*[44]*/
                for (ii = 0; ii <= d_imopVarPre86[0] - fftblock; ii += fftblock) {
                /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    for (j = 0; j < d_imopVarPre86[1]; j++) {
                    /*[44]*/
                        /*[44]*/
                        /*[44]*/
                        /*[44]*/
                        /*[44]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[44]*/
                            /*[44]*/
                            y0[j][i].real = x_imopVarPre87[k][j][i + ii].real;
                            /*[44]*/
                            y0[j][i].imag = x_imopVarPre87[k][j][i + ii].imag;
                        }
                    }
                    /*[44]*/
                    int _imopVarPre254;
                    /*[44]*/
                    int _imopVarPre255;
                    /*[44]*/
                    _imopVarPre254 = d_imopVarPre86[1];
                    /*[44]*/
                    _imopVarPre255 = logd_imopVarPre89[1];
                    /*[44]*/
                    cfftz(is_imopVarPre85, _imopVarPre255, _imopVarPre254, y0, y1);
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    /*[44]*/
                    for (j = 0; j < d_imopVarPre86[1]; j++) {
                    /*[44]*/
                        /*[44]*/
                        /*[44]*/
                        /*[44]*/
                        /*[44]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[44]*/
                            /*[44]*/
                            xout_imopVarPre88[k][j][i + ii].real = y0[j][i].real;
                            /*[44]*/
                            xout_imopVarPre88[k][j][i + ii].imag = y0[j][i].imag;
                        }
                    }
                }
            }
        }
        /*[]*/
        int ( *_imopVarPre229 );
        /*[]*/
        _imopVarPre229 = dims[2];
        /*[]*/
        int is_imopVarPre90;
        /*[]*/
        int *d_imopVarPre91;
        /*[]*/
        struct stUn_imopVarPre11 ( *x_imopVarPre92 )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout_imopVarPre93 )[64][64];
        /*[]*/
        is_imopVarPre90 = 1;
        /*[]*/
        d_imopVarPre91 = _imopVarPre229;
        /*[]*/
        x_imopVarPre92 = x1;
        /*[]*/
        xout_imopVarPre93 = x2;
        /*[]*/
        int logd_imopVarPre94[3];
        /*[45]*/
#pragma omp parallel default(shared) shared(is_imopVarPre90)
        {
        /*[45]*/
            /*[45]*/
            int i;
            /*[45]*/
            int j;
            /*[45]*/
            int k;
            /*[45]*/
            int ii;
            /*[45]*/
#pragma omp master
            {
            /*[45]*/
                /*[45]*/
                /*[45]*/
                /*[45]*/
                /*[45]*/
                for (i = 0; i < 3; i++) {
                /*[45]*/
                    /*[45]*/
                    int _imopVarPre257;
                    /*[45]*/
                    int _imopVarPre258;
                    /*[45]*/
                    _imopVarPre257 = d_imopVarPre91[i];
                    /*[45]*/
                    _imopVarPre258 = ilog2(_imopVarPre257);
                    /*[45]*/
                    /*[45]*/
                    logd_imopVarPre94[i] = _imopVarPre258;
                }
            }
            /*[45]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[45]*/
#pragma omp barrier
            /*[46]*/
            dcomplex y0[64][18];
            /*[46]*/
            dcomplex y1[64][18];
            /*[46]*/
#pragma omp for nowait
            /*[46]*/
            /*[46]*/
            /*[46]*/
            for (j = 0; j < d_imopVarPre91[1]; j++) {
            /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                /*[46]*/
                for (ii = 0; ii <= d_imopVarPre91[0] - fftblock; ii += fftblock) {
                /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    for (k = 0; k < d_imopVarPre91[2]; k++) {
                    /*[46]*/
                        /*[46]*/
                        /*[46]*/
                        /*[46]*/
                        /*[46]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[46]*/
                            /*[46]*/
                            y0[k][i].real = x_imopVarPre92[k][j][i + ii].real;
                            /*[46]*/
                            y0[k][i].imag = x_imopVarPre92[k][j][i + ii].imag;
                        }
                    }
                    /*[46]*/
                    int _imopVarPre261;
                    /*[46]*/
                    int _imopVarPre262;
                    /*[46]*/
                    _imopVarPre261 = d_imopVarPre91[2];
                    /*[46]*/
                    _imopVarPre262 = logd_imopVarPre94[2];
                    /*[46]*/
                    cfftz(is_imopVarPre90, _imopVarPre262, _imopVarPre261, y0, y1);
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    /*[46]*/
                    for (k = 0; k < d_imopVarPre91[2]; k++) {
                    /*[46]*/
                        /*[46]*/
                        /*[46]*/
                        /*[46]*/
                        /*[46]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[46]*/
                            /*[46]*/
                            xout_imopVarPre93[k][j][i + ii].real = y0[k][i].real;
                            /*[46]*/
                            xout_imopVarPre93[k][j][i + ii].imag = y0[k][i].imag;
                        }
                    }
                }
            }
        }
    } else {
    /*[]*/
        /*[]*/
        int ( *_imopVarPre232 );
        /*[]*/
        int _imopVarPre233;
        /*[]*/
        _imopVarPre232 = dims[2];
        /*[]*/
        _imopVarPre233 = -1;
        /*[]*/
        int is;
        /*[]*/
        int *d;
        /*[]*/
        struct stUn_imopVarPre11 ( *x )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout )[64][64];
        /*[]*/
        is = _imopVarPre233;
        /*[]*/
        d = _imopVarPre232;
        /*[]*/
        x = x1;
        /*[]*/
        xout = x1;
        /*[]*/
        int logd[3];
        /*[47]*/
#pragma omp parallel default(shared) shared(is)
        {
        /*[47]*/
            /*[47]*/
            int i;
            /*[47]*/
            int j;
            /*[47]*/
            int k;
            /*[47]*/
            int ii;
            /*[47]*/
#pragma omp master
            {
            /*[47]*/
                /*[47]*/
                /*[47]*/
                /*[47]*/
                /*[47]*/
                for (i = 0; i < 3; i++) {
                /*[47]*/
                    /*[47]*/
                    int _imopVarPre257;
                    /*[47]*/
                    int _imopVarPre258;
                    /*[47]*/
                    _imopVarPre257 = d[i];
                    /*[47]*/
                    _imopVarPre258 = ilog2(_imopVarPre257);
                    /*[47]*/
                    /*[47]*/
                    logd[i] = _imopVarPre258;
                }
            }
            /*[47]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[47]*/
#pragma omp barrier
            /*[48]*/
            dcomplex y0[64][18];
            /*[48]*/
            dcomplex y1[64][18];
            /*[48]*/
#pragma omp for nowait
            /*[48]*/
            /*[48]*/
            /*[48]*/
            for (j = 0; j < d[1]; j++) {
            /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                /*[48]*/
                for (ii = 0; ii <= d[0] - fftblock; ii += fftblock) {
                /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    for (k = 0; k < d[2]; k++) {
                    /*[48]*/
                        /*[48]*/
                        /*[48]*/
                        /*[48]*/
                        /*[48]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[48]*/
                            /*[48]*/
                            y0[k][i].real = x[k][j][i + ii].real;
                            /*[48]*/
                            y0[k][i].imag = x[k][j][i + ii].imag;
                        }
                    }
                    /*[48]*/
                    int _imopVarPre261;
                    /*[48]*/
                    int _imopVarPre262;
                    /*[48]*/
                    _imopVarPre261 = d[2];
                    /*[48]*/
                    _imopVarPre262 = logd[2];
                    /*[48]*/
                    cfftz(is, _imopVarPre262, _imopVarPre261, y0, y1);
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    /*[48]*/
                    for (k = 0; k < d[2]; k++) {
                    /*[48]*/
                        /*[48]*/
                        /*[48]*/
                        /*[48]*/
                        /*[48]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[48]*/
                            /*[48]*/
                            xout[k][j][i + ii].real = y0[k][i].real;
                            /*[48]*/
                            xout[k][j][i + ii].imag = y0[k][i].imag;
                        }
                    }
                }
            }
        }
        /*[]*/
        int ( *_imopVarPre236 );
        /*[]*/
        int _imopVarPre237;
        /*[]*/
        _imopVarPre236 = dims[1];
        /*[]*/
        _imopVarPre237 = -1;
        /*[]*/
        int is_imopVarPre75;
        /*[]*/
        int *d_imopVarPre76;
        /*[]*/
        struct stUn_imopVarPre11 ( *x_imopVarPre77 )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout_imopVarPre78 )[64][64];
        /*[]*/
        is_imopVarPre75 = _imopVarPre237;
        /*[]*/
        d_imopVarPre76 = _imopVarPre236;
        /*[]*/
        x_imopVarPre77 = x1;
        /*[]*/
        xout_imopVarPre78 = x1;
        /*[]*/
        int logd_imopVarPre79[3];
        /*[49]*/
#pragma omp parallel default(shared) shared(is_imopVarPre75)
        {
        /*[49]*/
            /*[49]*/
            int i;
            /*[49]*/
            int j;
            /*[49]*/
            int k;
            /*[49]*/
            int ii;
            /*[49]*/
#pragma omp master
            {
            /*[49]*/
                /*[49]*/
                /*[49]*/
                /*[49]*/
                /*[49]*/
                for (i = 0; i < 3; i++) {
                /*[49]*/
                    /*[49]*/
                    int _imopVarPre250;
                    /*[49]*/
                    int _imopVarPre251;
                    /*[49]*/
                    _imopVarPre250 = d_imopVarPre76[i];
                    /*[49]*/
                    _imopVarPre251 = ilog2(_imopVarPre250);
                    /*[49]*/
                    /*[49]*/
                    logd_imopVarPre79[i] = _imopVarPre251;
                }
            }
            /*[49]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[49]*/
#pragma omp barrier
            /*[50]*/
            dcomplex y0[64][18];
            /*[50]*/
            dcomplex y1[64][18];
            /*[50]*/
#pragma omp for nowait
            /*[50]*/
            /*[50]*/
            /*[50]*/
            for (k = 0; k < d_imopVarPre76[2]; k++) {
            /*[50]*/
                /*[50]*/
                /*[50]*/
                /*[50]*/
                /*[50]*/
                for (ii = 0; ii <= d_imopVarPre76[0] - fftblock; ii += fftblock) {
                /*[50]*/
                    /*[50]*/
                    /*[50]*/
                    /*[50]*/
                    /*[50]*/
                    for (j = 0; j < d_imopVarPre76[1]; j++) {
                    /*[50]*/
                        /*[50]*/
                        /*[50]*/
                        /*[50]*/
                        /*[50]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[50]*/
                            /*[50]*/
                            y0[j][i].real = x_imopVarPre77[k][j][i + ii].real;
                            /*[50]*/
                            y0[j][i].imag = x_imopVarPre77[k][j][i + ii].imag;
                        }
                    }
                    /*[50]*/
                    int _imopVarPre254;
                    /*[50]*/
                    int _imopVarPre255;
                    /*[50]*/
                    _imopVarPre254 = d_imopVarPre76[1];
                    /*[50]*/
                    _imopVarPre255 = logd_imopVarPre79[1];
                    /*[50]*/
                    cfftz(is_imopVarPre75, _imopVarPre255, _imopVarPre254, y0, y1);
                    /*[50]*/
                    /*[50]*/
                    /*[50]*/
                    /*[50]*/
                    /*[50]*/
                    for (j = 0; j < d_imopVarPre76[1]; j++) {
                    /*[50]*/
                        /*[50]*/
                        /*[50]*/
                        /*[50]*/
                        /*[50]*/
                        for (i = 0; i < fftblock; i++) {
                        /*[50]*/
                            /*[50]*/
                            xout_imopVarPre78[k][j][i + ii].real = y0[j][i].real;
                            /*[50]*/
                            xout_imopVarPre78[k][j][i + ii].imag = y0[j][i].imag;
                        }
                    }
                }
            }
        }
        /*[]*/
        int ( *_imopVarPre240 );
        /*[]*/
        int _imopVarPre241;
        /*[]*/
        _imopVarPre240 = dims[0];
        /*[]*/
        _imopVarPre241 = -1;
        /*[]*/
        int is_imopVarPre80;
        /*[]*/
        int *d_imopVarPre81;
        /*[]*/
        struct stUn_imopVarPre11 ( *x_imopVarPre82 )[64][64];
        /*[]*/
        struct stUn_imopVarPre11 ( *xout_imopVarPre83 )[64][64];
        /*[]*/
        is_imopVarPre80 = _imopVarPre241;
        /*[]*/
        d_imopVarPre81 = _imopVarPre240;
        /*[]*/
        x_imopVarPre82 = x1;
        /*[]*/
        xout_imopVarPre83 = x2;
        /*[]*/
        int logd_imopVarPre84[3];
        /*[51]*/
#pragma omp parallel default(shared) shared(is_imopVarPre80)
        {
        /*[51]*/
            /*[51]*/
            int i;
            /*[51]*/
            int j;
            /*[51]*/
            int k;
            /*[51]*/
            int jj;
            /*[51]*/
#pragma omp master
            {
            /*[51]*/
                /*[51]*/
                /*[51]*/
                /*[51]*/
                /*[51]*/
                for (i = 0; i < 3; i++) {
                /*[51]*/
                    /*[51]*/
                    int _imopVarPre243;
                    /*[51]*/
                    int _imopVarPre244;
                    /*[51]*/
                    _imopVarPre243 = d_imopVarPre81[i];
                    /*[51]*/
                    _imopVarPre244 = ilog2(_imopVarPre243);
                    /*[51]*/
                    /*[51]*/
                    logd_imopVarPre84[i] = _imopVarPre244;
                }
            }
            /*[51]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[51]*/
#pragma omp barrier
            /*[52]*/
            dcomplex y0[64][18];
            /*[52]*/
            dcomplex y1[64][18];
            /*[52]*/
#pragma omp for nowait
            /*[52]*/
            /*[52]*/
            /*[52]*/
            for (k = 0; k < d_imopVarPre81[2]; k++) {
            /*[52]*/
                /*[52]*/
                /*[52]*/
                /*[52]*/
                /*[52]*/
                for (jj = 0; jj <= d_imopVarPre81[1] - fftblock; jj += fftblock) {
                /*[52]*/
                    /*[52]*/
                    /*[52]*/
                    /*[52]*/
                    /*[52]*/
                    for (j = 0; j < fftblock; j++) {
                    /*[52]*/
                        /*[52]*/
                        /*[52]*/
                        /*[52]*/
                        /*[52]*/
                        for (i = 0; i < d_imopVarPre81[0]; i++) {
                        /*[52]*/
                            /*[52]*/
                            y0[i][j].real = x_imopVarPre82[k][j + jj][i].real;
                            /*[52]*/
                            y0[i][j].imag = x_imopVarPre82[k][j + jj][i].imag;
                        }
                    }
                    /*[52]*/
                    int _imopVarPre247;
                    /*[52]*/
                    int _imopVarPre248;
                    /*[52]*/
                    _imopVarPre247 = d_imopVarPre81[0];
                    /*[52]*/
                    _imopVarPre248 = logd_imopVarPre84[0];
                    /*[52]*/
                    cfftz(is_imopVarPre80, _imopVarPre248, _imopVarPre247, y0, y1);
                    /*[52]*/
                    /*[52]*/
                    /*[52]*/
                    /*[52]*/
                    /*[52]*/
                    for (j = 0; j < fftblock; j++) {
                    /*[52]*/
                        /*[52]*/
                        /*[52]*/
                        /*[52]*/
                        /*[52]*/
                        for (i = 0; i < d_imopVarPre81[0]; i++) {
                        /*[52]*/
                            /*[52]*/
                            xout_imopVarPre83[k][j + jj][i].real = y0[i][j].real;
                            /*[52]*/
                            xout_imopVarPre83[k][j + jj][i].imag = y0[i][j].imag;
                        }
                    }
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
/*[]*/
/*[]*/
static void cffts1(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]) {
/*[]*/
    /*[]*/
    int logd[3];
    /*[53]*/
#pragma omp parallel default(shared) shared(is)
    {
    /*[53]*/
        /*[53]*/
        int i;
        /*[53]*/
        int j;
        /*[53]*/
        int k;
        /*[53]*/
        int jj;
        /*[53]*/
#pragma omp master
        {
        /*[53]*/
            /*[53]*/
            /*[53]*/
            /*[53]*/
            /*[53]*/
            for (i = 0; i < 3; i++) {
            /*[53]*/
                /*[53]*/
                int _imopVarPre243;
                /*[53]*/
                int _imopVarPre244;
                /*[53]*/
                _imopVarPre243 = d[i];
                /*[53]*/
                _imopVarPre244 = ilog2(_imopVarPre243);
                /*[53]*/
                /*[53]*/
                logd[i] = _imopVarPre244;
            }
        }
        /*[53]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[53]*/
#pragma omp barrier
        /*[54]*/
        dcomplex y0[64][18];
        /*[54]*/
        dcomplex y1[64][18];
        /*[54]*/
#pragma omp for nowait
        /*[54]*/
        /*[54]*/
        /*[54]*/
        for (k = 0; k < d[2]; k++) {
        /*[54]*/
            /*[54]*/
            /*[54]*/
            /*[54]*/
            /*[54]*/
            for (jj = 0; jj <= d[1] - fftblock; jj += fftblock) {
            /*[54]*/
                /*[54]*/
                /*[54]*/
                /*[54]*/
                /*[54]*/
                for (j = 0; j < fftblock; j++) {
                /*[54]*/
                    /*[54]*/
                    /*[54]*/
                    /*[54]*/
                    /*[54]*/
                    for (i = 0; i < d[0]; i++) {
                    /*[54]*/
                        /*[54]*/
                        y0[i][j].real = x[k][j + jj][i].real;
                        /*[54]*/
                        y0[i][j].imag = x[k][j + jj][i].imag;
                    }
                }
                /*[54]*/
                int _imopVarPre247;
                /*[54]*/
                int _imopVarPre248;
                /*[54]*/
                _imopVarPre247 = d[0];
                /*[54]*/
                _imopVarPre248 = logd[0];
                /*[54]*/
                cfftz(is, _imopVarPre248, _imopVarPre247, y0, y1);
                /*[54]*/
                /*[54]*/
                /*[54]*/
                /*[54]*/
                /*[54]*/
                for (j = 0; j < fftblock; j++) {
                /*[54]*/
                    /*[54]*/
                    /*[54]*/
                    /*[54]*/
                    /*[54]*/
                    for (i = 0; i < d[0]; i++) {
                    /*[54]*/
                        /*[54]*/
                        xout[k][j + jj][i].real = y0[i][j].real;
                        /*[54]*/
                        xout[k][j + jj][i].imag = y0[i][j].imag;
                    }
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
/*[]*/
/*[]*/
static void cffts2(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]) {
/*[]*/
    /*[]*/
    int logd[3];
    /*[55]*/
#pragma omp parallel default(shared) shared(is)
    {
    /*[55]*/
        /*[55]*/
        int i;
        /*[55]*/
        int j;
        /*[55]*/
        int k;
        /*[55]*/
        int ii;
        /*[55]*/
#pragma omp master
        {
        /*[55]*/
            /*[55]*/
            /*[55]*/
            /*[55]*/
            /*[55]*/
            for (i = 0; i < 3; i++) {
            /*[55]*/
                /*[55]*/
                int _imopVarPre250;
                /*[55]*/
                int _imopVarPre251;
                /*[55]*/
                _imopVarPre250 = d[i];
                /*[55]*/
                _imopVarPre251 = ilog2(_imopVarPre250);
                /*[55]*/
                /*[55]*/
                logd[i] = _imopVarPre251;
            }
        }
        /*[55]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[55]*/
#pragma omp barrier
        /*[56]*/
        dcomplex y0[64][18];
        /*[56]*/
        dcomplex y1[64][18];
        /*[56]*/
#pragma omp for nowait
        /*[56]*/
        /*[56]*/
        /*[56]*/
        for (k = 0; k < d[2]; k++) {
        /*[56]*/
            /*[56]*/
            /*[56]*/
            /*[56]*/
            /*[56]*/
            for (ii = 0; ii <= d[0] - fftblock; ii += fftblock) {
            /*[56]*/
                /*[56]*/
                /*[56]*/
                /*[56]*/
                /*[56]*/
                for (j = 0; j < d[1]; j++) {
                /*[56]*/
                    /*[56]*/
                    /*[56]*/
                    /*[56]*/
                    /*[56]*/
                    for (i = 0; i < fftblock; i++) {
                    /*[56]*/
                        /*[56]*/
                        y0[j][i].real = x[k][j][i + ii].real;
                        /*[56]*/
                        y0[j][i].imag = x[k][j][i + ii].imag;
                    }
                }
                /*[56]*/
                int _imopVarPre254;
                /*[56]*/
                int _imopVarPre255;
                /*[56]*/
                _imopVarPre254 = d[1];
                /*[56]*/
                _imopVarPre255 = logd[1];
                /*[56]*/
                cfftz(is, _imopVarPre255, _imopVarPre254, y0, y1);
                /*[56]*/
                /*[56]*/
                /*[56]*/
                /*[56]*/
                /*[56]*/
                for (j = 0; j < d[1]; j++) {
                /*[56]*/
                    /*[56]*/
                    /*[56]*/
                    /*[56]*/
                    /*[56]*/
                    for (i = 0; i < fftblock; i++) {
                    /*[56]*/
                        /*[56]*/
                        xout[k][j][i + ii].real = y0[j][i].real;
                        /*[56]*/
                        xout[k][j][i + ii].imag = y0[j][i].imag;
                    }
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
/*[]*/
/*[]*/
static void cffts3(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]) {
/*[]*/
    /*[]*/
    int logd[3];
    /*[57]*/
#pragma omp parallel default(shared) shared(is)
    {
    /*[57]*/
        /*[57]*/
        int i;
        /*[57]*/
        int j;
        /*[57]*/
        int k;
        /*[57]*/
        int ii;
        /*[57]*/
#pragma omp master
        {
        /*[57]*/
            /*[57]*/
            /*[57]*/
            /*[57]*/
            /*[57]*/
            for (i = 0; i < 3; i++) {
            /*[57]*/
                /*[57]*/
                int _imopVarPre257;
                /*[57]*/
                int _imopVarPre258;
                /*[57]*/
                _imopVarPre257 = d[i];
                /*[57]*/
                _imopVarPre258 = ilog2(_imopVarPre257);
                /*[57]*/
                /*[57]*/
                logd[i] = _imopVarPre258;
            }
        }
        /*[57]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[57]*/
#pragma omp barrier
        /*[58]*/
        dcomplex y0[64][18];
        /*[58]*/
        dcomplex y1[64][18];
        /*[58]*/
#pragma omp for nowait
        /*[58]*/
        /*[58]*/
        /*[58]*/
        for (j = 0; j < d[1]; j++) {
        /*[58]*/
            /*[58]*/
            /*[58]*/
            /*[58]*/
            /*[58]*/
            for (ii = 0; ii <= d[0] - fftblock; ii += fftblock) {
            /*[58]*/
                /*[58]*/
                /*[58]*/
                /*[58]*/
                /*[58]*/
                for (k = 0; k < d[2]; k++) {
                /*[58]*/
                    /*[58]*/
                    /*[58]*/
                    /*[58]*/
                    /*[58]*/
                    for (i = 0; i < fftblock; i++) {
                    /*[58]*/
                        /*[58]*/
                        y0[k][i].real = x[k][j][i + ii].real;
                        /*[58]*/
                        y0[k][i].imag = x[k][j][i + ii].imag;
                    }
                }
                /*[58]*/
                int _imopVarPre261;
                /*[58]*/
                int _imopVarPre262;
                /*[58]*/
                _imopVarPre261 = d[2];
                /*[58]*/
                _imopVarPre262 = logd[2];
                /*[58]*/
                cfftz(is, _imopVarPre262, _imopVarPre261, y0, y1);
                /*[58]*/
                /*[58]*/
                /*[58]*/
                /*[58]*/
                /*[58]*/
                for (k = 0; k < d[2]; k++) {
                /*[58]*/
                    /*[58]*/
                    /*[58]*/
                    /*[58]*/
                    /*[58]*/
                    for (i = 0; i < fftblock; i++) {
                    /*[58]*/
                        /*[58]*/
                        xout[k][j][i + ii].real = y0[k][i].real;
                        /*[58]*/
                        xout[k][j][i + ii].imag = y0[k][i].imag;
                    }
                }
            }
        }
    }
}
/*[]*/
/*[]*/
static void fft_init(int n) {
/*[]*/
    /*[]*/
    int m;
    /*[]*/
    int nu;
    /*[]*/
    int ku;
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int ln;
    /*[]*/
    double t;
    /*[]*/
    double ti;
    /*[]*/
    nu = n;
    /*[]*/
    m = ilog2(n);
    /*[]*/
    /*[]*/
    u[0].real = (double) m;
    /*[]*/
    u[0].imag = 0.0;
    /*[]*/
    ku = 1;
    /*[]*/
    ln = 1;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 1; j <= m; j++) {
    /*[]*/
        /*[]*/
        t = 3.141592653589793238 / ln;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i <= ln - 1; i++) {
        /*[]*/
            /*[]*/
            ti = i * t;
            /*[]*/
            double _imopVarPre263;
            /*[]*/
            _imopVarPre263 = cos(ti);
            /*[]*/
            /*[]*/
            u[i + ku].real = _imopVarPre263;
            /*[]*/
            double _imopVarPre264;
            /*[]*/
            _imopVarPre264 = sin(ti);
            /*[]*/
            /*[]*/
            u[i + ku].imag = _imopVarPre264;
        }
        /*[]*/
        ku = ku + ln;
        /*[]*/
        ln = 2 * ln;
    }
}
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
static void cfftz(int is, int m , int n , dcomplex x[64][18] , dcomplex y[64][18]) {
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int i;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int j;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int l;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int mx;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    mx = (int) (u[0].real);
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int _imopVarPre266;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int _imopVarPre267;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int _imopVarPre268;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    _imopVarPre266 = is != 1;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    if (_imopVarPre266) {
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        _imopVarPre266 = is != -1;
    }
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    _imopVarPre267 = _imopVarPre266;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    if (!_imopVarPre267) {
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        _imopVarPre268 = m < 1;
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        if (!_imopVarPre268) {
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            _imopVarPre268 = m > mx;
        }
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        _imopVarPre267 = _imopVarPre268;
    }
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    if (_imopVarPre267) {
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        printf("CFFTZ: Either U has not been initialized, or else\n" "one of the input parameters is invalid%5d%5d%5d\n", is, m, mx);
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        exit(1);
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    }
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    for (l = 1; l <= m; l += 2) {
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        fftz2(is, l, m, n, fftblock, fftblockpad, u, x, y);
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        if (l == m) {
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            break;
        }
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        int _imopVarPre270;
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        _imopVarPre270 = l + 1;
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        fftz2(is, _imopVarPre270, m, n, fftblock, fftblockpad, u, y, x);
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    }
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    if (m % 2 == 1) {
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        for (j = 0; j < n; j++) {
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            for (i = 0; i < fftblock; i++) {
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                x[j][i].real = y[j][i].real;
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                x[j][i].imag = y[j][i].imag;
            }
        }
    }
}
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
static void fftz2(int is, int l , int m , int n , int ny , int ny1 , dcomplex u[64] , dcomplex x[64][18] , dcomplex y[64][18]) {
/*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int k;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int n1;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int li;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int lj;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int lk;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int ku;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int i;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int j;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int i11;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int i12;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int i21;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    int i22;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    dcomplex u1;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    n1 = n / 2;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    if (l - 1 == 0) {
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        lk = 1;
    } else {
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        lk = 2 << ((l - 1) - 1);
    }
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    if (m - l == 0) {
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        li = 1;
    } else {
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        li = 2 << ((m - l) - 1);
    }
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    lj = 2 * lk;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    ku = li;
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
    for (i = 0; i < li; i++) {
    /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        i11 = i * lk;
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        i12 = i11 + n1;
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        i21 = i * lj;
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        i22 = i21 + lk;
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        if (is >= 1) {
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            u1.real = u[ku + i].real;
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            u1.imag = u[ku + i].imag;
        } else {
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            u1.real = u[ku + i].real;
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            u1.imag = -u[ku + i].imag;
        }
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
        for (k = 0; k < lk; k++) {
        /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
            for (j = 0; j < ny; j++) {
            /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                double x11real;
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                double x11imag;
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                double x21real;
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                double x21imag;
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                x11real = x[i11 + k][j].real;
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                x11imag = x[i11 + k][j].imag;
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                x21real = x[i12 + k][j].real;
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                x21imag = x[i12 + k][j].imag;
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                y[i21 + k][j].real = x11real + x21real;
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                y[i21 + k][j].imag = x11imag + x21imag;
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                y[i22 + k][j].real = u1.real * (x11real - x21real) - u1.imag * (x11imag - x21imag);
                /*[3, 5, 7, 9, 11, 13, 16, 18, 20, 22, 24, 26, 30, 31, 32, 34, 35, 36, 42, 44, 46, 48, 50, 52, 54, 56, 58]*/
                y[i22 + k][j].imag = u1.real * (x11imag - x21imag) + u1.imag * (x11real - x21real);
            }
        }
    }
}
/*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
/*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
static int ilog2(int n) {
/*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
    /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
    int nn;
    /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
    int lg;
    /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
    /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
    if (n == 1) {
    /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
        /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
        return 0;
    }
    /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
    lg = 1;
    /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
    nn = 2;
    /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
    /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
    while (nn < n) {
    /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
        /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
        nn = nn << 1;
        /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
        lg++;
    }
    /*[2, 4, 6, 8, 10, 12, 15, 17, 19, 21, 23, 25, 29, 30, 31, 33, 34, 35, 41, 43, 45, 47, 49, 51, 53, 55, 57]*/
    return lg;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void checksum(int i, dcomplex u1[64][64][64] , int d[3]) {
/*[]*/
    /*[]*/
    int j;
    /*[]*/
    int q;
    /*[]*/
    int r;
    /*[]*/
    int s;
    /*[]*/
    dcomplex chk;
    /*[]*/
    chk.real = 0.0;
    /*[]*/
    chk.imag = 0.0;
    /*[]*/
#pragma omp for nowait
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 1; j <= 1024; j++) {
    /*[]*/
        /*[]*/
        q = j % 64 + 1;
        /*[]*/
        int _imopVarPre272;
        /*[]*/
        _imopVarPre272 = q >= xstart[0];
        /*[]*/
        /*[]*/
        if (_imopVarPre272) {
        /*[]*/
            /*[]*/
            _imopVarPre272 = q <= xend[0];
        }
        /*[]*/
        /*[]*/
        if (_imopVarPre272) {
        /*[]*/
            /*[]*/
            r = (3 * j) % 64 + 1;
            /*[]*/
            int _imopVarPre274;
            /*[]*/
            _imopVarPre274 = r >= ystart[0];
            /*[]*/
            /*[]*/
            if (_imopVarPre274) {
            /*[]*/
                /*[]*/
                _imopVarPre274 = r <= yend[0];
            }
            /*[]*/
            /*[]*/
            if (_imopVarPre274) {
            /*[]*/
                /*[]*/
                s = (5 * j) % 64 + 1;
                /*[]*/
                int _imopVarPre276;
                /*[]*/
                _imopVarPre276 = s >= zstart[0];
                /*[]*/
                /*[]*/
                if (_imopVarPre276) {
                /*[]*/
                    /*[]*/
                    _imopVarPre276 = s <= zend[0];
                }
                /*[]*/
                /*[]*/
                if (_imopVarPre276) {
                /*[]*/
                    /*[]*/
                    chk.real = chk.real + u1[s - zstart[0]][r - ystart[0]][q - xstart[0]].real;
                    /*[]*/
                    (chk.imag = chk.imag + u1[s - zstart[0]][r - ystart[0]][q - xstart[0]].imag);
                }
            }
        }
    }
    /*[]*/
    // #pragma omp dummyFlush CRITICAL_START
    /*[]*/
#pragma omp critical
    {
    /*[]*/
        /*[]*/
        sums[i].real += chk.real;
        /*[]*/
        sums[i].imag += chk.imag;
    }
    /*[]*/
    // #pragma omp dummyFlush CRITICAL_END
    /*[]*/
#pragma omp single nowait
    {
    /*[]*/
        /*[]*/
        sums[i].real = sums[i].real / (double) 262144;
        /*[]*/
        sums[i].imag = sums[i].imag / (double) 262144;
        /*[]*/
        double _imopVarPre279;
        /*[]*/
        double _imopVarPre280;
        /*[]*/
        _imopVarPre279 = sums[i].imag;
        /*[]*/
        _imopVarPre280 = sums[i].real;
        /*[]*/
        printf("T = %5d     Checksum = %22.12e %22.12e\n", i, _imopVarPre280, _imopVarPre279);
        /*[]*/
    }
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void verify(int d1, int d2 , int d3 , int nt , boolean *verified , char *class) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    double err;
    /*[]*/
    double epsilon;
    /*[]*/
    double vdata_real_s[6 + 1] = {0.0, 5.546087004964e+02 , 5.546385409189e+02 , 5.546148406171e+02 , 5.545423607415e+02 , 5.544255039624e+02 , 5.542683411902e+02};
    /*[]*/
    double vdata_imag_s[6 + 1] = {0.0, 4.845363331978e+02 , 4.865304269511e+02 , 4.883910722336e+02 , 4.901273169046e+02 , 4.917475857993e+02 , 4.932597244941e+02};
    /*[]*/
    double vdata_real_w[6 + 1] = {0.0, 5.673612178944e+02 , 5.631436885271e+02 , 5.594024089970e+02 , 5.560698047020e+02 , 5.530898991250e+02 , 5.504159734538e+02};
    /*[]*/
    double vdata_imag_w[6 + 1] = {0.0, 5.293246849175e+02 , 5.282149986629e+02 , 5.270996558037e+02 , 5.260027904925e+02 , 5.249400845633e+02 , 5.239212247086e+02};
    /*[]*/
    double vdata_real_a[6 + 1] = {0.0, 5.046735008193e+02 , 5.059412319734e+02 , 5.069376896287e+02 , 5.077892868474e+02 , 5.085233095391e+02 , 5.091487099959e+02};
    /*[]*/
    double vdata_imag_a[6 + 1] = {0.0, 5.114047905510e+02 , 5.098809666433e+02 , 5.098144042213e+02 , 5.101336130759e+02 , 5.104914655194e+02 , 5.107917842803e+02};
    /*[]*/
    double vdata_real_b[20 + 1] = {0.0, 5.177643571579e+02 , 5.154521291263e+02 , 5.146409228649e+02 , 5.142378756213e+02 , 5.139626667737e+02 , 5.137423460082e+02 , 5.135547056878e+02 , 5.133910925466e+02 , 5.132470705390e+02 , 5.131197729984e+02 , 5.130070319283e+02 , 5.129070537032e+02 , 5.128182883502e+02 , 5.127393733383e+02 , 5.126691062020e+02 , 5.126064276004e+02 , 5.125504076570e+02 , 5.125002331720e+02 , 5.124551951846e+02 , 5.124146770029e+02};
    /*[]*/
    double vdata_imag_b[20 + 1] = {0.0, 5.077803458597e+02 , 5.088249431599e+02 , 5.096208912659e+02 , 5.101023387619e+02 , 5.103976610617e+02 , 5.105948019802e+02 , 5.107404165783e+02 , 5.108576573661e+02 , 5.109577278523e+02 , 5.110460304483e+02 , 5.111252433800e+02 , 5.111968077718e+02 , 5.112616233064e+02 , 5.113203605551e+02 , 5.113735928093e+02 , 5.114218460548e+02 , 5.114656139760e+02 , 5.115053595966e+02 , 5.115415130407e+02 , 5.115744692211e+02};
    /*[]*/
    double vdata_real_c[20 + 1] = {0.0, 5.195078707457e+02 , 5.155422171134e+02 , 5.144678022222e+02 , 5.140150594328e+02 , 5.137550426810e+02 , 5.135811056728e+02 , 5.134569343165e+02 , 5.133651975661e+02 , 5.132955192805e+02 , 5.132410471738e+02 , 5.131971141679e+02 , 5.131605205716e+02 , 5.131290734194e+02 , 5.131012720314e+02 , 5.130760908195e+02 , 5.130528295923e+02 , 5.130310107773e+02 , 5.130103090133e+02 , 5.129905029333e+02 , 5.129714421109e+02};
    /*[]*/
    double vdata_imag_c[20 + 1] = {0.0, 5.149019699238e+02 , 5.127578201997e+02 , 5.122251847514e+02 , 5.121090289018e+02 , 5.121143685824e+02 , 5.121496764568e+02 , 5.121870921893e+02 , 5.122193250322e+02 , 5.122454735794e+02 , 5.122663649603e+02 , 5.122830879827e+02 , 5.122965869718e+02 , 5.123075927445e+02 , 5.123166486553e+02 , 5.123241541685e+02 , 5.123304037599e+02 , 5.123356167976e+02 , 5.123399592211e+02 , 5.123435588985e+02 , 5.123465164008e+02};
    /*[]*/
    epsilon = 1.0e-12;
    /*[]*/
    *verified = 1;
    /*[]*/
    *class = 'U';
    /*[]*/
    int _imopVarPre284;
    /*[]*/
    int _imopVarPre285;
    /*[]*/
    int _imopVarPre286;
    /*[]*/
    _imopVarPre284 = d1 == 64;
    /*[]*/
    /*[]*/
    if (_imopVarPre284) {
    /*[]*/
        /*[]*/
        _imopVarPre285 = d2 == 64;
        /*[]*/
        /*[]*/
        if (_imopVarPre285) {
        /*[]*/
            /*[]*/
            _imopVarPre286 = d3 == 64;
            /*[]*/
            /*[]*/
            if (_imopVarPre286) {
            /*[]*/
                /*[]*/
                _imopVarPre286 = nt == 6;
            }
            /*[]*/
            _imopVarPre285 = _imopVarPre286;
        }
        /*[]*/
        _imopVarPre284 = _imopVarPre285;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre284) {
    /*[]*/
        /*[]*/
        *class = 'S';
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 1; i <= nt; i++) {
        /*[]*/
            /*[]*/
            err = (sums[i].real - vdata_real_s[i]) / vdata_real_s[i];
            /*[]*/
            double _imopVarPre288;
            /*[]*/
            _imopVarPre288 = fabs(err);
            /*[]*/
            /*[]*/
            /*[]*/
            if (_imopVarPre288 > epsilon) {
            /*[]*/
                /*[]*/
                *verified = 0;
                /*[]*/
                break;
            }
            /*[]*/
            err = (sums[i].imag - vdata_imag_s[i]) / vdata_imag_s[i];
            /*[]*/
            double _imopVarPre290;
            /*[]*/
            _imopVarPre290 = fabs(err);
            /*[]*/
            /*[]*/
            /*[]*/
            if (_imopVarPre290 > epsilon) {
            /*[]*/
                /*[]*/
                *verified = 0;
                /*[]*/
                break;
            }
        }
    } else {
    /*[]*/
        /*[]*/
        int _imopVarPre294;
        /*[]*/
        int _imopVarPre295;
        /*[]*/
        int _imopVarPre296;
        /*[]*/
        _imopVarPre294 = d1 == 128;
        /*[]*/
        /*[]*/
        if (_imopVarPre294) {
        /*[]*/
            /*[]*/
            _imopVarPre295 = d2 == 128;
            /*[]*/
            /*[]*/
            if (_imopVarPre295) {
            /*[]*/
                /*[]*/
                _imopVarPre296 = d3 == 32;
                /*[]*/
                /*[]*/
                if (_imopVarPre296) {
                /*[]*/
                    /*[]*/
                    _imopVarPre296 = nt == 6;
                }
                /*[]*/
                _imopVarPre295 = _imopVarPre296;
            }
            /*[]*/
            _imopVarPre294 = _imopVarPre295;
        }
        /*[]*/
        /*[]*/
        if (_imopVarPre294) {
        /*[]*/
            /*[]*/
            *class = 'W';
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (i = 1; i <= nt; i++) {
            /*[]*/
                /*[]*/
                err = (sums[i].real - vdata_real_w[i]) / vdata_real_w[i];
                /*[]*/
                double _imopVarPre298;
                /*[]*/
                _imopVarPre298 = fabs(err);
                /*[]*/
                /*[]*/
                /*[]*/
                if (_imopVarPre298 > epsilon) {
                /*[]*/
                    /*[]*/
                    *verified = 0;
                    /*[]*/
                    break;
                }
                /*[]*/
                err = (sums[i].imag - vdata_imag_w[i]) / vdata_imag_w[i];
                /*[]*/
                double _imopVarPre300;
                /*[]*/
                _imopVarPre300 = fabs(err);
                /*[]*/
                /*[]*/
                /*[]*/
                if (_imopVarPre300 > epsilon) {
                /*[]*/
                    /*[]*/
                    *verified = 0;
                    /*[]*/
                    break;
                }
            }
        } else {
        /*[]*/
            /*[]*/
            int _imopVarPre304;
            /*[]*/
            int _imopVarPre305;
            /*[]*/
            int _imopVarPre306;
            /*[]*/
            _imopVarPre304 = d1 == 256;
            /*[]*/
            /*[]*/
            if (_imopVarPre304) {
            /*[]*/
                /*[]*/
                _imopVarPre305 = d2 == 256;
                /*[]*/
                /*[]*/
                if (_imopVarPre305) {
                /*[]*/
                    /*[]*/
                    _imopVarPre306 = d3 == 128;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre306) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre306 = nt == 6;
                    }
                    /*[]*/
                    _imopVarPre305 = _imopVarPre306;
                }
                /*[]*/
                _imopVarPre304 = _imopVarPre305;
            }
            /*[]*/
            /*[]*/
            if (_imopVarPre304) {
            /*[]*/
                /*[]*/
                *class = 'A';
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (i = 1; i <= nt; i++) {
                /*[]*/
                    /*[]*/
                    err = (sums[i].real - vdata_real_a[i]) / vdata_real_a[i];
                    /*[]*/
                    double _imopVarPre308;
                    /*[]*/
                    _imopVarPre308 = fabs(err);
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre308 > epsilon) {
                    /*[]*/
                        /*[]*/
                        *verified = 0;
                        /*[]*/
                        break;
                    }
                    /*[]*/
                    err = (sums[i].imag - vdata_imag_a[i]) / vdata_imag_a[i];
                    /*[]*/
                    double _imopVarPre310;
                    /*[]*/
                    _imopVarPre310 = fabs(err);
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre310 > epsilon) {
                    /*[]*/
                        /*[]*/
                        *verified = 0;
                        /*[]*/
                        break;
                    }
                }
            } else {
            /*[]*/
                /*[]*/
                int _imopVarPre314;
                /*[]*/
                int _imopVarPre315;
                /*[]*/
                int _imopVarPre316;
                /*[]*/
                _imopVarPre314 = d1 == 512;
                /*[]*/
                /*[]*/
                if (_imopVarPre314) {
                /*[]*/
                    /*[]*/
                    _imopVarPre315 = d2 == 256;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre315) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre316 = d3 == 256;
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre316) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre316 = nt == 20;
                        }
                        /*[]*/
                        _imopVarPre315 = _imopVarPre316;
                    }
                    /*[]*/
                    _imopVarPre314 = _imopVarPre315;
                }
                /*[]*/
                /*[]*/
                if (_imopVarPre314) {
                /*[]*/
                    /*[]*/
                    *class = 'B';
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    for (i = 1; i <= nt; i++) {
                    /*[]*/
                        /*[]*/
                        err = (sums[i].real - vdata_real_b[i]) / vdata_real_b[i];
                        /*[]*/
                        double _imopVarPre318;
                        /*[]*/
                        _imopVarPre318 = fabs(err);
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre318 > epsilon) {
                        /*[]*/
                            /*[]*/
                            *verified = 0;
                            /*[]*/
                            break;
                        }
                        /*[]*/
                        err = (sums[i].imag - vdata_imag_b[i]) / vdata_imag_b[i];
                        /*[]*/
                        double _imopVarPre320;
                        /*[]*/
                        _imopVarPre320 = fabs(err);
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre320 > epsilon) {
                        /*[]*/
                            /*[]*/
                            *verified = 0;
                            /*[]*/
                            break;
                        }
                    }
                } else {
                /*[]*/
                    /*[]*/
                    int _imopVarPre324;
                    /*[]*/
                    int _imopVarPre325;
                    /*[]*/
                    int _imopVarPre326;
                    /*[]*/
                    _imopVarPre324 = d1 == 512;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre324) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre325 = d2 == 512;
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre325) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre326 = d3 == 512;
                            /*[]*/
                            /*[]*/
                            if (_imopVarPre326) {
                            /*[]*/
                                /*[]*/
                                _imopVarPre326 = nt == 20;
                            }
                            /*[]*/
                            _imopVarPre325 = _imopVarPre326;
                        }
                        /*[]*/
                        _imopVarPre324 = _imopVarPre325;
                    }
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre324) {
                    /*[]*/
                        /*[]*/
                        *class = 'C';
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        for (i = 1; i <= nt; i++) {
                        /*[]*/
                            /*[]*/
                            err = (sums[i].real - vdata_real_c[i]) / vdata_real_c[i];
                            /*[]*/
                            double _imopVarPre328;
                            /*[]*/
                            _imopVarPre328 = fabs(err);
                            /*[]*/
                            /*[]*/
                            /*[]*/
                            if (_imopVarPre328 > epsilon) {
                            /*[]*/
                                /*[]*/
                                *verified = 0;
                                /*[]*/
                                break;
                            }
                            /*[]*/
                            err = (sums[i].imag - vdata_imag_c[i]) / vdata_imag_c[i];
                            /*[]*/
                            double _imopVarPre330;
                            /*[]*/
                            _imopVarPre330 = fabs(err);
                            /*[]*/
                            /*[]*/
                            /*[]*/
                            if (_imopVarPre330 > epsilon) {
                            /*[]*/
                                /*[]*/
                                *verified = 0;
                                /*[]*/
                                break;
                            }
                        }
                    }
                }
            }
        }
    }
    /*[]*/
    /*[]*/
    if (*class != 'U') {
    /*[]*/
        /*[]*/
        printf("Result verification successful\n");
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        printf("Result verification failed\n");
        /*[]*/
    }
    /*[]*/
    char _imopVarPre332;
    /*[]*/
    _imopVarPre332 = *class;
    /*[]*/
    printf("class = %1c\n", _imopVarPre332);
    /*[]*/
}
